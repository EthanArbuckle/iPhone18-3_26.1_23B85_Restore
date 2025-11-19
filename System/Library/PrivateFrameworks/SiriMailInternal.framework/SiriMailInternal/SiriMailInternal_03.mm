uint64_t static MailFlowFactory.buildFlowResult(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2676C9EBC();
  OUTLINED_FUNCTION_5_11();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v12 = v11 - v10;
  v116 = &type metadata for Features;
  v13 = sub_267614A64();
  v117 = v13;
  LOBYTE(v115) = 0;
  v14 = sub_2676CA04C();
  __swift_destroy_boxed_opaque_existential_1(&v115);
  if ((v14 & 1) == 0)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v65 = sub_2676CBE4C();
    __swift_project_value_buffer(v65, qword_2801CDC90);
    v66 = sub_2676CBE2C();
    sub_2676CC23C();
    v67 = OUTLINED_FUNCTION_7_11();
    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_20;
    }

LABEL_19:
    OUTLINED_FUNCTION_6_10();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_2();
    _os_log_impl(v72, v73, v74, v75, v76, v77);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
LABEL_20:

    return sub_2676C95EC();
  }

  v116 = &type metadata for Features;
  v117 = v13;
  LOBYTE(v115) = 1;
  v15 = sub_2676CA04C();
  __swift_destroy_boxed_opaque_existential_1(&v115);
  if ((v15 & 1) == 0)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v69 = sub_2676CBE4C();
    __swift_project_value_buffer(v69, qword_2801CDC90);
    v66 = sub_2676CBE2C();
    sub_2676CC23C();
    v70 = OUTLINED_FUNCTION_7_11();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v16 = sub_2676C9B9C();
  OUTLINED_FUNCTION_20_4(v16);
  swift_allocObject();
  v105 = sub_2676C9B8C();
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v17 = sub_2676CBE4C();
  __swift_project_value_buffer(v17, qword_2801CDC90);
  v18 = sub_2676CBE2C();
  v19 = sub_2676CC23C();
  v20 = OUTLINED_FUNCTION_7_11();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_6_10();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27_3(&dword_2675D4000, v22, v19, "#MailFlowFactory SiriMail/Encore=1");
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  sub_2676C9ECC();
  v23 = v116;
  v24 = v117;
  __swift_project_boxed_opaque_existential_1(&v115, v116);
  LOBYTE(v23) = sub_2675F4898(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(&v115);
  if (v23)
  {
    if (sub_2675DD880())
    {
      sub_267636AB8(v114, v25, v26, v27, v28, v29, v30, v31, v91, v92, v94, v96, v97, v98, v99, v101, v103, a2, v105, v107[0]);
      v104 = v32;
      (*(v6 + 16))(v12, a1, v4);
      v33 = type metadata accessor for ReadingUtil();
      OUTLINED_FUNCTION_82();
      v34 = swift_allocObject();
      v34[2] = 0;
      sub_2676CB38C();

      v102 = sub_2676CB37C();
      if (qword_2801CBA90 != -1)
      {
        swift_once();
      }

      v35 = qword_2801D3DF8;
      v95 = type metadata accessor for DeviceConnectionManager();
      OUTLINED_FUNCTION_82();
      v36 = swift_allocObject();
      *(v36 + 16) = [objc_allocWithZone(MEMORY[0x277CEF258]) init];
      v116 = &type metadata for LinkServicesProvider;
      v117 = &protocol witness table for LinkServicesProvider;
      v112 = v16;
      v113 = &protocol witness table for ResponseFactory;
      *&v111 = v106;
      v110[3] = v33;
      v110[4] = &off_2878AE2F8;
      v110[0] = v34;
      v93 = type metadata accessor for PrivacyDisclosureManager();
      v109[3] = v93;
      v109[4] = &off_2878AE1B0;
      v109[0] = v35;
      v108[3] = &type metadata for MailFeatureFlags;
      v108[4] = &off_2878ADBB0;
      v107[3] = v95;
      v107[4] = &off_2878AD540;
      v107[0] = v36;
      v100 = type metadata accessor for MailDelegateFlow();
      OUTLINED_FUNCTION_20_4(v100);
      v37 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v110, v33);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_5_11();
      v39 = *(v38 + 64);
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_3_2();
      v42 = OUTLINED_FUNCTION_11_10(v41);
      v43(v42);
      __swift_mutable_project_boxed_opaque_existential_1(v109, v93);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_5_11();
      v45 = *(v44 + 64);
      MEMORY[0x28223BE20](v46);
      OUTLINED_FUNCTION_3_2();
      v48 = OUTLINED_FUNCTION_30_3(v47);
      v49(v48);
      __swift_mutable_project_boxed_opaque_existential_1(v108, &type metadata for MailFeatureFlags);
      __swift_mutable_project_boxed_opaque_existential_1(v107, v95);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_5_11();
      v51 = *(v50 + 64);
      MEMORY[0x28223BE20](v52);
      OUTLINED_FUNCTION_3_2();
      v54 = OUTLINED_FUNCTION_33_3(v53);
      v55(v54);
      v56 = *v34;
      v57 = *v95;
      v58 = *v16;
      v59 = (v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil);
      v59[3] = v33;
      v59[4] = &off_2878AE2F8;
      *v59 = v56;
      v60 = (v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_privacyDisclosureManager);
      v60[3] = v93;
      v60[4] = &off_2878AE1B0;
      *v60 = v57;
      v61 = v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_featureFlags;
      *(v61 + 24) = &type metadata for MailFeatureFlags;
      *(v61 + 32) = &off_2878ADBB0;
      v62 = (v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection);
      v62[3] = v95;
      v62[4] = &off_2878AD540;
      *v62 = v58;
      v63 = v114[0];
      *(v37 + 56) = v114[1];
      *(v37 + 32) = v104 & 1;
      *(v37 + 33) = BYTE1(v104) & 1;
      *(v37 + 34) = BYTE2(v104) & 1;
      *(v37 + 40) = v63;
      (*(v6 + 32))(v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse, v12, v4);
      v64 = MEMORY[0x277D84F90];
      *(v37 + 16) = 0;
      *(v37 + 24) = v64;
      sub_2675DD73C(&v115, v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
      sub_2675DD73C(&v111, v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory);
      *(v37 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals) = v102;

      __swift_destroy_boxed_opaque_existential_1(v107);
      __swift_destroy_boxed_opaque_existential_1(v108);
      __swift_destroy_boxed_opaque_existential_1(v109);
      __swift_destroy_boxed_opaque_existential_1(v110);
      *&v115 = v37;
      sub_267619E1C(&qword_2801CC760, type metadata accessor for MailDelegateFlow);
      sub_2676C95FC();
    }

    v84 = sub_2676CBE2C();
    v85 = sub_2676CC23C();
    v86 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v86, v87))
    {
      OUTLINED_FUNCTION_6_10();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_3(&dword_2675D4000, v88, v85, "#MailFlowFactory user does not have a Mail account set up");
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    v116 = &unk_2878AFA80;
    v117 = sub_267619D0C();
  }

  else
  {
    v79 = sub_2676CBE2C();
    v80 = sub_2676CC23C();
    v81 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v81, v82))
    {
      OUTLINED_FUNCTION_6_10();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_3(&dword_2675D4000, v83, v80, "#MailFlowFactory encountered device we don't support, returning unsupported output flow");
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    v116 = &unk_2878AFB00;
    v117 = sub_267619CB8();
  }

  v89 = swift_allocObject();
  *&v115 = v89;
  v89[5] = v16;
  v89[6] = &protocol witness table for ResponseFactory;
  v89[2] = v105;
  v90 = sub_2676C9EFC();
  OUTLINED_FUNCTION_20_4(v90);
  swift_allocObject();

  *&v115 = sub_2676C9F0C();
  sub_2676C95FC();
}

uint64_t static MailFlowFactory.sendMailFlow()()
{
  sub_267619AF4(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_2676C935C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_267619AF4@<X0>(uint64_t *a1@<X8>)
{
  sub_2676C919C();
  if (sub_2676C918C())
  {
    v2 = type metadata accessor for SendMailSceneHostPlan();
    OUTLINED_FUNCTION_20_4(v2);
    swift_allocObject();
    SendMailSceneHostPlan.init()();
    v3 = &qword_2801CC6D8;
    v4 = &qword_2676CF618;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6D8, &qword_2676CF618);
    OUTLINED_FUNCTION_20_4(v5);
    swift_allocObject();
    sub_2676C94CC();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6E0, &qword_2676CF620);
    v6 = &qword_2801CC6E8;
  }

  else
  {
    v7 = type metadata accessor for SendMailPlan();
    OUTLINED_FUNCTION_20_4(v7);
    swift_allocObject();
    SendMailPlan.init()();
    v3 = &qword_2801CC6C0;
    v4 = &qword_2676D43A0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C0, &qword_2676D43A0);
    OUTLINED_FUNCTION_20_4(v8);
    swift_allocObject();
    sub_2676C94CC();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C8, &qword_2676CF610);
    v6 = &qword_2801CC6D0;
  }

  sub_267619E64(v6, v3, v4);
  a1[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2676C937C();
}

unint64_t sub_267619CB8()
{
  result = qword_2801CC7C8;
  if (!qword_2801CC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC7C8);
  }

  return result;
}

unint64_t sub_267619D0C()
{
  result = qword_2801CC7D0;
  if (!qword_2801CC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC7D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailFlowFactory(_BYTE *result, int a2, int a3)
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

_OWORD *sub_267619E0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_267619E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267619E64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_12_7()
{
  v1 = v0[41];
  v2 = *(v0[42] + 8);
  return v0[9];
}

void OUTLINED_FUNCTION_17_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  v1 = v0[41];
  v2 = *(v0[42] + 8);
  return v0[39];
}

void OUTLINED_FUNCTION_27_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1)
{

  return sub_2675F95E4(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1)
{
  *(v1 + 384) = a1;
  *(v1 + 352) = 4;

  return sub_2676CA04C();
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_1()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 + 352));
}

uint64_t type metadata accessor for MailLabelCATs()
{
  result = qword_2801CC808;
  if (!qword_2801CC808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26761A1AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2676CDE20;
  strcpy((v2 + 32), "toRecipients");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
  *(v2 + 48) = a1;

  sub_2676CB3AC();
}

uint64_t sub_26761A2EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2676CDE20;
  *(v6 + 32) = 0x7463656A627573;
  *(v6 + 40) = 0xE700000000000000;
  sub_267607B28(a1, v5, &qword_2801CBFD0, &qword_2676CDEA0);
  v7 = sub_2676CB3FC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_2675E35CC(v5, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v5, v7);
  }

  sub_2676CB3AC();
}

uint64_t sub_26761A5CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26761A620(a1, a2);
}

uint64_t sub_26761A620(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676CB48C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267607B28(a1, &v14 - v11, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2676CB39C();
  (*(v5 + 8))(a2, v4);
  sub_2675E35CC(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v12;
}

uint64_t sub_26761A7AC()
{
  v0 = sub_2676CB3CC();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_26761A7EC()
{
  v1 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject;
  sub_2676CB3FC();
  OUTLINED_FUNCTION_10_10(v0 + v1);
  OUTLINED_FUNCTION_10_10(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body);
  *(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_10(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type);
  return v0;
}

uint64_t sub_26761A870(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender);
  *(v1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender) = a1;
}

uint64_t sub_26761A8BC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients);
  *(v1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients) = a1;
}

uint64_t sub_26761A908()
{
  sub_2675E3BB8(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject);
  sub_2675E3BB8(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body);
  v1 = *(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender);

  v2 = *(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients);

  sub_2675E3BB8(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type);
  return v0;
}

uint64_t sub_26761A9A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject;
  swift_beginAccess();
  sub_26761BD8C(a1 + v7, v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject);
  v8 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body;
  swift_beginAccess();
  sub_26761BD8C(a1 + v8, v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body);
  *(v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender) = *(a1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender);
  *(v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients) = *(a1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients);
  v9 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type;
  swift_beginAccess();
  sub_26761BD8C(a1 + v9, v6);

  sub_26761BDFC(v6, v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type);
  return v1;
}

uint64_t sub_26761AB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v17 || (OUTLINED_FUNCTION_4_12() & 1) != 0)
  {
    sub_26761BD8C(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject, v16);
    v18 = sub_2676CB3FC();
    OUTLINED_FUNCTION_17_7(v16);
    if (!v17)
    {
      goto LABEL_42;
    }

    v19 = v16;
    goto LABEL_9;
  }

  v21 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v21 || (OUTLINED_FUNCTION_4_12() & 1) != 0)
  {
    sub_26761BD8C(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body, v14);
    v18 = sub_2676CB3FC();
    OUTLINED_FUNCTION_17_7(v14);
    if (!v17)
    {
      goto LABEL_42;
    }

    v19 = v14;
LABEL_9:
    result = sub_2675E3BB8(v19);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = 0x7265646E6573;
  v22 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v22 || (result = OUTLINED_FUNCTION_4_12(), (result & 1) != 0))
  {
    if (!*(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender))
    {
      goto LABEL_10;
    }

    v23 = sub_2676CB36C();
    OUTLINED_FUNCTION_11_11(v23);
  }

  else
  {
    v24 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
    if (!v24 && (OUTLINED_FUNCTION_4_12() & 1) == 0)
    {
      if (a1 != 1701869940 || a2 != 0xE400000000000000)
      {
        result = OUTLINED_FUNCTION_4_12();
        if ((result & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_26761BD8C(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type, v11);
      v18 = sub_2676CB3FC();
      OUTLINED_FUNCTION_17_7(v11);
      if (!v17)
      {
LABEL_42:
        *(a3 + 24) = v18;
        __swift_allocate_boxed_opaque_existential_1(a3);
        OUTLINED_FUNCTION_9_11();
        return (*(v28 + 32))();
      }

      v19 = v11;
      goto LABEL_9;
    }

    v25 = *(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
    OUTLINED_FUNCTION_11_11(v26);
  }
}

uint64_t sub_26761AE88()
{
  v0 = sub_2676CC50C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26761AED4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0x7265646E6573;
      break;
    case 3:
      result = 0x6E65697069636572;
      break;
    case 4:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26761AF84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26761AE88();
  *a2 = result;
  return result;
}

uint64_t sub_26761AFB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26761AED4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26761AFE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26761AE88();
  *a1 = result;
  return result;
}

uint64_t sub_26761B028(uint64_t a1)
{
  v2 = sub_26761BE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26761B064(uint64_t a1)
{
  v2 = sub_26761BE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26761B0A0()
{
  sub_2675E3BB8(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject);
  sub_2675E3BB8(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients);

  sub_2675E3BB8(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type);
  return v0;
}

uint64_t sub_26761B128(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_26761B1AC()
{
  sub_26761B51C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26761B25C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC878, &qword_2676CFB08);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26761BE6C();
  sub_2676CC6BC();
  LOBYTE(v20) = 0;
  sub_2676CB3FC();
  OUTLINED_FUNCTION_2_16();
  sub_26761BD44(v14, v15);
  OUTLINED_FUNCTION_1_14();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    OUTLINED_FUNCTION_1_14();
    v20 = *(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender);
    HIBYTE(v19) = 2;
    sub_2676CB36C();
    OUTLINED_FUNCTION_0_15();
    sub_26761BD44(v16, v17);
    OUTLINED_FUNCTION_6_11();
    sub_2676CC53C();
    v20 = *(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients);
    HIBYTE(v19) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
    sub_26761BEC0(&qword_2801CC890, &qword_2801CC888);
    OUTLINED_FUNCTION_6_11();
    sub_2676CC54C();
    LOBYTE(v20) = 4;
    OUTLINED_FUNCTION_1_14();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_26761B4CC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26761B648(a1);
  return v5;
}

void sub_26761B51C()
{
  if (!qword_2801CC828)
  {
    sub_2676CB3FC();
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC828);
    }
  }
}

void sub_26761B59C()
{
  sub_26761B51C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26761B648(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v34 - v10;
  MEMORY[0x28223BE20](v9);
  v35 = v34 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC850, &unk_2676CFAF8);
  v13 = OUTLINED_FUNCTION_3(v36);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v34 - v18;
  v38 = v1;
  v39 = a1;
  *(v1 + 16) = 0;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26761BE6C();
  v37 = v19;
  sub_2676CC6AC();
  if (v2)
  {
    v28 = v38;

    type metadata accessor for MailMessageConcept(0);
    v25 = *(*v28 + 48);
    v26 = *(*v28 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34[0] = v8;
    v34[1] = v15;
    sub_2676CB3FC();
    LOBYTE(v41) = 0;
    OUTLINED_FUNCTION_2_16();
    v23 = sub_26761BD44(v21, v22);
    v24 = v35;
    OUTLINED_FUNCTION_8_14();
    sub_2676CC51C();
    v28 = v38;
    sub_26761BDFC(v24, v38 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject);
    LOBYTE(v41) = 1;
    OUTLINED_FUNCTION_8_14();
    sub_2676CC51C();
    v35 = v23;
    sub_26761BDFC(v11, v28 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body);
    sub_2676CB36C();
    v40 = 2;
    OUTLINED_FUNCTION_0_15();
    sub_26761BD44(v29, v30);
    OUTLINED_FUNCTION_5_13();
    sub_2676CC51C();
    *(v28 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
    v40 = 3;
    sub_26761BEC0(&qword_2801CC870, &qword_2801CC868);
    OUTLINED_FUNCTION_5_13();
    sub_2676CC52C();
    *(v28 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients) = v41;
    LOBYTE(v41) = 4;
    v31 = v34[0];
    OUTLINED_FUNCTION_8_14();
    sub_2676CC51C();
    v32 = OUTLINED_FUNCTION_3_10();
    v33(v32);
    sub_26761BDFC(v31, v28 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v28;
}

void *sub_26761BB54()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_26761BB9C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_26761BBE8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26761BC64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26761B4CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26761BD44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26761BD8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26761BDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26761BE6C()
{
  result = qword_2801CC858;
  if (!qword_2801CC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC858);
  }

  return result;
}

uint64_t sub_26761BEC0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC188, &qword_2676CDEB0);
    OUTLINED_FUNCTION_0_15();
    sub_26761BD44(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailMessageConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26761C02C()
{
  result = qword_2801CC898;
  if (!qword_2801CC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC898);
  }

  return result;
}

unint64_t sub_26761C084()
{
  result = qword_2801CC8A0;
  if (!qword_2801CC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC8A0);
  }

  return result;
}

unint64_t sub_26761C0DC()
{
  result = qword_2801CC8A8;
  if (!qword_2801CC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC8A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_2676CC53C();
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return sub_2676CC59C();
}

uint64_t OUTLINED_FUNCTION_5_13()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t sub_26761C25C(char a1, int a2, uint64_t a3)
{
  v19 = a2;
  v5 = sub_2676C91BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2676C29D8(0, v10, 0);
    v11 = v20;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      sub_26761C434(v13, a1 & 1, v19 & 1, v9);
      v20 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2676C29D8(v15 > 1, v16 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      sub_26761D1B4(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_26761C434@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v148 = a3;
  v149 = a2;
  v150 = a4;
  v5 = sub_2676CB48C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v159 = (v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0);
  v8 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v146 = v130 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v156 = v130 - v12;
  v13 = sub_2676C90CC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v155 = v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2676C8E9C();
  v16 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v134 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2676C8EBC();
  v132 = *(v157 - 8);
  v18 = *(v132 + 64);
  MEMORY[0x28223BE20](v157);
  v131 = v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v136 = v130 - v22;
  v23 = sub_2676C8C8C();
  v160 = *(v23 - 8);
  v24 = *(v160 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v142 = v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v130 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v130 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v154 = v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v130 - v36;
  v38 = sub_2676C8BFC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a1;
  sub_26761D218(a1, v37);
  v138 = v32;
  v43 = *&v37[*(v32 + 48) + 8];

  v151 = v39;
  v152 = v38;
  (*(v39 + 32))(v42, v37, v38);
  if (qword_2801CBA80 != -1)
  {
    swift_once();
  }

  v44 = qword_2801D3CD8;
  sub_2676C8B3C();
  v45 = sub_26760BBE4();
  v47 = v46;

  v48 = *(v160 + 8);
  v48(v31, v23);
  v49 = v42;
  v153 = v47;
  v133 = v31;
  if (v47)
  {
    v143 = v45;
  }

  else
  {
    sub_2676C8B3C();
    v143 = sub_2676C8C6C();
    v153 = v50;
    v48(v31, v23);
  }

  v51 = v23;
  v52 = sub_2676C8ABC();
  v144 = v53;
  v145 = v52;
  sub_2676C8B3C();
  v54 = sub_2676C8C1C();
  v56 = v55;
  v48(v29, v23);
  v57 = v136;
  if (v56)
  {
    v141 = v56;
    v142 = v54;
  }

  else
  {
    v58 = v142;
    sub_2676C8B3C();
    v59 = sub_2676C8C4C();
    v61 = v60;
    v48(v58, v23);

    v62 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v62 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v63 = v133;
      sub_2676C8B3C();
      v64 = sub_2676C8C4C();
      v141 = v65;
      v142 = v64;
      v48(v63, v23);
    }

    else
    {
      v141 = 0;
      v142 = 0;
    }
  }

  v140 = sub_2676C8BAC();
  v139 = v66;
  v67 = v154;
  sub_26761D218(v158, v154);
  v68 = (v67 + *(v138 + 48));
  v70 = *v68;
  v69 = v68[1];
  v138 = v70;
  v137 = v69;
  sub_2676C8AFC();
  v71 = v157;
  if (__swift_getEnumTagSinglePayload(v57, 1, v157))
  {
    sub_2675E35CC(v57, &qword_2801CBFE0, &qword_2676D1070);
    v136 = 0;
    v135 = 0;
  }

  else
  {
    v72 = v48;
    v73 = v132;
    v74 = v131;
    (*(v132 + 16))(v131, v57, v71);
    sub_2675E35CC(v57, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    v136 = sub_2676CC08C();
    v135 = v75;
    (*(v73 + 8))(v74, v71);
    v48 = v72;
  }

  sub_2676C8A7C();
  v76 = sub_2676C8B2C();
  MailMessagePrototype.idURL.getter(v156);
  type metadata accessor for MailLabelCATs();
  sub_2676CB47C();
  v134 = sub_2676CB3BC();
  v157 = v49;
  v77 = sub_2676C8ACC();
  v78 = *(v77 + 16);
  if (v78)
  {
    LODWORD(v132) = v76;
    v161 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    v79 = v133;
    v81 = *(v160 + 16);
    v80 = v160 + 16;
    v159 = v48;
    v160 = v81;
    v82 = (*(v80 + 64) + 32) & ~*(v80 + 64);
    v131 = v77;
    v83 = v77 + v82;
    v158 = *(v80 + 56);
    do
    {
      (v160)(v79, v83, v51);
      sub_267626550();
      v159(v79, v51);
      sub_2676CC44C();
      v84 = v161[2];
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v83 += v158;
      --v78;
    }

    while (v78);

    v85 = v161;
    v76 = v132;
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  v86 = v146;
  sub_26761A1AC(v85);

  v87 = sub_2676CC68C();
  v89 = v88;
  sub_2675E35CC(v86, &qword_2801CC440, &qword_2676CEEF0);
  if (v89)
  {
    v90 = v87;
  }

  else
  {
    v90 = 0;
  }

  v130[2] = v90;
  v91 = 0xE000000000000000;
  if (v89)
  {
    v91 = v89;
  }

  v130[1] = v91;
  LODWORD(v146) = v76 ^ 1;
  if (qword_2801CBA70 != -1)
  {
    swift_once();
  }

  v92 = *(qword_2801D3CD0 + 24);
  v132 = *(qword_2801D3CD0 + 16);
  v131 = *(qword_2801D3CD0 + 256);
  v93 = *(qword_2801D3CD0 + 264);
  v94 = *(qword_2801D3CD0 + 272);
  v95 = *(qword_2801D3CD0 + 280);
  v96 = *(qword_2801D3CD0 + 288);
  v98 = *(qword_2801D3CD0 + 296);
  v97 = *(qword_2801D3CD0 + 304);
  v100 = *(qword_2801D3CD0 + 312);
  v99 = *(qword_2801D3CD0 + 320);
  v102 = *(qword_2801D3CD0 + 328);
  v101 = *(qword_2801D3CD0 + 336);
  v104 = *(qword_2801D3CD0 + 344);
  v103 = *(qword_2801D3CD0 + 352);
  v106 = *(qword_2801D3CD0 + 360);
  v105 = *(qword_2801D3CD0 + 368);
  v107 = *(qword_2801D3CD0 + 376);
  v108 = *(qword_2801D3CD0 + 384);
  v109 = *(qword_2801D3CD0 + 400);
  v133 = *(qword_2801D3CD0 + 392);
  v110 = *(qword_2801D3CD0 + 416);
  v134 = *(qword_2801D3CD0 + 408);
  v111 = *(qword_2801D3CD0 + 432);
  v147 = *(qword_2801D3CD0 + 424);
  v113 = *(qword_2801D3CD0 + 440);
  v112 = *(qword_2801D3CD0 + 448);
  v114 = *(qword_2801D3CD0 + 464);
  v158 = *(qword_2801D3CD0 + 456);
  v159 = v113;
  v160 = *(qword_2801D3CD0 + 472);
  sub_2676C91AC();
  v115 = *(v151 + 8);

  v116 = v152;
  v115(v154, v152);
  sub_2676C8BAC();
  v117 = objc_opt_self();
  v118 = sub_2676CBF3C();

  v119 = [v117 ec:v118 partiallyRedactedStringForSubjectOrSummary:?];

  v120 = sub_2676CBF6C();
  v122 = v121;

  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v123 = sub_2676CBE4C();
  __swift_project_value_buffer(v123, qword_2801CDC90);

  v124 = sub_2676CBE2C();
  v125 = sub_2676CC23C();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v161 = v127;
    *v126 = 136315138;
    v128 = sub_2676B0B84(v120, v122, &v161);

    *(v126 + 4) = v128;
    _os_log_impl(&dword_2675D4000, v124, v125, "#WidgetMessage producing WidgetMessage for UI plugin with redacted subject: %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x26D5FEA80](v127, -1, -1);
    MEMORY[0x26D5FEA80](v126, -1, -1);
  }

  else
  {
  }

  return (v115)(v157, v116);
}

uint64_t sub_26761D1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C91BC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26761D218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26761D2F8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v14 - v11;
  (*(v8 + 16))(&v14 - v11, v3 + *a3, v5);
  sub_2676C980C();
  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_26761D3E0(uint64_t a1, char a2)
{
  v4 = sub_2676CB0DC();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v43[-v18];
  if (!*(a1 + 8) || *(a1 + 8) == 2 && *a1 == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = sub_2676CBE4C();
    __swift_project_value_buffer(v20, qword_2801CDC90);
    v21 = sub_2676CBE2C();
    v22 = sub_2676CC23C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_8(v23);
      OUTLINED_FUNCTION_15_9(&dword_2675D4000, v24, v25, "SendMailIntent succeeded");
      OUTLINED_FUNCTION_9_12();
    }

    sub_26761D2A4();
    v26 = *MEMORY[0x277D5CA00];
    v27 = OUTLINED_FUNCTION_10_11();
    v28(v27);
    sub_2676C984C();
    (*(v7 + 8))(v11, v4);
    (*(v15 + 8))(v19, v12);
    v44 = &type metadata for IntentHandled;
    v29 = sub_26761F5D0();
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = sub_2676CBE4C();
    __swift_project_value_buffer(v30, qword_2801CDC90);
    v31 = sub_2676CBE2C();
    v32 = sub_2676CC23C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_8(v33);
      OUTLINED_FUNCTION_15_9(&dword_2675D4000, v34, v35, "SendMailIntent failed");
      OUTLINED_FUNCTION_9_12();
    }

    sub_26761D2A4();
    v36 = *MEMORY[0x277D5CA20];
    v37 = OUTLINED_FUNCTION_10_11();
    v38(v37);
    sub_2676C984C();
    (*(v7 + 8))(v11, v4);
    (*(v15 + 8))(v19, v12);
    v44 = &type metadata for IntentCancelled;
    v29 = sub_26761F57C();
  }

  v45 = v29;
  v43[8] = a2 & 1;
  v39 = sub_2676C9EFC();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  return sub_2676C9F0C();
}

uint64_t sub_26761D754()
{
  OUTLINED_FUNCTION_3_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_2676C8D8C();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v1[9] = *(v5 + 64);
  v1[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26761D814()
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "Performing SendMailIntent", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v10 = v0[5];
  v9 = v0[6];

  (*(v8 + 16))(v5, v10, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v0[11] = v12;
  *(v12 + 16) = v9;
  (*(v8 + 32))(v12 + v11, v5, v7);

  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[12] = v13;
  *v13 = v14;
  v13[1] = sub_26761D9FC;
  v15 = v0[6];

  return sub_26761DDA4();
}

uint64_t sub_26761D9FC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26761DAFC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v3;

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_26761DB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26761DB8C, 0, 0);
}

uint64_t sub_26761DB8C()
{
  v1 = (v0[3] + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v11 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[5] = v6;
  *v6 = v7;
  v6[1] = sub_26761DCC4;
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v8, v2, v3);
}

uint64_t sub_26761DCC4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15_0();

  return v5();
}

uint64_t sub_26761DDA4()
{
  OUTLINED_FUNCTION_3_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_2676C966C();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26761DE5C()
{
  v1 = v0[10];
  v24 = v0[9];
  v25 = v0[8];
  sub_2676C970C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v3 = (v1 + v2[12]);
  v4 = (v1 + v2[20]);
  v5 = (v1 + v2[24]);
  v20 = v2[16];
  v21 = v2[32];
  v6 = v1 + v2[36];
  v7 = (v1 + v2[40]);
  v8 = (v1 + v2[44]);
  v9 = (v1 + v2[48]);
  v22 = v2[28];
  v23 = v2[52];
  v10 = *MEMORY[0x277D5BB98];
  v11 = sub_2676C99EC();
  OUTLINED_FUNCTION_2_6(v11);
  (*(v12 + 104))(v1, v10);
  OUTLINED_FUNCTION_1_15();
  *v3 = v13;
  v3[1] = v14;
  *(v1 + v20) = 0;
  *v4 = 0;
  v4[1] = 0;
  *v5 = 0u;
  v5[1] = 0u;
  *(v1 + v22) = 0;
  *(v1 + v21) = 0;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  v15 = *MEMORY[0x277D5B948];
  v16 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6(v16);
  (*(v17 + 104))(v1 + v23, v15, v16);
  __swift_storeEnumTagSinglePayload(v1 + v23, 0, 1, v16);
  (*(v24 + 104))(v1, *MEMORY[0x277D5B8B8], v25);
  v0[11] = sub_2676C971C();
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_13_9(v18);

  return sub_26761EA00();
}

uint64_t sub_26761E09C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;
  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[5];
  v7 = *v0;
  *v3 = *v0;

  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v2[13] = v9;
  *v9 = v7;
  v9[1] = sub_26761E26C;
  v10 = v1[6];

  return v12(v2 + 2);
}

uint64_t sub_26761E26C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26761E350()
{
  v7 = v0;
  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  v2 = *(v0 + 24);
  *(v0 + 25) = v2;
  v5 = v1;
  v6 = v2;
  *(v0 + 120) = sub_26761E574(&v5);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_13_9(v3);

  return sub_26761EA00();
}

uint64_t sub_26761E408()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26761E508()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 25);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);
  *v3 = *(v0 + 112);
  *(v3 + 8) = v1;

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_26761E574(uint64_t *a1)
{
  v4 = sub_2676C966C();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v80 = v12;
  v81 = v8;
  if (!v11)
  {
LABEL_5:
    v79 = sub_2676C970C();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
    v38 = &v10[*(v37 + 48)];
    v39 = *(v37 + 64);
    v40 = OUTLINED_FUNCTION_11_12(v37);
    v78 = v40[28];
    v41 = v40[32];
    v76 = v42;
    v77 = v41;
    v43 = &v10[v40[36]];
    v44 = &v10[v40[40]];
    v45 = &v10[v40[44]];
    v46 = &v10[v40[48]];
    v47 = v40[52];
    v48 = *MEMORY[0x277D5BBA8];
    v49 = sub_2676C99EC();
    OUTLINED_FUNCTION_2_6(v49);
    (*(v50 + 104))(v10, v48);
    OUTLINED_FUNCTION_1_15();
    *v38 = v51;
    *(v38 + 1) = v52;
    *&v10[v76] = 0;
    *v1 = 0;
    v1[1] = 0;
    *v2 = 0u;
    v2[1] = 0u;
    v53 = v77;
    *&v10[v78] = 0;
    *&v10[v53] = 0;
    *(v43 + 4) = 0;
    *v43 = 0u;
    *(v43 + 1) = 0u;
    *v44 = 0;
    *(v44 + 1) = 0;
    *v45 = 0;
    *(v45 + 1) = 0;
    *v46 = 0;
    *(v46 + 1) = 0;
    v54 = *MEMORY[0x277D5B950];
    v33 = sub_2676C968C();
    OUTLINED_FUNCTION_2_6(v33);
    (*(v55 + 104))(&v10[v47], v54, v33);
    v36 = &v10[v47];
    goto LABEL_6;
  }

  v13 = *a1;
  if (v11 != 1)
  {
    if (!v13)
    {
      v79 = sub_2676C970C();
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
      v60 = &v10[*(v59 + 48)];
      v61 = *(v59 + 64);
      v62 = OUTLINED_FUNCTION_11_12(v59);
      v63 = v62[28];
      v76 = v62[32];
      v77 = v63;
      v64 = &v10[v62[36]];
      v65 = &v10[v62[40]];
      v66 = &v10[v62[44]];
      v67 = &v10[v62[48]];
      v78 = v62[52];
      v68 = *MEMORY[0x277D5BBD0];
      v69 = sub_2676C99EC();
      OUTLINED_FUNCTION_2_6(v69);
      (*(v70 + 104))(v10, v68);
      OUTLINED_FUNCTION_1_15();
      *v60 = v71;
      *(v60 + 1) = v72;
      *&v10[v61] = 0;
      *v1 = 0;
      v1[1] = 0;
      *v2 = 0u;
      v2[1] = 0u;
      v73 = v76;
      *&v10[v77] = 0;
      *&v10[v73] = 0;
      *(v64 + 4) = 0;
      *v64 = 0u;
      *(v64 + 1) = 0u;
      *v65 = 0;
      *(v65 + 1) = 0;
      *v66 = 0;
      *(v66 + 1) = 0;
      v57 = sub_2676C968C();
      *v67 = 0;
      *(v67 + 1) = 0;
      v36 = &v10[v78];
      v56 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v79 = sub_2676C970C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v15 = &v10[v14[12]];
  v16 = &v10[v14[20]];
  v17 = &v10[v14[24]];
  v18 = v14[28];
  v19 = v14[32];
  v75 = v14[16];
  v76 = v19;
  v20 = &v10[v14[36]];
  v21 = &v10[v14[40]];
  v22 = &v10[v14[44]];
  v23 = &v10[v14[48]];
  v24 = v14[52];
  v77 = v18;
  v78 = v24;
  v25 = *MEMORY[0x277D5BBA8];
  v26 = sub_2676C99EC();
  OUTLINED_FUNCTION_2_6(v26);
  (*(v27 + 104))(v10, v25);
  OUTLINED_FUNCTION_1_15();
  *v15 = v28;
  *(v15 + 1) = v29;
  *&v10[v75] = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v30 = v76;
  *&v10[v77] = 0;
  *&v10[v30] = 0;
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *v21 = 0;
  *(v21 + 1) = 0;
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_getErrorValue();
  *v23 = sub_2676CC5FC();
  v23[1] = v31;
  v32 = *MEMORY[0x277D5B8D0];
  v33 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6(v33);
  v35 = v78;
  (*(v34 + 104))(&v10[v78], v32, v33);
  v36 = &v10[v35];
LABEL_6:
  v56 = 0;
  v57 = v33;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v36, v56, 1, v57);
  (*(v80 + 104))(v10, *MEMORY[0x277D5B8B8], v81);
  return sub_2676C971C();
}

uint64_t sub_26761EA00()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26761EA90()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_2676CC1DC();
  v4 = sub_2676CC1FC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_26761F6DC(0, 0, v2, &unk_2676CFD10, v5);

  sub_2675EB7EC(v2, &qword_2801CC770, &unk_2676CF800);

  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t sub_26761EB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2676C966C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26761EC54, 0, 0);
}

uint64_t sub_26761EC54()
{
  v23 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[2];
  v2 = sub_2676CBE4C();
  __swift_project_value_buffer(v2, qword_2801CDC90);

  v3 = sub_2676CBE2C();
  v4 = sub_2676CC23C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_2676C96FC();
    v11 = sub_2676C965C();
    v13 = v12;
    (*(v6 + 8))(v5, v7);
    v14 = sub_2676B0B84(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2675D4000, v3, v4, "#MailSendingPlan: sending STC event %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D5FEA80](v10, -1, -1);
    MEMORY[0x26D5FEA80](v9, -1, -1);
  }

  v15 = (v0[3] + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(MEMORY[0x277D5B8C0] + 4);
  v19 = swift_task_alloc();
  v0[7] = v19;
  *v19 = v0;
  v19[1] = sub_26761EE7C;
  v20 = v0[2];

  return MEMORY[0x2821BA730](v20, v16, v17);
}

uint64_t sub_26761EE7C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t MailSendingPlan.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__intent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__status;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_2_6(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__hasFocusedField;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_2_6(v8);
  v10 = *(v9 + 8);
  v10(v0 + v7, v8);
  v10(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__confirmedFromUI, v8);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride, &qword_2801CC6A8, &unk_2676CF5F0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender));
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);

  return v0;
}

uint64_t MailSendingPlan.__deallocating_deinit()
{
  MailSendingPlan.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MailSendingPlan()
{
  result = qword_2801CC8E8;
  if (!qword_2801CC8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26761F1C0()
{
  sub_26761F33C(319, &qword_2801CC8F8, MEMORY[0x277CBA350]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26761F33C(319, &qword_2801CC900, MEMORY[0x277D5CA28]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26761F390();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26761F33C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2676C985C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26761F390()
{
  if (!qword_2801CC908)
  {
    v0 = sub_2676C985C();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC908);
    }
  }
}

uint64_t sub_26761F3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_26761F624;

  return sub_26761EB94(a1, v4, v5, v7, v6);
}

uint64_t sub_26761F49C(uint64_t a1)
{
  v4 = *(sub_2676C8D8C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_267605CFC;

  return sub_26761DB68(a1, v6, v1 + v5);
}

unint64_t sub_26761F57C()
{
  result = qword_2801CC918;
  if (!qword_2801CC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC918);
  }

  return result;
}

unint64_t sub_26761F5D0()
{
  result = qword_2801CC920;
  if (!qword_2801CC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC920);
  }

  return result;
}

void OUTLINED_FUNCTION_9_12()
{
  v2 = *(v0 - 128);

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t result)
{
  v2 = v1 + *(result + 80);
  v3 = v1 + *(result + 96);
  return result;
}

_WORD *OUTLINED_FUNCTION_12_8(_WORD *result)
{
  *(v2 - 128) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 56);
  return v2;
}

void OUTLINED_FUNCTION_15_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_26761F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_267621550(a3, v26 - v11);
  v13 = sub_2676CC1FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v12, &qword_2801CC770, &unk_2676CF800);
  }

  else
  {
    sub_2676CC1EC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2676CC18C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2676CBFCC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26761F9C4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v14 - v11;
  (*(v8 + 16))(&v14 - v11, v3 + *a3, v5);
  sub_2676C980C();
  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_26761FAAC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    goto LABEL_9;
  }

  if (*(a1 + 8) == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v1 = sub_2676CBE4C();
    __swift_project_value_buffer(v1, qword_2801CDC90);
    v2 = sub_2676CBE2C();
    v3 = sub_2676CC23C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_17_3();
      *v4 = 0;
      _os_log_impl(&dword_2675D4000, v2, v3, "#makeInform SendMailIntent failed", v4, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    type metadata accessor for GenericError();
    swift_allocObject();
    sub_267621824();
    goto LABEL_14;
  }

  if (!*a1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = sub_2676CBE4C();
    __swift_project_value_buffer(v14, qword_2801CDC90);
    v15 = sub_2676CBE2C();
    v16 = sub_2676CC23C();
    if (os_log_type_enabled(v15, v16))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_44_0(&dword_2675D4000, v17, v18, "#makeInform SendMailIntent cancelled");
      OUTLINED_FUNCTION_2_5();
    }

    sub_26761F57C();
  }

  else
  {
LABEL_9:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_2676CBE4C();
    __swift_project_value_buffer(v5, qword_2801CDC90);
    v6 = sub_2676CBE2C();
    v7 = sub_2676CC23C();
    if (os_log_type_enabled(v6, v7))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_44_0(&dword_2675D4000, v8, v9, "#makeInform Send Mail succeeded");
      OUTLINED_FUNCTION_2_5();
    }

    sub_26761F5D0();
  }

LABEL_14:
  v10 = sub_2676C9EFC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return sub_2676C9F0C();
}

uint64_t sub_26761FD10()
{
  OUTLINED_FUNCTION_3_0();
  v1[4] = v2;
  v1[5] = sub_2676CC1CC();
  v1[6] = sub_2676CC1BC();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_26761FDC4;

  return sub_2676200FC((v1 + 2), v0);
}

uint64_t sub_26761FDC4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v8 = sub_2676CC18C();

  return MEMORY[0x2822009F8](sub_26761FEF0, v8, v7);
}

uint64_t sub_26761FEF0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = *(v0 + 24);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v3;
  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_26761FF5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2676CC1CC();
  *(v1 + 24) = sub_2676CC1BC();
  v3 = sub_2676CC18C();

  return MEMORY[0x2822009F8](sub_26761FFF4, v3, v2);
}

uint64_t sub_26761FFF4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 24);

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_2676CBE4C();
  __swift_project_value_buffer(v2, qword_2801CDC90);
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC23C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_17_3();
    *v5 = 0;
    _os_log_impl(&dword_2675D4000, v3, v4, "#performSend Performed send mail", v5, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v6 = *(v0 + 16);

  *v6 = 1;
  *(v6 + 8) = 2;
  OUTLINED_FUNCTION_15_0();

  return v7();
}

uint64_t sub_2676200FC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2676C966C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676201BC, 0, 0);
}

uint64_t sub_2676201BC()
{
  v1 = v0[8];
  v24 = v0[7];
  v25 = v0[6];
  sub_2676C970C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v3 = (v1 + v2[12]);
  v4 = (v1 + v2[20]);
  v5 = (v1 + v2[24]);
  v20 = v2[16];
  v21 = v2[32];
  v6 = v1 + v2[36];
  v7 = (v1 + v2[40]);
  v8 = (v1 + v2[44]);
  v9 = (v1 + v2[48]);
  v22 = v2[28];
  v23 = v2[52];
  v10 = *MEMORY[0x277D5BB98];
  v11 = sub_2676C99EC();
  OUTLINED_FUNCTION_2_6(v11);
  (*(v12 + 104))(v1, v10);
  OUTLINED_FUNCTION_1_15();
  *v3 = v13;
  v3[1] = v14;
  *(v1 + v20) = 0;
  *v4 = 0;
  v4[1] = 0;
  *v5 = 0u;
  v5[1] = 0u;
  *(v1 + v22) = 0;
  *(v1 + v21) = 0;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  v15 = *MEMORY[0x277D5B948];
  v16 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6(v16);
  (*(v17 + 104))(v1 + v23, v15, v16);
  __swift_storeEnumTagSinglePayload(v1 + v23, 0, 1, v16);
  (*(v24 + 104))(v1, *MEMORY[0x277D5B8B8], v25);
  v0[9] = sub_2676C971C();
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_13_10(v18);

  return sub_267620CC8();
}

uint64_t sub_2676203FC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v7 = swift_task_alloc();
  *(v2 + 88) = v7;
  *v7 = v5;
  v7[1] = sub_267620538;

  return sub_26761FF5C(v2 + 16);
}

uint64_t sub_267620538()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26762061C()
{
  OUTLINED_FUNCTION_12_1();
  v7 = v0;
  v1 = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 24);
  *(v0 + 25) = v2;
  v5 = v1;
  v6 = v2;
  *(v0 + 104) = sub_26762083C(&v5);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_13_10(v3);

  return sub_267620CC8();
}

uint64_t sub_2676206D0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2676207D0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 25);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  *v3 = *(v0 + 96);
  *(v3 + 8) = v1;

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_26762083C(uint64_t *a1)
{
  v4 = sub_2676C966C();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v80 = v12;
  v81 = v8;
  if (!v11)
  {
LABEL_5:
    v79 = sub_2676C970C();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
    v38 = &v10[*(v37 + 48)];
    v39 = *(v37 + 64);
    v40 = OUTLINED_FUNCTION_11_12(v37);
    v78 = v40[28];
    v41 = v40[32];
    v76 = v42;
    v77 = v41;
    v43 = &v10[v40[36]];
    v44 = &v10[v40[40]];
    v45 = &v10[v40[44]];
    v46 = &v10[v40[48]];
    v47 = v40[52];
    v48 = *MEMORY[0x277D5BBA8];
    v49 = sub_2676C99EC();
    OUTLINED_FUNCTION_2_6(v49);
    (*(v50 + 104))(v10, v48);
    OUTLINED_FUNCTION_1_15();
    *v38 = v51;
    *(v38 + 1) = v52;
    *&v10[v76] = 0;
    *v1 = 0;
    v1[1] = 0;
    *v2 = 0u;
    v2[1] = 0u;
    v53 = v77;
    *&v10[v78] = 0;
    *&v10[v53] = 0;
    *(v43 + 4) = 0;
    *v43 = 0u;
    *(v43 + 1) = 0u;
    *v44 = 0;
    *(v44 + 1) = 0;
    *v45 = 0;
    *(v45 + 1) = 0;
    *v46 = 0;
    *(v46 + 1) = 0;
    v54 = *MEMORY[0x277D5B950];
    v33 = sub_2676C968C();
    OUTLINED_FUNCTION_2_6(v33);
    (*(v55 + 104))(&v10[v47], v54, v33);
    v36 = &v10[v47];
    goto LABEL_6;
  }

  v13 = *a1;
  if (v11 != 1)
  {
    if (!v13)
    {
      v79 = sub_2676C970C();
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
      v60 = &v10[*(v59 + 48)];
      v61 = *(v59 + 64);
      v62 = OUTLINED_FUNCTION_11_12(v59);
      v63 = v62[28];
      v76 = v62[32];
      v77 = v63;
      v64 = &v10[v62[36]];
      v65 = &v10[v62[40]];
      v66 = &v10[v62[44]];
      v67 = &v10[v62[48]];
      v78 = v62[52];
      v68 = *MEMORY[0x277D5BBD0];
      v69 = sub_2676C99EC();
      OUTLINED_FUNCTION_2_6(v69);
      (*(v70 + 104))(v10, v68);
      OUTLINED_FUNCTION_1_15();
      *v60 = v71;
      *(v60 + 1) = v72;
      *&v10[v61] = 0;
      *v1 = 0;
      v1[1] = 0;
      *v2 = 0u;
      v2[1] = 0u;
      v73 = v76;
      *&v10[v77] = 0;
      *&v10[v73] = 0;
      *(v64 + 4) = 0;
      *v64 = 0u;
      *(v64 + 1) = 0u;
      *v65 = 0;
      *(v65 + 1) = 0;
      *v66 = 0;
      *(v66 + 1) = 0;
      v57 = sub_2676C968C();
      *v67 = 0;
      *(v67 + 1) = 0;
      v36 = &v10[v78];
      v56 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v79 = sub_2676C970C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v15 = &v10[v14[12]];
  v16 = &v10[v14[20]];
  v17 = &v10[v14[24]];
  v18 = v14[28];
  v19 = v14[32];
  v75 = v14[16];
  v76 = v19;
  v20 = &v10[v14[36]];
  v21 = &v10[v14[40]];
  v22 = &v10[v14[44]];
  v23 = &v10[v14[48]];
  v24 = v14[52];
  v77 = v18;
  v78 = v24;
  v25 = *MEMORY[0x277D5BBA8];
  v26 = sub_2676C99EC();
  OUTLINED_FUNCTION_2_6(v26);
  (*(v27 + 104))(v10, v25);
  OUTLINED_FUNCTION_1_15();
  *v15 = v28;
  *(v15 + 1) = v29;
  *&v10[v75] = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v30 = v76;
  *&v10[v77] = 0;
  *&v10[v30] = 0;
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *v21 = 0;
  *(v21 + 1) = 0;
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_getErrorValue();
  *v23 = sub_2676CC5FC();
  v23[1] = v31;
  v32 = *MEMORY[0x277D5B8D0];
  v33 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6(v33);
  v35 = v78;
  (*(v34 + 104))(&v10[v78], v32, v33);
  v36 = &v10[v35];
LABEL_6:
  v56 = 0;
  v57 = v33;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v36, v56, 1, v57);
  (*(v80 + 104))(v10, *MEMORY[0x277D5B8B8], v81);
  return sub_2676C971C();
}

uint64_t sub_267620CC8()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267620D58()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_2676CC1DC();
  v4 = sub_2676CC1FC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_26761F6DC(0, 0, v2, &unk_2676CFDB0, v5);

  sub_2675EB7EC(v2, &qword_2801CC770, &unk_2676CF800);

  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t sub_267620E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2676C966C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267620F18, 0, 0);
}

uint64_t sub_267620F18()
{
  v23 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[2];
  v2 = sub_2676CBE4C();
  __swift_project_value_buffer(v2, qword_2801CDC90);

  v3 = sub_2676CBE2C();
  v4 = sub_2676CC23C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_2676C96FC();
    v11 = sub_2676C965C();
    v13 = v12;
    (*(v6 + 8))(v5, v7);
    v14 = sub_2676B0B84(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2675D4000, v3, v4, "#MailSendingSceneHostPlan: sending STC event %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v15 = (v0[3] + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(MEMORY[0x277D5B8C0] + 4);
  v19 = swift_task_alloc();
  v0[7] = v19;
  *v19 = v0;
  v19[1] = sub_26761EE7C;
  v20 = v0[2];

  return MEMORY[0x2821BA730](v20, v16, v17);
}

uint64_t MailSendingSceneHostPlan.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__hasFocusedField;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_2_6(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__isConfirmed, v2);
  v5 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__message;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_2_6(v6);
  (*(v7 + 8))(v0 + v5);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride, &qword_2801CC6A8, &unk_2676CF5F0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender));
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);

  return v0;
}

uint64_t MailSendingSceneHostPlan.__deallocating_deinit()
{
  MailSendingSceneHostPlan.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MailSendingSceneHostPlan()
{
  result = qword_2801CC948;
  if (!qword_2801CC948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267621334()
{
  sub_26761F390();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_267621440();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_267621440()
{
  if (!qword_2801CC958)
  {
    sub_2676CB18C();
    v0 = sub_2676C985C();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC958);
    }
  }
}

uint64_t sub_267621498(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_54_0(v7);
  *v8 = v9;
  v8[1] = sub_267605CFC;

  return sub_267620E58(a1, v3, v4, v6, v5);
}

uint64_t sub_267621550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676215C0()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_54_0(v4);
  *v5 = v6;
  v5[1] = sub_2676216AC;

  return v8(v1);
}

uint64_t sub_2676216AC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15_0();

  return v5();
}

uint64_t sub_267621790()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_54_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_42_0(v4);

  return v7(v6);
}

unint64_t sub_267621824()
{
  result = qword_2801CC960;
  if (!qword_2801CC960)
  {
    type metadata accessor for GenericError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 40);
  return v2;
}

void sub_2676218D8()
{
  sub_267621C98(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
  if (v0 <= 0x3F)
  {
    sub_267621C98(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
    if (v1 <= 0x3F)
    {
      sub_267621C98(319, &qword_2801CC9B8, &qword_2801CC9C0, &unk_2676D22C0, MEMORY[0x277D5B9E8]);
      if (v2 <= 0x3F)
      {
        sub_267621A74();
        if (v3 <= 0x3F)
        {
          sub_267621C98(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
          if (v4 <= 0x3F)
          {
            sub_26761F390();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_267621A74()
{
  if (!qword_2801CC900)
  {
    sub_2676CB0DC();
    v0 = sub_2676C985C();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC900);
    }
  }
}

void sub_267621B14()
{
  sub_267621C98(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
  if (v0 <= 0x3F)
  {
    sub_267621C98(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
    if (v1 <= 0x3F)
    {
      sub_267621C98(319, &qword_2801CCA00, &qword_2801CBFE0, &qword_2676D1070, MEMORY[0x277D5B9E8]);
      if (v2 <= 0x3F)
      {
        sub_267621C98(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
        if (v3 <= 0x3F)
        {
          sub_26761F390();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267621C98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_267621CFC(uint64_t a1)
{
  v384 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v370 = v7;
  OUTLINED_FUNCTION_7_3();
  v8 = sub_2676C8DDC();
  v9 = OUTLINED_FUNCTION_3(v8);
  v377 = v10;
  v378 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_5();
  v376 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  v15 = OUTLINED_FUNCTION_3(v14);
  v381 = v16;
  v382 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v380 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  OUTLINED_FUNCTION_3(v21);
  v374 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v373 = v26;
  OUTLINED_FUNCTION_7_3();
  v27 = sub_2676CAFDC();
  v387 = OUTLINED_FUNCTION_3(v27);
  v388 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v387);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  v379 = v36;
  OUTLINED_FUNCTION_12_0();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (v361 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (v361 - v42);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_4();
  v371 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_4();
  v372 = v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_4();
  v375 = v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  v386 = v361 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  OUTLINED_FUNCTION_4_1(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v54);
  v56 = v361 - v55;
  v57 = sub_2676CB0DC();
  v58 = OUTLINED_FUNCTION_3(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v66);
  v68 = v361 - v67;
  v383 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  v69 = v383[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v385 = v1;
  v368 = v69;
  sub_2676C97FC();
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    v361[0] = v60;
    v70 = v21;
    sub_2675E35CC(v56, &qword_2801CCA20, &qword_2676CFEB8);
  }

  else
  {
    (*(v60 + 32))(v68, v56, v57);
    v71 = v57;
    if (sub_2676CB0BC())
    {
      v72 = v60;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v73 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v73, qword_2801CDC90);
      (*(v60 + 16))(v2, v68, v57);
      v74 = sub_2676CBE2C();
      v75 = sub_2676CC23C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_5_3();
        v77 = OUTLINED_FUNCTION_41_1();
        v389 = v77;
        *v76 = 136315138;
        v78 = sub_2676CB0CC();
        v79 = v71;
        v81 = v80;
        v82 = *(v72 + 8);
        v83 = v2;
        v84 = v79;
        v82(v83, v79);
        v85 = sub_2676B0B84(v78, v81, &v389);

        *(v76 + 4) = v85;
        _os_log_impl(&dword_2675D4000, v74, v75, "#MailStateChangeEventHandler: State is already %s, returning without applying state change.", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        return (v82)(v68, v84);
      }

      else
      {

        v152 = *(v60 + 8);
        v152(v2, v71);
        return (v152)(v68, v71);
      }
    }

    v70 = v21;
    v361[0] = v60;
    (*(v60 + 8))(v68, v57);
  }

  v88 = v387;
  v87 = v388;
  v89 = *(v388 + 16);
  v90 = v386;
  (v89)(v386, v384, v387);
  v91 = (*(v87 + 88))(v90, v88);
  if (v91 == *MEMORY[0x277D5C968])
  {
    OUTLINED_FUNCTION_49_0();
    v89();
    OUTLINED_FUNCTION_19_3();
    v92(v43, v88);
    v94 = *v43;
    v93 = v43[1];
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v95 = sub_2676CBE4C();
    __swift_project_value_buffer(v95, qword_2801CDC90);
    v96 = sub_2676CBE2C();
    v97 = sub_2676CC23C();
    v98 = OUTLINED_FUNCTION_35_0(v97);
    v99 = v383;
    if (v98)
    {
      v100 = OUTLINED_FUNCTION_17_3();
      *v100 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v101, v102, v103, v104, v100, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_47_0();
    if (v105)
    {
      v106 = v99[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      if (sub_2676C982C())
      {
        sub_2676C97FC();
        v107 = v390;
        if (v390 >= 2)
        {
          v384 = v389;
          v389 = v94;
          v390 = v93;
          v108 = v376;
          sub_2676C8DCC();
          sub_2675E69E4();
          sub_2676CC33C();
          v109 = OUTLINED_FUNCTION_34_3();
          v110(v109);
          if (v108 == v99 && v107 == &v389)
          {

LABEL_85:

            v246 = OUTLINED_FUNCTION_16_3();
LABEL_94:
            sub_26762513C(v246, v247);
            goto LABEL_62;
          }

          OUTLINED_FUNCTION_16_3();
          v112 = sub_2676CC59C();

          if (v112)
          {
            goto LABEL_85;
          }

          v254 = sub_2676CBE2C();
          v255 = sub_2676CC23C();
          v256 = OUTLINED_FUNCTION_16_3();
          sub_26762513C(v256, v257);
          v383 = v254;
          if (os_log_type_enabled(v254, v255))
          {
            v258 = OUTLINED_FUNCTION_5_3();
            v259 = OUTLINED_FUNCTION_41_1();
            LODWORD(v382) = v255;
            v260 = v259;
            v389 = v259;
            *v258 = 136315138;
            v261 = OUTLINED_FUNCTION_16_3();
            v264 = sub_2676B0B84(v261, v262, v263);
            v265 = OUTLINED_FUNCTION_16_3();
            sub_26762513C(v265, v266);
            *(v258 + 4) = v264;
            OUTLINED_FUNCTION_40(&dword_2675D4000, v267, v268, "#MailStateChangeEventHandler: original subject: %s");
            __swift_destroy_boxed_opaque_existential_1(v260);
            OUTLINED_FUNCTION_2_5();
            v90 = v386;
            OUTLINED_FUNCTION_2_5();
          }

          else
          {

            v300 = OUTLINED_FUNCTION_16_3();
            sub_26762513C(v300, v301);
          }

          v302 = sub_2676CBE2C();
          v303 = sub_2676CC23C();

          if (os_log_type_enabled(v302, v303))
          {
            v304 = OUTLINED_FUNCTION_5_3();
            v305 = OUTLINED_FUNCTION_41_1();
            v389 = v305;
            *v304 = 136315138;
            v306 = OUTLINED_FUNCTION_53_1();
            *(v304 + 4) = sub_2676B0B84(v306, v307, v308);
            _os_log_impl(&dword_2675D4000, v302, v303, "#MailStateChangeEventHandler: new subject: %s", v304, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v305);
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_2_5();
          }

          v389 = v94;
          goto LABEL_117;
        }

        goto LABEL_61;
      }

      v389 = v94;
      goto LABEL_59;
    }

    v150 = v99[7];
    v389 = 0;
    v390 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v151 = v99[11];
    goto LABEL_57;
  }

  if (v91 == *MEMORY[0x277D5C950])
  {
    v90 = v386;
    OUTLINED_FUNCTION_49_0();
    v89();
    OUTLINED_FUNCTION_19_3();
    v113(v40, v88);
    v114 = *v40;
    v93 = v40[1];
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v115 = sub_2676CBE4C();
    __swift_project_value_buffer(v115, qword_2801CDC90);
    v116 = sub_2676CBE2C();
    v117 = sub_2676CC23C();
    v118 = OUTLINED_FUNCTION_35_0(v117);
    v119 = v383;
    if (v118)
    {
      v120 = OUTLINED_FUNCTION_17_3();
      *v120 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v121, v122, v123, v124, v120, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_47_0();
    if (v125)
    {
      v126 = v119[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      if (sub_2676C982C())
      {
        sub_2676C97FC();
        v127 = v390;
        if (v390 >= 2)
        {
          v384 = v389;
          v389 = v114;
          v390 = v93;
          v128 = v376;
          sub_2676C8DCC();
          sub_2675E69E4();
          sub_2676CC33C();
          v129 = OUTLINED_FUNCTION_34_3();
          v130(v129);
          if (v128 == v119 && v127 == &v389)
          {
          }

          else
          {
            OUTLINED_FUNCTION_20_5();
            v132 = sub_2676CC59C();

            if ((v132 & 1) == 0)
            {

              v285 = sub_2676CBE2C();
              v286 = sub_2676CC23C();
              v287 = OUTLINED_FUNCTION_20_5();
              sub_26762513C(v287, v288);
              v383 = v285;
              if (os_log_type_enabled(v285, v286))
              {
                v289 = OUTLINED_FUNCTION_5_3();
                v290 = OUTLINED_FUNCTION_41_1();
                LODWORD(v382) = v286;
                v291 = v290;
                v389 = v290;
                *v289 = 136315138;
                v292 = OUTLINED_FUNCTION_20_5();
                v295 = sub_2676B0B84(v292, v293, v294);
                v296 = OUTLINED_FUNCTION_20_5();
                sub_26762513C(v296, v297);
                *(v289 + 4) = v295;
                OUTLINED_FUNCTION_40(&dword_2675D4000, v298, v299, "#MailStateChangeEventHandler: original body: %s");
                __swift_destroy_boxed_opaque_existential_1(v291);
                OUTLINED_FUNCTION_2_5();
                v90 = v386;
                OUTLINED_FUNCTION_2_5();
              }

              else
              {

                v325 = OUTLINED_FUNCTION_20_5();
                sub_26762513C(v325, v326);
              }

              v327 = sub_2676CBE2C();
              v328 = sub_2676CC23C();

              if (os_log_type_enabled(v327, v328))
              {
                v329 = OUTLINED_FUNCTION_5_3();
                v330 = OUTLINED_FUNCTION_41_1();
                v389 = v330;
                *v329 = 136315138;
                *(v329 + 4) = sub_2676B0B84(v114, v93, &v389);
                OUTLINED_FUNCTION_16_6();
                _os_log_impl(v331, v332, v333, v334, v335, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v330);
                OUTLINED_FUNCTION_2_5();
                OUTLINED_FUNCTION_19_2();
              }

              v389 = v114;
LABEL_117:
              v390 = v93;
              goto LABEL_60;
            }
          }

          v246 = OUTLINED_FUNCTION_20_5();
          goto LABEL_94;
        }

LABEL_61:

        goto LABEL_62;
      }

      v389 = v114;
LABEL_59:
      v390 = v93;
LABEL_60:
      sub_2676C984C();
      goto LABEL_61;
    }

    v179 = v119[8];
    v389 = 0;
    v390 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v180 = v119[11];
LABEL_57:
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
    OUTLINED_FUNCTION_1_1();
    sub_2675E0214(v181, v182);
    OUTLINED_FUNCTION_45();
    sub_2676C9A3C();

    v389 = 0;
    v390 = 0;
    sub_2676C9A1C();
    v183 = *(v381 + 8);
    v184 = OUTLINED_FUNCTION_53_1();
    v185(v184);
LABEL_62:
    OUTLINED_FUNCTION_44_1();
    v149 = v90;
    goto LABEL_63;
  }

  if (v91 == *MEMORY[0x277D5C920])
  {
    v133 = v379;
    v134 = v386;
    (v89)(v379, v386, v88);
    OUTLINED_FUNCTION_19_3();
    v135(v133, v88);
    v136 = *v133;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v137 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v137, qword_2801CDC90);
    v138 = sub_2676CBE2C();
    v139 = sub_2676CC23C();
    v140 = OUTLINED_FUNCTION_35_0(v139);
    v141 = v383;
    if (v140)
    {
      v142 = OUTLINED_FUNCTION_17_3();
      *v142 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v143, v144, v145, v146, v142, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v147 = v141[9];
    v389 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();

LABEL_43:
    OUTLINED_FUNCTION_44_1();
    v149 = v134;
LABEL_63:
    v186 = v387;
    return v148(v149, v186);
  }

  if (v91 == *MEMORY[0x277D5C940])
  {
    v153 = v375;
    v154 = v88;
    v155 = v386;
    (v89)(v375, v386, v154);
    OUTLINED_FUNCTION_19_3();
    v156(v153, v154);
    v157 = *v153;
    v158 = v70;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v159 = sub_2676CBE4C();
    __swift_project_value_buffer(v159, qword_2801CDC90);
    v160 = sub_2676CBE2C();
    v161 = sub_2676CC23C();
    v162 = OUTLINED_FUNCTION_46_1(v161);
    v163 = v383;
    if (v162)
    {
      v164 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v164);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v165, v166, v167, v168, v169, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v389 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v170 = *(v157 + 16);

    if (v170)
    {
      goto LABEL_74;
    }

    v171 = sub_2676CBE2C();
    v172 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v172))
    {
      v173 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v173);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v174, v175, v176, v177, v178, 2u);
      OUTLINED_FUNCTION_4_6();
    }

LABEL_73:

    v210 = v163[11];
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
    OUTLINED_FUNCTION_1_1();
    sub_2675E0214(v211, v212);
    OUTLINED_FUNCTION_0_2();
    sub_2675E0214(v213, v214);
    v215 = v373;
    OUTLINED_FUNCTION_45();
    sub_2676C9A4C();

    v389 = MEMORY[0x277D84F90];
    sub_2676C9A1C();
    (*(v374 + 8))(v215, v158);
LABEL_74:
    OUTLINED_FUNCTION_44_1();
    v149 = v155;
    goto LABEL_63;
  }

  v158 = v70;
  if (v91 == *MEMORY[0x277D5C938])
  {
    v187 = v372;
    v188 = v88;
    v155 = v386;
    (v89)(v372, v386, v188);
    OUTLINED_FUNCTION_19_3();
    v189(v187, v188);
    v190 = *v187;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v191 = sub_2676CBE4C();
    __swift_project_value_buffer(v191, qword_2801CDC90);
    v192 = sub_2676CBE2C();
    v193 = sub_2676CC23C();
    v194 = OUTLINED_FUNCTION_46_1(v193);
    v163 = v383;
    if (v194)
    {
      v195 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v195);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v196, v197, v198, v199, v200, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v201 = v163[5];
    v389 = v190;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v202 = *(v190 + 16);

    if (v202)
    {
      goto LABEL_74;
    }

    v171 = sub_2676CBE2C();
    v203 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v203))
    {
      v204 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v204);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v205, v206, v207, v208, v209, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    goto LABEL_73;
  }

  if (v91 == *MEMORY[0x277D5C948])
  {
    v216 = v371;
    (v89)(v371, v386, v88);
    OUTLINED_FUNCTION_19_3();
    v217(v216, v88);
    v218 = *v216;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v219 = sub_2676CBE4C();
    __swift_project_value_buffer(v219, qword_2801CDC90);
    v220 = sub_2676CBE2C();
    v221 = sub_2676CC23C();
    v222 = OUTLINED_FUNCTION_46_1(v221);
    v223 = v383;
    if (v222)
    {
      v224 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v224);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v225, v226, v227, v228, v229, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v230 = v223[6];
    v389 = v218;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v231 = *(v218 + 16);

    v134 = v386;
    if (!v231)
    {
      v232 = sub_2676CBE2C();
      v233 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v233))
      {
        v234 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v234);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v235, v236, v237, v238, v239, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v240 = v223[11];
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v241, v242);
      OUTLINED_FUNCTION_0_2();
      sub_2675E0214(v243, v244);
      v245 = v373;
      OUTLINED_FUNCTION_45();
      sub_2676C9A4C();

      v389 = MEMORY[0x277D84F90];
      sub_2676C9A1C();
      (*(v374 + 8))(v245, v70);
    }

    goto LABEL_43;
  }

  if (v91 == *MEMORY[0x277D5C930])
  {
    v248 = v369;
    v249 = v386;
    (v89)(v369, v386, v88);
    OUTLINED_FUNCTION_19_3();
    v250(v248, v88);
    v251 = v370;
    sub_2676250CC(v248, v370);
    v252 = sub_2676CB0AC();
    if (__swift_getEnumTagSinglePayload(v251, 1, v252) != 1)
    {
      v253 = v383[12];
      LOBYTE(v389) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
      OUTLINED_FUNCTION_14_8();
      sub_2676C984C();
      v87 = v388;
    }

    sub_2675E35CC(v251, &qword_2801CCA08, &unk_2676CFEA0);
    return (*(v87 + 8))(v249, v88);
  }

  v269 = v386;
  if (v91 == *MEMORY[0x277D5C960])
  {
    v270 = v367;
    OUTLINED_FUNCTION_49_0();
    v89();
    OUTLINED_FUNCTION_19_3();
    v271 = v88;
    v272(v270, v88);
    v273 = sub_2676CB10C();
    OUTLINED_FUNCTION_7_7(v273);
    v275 = v274;
    v276 = (*(v274 + 88))(v270, v273);
    v277 = v361[0];
    if (v276 == *MEMORY[0x277D5CA48])
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v278 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v278, qword_2801CDC90);
      v279 = sub_2676CBE2C();
      v280 = sub_2676CC23C();
      if (os_log_type_enabled(v279, v280))
      {
        v281 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v281);
        OUTLINED_FUNCTION_57_1(&dword_2675D4000, v282, v283, "#MailStateChangeEventHandler:  send");
        v271 = v387;
        OUTLINED_FUNCTION_2_5();
      }

      v284 = MEMORY[0x277D5CA18];
LABEL_124:
      v342 = v365;
      (*(v277 + 104))(v365, *v284, v57);
      sub_2676C984C();
      (*(v277 + 8))(v342, v57);
      OUTLINED_FUNCTION_44_1();
      v149 = v269;
      v186 = v271;
      return v148(v149, v186);
    }

    if (v276 == *MEMORY[0x277D5CA50])
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v336 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v336, qword_2801CDC90);
      v337 = sub_2676CBE2C();
      v338 = sub_2676CC23C();
      if (os_log_type_enabled(v337, v338))
      {
        v339 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v339);
        OUTLINED_FUNCTION_57_1(&dword_2675D4000, v340, v341, "#MailStateChangeEventHandler:  cancel");
        v271 = v387;
        OUTLINED_FUNCTION_2_5();
      }

      v284 = MEMORY[0x277D5CA20];
      goto LABEL_124;
    }

    (*(v275 + 8))(v270, v273);
    v88 = v271;
  }

  else
  {
    v309 = v361[0];
    if (v91 == *MEMORY[0x277D5C958])
    {
      v310 = v363;
      OUTLINED_FUNCTION_49_0();
      v89();
      OUTLINED_FUNCTION_19_3();
      v311(v310, v88);
      v312 = v364;
      v313 = v57;
      (*(v309 + 32))(v364, v310, v57);
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v314 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v314, qword_2801CDC90);
      v315 = v362;
      (*(v309 + 16))(v362, v312, v313);
      v316 = sub_2676CBE2C();
      v317 = sub_2676CC23C();
      if (os_log_type_enabled(v316, v317))
      {
        v318 = OUTLINED_FUNCTION_5_3();
        v319 = v315;
        v320 = OUTLINED_FUNCTION_41_1();
        v389 = v320;
        *v318 = 136315138;
        v384 = sub_2676CB0CC();
        v322 = v321;
        v323 = *(v309 + 8);
        v323(v319, v313);
        v324 = sub_2676B0B84(v384, v322, &v389);

        *(v318 + 4) = v324;
        _os_log_impl(&dword_2675D4000, v316, v317, "#MailStateChangeEventHandler: Apply state update: %s", v318, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v320);
        OUTLINED_FUNCTION_19_2();
        v312 = v364;
        v88 = v387;
        OUTLINED_FUNCTION_2_5();
      }

      else
      {

        v323 = *(v309 + 8);
        v323(v315, v313);
      }

      sub_2676C984C();
      v323(v312, v313);
      OUTLINED_FUNCTION_44_1();
      v149 = v386;
      v186 = v88;
      return v148(v149, v186);
    }
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v343 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v343, qword_2801CDC90);
  v344 = v366;
  (v89)(v366, v384, v88);
  v345 = sub_2676CBE2C();
  v346 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v346))
  {
    v347 = OUTLINED_FUNCTION_5_3();
    v348 = OUTLINED_FUNCTION_41_1();
    v389 = v348;
    *v347 = 136315138;
    (v89)(v361[1], v344, v387);
    v349 = sub_2676CBFBC();
    v350 = v344;
    v351 = v349;
    v353 = v352;
    v354 = *(v388 + 8);
    v354(v350, v387);
    v355 = sub_2676B0B84(v351, v353, &v389);

    *(v347 + 4) = v355;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v356, v357, v358, v359, v360, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v348);
    OUTLINED_FUNCTION_2_5();
    v88 = v387;
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v354 = *(v388 + 8);
    v354(v344, v88);
  }

  return (v354)(v269, v88);
}

uint64_t sub_267623974(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v293 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v302 = v12;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_3(v306);
  v308 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  v307 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  v19 = OUTLINED_FUNCTION_3(v18);
  v297 = v20;
  v298 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v296 = v24;
  OUTLINED_FUNCTION_7_3();
  v311 = sub_2676CB14C();
  v25 = OUTLINED_FUNCTION_3(v311);
  v313 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_5();
  v310 = v29;
  OUTLINED_FUNCTION_7_3();
  v309 = sub_2676C8C8C();
  v30 = OUTLINED_FUNCTION_3(v309);
  v312 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  v295 = v288 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v38 = OUTLINED_FUNCTION_3(v37);
  v303 = v39;
  v304 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_4();
  v299 = v43;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v44);
  v301 = v288 - v45;
  OUTLINED_FUNCTION_7_3();
  v46 = sub_2676CAFDC();
  v47 = OUTLINED_FUNCTION_3(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_54_1();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = (v288 - v58);
  v60 = MEMORY[0x28223BE20](v57);
  v62 = v288 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = (v288 - v64);
  v66 = MEMORY[0x28223BE20](v63);
  v68 = (v288 - v67);
  MEMORY[0x28223BE20](v66);
  v70 = v288 - v69;
  v71 = *(v49 + 16);
  v290 = a1;
  v72 = a1;
  v73 = v71;
  (v71)(v288 - v69, v72, v46);
  v74 = (*(v49 + 88))(v70, v46);
  if (v74 == *MEMORY[0x277D5C968])
  {
    (v73)(v59, v70, v46);
    (*(v49 + 96))(v59, v46);
    v76 = *v59;
    v75 = v59[1];
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v77 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v77, qword_2801CDC90);
    v78 = sub_2676CBE2C();
    v79 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v79))
    {
      v80 = v46;
      v81 = OUTLINED_FUNCTION_17_3();
      *v81 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v82, v83, v84, v85, v81, 2u);
      v46 = v80;
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_47_0();
    if (v86)
    {
      v87 = *(type metadata accessor for MailStateChangeEventHandler(0) + 28);
      v314 = v76;
      v315 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_43_0();
      sub_2676C984C();
    }

    else
    {

      v132 = type metadata accessor for MailStateChangeEventHandler(0);
      v133 = *(v132 + 28);
      v314 = 0;
      v315 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      OUTLINED_FUNCTION_14_8();
      sub_2676C984C();
      v134 = *(v132 + 36);
      KeyPath = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v136, v137);
      v138 = v307;
      OUTLINED_FUNCTION_45();
      sub_2676C9A3C();

      OUTLINED_FUNCTION_48_0();
      sub_2676C9A1C();
      (*(v308 + 8))(v138, KeyPath);
    }

    return (*(v49 + 8))(v70, v46);
  }

  v300 = v70;
  if (v74 == *MEMORY[0x277D5C950])
  {
    OUTLINED_FUNCTION_23_5();
    v73();
    OUTLINED_FUNCTION_32_3();
    v88 = v46;
    v89(v1, v46);
    v91 = *v1;
    v90 = v1[1];
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v92 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v92, qword_2801CDC90);
    v93 = sub_2676CBE2C();
    v94 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v94))
    {
      v95 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v95);
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v96, v97, v98, v99, v62, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    OUTLINED_FUNCTION_47_0();
    if (v100)
    {
      v101 = *(type metadata accessor for MailStateChangeEventHandler(0) + 32);
      v102 = v302;
      OUTLINED_FUNCTION_53_1();
      sub_2676C8EAC();
      v103 = sub_2676C8EBC();
      __swift_storeEnumTagSinglePayload(v102, 0, 1, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      OUTLINED_FUNCTION_43_0();
      sub_2676C984C();
      sub_2675E35CC(v102, &qword_2801CBFE0, &qword_2676D1070);
    }

    else
    {

      v164 = type metadata accessor for MailStateChangeEventHandler(0);
      v165 = *(v164 + 32);
      v166 = sub_2676C8EBC();
      v167 = v302;
      __swift_storeEnumTagSinglePayload(v302, 1, 1, v166);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      sub_2676C984C();
      sub_2675E35CC(v167, &qword_2801CBFE0, &qword_2676D1070);
      v168 = *(v164 + 36);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v169, v170);
      OUTLINED_FUNCTION_45();
      sub_2676C9A3C();

      OUTLINED_FUNCTION_48_0();
      sub_2676C9A1C();
      v171 = *(v308 + 8);
      v172 = OUTLINED_FUNCTION_53_1();
      v173(v172);
    }

    v46 = v88;
    return (*(v49 + 8))(v70, v46);
  }

  if (v74 == *MEMORY[0x277D5C940])
  {
    OUTLINED_FUNCTION_23_5();
    v73();
    OUTLINED_FUNCTION_32_3();
    v104(v68, v46);
    v105 = *v68;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v106 = sub_2676CBE4C();
    v299 = __swift_project_value_buffer(v106, qword_2801CDC90);
    v107 = sub_2676CBE2C();
    v108 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v108))
    {
      v109 = OUTLINED_FUNCTION_17_3();
      *v109 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v110, v111, v112, v113, v109, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    (*(v303 + 16))(v301, v305, v304);
    v114 = *(v105 + 16);
    if (v114)
    {
      v302 = v49;
      v115 = OUTLINED_FUNCTION_11_13();
      sub_2676C2778(v115, v114, 0);
      v116 = v314;
      v308 = v313[2];
      OUTLINED_FUNCTION_37_2();
      v294 = v105;
      v118 = v105 + v117;
      v120 = v119[7];
      v313 = v119;
      v121 = v119 - 1;
      v306 = v312 + 32;
      v307 = v120;
      v122 = v310;
      do
      {
        v123 = v311;
        (v308)(v122, v118, v311);
        sub_2676CB12C();
        sub_2676CB13C();
        OUTLINED_FUNCTION_38_1();
        static MailAddresseePrototype.from(name:email:)(v124, v125);

        (*v121)(v122, v123);
        v314 = v116;
        v127 = *(v116 + 16);
        v126 = *(v116 + 24);
        if (v127 >= v126 >> 1)
        {
          v131 = OUTLINED_FUNCTION_39_1(v126);
          sub_2676C2778(v131, v127 + 1, 1);
          v116 = v314;
        }

        *(v116 + 16) = v127 + 1;
        OUTLINED_FUNCTION_17_9();
        v129 = *(v128 + 72);
        OUTLINED_FUNCTION_22_4();
        v130();
        v118 += v307;
        --v114;
      }

      while (v114);
      v46 = v293;
      v49 = v302;
      v70 = v300;
      v105 = v294;
    }

    else
    {
      v116 = MEMORY[0x277D84F90];
    }

    v314 = v116;
    OUTLINED_FUNCTION_36_3();
    sub_2676C984C();

    v201 = OUTLINED_FUNCTION_21_5();
    v202(v201);
    v203 = *(v105 + 16);

    if (!v203)
    {
      v204 = v46;
      v205 = sub_2676CBE2C();
      v206 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v206))
      {
        v207 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v207);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v208, v209, v210, v211, v212, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v213 = *(type metadata accessor for MailStateChangeEventHandler(0) + 36);
LABEL_56:
      v214 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v215, v216);
      OUTLINED_FUNCTION_0_2();
      sub_2675E0214(v217, v218);
      OUTLINED_FUNCTION_43_0();
      v219 = v296;
      OUTLINED_FUNCTION_45();
      sub_2676C9A4C();

      OUTLINED_FUNCTION_52();
      sub_2676C9A1C();
      (*(v297 + 8))(v219, v214);
      v46 = v204;
      return (*(v49 + 8))(v70, v46);
    }

    return (*(v49 + 8))(v70, v46);
  }

  if (v74 == *MEMORY[0x277D5C938])
  {
    OUTLINED_FUNCTION_23_5();
    v73();
    OUTLINED_FUNCTION_32_3();
    v139 = OUTLINED_FUNCTION_20_5();
    v140(v139);
    v141 = *v65;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v302 = v49;
    v142 = sub_2676CBE4C();
    v143 = __swift_project_value_buffer(v142, qword_2801CDC90);
    v144 = sub_2676CBE2C();
    v145 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v145))
    {
      v146 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v146);
      _os_log_impl(&dword_2675D4000, v144, v143, "#MailStateChangeEventHandler: Handling cc recipient change", v62, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v301 = type metadata accessor for MailStateChangeEventHandler(0);
    OUTLINED_FUNCTION_51_1(*(v301 + 5));
    v147(v299);
    v148 = *(v141 + 2);
    if (v148)
    {
      v294 = v143;
      v149 = OUTLINED_FUNCTION_11_13();
      sub_2676C2778(v149, v148, 0);
      v150 = v314;
      v151 = v313[2];
      OUTLINED_FUNCTION_37_2();
      v295 = v141;
      v153 = &v141[v152];
      OUTLINED_FUNCTION_29_4();
      v154 = v310;
      do
      {
        v155 = v311;
        (v308)(v154, v153, v311);
        sub_2676CB12C();
        sub_2676CB13C();
        OUTLINED_FUNCTION_38_1();
        static MailAddresseePrototype.from(name:email:)(v156, v157);

        (*v46)(v154, v155);
        v314 = v150;
        v159 = *(v150 + 16);
        v158 = *(v150 + 24);
        if (v159 >= v158 >> 1)
        {
          v163 = OUTLINED_FUNCTION_39_1(v158);
          sub_2676C2778(v163, v159 + 1, 1);
          v150 = v314;
        }

        *(v150 + 16) = v159 + 1;
        OUTLINED_FUNCTION_17_9();
        v161 = *(v160 + 72);
        OUTLINED_FUNCTION_22_4();
        v162();
        v153 += v307;
        --v148;
      }

      while (v148);
      v46 = v293;
      v70 = v300;
      v141 = v295;
    }

    else
    {
      v150 = MEMORY[0x277D84F90];
    }

    v314 = v150;
    OUTLINED_FUNCTION_36_3();
    sub_2676C984C();

    v225 = OUTLINED_FUNCTION_21_5();
    v226(v225);
    v227 = *(v141 + 2);

    v49 = v302;
    if (!v227)
    {
      v228 = sub_2676CBE2C();
      v229 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v229))
      {
        v230 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v230);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v231, v232, v233, v234, v235, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v236 = *(v301 + 9);
      v237 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v238, v239);
      OUTLINED_FUNCTION_0_2();
      sub_2675E0214(v240, v241);
      OUTLINED_FUNCTION_43_0();
      v242 = v296;
      OUTLINED_FUNCTION_45();
      sub_2676C9A4C();

      OUTLINED_FUNCTION_52();
      sub_2676C9A1C();
      (*(v297 + 8))(v242, v237);
      v49 = v302;
    }

    return (*(v49 + 8))(v70, v46);
  }

  if (v74 != *MEMORY[0x277D5C948])
  {
    if (v74 == *MEMORY[0x277D5C930])
    {
      v220 = v291;
      OUTLINED_FUNCTION_23_5();
      v73();
      OUTLINED_FUNCTION_32_3();
      v221(v220, v46);
      v222 = v293;
      sub_2676250CC(v220, v293);
      v223 = sub_2676CB0AC();
      if (__swift_getEnumTagSinglePayload(v222, 1, v223) != 1)
      {
        v224 = *(type metadata accessor for MailStateChangeEventHandler(0) + 40);
        LOBYTE(v314) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
        OUTLINED_FUNCTION_14_8();
        OUTLINED_FUNCTION_43_0();
        sub_2676C984C();
      }

      sub_2675E35CC(v222, &qword_2801CCA08, &unk_2676CFEA0);
      return (*(v49 + 8))(v70, v46);
    }

    v243 = v73;
    v70 = v300;
    v244 = v292;
    if (v74 == *MEMORY[0x277D5C960])
    {
      v245 = v289;
      (v73)(v289, v300, v46);
      OUTLINED_FUNCTION_32_3();
      v246(v245, v46);
      v247 = sub_2676CB10C();
      OUTLINED_FUNCTION_7_7(v247);
      v68 = v248;
      v249 = (*(v248 + 88))(v245, v247);
      if (v249 == *MEMORY[0x277D5CA48])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v250 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v250, qword_2801CDC90);
        v251 = sub_2676CBE2C();
        v252 = sub_2676CC23C();
        if (!OUTLINED_FUNCTION_5_5(v252))
        {
          goto LABEL_88;
        }

        goto LABEL_81;
      }

      if (v249 == *MEMORY[0x277D5CA50])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v265 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v265, qword_2801CDC90);
        v251 = sub_2676CBE2C();
        v266 = sub_2676CC23C();
        if (!OUTLINED_FUNCTION_5_5(v266))
        {
          goto LABEL_88;
        }

LABEL_81:
        v267 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v267);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v268, v269, v270, v271, v272, 2u);
LABEL_87:
        OUTLINED_FUNCTION_2_5();
LABEL_88:

        return (*(v49 + 8))(v70, v46);
      }

      v273 = v68[1];
      LOBYTE(v68) = v68 + 8;
      v273(v245, v247);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v274 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v274, qword_2801CDC90);
    (v73)(v244, v290, v46);
    v251 = sub_2676CBE2C();
    v275 = sub_2676CC23C();
    if (!OUTLINED_FUNCTION_5_5(v275))
    {

      v284 = *(v49 + 8);
      v285 = OUTLINED_FUNCTION_20_5();
      v286(v285);
      return (*(v49 + 8))(v70, v46);
    }

    v276 = OUTLINED_FUNCTION_5_3();
    v313 = OUTLINED_FUNCTION_41_1();
    v314 = v313;
    *v276 = 136315138;
    (v243)(v288[1], v244, v46);
    v277 = sub_2676CBFBC();
    v279 = v278;
    v280 = *(v49 + 8);
    v281 = OUTLINED_FUNCTION_20_5();
    v282(v281);
    v283 = sub_2676B0B84(v277, v279, &v314);

    *(v276 + 4) = v283;
    _os_log_impl(&dword_2675D4000, v251, v68, "#MailStateChangeEventHandler: Ignoring unhandled snippet event: %s", v276, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v313);
    OUTLINED_FUNCTION_2_5();
    goto LABEL_87;
  }

  (v73)(v62, v300, v46);
  OUTLINED_FUNCTION_32_3();
  v174(v62, v46);
  v175 = *v62;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v176 = sub_2676CBE4C();
  v301 = __swift_project_value_buffer(v176, qword_2801CDC90);
  v177 = sub_2676CBE2C();
  v178 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_35_0(v178))
  {
    v179 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_31_3(v179);
    OUTLINED_FUNCTION_27_4();
    _os_log_impl(v180, v181, v182, v183, v62, 2u);
    OUTLINED_FUNCTION_19_2();
  }

  v299 = type metadata accessor for MailStateChangeEventHandler(0);
  OUTLINED_FUNCTION_51_1(*(v299 + 24));
  v184(v294);
  v185 = *(v175 + 2);
  if (v185)
  {
    v302 = v49;
    v186 = OUTLINED_FUNCTION_11_13();
    sub_2676C2778(v186, v185, 0);
    v187 = v314;
    v188 = v313[2];
    OUTLINED_FUNCTION_37_2();
    v295 = v175;
    v190 = &v175[v189];
    OUTLINED_FUNCTION_29_4();
    v191 = v310;
    do
    {
      v192 = v311;
      (v308)(v191, v190, v311);
      sub_2676CB12C();
      sub_2676CB13C();
      OUTLINED_FUNCTION_38_1();
      static MailAddresseePrototype.from(name:email:)(v193, v194);

      (*v46)(v191, v192);
      v314 = v187;
      v196 = *(v187 + 16);
      v195 = *(v187 + 24);
      if (v196 >= v195 >> 1)
      {
        v200 = OUTLINED_FUNCTION_39_1(v195);
        sub_2676C2778(v200, v196 + 1, 1);
        v187 = v314;
      }

      *(v187 + 16) = v196 + 1;
      OUTLINED_FUNCTION_17_9();
      v198 = *(v197 + 72);
      OUTLINED_FUNCTION_22_4();
      v199();
      v190 += v307;
      --v185;
    }

    while (v185);
    v46 = v293;
    v49 = v302;
    v175 = v295;
  }

  else
  {
    v187 = MEMORY[0x277D84F90];
  }

  v314 = v187;
  OUTLINED_FUNCTION_36_3();
  sub_2676C984C();

  v253 = OUTLINED_FUNCTION_21_5();
  v254(v253);
  v255 = *(v175 + 2);

  v70 = v300;
  if (!v255)
  {
    v204 = v46;
    v256 = sub_2676CBE2C();
    v257 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v257))
    {
      v258 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v258);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v259, v260, v261, v262, v263, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    v264 = *(v299 + 36);
    goto LABEL_56;
  }

  return (*(v49 + 8))(v70, v46);
}

uint64_t sub_2676250CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762513C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  *(v2 - 288) = v0;
  *(v2 - 104) = v1;
  return 0;
}

void OUTLINED_FUNCTION_22_4()
{
  v2 = *(v0 + 32);
  v3 = *(v1 - 144);
  v4 = *(v1 - 168);
}

void OUTLINED_FUNCTION_29_4()
{
  *(v2 - 160) = *(v0 + 56);
  *(v2 - 152) = v1;
  *(v2 - 112) = v0;
  *(v2 - 168) = *(v2 - 120) + 32;
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 8);
  result = v0;
  v5 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  result = v0 - 104;
  v2 = *(v0 - 184);
  return result;
}

void OUTLINED_FUNCTION_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 160);
  v8 = *(v5 - 160);
  v9 = *(v5 - 152);

  _os_log_impl(a1, v9, v8, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_46_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  result = v0 - 104;
  v2 = *(v0 - 168);
  return result;
}

void OUTLINED_FUNCTION_51_1(uint64_t a1@<X8>)
{
  v2 = *(v1 - 184);
  v3 = *(*(v1 - 192) + 16);
  v4 = *(v1 - 176) + a1;
}

uint64_t OUTLINED_FUNCTION_52()
{
  *(v1 - 104) = v0;
  result = v1 - 104;
  v3 = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_57_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_2676253B4(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA28, MEMORY[0x277D5C808]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762540C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC670, MEMORY[0x277D5C808]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625464(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA30, MEMORY[0x277D5C828]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676254BC(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC680, MEMORY[0x277D5C828]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625514(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA38, MEMORY[0x277D5C848]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762556C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC678, MEMORY[0x277D5C848]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676255C4(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC738, MEMORY[0x277D5C7E8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762561C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA40, MEMORY[0x277D5C8D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625674(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA48, MEMORY[0x277D5C8A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676256CC(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC688, MEMORY[0x277D5C878]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625724(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA50, MEMORY[0x277D5C888]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762577C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA58, MEMORY[0x277D5C338]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676257D4(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA60, MEMORY[0x277D5C380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762582C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA68, MEMORY[0x277D5C3C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625884(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA70, MEMORY[0x277D5C3A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676258DC(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA78, MEMORY[0x277D5C350]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625934(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA80, MEMORY[0x277D5C390]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762598C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA88, MEMORY[0x277D5C770]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676259E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267625A2C()
{
  v0 = sub_2676CC50C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for MarkMessageAsRead()
{
  result = qword_2801CCA90;
  if (!qword_2801CCA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267625AEC()
{
  result = sub_2676C8BFC();
  if (v1 <= 0x3F)
  {
    result = sub_2675F3A90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_267625B98()
{
  v1 = *(v0 + 48);
  v2 = (v1 + *(type metadata accessor for MarkMessageAsRead() + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_267625CD4;
  v8 = *(v0 + 48);

  return v10(v8, v3, v4);
}

uint64_t sub_267625CD4(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v9 = v8;
  *(v4 + 64) = v1;

  if (v1)
  {
    v10 = sub_267625F88;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v10 = sub_267625DF8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_267625DF8()
{
  v1 = *(v0 + 72);
  if (v1 == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_2676CBE4C();
    __swift_project_value_buffer(v2, qword_2801CDC90);
    v3 = sub_2676CBE2C();
    v4 = sub_2676CC23C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "#MarkMessageAsRead run succeeded";
LABEL_10:
      _os_log_impl(&dword_2675D4000, v3, v4, v6, v5, 2u);
      MEMORY[0x26D5FEA80](v5, -1, -1);
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_2676CBE4C();
    __swift_project_value_buffer(v7, qword_2801CDC90);
    v3 = sub_2676CBE2C();
    v4 = sub_2676CC23C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "#MarkMessageAsRead run succeeded but failed to convert to LNSuccessResult";
      goto LABEL_10;
    }
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_267625F88()
{
  v19 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[8];
  v2 = sub_2676CBE4C();
  __swift_project_value_buffer(v2, qword_2801CDC90);
  v3 = v1;
  v4 = sub_2676CBE2C();
  v5 = sub_2676CC24C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_2676CC5FC();
    v15 = sub_2676B0B84(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2675D4000, v4, v5, "#MarkMessageAsRead run failed due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D5FEA80](v9, -1, -1);
    MEMORY[0x26D5FEA80](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_26762614C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2676261DC;

  return sub_267625B78();
}

uint64_t sub_2676261DC(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_2676262E8()
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0) - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_14();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_7_13(v4);
  sub_2676CB32C();
  sub_2676CB12C();
  if (v5)
  {
    sub_2676CBFEC();

    v6 = sub_2676CB3FC();
    OUTLINED_FUNCTION_2_17(v2);
    (*(*(v6 - 8) + 32))(v1, v2, v6);
  }

  else
  {
    v7 = sub_2676CB3FC();
    v8 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
    sub_2676CB13C();
    sub_2676CBFEC();

    v10 = OUTLINED_FUNCTION_5_14();
    if (__swift_getEnumTagSinglePayload(v10, v11, v7) != 1)
    {
      sub_2675E3BB8(v2);
    }
  }

  sub_2676CB3FC();
  OUTLINED_FUNCTION_2_17(v1);
  sub_2676CB2DC();

  sub_2675E3BB8(v1);
  v12 = sub_2676CB21C();
  OUTLINED_FUNCTION_7_13(v12);
  sub_2676CB20C();
  sub_2676CB13C();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB1FC();

  sub_2675E3BB8(v0);
  OUTLINED_FUNCTION_1_16();
  sub_2676CBFEC();
  OUTLINED_FUNCTION_1_4();
  sub_2676CB1DC();

  sub_2675E3BB8(v0);
  sub_2676CB1CC();

  sub_2676CB2BC();

  v13 = sub_2676CB31C();

  return v13;
}

uint64_t sub_267626550()
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0) - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_14();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_7_13(v4);
  sub_2676CB32C();
  sub_2676C8C1C();
  if (v5)
  {
    sub_2676CBFEC();

    v6 = sub_2676CB3FC();
    OUTLINED_FUNCTION_2_17(v2);
    (*(*(v6 - 8) + 32))(v1, v2, v6);
  }

  else
  {
    v7 = sub_2676CB3FC();
    v8 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
    sub_2676C8C4C();
    sub_2676CBFEC();

    v10 = OUTLINED_FUNCTION_5_14();
    if (__swift_getEnumTagSinglePayload(v10, v11, v7) != 1)
    {
      sub_2675E3BB8(v2);
    }
  }

  sub_2676CB3FC();
  OUTLINED_FUNCTION_2_17(v1);
  sub_2676CB2DC();

  sub_2675E3BB8(v1);
  v12 = sub_2676CB21C();
  OUTLINED_FUNCTION_7_13(v12);
  sub_2676CB20C();
  sub_2676C8C4C();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB1FC();

  sub_2675E3BB8(v0);
  OUTLINED_FUNCTION_1_16();
  sub_2676CBFEC();
  OUTLINED_FUNCTION_1_4();
  sub_2676CB1DC();

  sub_2675E3BB8(v0);
  sub_2676CB1CC();

  sub_2676CB2BC();

  v13 = sub_2676CB31C();

  return v13;
}

uint64_t MailAddresseePrototype.debugDescription.getter()
{
  sub_2676CC3FC();

  strcpy(v4, "displayName: ");
  sub_2676C8C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v0 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v0);

  MEMORY[0x26D5FDD00](0x64416C69616D650ALL, 0xEF203A7373657264);
  v1 = sub_2676C8C4C();
  MEMORY[0x26D5FDD00](v1);

  MEMORY[0x26D5FDD00](0x203A64690ALL, 0xE500000000000000);
  v2 = sub_2676C8C6C();
  MEMORY[0x26D5FDD00](v2);

  return v4[0];
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_2676CB33C();
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_267626998()
{
  v1 = sub_2676C959C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC16SiriMailInternal26MetricsSnippetEventHandler__environment, v1);
  v6 = sub_2676C957C();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_267626A88(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  v2[14] = v3;
  v4 = *(*(v3 - 8) + 64);
  v2[15] = OUTLINED_FUNCTION_12_9();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAB8, &unk_2676D02E0) - 8) + 64);
  v2[18] = OUTLINED_FUNCTION_12_9();
  v2[19] = swift_task_alloc();
  v6 = sub_2676C99EC();
  v2[20] = v6;
  v7 = *(v6 - 8);
  v2[21] = v7;
  v8 = *(v7 + 64);
  v2[22] = OUTLINED_FUNCTION_12_9();
  v2[23] = swift_task_alloc();
  v9 = sub_2676CAFDC();
  v2[24] = v9;
  v10 = *(v9 - 8);
  v2[25] = v10;
  v11 = *(v10 + 64);
  v2[26] = OUTLINED_FUNCTION_12_9();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267626C64, v1, 0);
}

uint64_t sub_267626C64()
{
  v186 = v0;
  v1 = v0;
  v2 = *(v0 + 104);
  sub_267626998();
  sub_2676CAF0C();

  sub_2676C9DEC();

  if (!*(v0 + 80))
  {
    sub_2675EB7EC(v0 + 56, &off_2801CC6B8, &unk_2676CF600);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = sub_2676CBE4C();
    __swift_project_value_buffer(v25, qword_2801CDC90);
    v26 = sub_2676CBE2C();
    v27 = sub_2676CC22C();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v28, v29, "#MetricsSnippetEventHandler: eventSender not available");
      OUTLINED_FUNCTION_2_5();
    }

LABEL_18:
    v36 = v1[30];
    v35 = v1[31];
    v38 = v1[28];
    v37 = v1[29];
    v40 = v1[26];
    v39 = v1[27];
    v41 = v1;
    v44 = v1 + 22;
    v43 = v1[22];
    v42 = v44[1];
    v46 = v41[18];
    v45 = v41[19];
    v178 = v41[17];
    v181 = v41[16];
    v183 = v41[15];

    v47 = v41[1];
    OUTLINED_FUNCTION_9_13();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 104);
  sub_267614E14((v0 + 56), v0 + 16);
  sub_267626998();
  sub_2676CAF0C();

  sub_2676C9DFC();
  v5 = v4;

  if (!v5)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = sub_2676CBE4C();
    __swift_project_value_buffer(v30, qword_2801CDC90);
    v31 = sub_2676CBE2C();
    v32 = sub_2676CC22C();
    if (os_log_type_enabled(v31, v32))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v33, v34, "#MetricsSnippetEventHandler: no taskName specified, skipping instrumentation");
      OUTLINED_FUNCTION_2_5();
    }

LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);
    goto LABEL_18;
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 96);
  v10 = sub_2676CBE4C();
  __swift_project_value_buffer(v10, qword_2801CDC90);
  v182 = *(v8 + 16);
  v182(v6, v9, v7);
  v11 = sub_2676CBE2C();
  v12 = sub_2676CC23C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 248);
  if (v13)
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    swift_slowAlloc();
    v173 = v1;
    v18 = OUTLINED_FUNCTION_7_14();
    v185 = v18;
    *v9 = 136315138;
    v182(v15, v14, v16);
    v19 = sub_2676CBFBC();
    v21 = v20;
    v180 = *(v17 + 8);
    v180(v14, v16);
    v22 = sub_2676B0B84(v19, v21, &v185);

    *(v9 + 4) = v22;
    OUTLINED_FUNCTION_11_14(&dword_2675D4000, v23, v24, "#MetricsSnippetEventHandler: instrumenting change %s");
    __swift_destroy_boxed_opaque_existential_1(v18);
    v1 = v173;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v50 = *(v0 + 192);
    v51 = *(v0 + 200);

    v180 = *(v51 + 8);
    v180(v14, v50);
  }

  v52 = v1[29];
  v53 = v1[24];
  v54 = v1[25];
  v55 = v1[19];
  v56 = v1[12];
  v57 = *(v1[21] + 104);
  (v57)(v1[23], *MEMORY[0x277D5BBE8], v1[20]);
  v58 = sub_2676C968C();
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v58);
  v59 = v182;
  v182(v52, v56, v53);
  v61 = *(v54 + 88);
  v60 = (v54 + 88);
  v62 = OUTLINED_FUNCTION_45();
  v64 = v63(v62);
  if (v64 == *MEMORY[0x277D5C968])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v53, &qword_2801CCAB8, &unk_2676D02E0);
    v65 = OUTLINED_FUNCTION_0_16();
    (v60)(v65);
    v66 = *MEMORY[0x277D5BB18];
    v67 = OUTLINED_FUNCTION_4_15();
    (v56)(v67);
    v68 = MEMORY[0x277D5B8F0];
LABEL_32:
    (*(*(v58 - 8) + 104))(v53, *v68, v58);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v58);
LABEL_33:
    v1[32] = v59;
    v1[33] = v60;
    v81 = v1[22];
    v82 = v1[23];
    v83 = v1[20];
    v84 = v1[21];
    v85 = v1[25] + 8;
    v87 = v1[18];
    v86 = v1[19];
    v180(v1[29], v1[24]);
    v184 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2676C970C();
    (*(v84 + 16))(v81, v82, v83);
    sub_2675F95E4(v86, v87, &qword_2801CCAB8, &unk_2676D02E0);
    v1[34] = sub_2676C96EC();
    v88 = *(MEMORY[0x277D5B8C0] + 4);
    v89 = swift_task_alloc();
    v1[35] = v89;
    *v89 = v1;
    v89[1] = sub_267627B94;
    OUTLINED_FUNCTION_9_13();

    return MEMORY[0x2821BA730](v90, v91, v92);
  }

  if (v64 == *MEMORY[0x277D5C950])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v53, &qword_2801CCAB8, &unk_2676D02E0);
    v69 = OUTLINED_FUNCTION_0_16();
    (v60)(v69);
    v70 = *MEMORY[0x277D5BB70];
    v71 = OUTLINED_FUNCTION_4_15();
    (v56)(v71);
    v68 = MEMORY[0x277D5B8C8];
    goto LABEL_32;
  }

  if (v64 == *MEMORY[0x277D5C940])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v53, &qword_2801CCAB8, &unk_2676D02E0);
    v72 = OUTLINED_FUNCTION_0_16();
    (v60)(v72);
    v73 = *MEMORY[0x277D5BB50];
    v74 = OUTLINED_FUNCTION_4_15();
    (v56)(v74);
    v68 = MEMORY[0x277D5B900];
    goto LABEL_32;
  }

  if (v64 == *MEMORY[0x277D5C938])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v53, &qword_2801CCAB8, &unk_2676D02E0);
    v75 = OUTLINED_FUNCTION_0_16();
    (v60)(v75);
    v76 = *MEMORY[0x277D5BB78];
    v77 = OUTLINED_FUNCTION_4_15();
    (v56)(v77);
    v68 = MEMORY[0x277D5B918];
    goto LABEL_32;
  }

  if (v64 == *MEMORY[0x277D5C948])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v53, &qword_2801CCAB8, &unk_2676D02E0);
    v78 = OUTLINED_FUNCTION_0_16();
    (v60)(v78);
    v79 = *MEMORY[0x277D5BB88];
    v80 = OUTLINED_FUNCTION_4_15();
    (v56)(v80);
    v68 = MEMORY[0x277D5B920];
    goto LABEL_32;
  }

  if (v64 != *MEMORY[0x277D5C930])
  {
    if (v64 == *MEMORY[0x277D5C960])
    {
      v112 = v1[28];
      v113 = v1[25];
      v182(v112, v1[29], v1[24]);
      v114 = *(v113 + 96);
      v60 = (v113 + 96);
      v115 = OUTLINED_FUNCTION_45();
      v116(v115);
      v117 = sub_2676CB10C();
      v118 = *(v117 - 8);
      v119 = (*(v118 + 88))(v112, v117);
      if (v119 == *MEMORY[0x277D5CA48])
      {
        v120 = v57;
        v121 = v1[23];
        v122 = v1[20];
        v59 = v1[21];
        v123 = OUTLINED_FUNCTION_0_16();
        (v60)(v123);
        v124 = MEMORY[0x277D5BBB8];
LABEL_54:
        v156 = *v124;
        v157 = OUTLINED_FUNCTION_4_15();
        v120(v157);
        goto LABEL_33;
      }

      if (v119 == *MEMORY[0x277D5CA50])
      {
        v120 = v57;
        v153 = v1[23];
        v154 = v1[20];
        v59 = v1[21];
        v155 = OUTLINED_FUNCTION_0_16();
        (v60)(v155);
        v124 = MEMORY[0x277D5BBC0];
        goto LABEL_54;
      }

      v160 = v1[28];

      (*(v118 + 8))(v160, v117);
    }

    else
    {
    }

    v182(v1[26], v1[12], v1[24]);
    v130 = sub_2676CBE2C();
    v131 = sub_2676CC23C();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = v1[30];
      v133 = v1[26];
      v134 = v1[24];
      v176 = v1[21];
      v177 = v1[20];
      v179 = v1[23];
      v172 = v1[25];
      v175 = v1[19];
      swift_slowAlloc();
      v135 = OUTLINED_FUNCTION_7_14();
      v185 = v135;
      *v56 = 136315138;
      v182(v132, v133, v134);
      v136 = sub_2676CBFBC();
      v138 = v137;
      v139 = v133;
      v140 = v180;
      v180(v139, v134);
      v141 = sub_2676B0B84(v136, v138, &v185);

      *(v56 + 4) = v141;
      _os_log_impl(&dword_2675D4000, v130, v131, "#MetricsSnippetEventHandler: skipping handling for this change: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v135);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();

      sub_2675EB7EC(v175, &qword_2801CCAB8, &unk_2676D02E0);
      (*(v176 + 8))(v179, v177);
    }

    else
    {
      v146 = v1[25];
      v145 = v1[26];
      v148 = v1[23];
      v147 = v1[24];
      v149 = v1[20];
      v150 = v1[21];
      v151 = v1[19];

      v152 = OUTLINED_FUNCTION_45();
      v140 = v180;
      (v180)(v152);
      sub_2675EB7EC(v151, &qword_2801CCAB8, &unk_2676D02E0);
      (*(v150 + 8))(v148, v149);
    }

    v140(v1[29], v1[24]);
    goto LABEL_17;
  }

  v174 = v57;
  v94 = v1[27];
  v95 = v1[25];
  v97 = v1[16];
  v96 = v1[17];
  v182(v94, v1[29], v1[24]);
  v98 = *(v95 + 96);
  v60 = (v95 + 96);
  v99 = OUTLINED_FUNCTION_45();
  v100(v99);
  sub_2676250CC(v94, v96);
  sub_2675F95E4(v96, v97, &qword_2801CCA08, &unk_2676CFEA0);
  v101 = sub_2676CBE2C();
  v59 = sub_2676CC23C();
  v102 = os_log_type_enabled(v101, v59);
  v103 = v1[16];
  if (v102)
  {
    v104 = v1[14];
    swift_slowAlloc();
    v105 = OUTLINED_FUNCTION_7_14();
    v185 = v105;
    *v56 = 136315138;
    v106 = sub_2676CC2EC();
    v60 = v1;
    v108 = v107;
    sub_2675EB7EC(v103, &qword_2801CCA08, &unk_2676CFEA0);
    v109 = sub_2676B0B84(v106, v108, &v185);
    v1 = v60;

    *(v56 + 4) = v109;
    OUTLINED_FUNCTION_11_14(&dword_2675D4000, v110, v111, "#MetricsSnippetEventHandler: handling change of focusedField %s");
    __swift_destroy_boxed_opaque_existential_1(v105);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    sub_2675EB7EC(v103, &qword_2801CCA08, &unk_2676CFEA0);
  }

  v125 = v1[15];
  sub_2675F95E4(v1[17], v125, &qword_2801CCA08, &unk_2676CFEA0);
  v126 = sub_2676CB0AC();
  if (__swift_getEnumTagSinglePayload(v125, 1, v126) == 1)
  {
    v127 = OUTLINED_FUNCTION_3_12();
    sub_2675EB7EC(v127, &qword_2801CCA08, &unk_2676CFEA0);
    v128 = OUTLINED_FUNCTION_0_16();
    (v60)(v128);
    v129 = MEMORY[0x277D5BB58];
LABEL_64:
    v167 = *v129;
    v168 = OUTLINED_FUNCTION_4_15();
    v174(v168);
    goto LABEL_33;
  }

  v142 = (*(*(v126 - 8) + 88))(v1[15], v126);
  if (v142 == *MEMORY[0x277D5C9C8])
  {
    v143 = OUTLINED_FUNCTION_3_12();
    sub_2675EB7EC(v143, &qword_2801CCA08, &unk_2676CFEA0);
    v144 = OUTLINED_FUNCTION_0_16();
    (v60)(v144);
    v129 = MEMORY[0x277D5BB50];
    goto LABEL_64;
  }

  if (v142 == *MEMORY[0x277D5C9C0])
  {
    v158 = OUTLINED_FUNCTION_3_12();
    sub_2675EB7EC(v158, &qword_2801CCA08, &unk_2676CFEA0);
    v159 = OUTLINED_FUNCTION_0_16();
    (v60)(v159);
    v129 = MEMORY[0x277D5BB78];
    goto LABEL_64;
  }

  if (v142 == *MEMORY[0x277D5C9D0])
  {
    v161 = OUTLINED_FUNCTION_3_12();
    sub_2675EB7EC(v161, &qword_2801CCA08, &unk_2676CFEA0);
    v162 = OUTLINED_FUNCTION_0_16();
    (v60)(v162);
    v129 = MEMORY[0x277D5BB88];
    goto LABEL_64;
  }

  if (v142 == *MEMORY[0x277D5C9E0])
  {
    v163 = OUTLINED_FUNCTION_3_12();
    sub_2675EB7EC(v163, &qword_2801CCA08, &unk_2676CFEA0);
    v164 = OUTLINED_FUNCTION_0_16();
    (v60)(v164);
    v129 = MEMORY[0x277D5BB18];
    goto LABEL_64;
  }

  if (v142 == *MEMORY[0x277D5C9D8])
  {
    v165 = OUTLINED_FUNCTION_3_12();
    sub_2675EB7EC(v165, &qword_2801CCA08, &unk_2676CFEA0);
    v166 = OUTLINED_FUNCTION_0_16();
    (v60)(v166);
    v129 = MEMORY[0x277D5BB70];
    goto LABEL_64;
  }

  v169 = v1[14];
  OUTLINED_FUNCTION_9_13();

  return sub_2676CC58C();
}

uint64_t sub_267627B94()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_267627CC0, v3, 0);
}

uint64_t sub_267627CC0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[23];
  v4 = v0[20];
  sub_2675EB7EC(v0[19], &qword_2801CCAB8, &unk_2676D02E0);
  v1(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[18];
  v13 = v0[19];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_267627DFC(uint64_t *a1)
{
  v1 = *a1;
  sub_2676CBB3C();
  sub_2676CBB2C();
  return sub_2676C96DC();
}

uint64_t sub_267627E4C()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal26MetricsSnippetEventHandler__environment;
  v2 = sub_2676C959C();
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MetricsSnippetEventHandler()
{
  result = qword_2801CCAA8;
  if (!qword_2801CCAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267627F10()
{
  result = sub_2676C959C();
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

void OUTLINED_FUNCTION_1_17()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for NeedsValuePromptProvider()
{
  result = qword_2801CCAC0;
  if (!qword_2801CCAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2676280F8()
{
  result = type metadata accessor for PromptForContactProducer();
  if (v1 <= 0x3F)
  {
    result = sub_2676C9B9C();
    if (v2 <= 0x3F)
    {
      result = sub_2676281AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2676281AC()
{
  result = qword_2801CCAD0;
  if (!qword_2801CCAD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2801CCAD0);
  }

  return result;
}

uint64_t sub_2676281F4()
{
  OUTLINED_FUNCTION_3_0();
  v1[42] = v2;
  v1[43] = v0;
  v3 = sub_2676C9AFC();
  v1[44] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v1[45] = v4;
  v6 = *(v5 + 64);
  v1[46] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C90FC();
  v1[47] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v1[48] = v8;
  v10 = *(v9 + 64);
  v1[49] = OUTLINED_FUNCTION_2_0();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64);
  v1[50] = OUTLINED_FUNCTION_2_0();
  v12 = *(*(sub_2676CAF8C() - 8) + 64);
  v1[51] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  v1[52] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[53] = v14;
  v16 = *(v15 + 64) + 15;
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v17 = sub_2676C9DDC();
  v1[56] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v1[57] = v18;
  v20 = *(v19 + 64);
  v1[58] = OUTLINED_FUNCTION_2_0();
  v21 = sub_2676C9B3C();
  v1[59] = v21;
  OUTLINED_FUNCTION_1_0(v21);
  v1[60] = v22;
  v24 = *(v23 + 64);
  v1[61] = OUTLINED_FUNCTION_2_0();
  v25 = sub_2676CA27C();
  v1[62] = v25;
  OUTLINED_FUNCTION_1_0(v25);
  v1[63] = v26;
  v28 = *(v27 + 64);
  v1[64] = OUTLINED_FUNCTION_2_0();
  v29 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_26762847C()
{
  v1 = v0[64];
  v2 = v0[43];
  v3 = type metadata accessor for NeedsValuePromptProvider();
  v0[65] = v3;
  v4 = v2 + *(v3 + 32);
  v5 = *(v4 + 8);
  (*v4)();
  v6 = v0[63];
  v7 = v0[58];
  v20 = v0[62];
  v21 = v0[55];
  v8 = v0[53];
  v26 = v0[59];
  v22 = v0[54];
  v23 = v0[52];
  v24 = v0[51];
  v9 = v0[50];
  v27 = v0[49];
  v28 = v0[48];
  v29 = v0[47];
  v30 = v0[60];
  v31 = v0[43];
  v25 = v0[61];
  v10 = v0[64];
  sub_2676C9B2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
  v11 = *(v6 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2676CDE20;
  (*(v6 + 16))(v13 + v12, v10, v20);
  sub_2676C9B1C();
  sub_2676C999C();
  v14 = *v31;
  (*(v8 + 16))(v22, v21, v23);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v24);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v26);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v28 + 8))(v27, v29);
  sub_2676C9D5C();
  sub_2676C9DAC();
  (*(v30 + 16))(v9, v25, v26);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v26);
  sub_2676C9D8C();
  (*(v8 + 8))(v21, v23);
  v15 = *(v3 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[66] = v16;
  *v16 = v17;
  v16[1] = sub_267628840;
  v18 = v0[46];

  return sub_26763A8A0(v18);
}

uint64_t sub_267628840()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = *(v2 + 528);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v6 + 536) = v0;

  if (v0)
  {
    v7 = sub_2676293F4;
  }

  else
  {
    v7 = sub_267628944;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267628944()
{
  v1 = *(v0 + 368);
  sub_2676C9ABC();
  if (*(v0 + 80))
  {
    v2 = *(v0 + 368);
    sub_2675DD73C((v0 + 56), v0 + 16);
    sub_2676C9ACC();
    if (*(v0 + 320))
    {
      OUTLINED_FUNCTION_11_15();
      sub_2675DD73C((v0 + 296), v0 + 256);
      v3 = OUTLINED_FUNCTION_18_6();
      *(v0 + 544) = v3;
      OUTLINED_FUNCTION_5_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_15_3();
      *(v0 + 552) = v4;
      *v4 = v5;
      v4[1] = sub_267628C20;
      v6 = *(v0 + 464);
      v7 = *(v0 + 336);

      return v28(v7, v0 + 16, v0 + 256, v3, v6);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = v0 + 296;
  }

  else
  {
    v9 = v0 + 56;
  }

  sub_2676298A0(v9);
  v10 = *(v0 + 368);
  sub_2676C9ABC();
  if (*(v0 + 160))
  {
    OUTLINED_FUNCTION_11_15();
    sub_2675DD73C((v0 + 136), v0 + 96);
    v11 = OUTLINED_FUNCTION_18_6();
    *(v0 + 560) = v11;
    OUTLINED_FUNCTION_5_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_15_3();
    *(v0 + 568) = v12;
    *v12 = v13;
    v12[1] = sub_267628E14;
    v14 = *(v0 + 464);
    v15 = *(v0 + 336);
    v16 = v0 + 96;
LABEL_12:

    return (v28)(v15, v16, v11, v14);
  }

  v17 = *(v0 + 368);
  sub_2676298A0(v0 + 136);
  sub_2676C9ACC();
  v18 = *(v0 + 240);
  OUTLINED_FUNCTION_11_15();
  v19 = (v0 + 216);
  if (v20)
  {
    sub_2675DD73C(v19, v0 + 176);
    v11 = OUTLINED_FUNCTION_18_6();
    *(v0 + 576) = v11;
    OUTLINED_FUNCTION_5_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_15_3();
    *(v0 + 584) = v21;
    *v21 = v22;
    v21[1] = sub_267629000;
    v14 = *(v0 + 464);
    v15 = *(v0 + 336);
    v16 = v0 + 176;
    goto LABEL_12;
  }

  sub_2676298A0(v19);
  v23 = OUTLINED_FUNCTION_18_6();
  *(v0 + 592) = v23;
  OUTLINED_FUNCTION_5_4(MEMORY[0x277D5BD50]);
  OUTLINED_FUNCTION_15_3();
  *(v0 + 600) = v24;
  *v24 = v25;
  v24[1] = sub_2676291EC;
  v26 = *(v0 + 464);
  v27 = *(v0 + 336);

  return (v28)(v27, v23, v26);
}

uint64_t sub_267628C20()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 552);
  v3 = *(v1 + 544);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267628D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_13();
  __swift_destroy_boxed_opaque_existential_1((v12 + 256));
  __swift_destroy_boxed_opaque_existential_1((v12 + 16));
  v13 = OUTLINED_FUNCTION_14_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_13_11();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_267628E14()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 568);
  v3 = *(v1 + 560);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267628F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_13();
  __swift_destroy_boxed_opaque_existential_1((v12 + 96));
  v13 = OUTLINED_FUNCTION_14_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_13_11();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_267629000()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 584);
  v3 = *(v1 + 576);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267629100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_13();
  __swift_destroy_boxed_opaque_existential_1((v12 + 176));
  v13 = OUTLINED_FUNCTION_14_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_13_11();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_2676291EC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 600);
  v3 = *(v1 + 592);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2676292EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v14 = v12[63];
  v13 = v12[64];
  v15 = v12[62];
  v17 = v12[57];
  v16 = v12[58];
  v18 = v12[56];
  (*(v12[45] + 8))(v12[46], v12[44]);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_2676293F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v14 = v12[63];
  v13 = v12[64];
  v16 = v12[61];
  v15 = v12[62];
  v17 = v12[59];
  v18 = v12[60];
  (*(v12[57] + 8))(v12[58], v12[56]);
  (*(v14 + 8))(v13, v15);
  (*(v18 + 8))(v16, v17);
  v19 = v12[67];
  v20 = v12[64];
  v21 = v12[61];
  v22 = v12[58];
  v24 = v12[54];
  v23 = v12[55];
  v26 = v12[50];
  v25 = v12[51];
  v27 = v12[49];
  v28 = v12[46];

  v29 = v12[1];
  OUTLINED_FUNCTION_32_1();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_267629508()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267629908;

  return sub_2676281F4();
}

uint64_t sub_2676295A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD28] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267629908;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_267629654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD18] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267629708;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_267629708()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2676297EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD20] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267629908;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t sub_2676298A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAE0, &qword_2676D0388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_17()
{
  v1 = v0[64];
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[49];
  v9 = v0[46];
  v10 = *(v0[60] + 8);
  return v0[61];
}

void OUTLINED_FUNCTION_3_13()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[56];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[44];
}

uint64_t OUTLINED_FUNCTION_6_13()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_11_15()
{
  v1 = v0[65];
  v2 = v0[46];
  v3 = v0[43];
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  v3 = *(v1 + *(v0 + 28));

  return MEMORY[0x2821BAFD0]();
}

void sub_2676299E0()
{
  OUTLINED_FUNCTION_21_1();
  v95 = v0;
  v96 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v90 = sub_2676CA27C();
  v8 = OUTLINED_FUNCTION_3(v90);
  v88 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_5();
  v87 = v12;
  OUTLINED_FUNCTION_7_3();
  v94 = sub_2676CA10C();
  v13 = OUTLINED_FUNCTION_3(v94);
  v86 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_7();
  v83 = v17 - v18;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24_1();
  v85 = v20;
  OUTLINED_FUNCTION_7_3();
  v93 = sub_2676CA19C();
  v21 = OUTLINED_FUNCTION_3(v93);
  v84 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_7();
  v81 = v25 - v26;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  v82 = v28;
  OUTLINED_FUNCTION_7_3();
  v92 = sub_2676CA2DC();
  v29 = OUTLINED_FUNCTION_3(v92);
  v80 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_7();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  v91 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_3(v38);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  v45 = &v77 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  OUTLINED_FUNCTION_4_1(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v49);
  v51 = &v77 - v50;
  v52 = sub_2676CA07C();
  v53 = OUTLINED_FUNCTION_3(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_7();
  v60 = v58 - v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_24_1();
  v63 = v62;
  v89 = v7;
  sub_2676C9B2C();
  sub_2676CA78C();
  (*(v40 + 16))(v45, v95, v38);
  v96(0);
  sub_2676CA76C();
  sub_2676CA30C();

  __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
  v78 = v63;
  v79 = v55;
  (*(v55 + 32))(v63, v51, v52);
  v64 = v91;
  sub_2676CA2CC();
  (*(v55 + 16))(v60, v63, v52);
  sub_2676CA2BC();
  v65 = v82;
  sub_2676CA18C();
  v66 = v80;
  (*(v80 + 16))(v35, v64, v92);
  sub_2676CA17C();
  v67 = v85;
  sub_2676CA0FC();
  v68 = v84;
  (*(v84 + 16))(v81, v65, v93);
  sub_2676CA0EC();
  v69 = v87;
  sub_2676CA26C();
  v70 = v86;
  (*(v86 + 16))(v83, v67, v94);
  sub_2676CA24C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
  v71 = v88;
  v72 = *(v88 + 72);
  v73 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_2676CDE20;
  v75 = v74 + v73;
  v76 = v90;
  (*(v71 + 16))(v75, v69, v90);
  sub_2676C9B1C();
  (*(v71 + 8))(v69, v76);
  (*(v70 + 8))(v67, v94);
  (*(v68 + 8))(v65, v93);
  (*(v66 + 8))(v91, v92);
  (*(v79 + 8))(v78, v52);
  OUTLINED_FUNCTION_20_1();
}

void sub_267629FE4()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v83 = sub_2676CA27C();
  v4 = OUTLINED_FUNCTION_3(v83);
  v81 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5();
  v80 = v8;
  OUTLINED_FUNCTION_7_3();
  v79 = sub_2676CA2AC();
  v9 = OUTLINED_FUNCTION_3(v79);
  v78 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_7();
  v76 = v13 - v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_1();
  v77 = v16;
  OUTLINED_FUNCTION_7_3();
  v100 = sub_2676CA19C();
  v17 = OUTLINED_FUNCTION_3(v100);
  v96 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_7();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v76 - v25;
  v99 = sub_2676CA22C();
  v27 = OUTLINED_FUNCTION_3(v99);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_7();
  v95 = v32 - v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  v98 = v35;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18) - 8);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  v40 = &v76 - v39;
  v41 = sub_2676CA07C();
  v42 = OUTLINED_FUNCTION_3(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_7();
  v94 = v47 - v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_24_1();
  v97 = v50;
  v82 = v3;
  sub_2676C9B2C();
  v51 = *(v1 + 16);
  if (v51)
  {
    v52 = v1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v53 = *(v36 + 72);
    v90 = (v44 + 16);
    v91 = (v44 + 32);
    v88 = (v96 + 16);
    v89 = (v29 + 16);
    v86 = (v29 + 8);
    v87 = v96 + 8;
    v84 = v96 + 32;
    v85 = (v44 + 8);
    v54 = MEMORY[0x277D84F90];
    v92 = v53;
    v93 = v23;
    do
    {
      sub_26762ABA4(v52, v40);
      if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
      {
        sub_26762A81C(v40);
      }

      else
      {
        v55 = v97;
        (*v91)(v97, v40, v41);
        v56 = v98;
        sub_2676CA21C();
        (*v90)(v94, v55, v41);
        sub_2676CA20C();
        sub_2676CA18C();
        (*v89)(v95, v56, v99);
        sub_2676CA16C();
        (*v88)(v23, v26, v100);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = *(v54 + 16);
          OUTLINED_FUNCTION_8_15();
          sub_267607544();
          v54 = v65;
        }

        v57 = *(v54 + 16);
        if (v57 >= *(v54 + 24) >> 1)
        {
          OUTLINED_FUNCTION_8_15();
          sub_267607544();
          v54 = v66;
        }

        v58 = v96;
        v59 = v26;
        v60 = v26;
        v61 = v100;
        (*(v96 + 8))(v59, v100);
        (*v86)(v98, v99);
        (*v85)(v97, v41);
        *(v54 + 16) = v57 + 1;
        v62 = v54 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57;
        v23 = v93;
        v63 = v61;
        v26 = v60;
        (*(v58 + 32))(v62, v93, v63);
        v53 = v92;
      }

      v52 += v53;
      --v51;
    }

    while (v51);
  }

  v67 = v77;
  sub_2676CA29C();
  sub_2676CA28C();
  v68 = v80;
  sub_2676CA26C();
  v69 = v78;
  v70 = v79;
  (*(v78 + 16))(v76, v67, v79);
  sub_2676CA23C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
  v71 = v81;
  v72 = *(v81 + 72);
  v73 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_2676CDE20;
  v75 = v83;
  (*(v71 + 16))(v74 + v73, v68, v83);
  sub_2676C9B1C();
  (*(v71 + 8))(v68, v75);
  (*(v69 + 8))(v67, v70);
  OUTLINED_FUNCTION_20_1();
}

void sub_26762A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  sub_2676CA3CC();
  sub_2676299E0();
  (*(v29 + 8))(v34, v27);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26762A81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26762A884()
{
  OUTLINED_FUNCTION_21_1();
  v36[2] = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v36[1] = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAE8, &unk_2676D0390);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18) - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_2676CDE10;
  sub_2676CA78C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  sub_2676CA3AC();
  sub_2676CB9FC();
  sub_2676CA76C();
  sub_2676CA30C();

  sub_2676CA07C();
  OUTLINED_FUNCTION_8_15();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v18);
  sub_2676CA3CC();
  sub_2676CBA6C();
  sub_2676CA76C();
  sub_2676CA30C();

  OUTLINED_FUNCTION_8_15();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_267629FE4();
  swift_setDeallocating();
  sub_2675FBBB4();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26762ABA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762AC20()
{
  v0 = sub_2676CA2EC();
  if (sub_267630B8C(v0))
  {
    sub_267692C1C(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D5FE0E0](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for NoResults()
{
  result = qword_2801CCAF0;
  if (!qword_2801CCAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26762AD3C()
{
  sub_2675FEE64();
  if (v0 <= 0x3F)
  {
    sub_2675FEEB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26762ADD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v6 = *(v5 + 64);
  v2[6] = OUTLINED_FUNCTION_2_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  v2[9] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v2[10] = v14;
  v16 = *(v15 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v17 = sub_2676C9DDC();
  v2[13] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v2[14] = v18;
  v20 = *(v19 + 64);
  v2[15] = OUTLINED_FUNCTION_2_0();
  v21 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  v2[16] = OUTLINED_FUNCTION_2_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26762AFE0, 0, 0);
}

uint64_t sub_26762AFE0()
{
  v1 = v0[3];
  v2 = sub_2676CB33C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[19] = sub_2676CB32C();
  if (*(v1 + 40))
  {
    v5 = v0[18];
    v6 = *(v0[3] + 32);
    v7 = sub_2676CB21C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_2676CB20C();
    sub_2676CB1EC();

    sub_2676CBFEC();
    v10 = sub_2676CB3FC();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
    sub_2676CB1DC();

    sub_2675E3BB8(v5);
    sub_2676CB2AC();
  }

  v11 = v0[3];
  if (v11[3])
  {
    v12 = v11[2];
    sub_2676CB2CC();

    v11 = v0[3];
  }

  v13 = v0[16];
  sub_2676CB28C();
  v14 = type metadata accessor for NoResults();
  v15 = sub_2675FFBC4(v11 + v14[7]);
  v0[20] = v15;
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[21] = sub_2676CB42C();
  if (v11[1])
  {
    v16 = v0[17];
    v17 = *v0[3];
    sub_2676CBFEC();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v0[17];
  v20 = v0[3];
  v21 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
  v22 = 0;
  v0[22] = sub_2676CB31C();
  if ((*(v20 + v14[8]) & 1) == 0)
  {

    v22 = v15;
  }

  v0[23] = v22;
  v23 = *(v0[3] + v14[9]);
  v24 = swift_task_alloc();
  v0[24] = v24;
  *v24 = v0;
  v24[1] = sub_26762B2A0;
  v25 = v0[17];

  return sub_26765350C();
}

uint64_t sub_26762B2A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v7 = v4[24];
  *v6 = *v2;
  v5[25] = v1;

  v8 = v4[23];
  v9 = v4[22];
  v10 = v4[21];
  v11 = v4[17];
  if (v1)
  {
    sub_2675E3BB8(v11);

    v12 = sub_26762B910;
  }

  else
  {
    v5[26] = a1;
    sub_2675E3BB8(v11);

    v12 = sub_26762B454;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_26762B454()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v20 = v0[7];
  v21 = v0[4];
  v23 = v0[26];
  sub_2676C997C();
  (*(v5 + 16))(v2, v3, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v6);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v8 + 8))(v7, v21);
  sub_2676C9D5C();
  (*(v5 + 8))(v3, v4);
  v10 = sub_2676C9B9C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[27] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v13 = swift_allocObject();
  v0[28] = v13;
  *(v13 + 16) = xmmword_2676CD5C0;
  *(v13 + 32) = v23;
  v14 = *(MEMORY[0x277D5BD50] + 4);
  v22 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v15 = v23;
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_26762B6D0;
  v17 = v0[15];
  v18 = v0[2];

  return v22(v18, v13, v17);
}

uint64_t sub_26762B6D0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_26762B7FC, 0, 0);
}

uint64_t sub_26762B7FC()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];
  v13 = v0[11];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[6];

  (*(v9 + 8))(v7, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_26762B910()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[7];
  v9 = v0[8];
  v14 = v0[6];

  v11 = v0[1];
  v12 = v0[25];

  return v11();
}

uint64_t sub_26762B9FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675FE274;

  return sub_26762ADD8(a1);
}

uint64_t type metadata accessor for OfferToContinueReading()
{
  result = qword_2801CCB00;
  if (!qword_2801CCB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26762BB08()
{
  sub_2675F9EB0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_26762BB7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v2[4] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v2[5] = OUTLINED_FUNCTION_2_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v2[6] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v2[7] = v10;
  v12 = *(v11 + 64);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C90FC();
  v2[9] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v2[10] = v14;
  v16 = *(v15 + 64);
  v2[11] = OUTLINED_FUNCTION_2_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  v2[12] = OUTLINED_FUNCTION_2_0();
  v20 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v23 = sub_2676C99CC();
  v2[14] = v23;
  OUTLINED_FUNCTION_1_0(v23);
  v2[15] = v24;
  v26 = *(v25 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v27 = sub_2676C9DDC();
  v2[18] = v27;
  OUTLINED_FUNCTION_1_0(v27);
  v2[19] = v28;
  v30 = *(v29 + 64);
  v2[20] = OUTLINED_FUNCTION_2_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v31);
  v33 = *(v32 + 64);
  v2[21] = OUTLINED_FUNCTION_2_0();
  v34 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v34);
  v36 = *(v35 + 64);
  v2[22] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_26762BE20, 0, 0);
}

uint64_t sub_26762BE20()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[3];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[23] = sub_2676CB42C();
  sub_26762C6CC(v3, v2);
  v4 = sub_2676C8C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v4);
  v6 = v0[21];
  if (EnumTagSinglePayload == 1)
  {
    sub_26762C73C(v0[21]);
    v7 = 0;
  }

  else
  {
    v8 = v0[21];
    v7 = sub_267626550();
    (*(*(v4 - 8) + 8))(v6, v4);
  }

  v0[24] = v7;
  v9 = v0[3];
  v10 = *(v9 + *(type metadata accessor for OfferToContinueReading() + 20));
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_26762BF8C;

  return sub_2676539A0(v7, v10);
}

uint64_t sub_26762BF8C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 200);
  v7 = *(*v2 + 184);
  v8 = *v2;

  v9 = v4[24];
  if (v1)
  {
    v10 = v5[21];
    v11 = v5[22];
    v12 = v5[20];
    v14 = v5[16];
    v13 = v5[17];
    v16 = v5[12];
    v15 = v5[13];
    v17 = v5[11];
    v18 = v5[8];
    v20 = v5 + 4;
    v19 = v5[4];
    v23 = v20[1];

    v21 = *(v8 + 8);

    return v21();
  }

  else
  {
    v5[26] = a1;

    return MEMORY[0x2822009F8](sub_26762C1B0, 0, 0);
  }
}

uint64_t sub_26762C1B0()
{
  v24 = v0[22];
  v25 = v0[21];
  v1 = v0[20];
  v20 = v0[19];
  v2 = v0[17];
  v21 = v0[26];
  v22 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v26 = v0[11];
  v8 = v0[10];
  v16 = v0[8];
  v17 = v0[7];
  v18 = v0[6];
  v14 = v0[9];
  v15 = v0[5];
  v19 = v0[4];
  v23 = v0[2];
  sub_2676C999C();
  (*(v3 + 16))(v4, v2, v5);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v6);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v8 + 8))(v26, v14);
  sub_2676C9D5C();
  sub_2676C9DAC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v10);
  sub_2676CA3AC();
  sub_2676299B8();
  (*(v17 + 8))(v16, v18);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_2676C9D8C();
  (*(v3 + 8))(v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2676CD5C0;
  *(v11 + 32) = v21;
  (*(v20 + 16))(v19, v1, v22);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v22);
  sub_2676C9AAC();
  (*(v20 + 8))(v1, v22);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26762C540(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26762C5D8;

  return sub_26762BB7C(a1);
}

uint64_t sub_26762C5D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26762C6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762C73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26762C7B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26762C7F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26762C854()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2676C90FC();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_2_0();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64);
  v1[7] = OUTLINED_FUNCTION_2_0();
  v8 = *(*(sub_2676CAF8C() - 8) + 64);
  v1[8] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676C99CC();
  v1[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v13 = sub_2676C9DDC();
  v1[13] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_2_0();
  v17 = *(*(sub_2676CB48C() - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_26762CA24, 0, 0);
}

uint64_t sub_26762CA24()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[16];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[17] = sub_2676CB42C();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_26762CADC;

  return sub_267653C44();
}

uint64_t sub_26762CADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  v4[19] = v1;

  if (v1)
  {
    v8 = sub_2675FE118;
  }

  else
  {
    v9 = v4[17];

    v4[20] = a1;
    v8 = sub_26762CC04;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_26762CC04()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v25 = v0[5];
  v26 = v0[4];
  v36 = v0[3];
  sub_2676C999C();
  (*(v5 + 16))(v2, v3, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v7);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v25 + 8))(v8, v26);
  sub_2676C9D5C();
  v10 = sub_2676C9DAC();
  sub_26762A67C(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  sub_2676C9D8C();
  (*(v5 + 8))(v3, v4);
  v18 = *(v36 + 40);
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_26762CE60;
  v20 = v0[20];
  v21 = v0[15];
  v22 = v0[2];
  v23 = v0[3];

  JUMPOUT(0x26763C648);
}

uint64_t sub_26762CE60()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 168);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_2675FE030, 0, 0);
}

uint64_t sub_26762CF50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26762D204;

  return sub_26762C854();
}

uint64_t sub_26762CFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD28] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26762D204;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_26762D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD18] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2675DFCCC;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_26762D150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD20] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26762D204;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t sub_26762D208()
{
  v1 = *(*(sub_2676C8E9C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v12 - v3;
  v5 = sub_2676C8EBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26762D3F0(v0, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26762D460(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_2676C8E8C();
    sub_2675E362C();
    v10 = sub_2676CC08C();
    (*(v6 + 8))(v9, v5);
  }

  return v10;
}

uint64_t sub_26762D3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762D460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26762D4C8@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB10, &qword_2676D04E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v8 - v3;
  sub_2676CAF5C();
  if (sub_2676CAF3C())
  {
    sub_2676CAF1C();

    sub_2676CBDAC();

    v5 = sub_2676CAF8C();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  else
  {
    v7 = sub_2676CAF8C();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    sub_2676CAF4C();
    sub_2676CAF1C();

    sub_2676CBDAC();

    result = __swift_getEnumTagSinglePayload(v4, 1, v7);
    if (result != 1)
    {
      return sub_26762D644(v4);
    }
  }

  return result;
}

uint64_t sub_26762D644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB10, &qword_2676D04E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26762D6AC()
{
  OUTLINED_FUNCTION_3_0();
  *(v0 + 216) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2676C90FC();
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_1_0(v3);
  *(v0 + 56) = v4;
  v6 = *(v5 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_2_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  *(v0 + 72) = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  *(v0 + 88) = v13;
  OUTLINED_FUNCTION_1_0(v13);
  *(v0 + 96) = v14;
  v16 = *(v15 + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  v17 = sub_2676C9DDC();
  *(v0 + 120) = v17;
  OUTLINED_FUNCTION_1_0(v17);
  *(v0 + 128) = v18;
  v20 = *(v19 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_2_0();
  v21 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  *(v0 + 144) = OUTLINED_FUNCTION_2_0();
  v24 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_26762D86C()
{
  OUTLINED_FUNCTION_3_0();
  if (*(v0 + 216))
  {
    v1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v1 = OUTLINED_FUNCTION_24();
    *(v1 + 16) = xmmword_2676CD5C0;
    sub_2675E5E30(0, &qword_2801CCB30, 0x277D47A50);
    *(v1 + 32) = sub_26762DFA4();
  }

  *(v0 + 152) = v1;
  v2 = *(v0 + 144);
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  *(v0 + 160) = sub_2676CB42C();
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_26762D984;

  return sub_2676943D0();
}

uint64_t sub_26762D984()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_12(v4);
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = sub_26762DED8;
  }

  else
  {
    v10 = *(v3 + 160);

    v9 = sub_26762DA8C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26762DA8C()
{
  v3 = v0[19];
  v4 = v0[14];
  sub_2676C999C();
  if (v3 >> 62)
  {
    if (v0[19] < 0)
    {
      v19 = v0[19];
    }

    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_11_16();
    sub_2676CC4DC();
    OUTLINED_FUNCTION_15_10();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = v0[19];

    sub_2676CC5AC();

    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
  }

  OUTLINED_FUNCTION_3_14();
  v6 = OUTLINED_FUNCTION_14_10();
  v7(v6);
  OUTLINED_FUNCTION_2_18();
  sub_2676C9D6C();
  sub_26762D4C8(v2);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  OUTLINED_FUNCTION_17_10(v8);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v9 = OUTLINED_FUNCTION_9_14();
  v10(v9);
  OUTLINED_FUNCTION_11_16();
  sub_2676C9D5C();
  (*(v1 + 8))();
  v11 = sub_2676C9B9C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[24] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v14 = OUTLINED_FUNCTION_24();
  v0[25] = v14;
  *(v14 + 16) = xmmword_2676CD5C0;
  *(v14 + 32) = v20;
  OUTLINED_FUNCTION_16_7(MEMORY[0x277D5BD50]);
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_7_15(v15);

  return v17(v16);
}

uint64_t sub_26762DCD4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1[26];
  v3 = v1[25];
  v4 = v1[24];
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26762DDF0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);

  (*(v4 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26762DED8()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  v10 = v0[1];
  v11 = v0[22];

  return v10();
}

id sub_26762DFA4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D47A50]) init];
  sub_2675E5E30(0, &qword_2801CCB40, 0x277CCABB0);
  v1 = v0;
  v2 = sub_2676CC2CC();
  [v1 setTimerValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v3 = OUTLINED_FUNCTION_24();
  *(v3 + 16) = xmmword_2676CD5C0;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  v4 = OUTLINED_FUNCTION_11_16();
  sub_26762E900(v4, v5);

  return v1;
}

uint64_t sub_26762E07C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267629708;

  return sub_26762D6AC();
}

uint64_t sub_26762E11C()
{
  OUTLINED_FUNCTION_3_0();
  *(v0 + 216) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2676C90FC();
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_1_0(v3);
  *(v0 + 56) = v4;
  v6 = *(v5 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_2_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  *(v0 + 72) = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  *(v0 + 88) = v13;
  OUTLINED_FUNCTION_1_0(v13);
  *(v0 + 96) = v14;
  v16 = *(v15 + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  v17 = sub_2676C9DDC();
  *(v0 + 120) = v17;
  OUTLINED_FUNCTION_1_0(v17);
  *(v0 + 128) = v18;
  v20 = *(v19 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_2_0();
  v21 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  *(v0 + 144) = OUTLINED_FUNCTION_2_0();
  v24 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_26762E2DC()
{
  OUTLINED_FUNCTION_3_0();
  if (*(v0 + 216))
  {
    v1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v1 = OUTLINED_FUNCTION_24();
    *(v1 + 16) = xmmword_2676CD5C0;
    sub_2675E5E30(0, &qword_2801CCB30, 0x277D47A50);
    *(v1 + 32) = sub_26762DFA4();
  }

  *(v0 + 152) = v1;
  v2 = *(v0 + 144);
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  *(v0 + 160) = sub_2676CB42C();
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_26762E3F4;

  return sub_267694318();
}

uint64_t sub_26762E3F4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_12(v4);
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = sub_26762EB08;
  }

  else
  {
    v10 = *(v3 + 160);

    v9 = sub_26762E4FC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26762E4FC()
{
  v3 = v0[19];
  v4 = v0[14];
  sub_2676C999C();
  if (v3 >> 62)
  {
    if (v0[19] < 0)
    {
      v19 = v0[19];
    }

    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_11_16();
    sub_2676CC4DC();
    OUTLINED_FUNCTION_15_10();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = v0[19];

    sub_2676CC5AC();

    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
  }

  OUTLINED_FUNCTION_3_14();
  v6 = OUTLINED_FUNCTION_14_10();
  v7(v6);
  OUTLINED_FUNCTION_2_18();
  sub_2676C9D6C();
  sub_26762D4C8(v2);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  OUTLINED_FUNCTION_17_10(v8);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v9 = OUTLINED_FUNCTION_9_14();
  v10(v9);
  OUTLINED_FUNCTION_11_16();
  sub_2676C9D5C();
  (*(v1 + 8))();
  v11 = sub_2676C9B9C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[24] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v14 = OUTLINED_FUNCTION_24();
  v0[25] = v14;
  *(v14 + 16) = xmmword_2676CD5C0;
  *(v14 + 32) = v20;
  OUTLINED_FUNCTION_16_7(MEMORY[0x277D5BD50]);
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_7_15(v15);

  return v17(v16);
}

uint64_t sub_26762E744()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1[26];
  v3 = v1[25];
  v4 = v1[24];
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26762E860()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267629908;

  return sub_26762E11C();
}

void sub_26762E900(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB48, &qword_2676D0500);
  v3 = sub_2676CC0EC();

  [a2 setCommands_];
}

uint64_t getEnumTagSinglePayload for ReplyPromptInterpreter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26762EA28(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_18()
{

  return sub_2676C9D2C();
}

void OUTLINED_FUNCTION_3_14()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[11];
  v0[23] = v0[3];
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 136);
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

id OUTLINED_FUNCTION_16_7@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t sub_26762EC3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2676CC4EC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26762EC60(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2676CC4EC())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D5FE0E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v13 = v10;
      a1(&v14, &v13);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_2676CC44C();
      v11 = *(v15 + 16);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      if (v9 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_26762EDE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC148, &unk_2676CDD90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v74 - v4;
  v5 = sub_2676CA0DC();
  v81 = *(v5 - 1);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2676CA19C();
  v79 = *(v9 - 8);
  v10 = *(v79 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v78 = &v74 - v15;
  v16 = sub_2676C9EBC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v80 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v83 = (&v74 - v22);
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - v23;
  v25 = sub_2676CA00C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v17 + 16);
  v84 = v1;
  v31 = v1;
  v32 = v30;
  v30(v24, v31, v16);
  if ((*(v17 + 88))(v24, v16) != *MEMORY[0x277D5C160])
  {
    (*(v17 + 8))(v24, v16);
    goto LABEL_5;
  }

  v75 = v32;
  (*(v17 + 96))(v24, v16);
  (*(v26 + 4))(v29, v24, v25);
  sub_2676C9FFC();
  v33 = sub_2676CA0CC();
  (*(v81 + 8))(v8, v82);
  v34 = v85;
  sub_267698E5C(v33);

  if (__swift_getEnumTagSinglePayload(v34, 1, v9) == 1)
  {
    (*(v26 + 1))(v29, v25);
    sub_2675E35CC(v85, &qword_2801CC148, &unk_2676CDD90);
    v32 = v75;
LABEL_5:
    v35 = v83;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v36 = sub_2676CBE4C();
    __swift_project_value_buffer(v36, qword_2801CDC90);
    v32(v35, v84, v16);
    v37 = sub_2676CBE2C();
    v38 = sub_2676CC24C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v87[0] = v40;
      *v39 = 136315138;
      v32(v80, v35, v16);
      v41 = sub_2676CBFBC();
      v43 = v42;
      (*(v17 + 8))(v35, v16);
      v44 = sub_2676B0B84(v41, v43, v87);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_2675D4000, v37, v38, "Cannot extract task: USO parse has no UDAs. %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26D5FEA80](v40, -1, -1);
      MEMORY[0x26D5FEA80](v39, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v35, v16);
    }

    return 0;
  }

  v45 = v9;
  v84 = v29;
  v46 = v26;
  v48 = v78;
  v47 = v79;
  (*(v79 + 32))(v78, v85, v9);
  if ((sub_2676CA11C() & 1) == 0)
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v63 = sub_2676CBE4C();
    __swift_project_value_buffer(v63, qword_2801CDC90);
    v64 = sub_2676CBE2C();
    v65 = sub_2676CC24C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2675D4000, v64, v65, "User dialog act does not have a user stated task", v66, 2u);
      MEMORY[0x26D5FEA80](v66, -1, -1);
    }

    (*(v47 + 8))(v48, v45);
    v46[1](v84, v25);
    return 0;
  }

  v69 = sub_2676CA2EC();
  v70 = sub_267630B8C(v69);
  v71 = v77;
  if (!v70)
  {

    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v49 = sub_2676CBE4C();
    __swift_project_value_buffer(v49, qword_2801CDC90);
    v50 = *(v47 + 16);
    v50(v71, v48, v45);
    v51 = sub_2676CBE2C();
    v52 = sub_2676CC24C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v85 = v25;
      v83 = v26;
      v54 = v53;
      v82 = swift_slowAlloc();
      v87[0] = v82;
      *v54 = 136315138;
      v50(v76, v71, v45);
      v55 = sub_2676CBFBC();
      v56 = v71;
      v57 = v45;
      v59 = v58;
      v60 = *(v47 + 8);
      v60(v56, v57);
      v61 = sub_2676B0B84(v55, v59, v87);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_2675D4000, v51, v52, "Cannot extract task: UDA -> Task conversion failed. %s", v54, 0xCu);
      v62 = v82;
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x26D5FEA80](v62, -1, -1);
      MEMORY[0x26D5FEA80](v54, -1, -1);

      v60(v48, v57);
      v83[1](v84, v85);
    }

    else
    {

      v67 = *(v47 + 8);
      v67(v71, v45);
      v67(v48, v45);
      (*(v26 + 1))(v84, v25);
    }

    return 0;
  }

  sub_267692C1C(0, (v69 & 0xC000000000000001) == 0, v69);
  if ((v69 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v69);
  }

  else
  {
    v72 = *(v69 + 32);
  }

  v73 = v84;

  sub_2676CA56C();

  (*(v47 + 8))(v48, v45);
  v46[1](v73, v25);
  if (!v87[3])
  {
    sub_2675E35CC(v87, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA5FC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v86;
}

uint64_t sub_26762F80C(char a1)
{
  v2 = sub_2676CA43C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = *(v5 + 104);
  v11(v9 - v8, *MEMORY[0x277D5E478], v2);
  v12 = sub_2676308A4(a1);
  v19 = v10;
  v13 = sub_2676A2650(sub_267630B6C, v18, v12);

  v14 = *(v5 + 8);
  v14(v10, v2);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v11(v10, *MEMORY[0x277D5E470], v2);
    v16 = sub_2676308A4(a1);
    MEMORY[0x28223BE20](v16);
    *&v18[-16] = v10;
    v15 = sub_2676A2650(sub_267630B90, &v18[-32], v16);

    v14(v10, v2);
  }

  return v15 & 1;
}

uint64_t sub_26762F9E8(char a1, uint64_t a2)
{
  v3 = sub_2676308A4(a1);
  v12[2] = a2;
  v4 = sub_26762EC60(sub_267630B4C, v12, v3);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v8 = *(v4 + 16);
  while (1)
  {
    if (v8 == v6)
    {

      return v7;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = v4 + 8 * v6++;
    if (*(v9 + 32))
    {
      v10 = *(v9 + 32);

      MEMORY[0x26D5FDDA0](v11);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2676CC11C();
      }

      result = sub_2676CC15C();
      v7 = v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26762FB04@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v83 = &v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v82 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v70 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v70 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v70 - v36;
  if (sub_2676CA4DC())
  {
    v80 = v33;
    sub_2676CA38C();
    sub_2676CA66C();
    sub_2676CA5AC();

    if (v85)
    {

      v38 = sub_2676CB80C();
      v81 = v37;
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
      v39 = sub_2676CA6BC();
      v76 = v40;
      v77 = v39;
      v41 = sub_2676CA6CC();
      v74 = v42;
      v75 = v41;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      v79 = v26;
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v78);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v73);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v72);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      v44 = v82;
      v71 = v43;
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v43);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v70);
      v45 = v18;
      v46 = v14;
      v47 = v10;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      __swift_storeEnumTagSinglePayload(v31, 1, 1, v48);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v49);
      v51 = v79;
      v50 = v80;
      sub_2676CA7BC();
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v48);
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v78);
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v73);
      __swift_storeEnumTagSinglePayload(v45, 1, 1, v72);
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v71);
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v70);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      __swift_storeEnumTagSinglePayload(v83, 1, 1, v52);
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v49);
      v53 = v84;
      sub_2676CA7DC();

      v54 = v53;
      v55 = 0;
      v56 = v52;
      return __swift_storeEnumTagSinglePayload(v54, v55, 1, v56);
    }

    v33 = v80;
  }

  v57 = sub_2676CA4EC();
  if (v58)
  {
    v80 = v57;
    v59 = sub_2676CB80C();
    v81 = v37;
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v59);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v60);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v61);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v62);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v63);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v64);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v65);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v66);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v67);
    v68 = v84;
    sub_2676CA7DC();
    v54 = v68;
    v55 = 0;
    v56 = v66;
  }

  else
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    v54 = v84;
    v55 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v54, v55, 1, v56);
}

size_t sub_26763035C(int a1, unsigned int *a2)
{
  LODWORD(v73) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v5 = OUTLINED_FUNCTION_3(v4);
  v68 = v6;
  v69 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v71 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v72 = *(v10 - 8);
  v11 = *(v72 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v70 = &v65 - v18;
  v19 = sub_2676C9EBC();
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_2();
  v27 = v26 - v25;
  v28 = sub_2676CA43C();
  v29 = OUTLINED_FUNCTION_3(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_2();
  v36 = v35 - v34;
  (*(v31 + 104))(v35 - v34, *a2, v28);
  v37 = sub_26762F9E8(v73, v36);
  (*(v31 + 8))(v36, v28);
  v65 = v22;
  v66 = v19;
  v38 = *(v22 + 16);
  v73 = v27;
  v38(v27, v2, v19);
  v39 = sub_26762EC3C(v37);
  if (!v39)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_14:
    (*(v65 + 8))(v73, v66);
    v49 = *(v43 + 16);
    v50 = v69;
    if (v49)
    {
      OUTLINED_FUNCTION_4_5();
      v52 = v43 + v51;
      v54 = *(v53 + 72);
      v55 = (v68 + 32);
      v56 = MEMORY[0x277D84F90];
      do
      {
        v57 = v70;
        sub_2675F6744(v52, v70);
        sub_2675F66D4(v57, v14);
        if (__swift_getEnumTagSinglePayload(v14, 1, v50) == 1)
        {
          sub_2675E35CC(v14, &qword_2801CC168, &unk_2676CF510);
        }

        else
        {
          v58 = *v55;
          (*v55)(v71, v14, v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = *(v56 + 16);
            sub_267606BD8();
            v56 = v63;
          }

          v59 = *(v56 + 16);
          if (v59 >= *(v56 + 24) >> 1)
          {
            sub_267606BD8();
            v56 = v64;
          }

          *(v56 + 16) = v59 + 1;
          v50 = v69;
          OUTLINED_FUNCTION_4_5();
          v58((v56 + v60 + *(v61 + 72) * v59), v71, v50);
        }

        v52 += v54;
        --v49;
      }

      while (v49);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v56;
  }

  v40 = v39;
  v74 = MEMORY[0x277D84F90];
  result = sub_2676C2A88(0, v39 & ~(v39 >> 63), 0);
  if (v40 < 0)
  {
    goto LABEL_29;
  }

  v42 = 0;
  v43 = v74;
  v67 = v37 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5FE0E0](v42, v37);
      goto LABEL_9;
    }

    if ((v42 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v42 >= *(v67 + 16))
    {
      goto LABEL_28;
    }

    v44 = *(v37 + 8 * v42 + 32);

LABEL_9:
    sub_26762FB04(v17);

    v74 = v43;
    v46 = *(v43 + 16);
    v45 = *(v43 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_2676C2A88(v45 > 1, v46 + 1, 1);
      v43 = v74;
    }

    ++v42;
    *(v43 + 16) = v46 + 1;
    OUTLINED_FUNCTION_4_5();
    result = sub_2675F66D4(v17, v43 + v47 + *(v48 + 72) * v46);
    if (v40 == v42)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2676308A4(char a1)
{
  v2 = sub_26762EDE0();
  if (a1)
  {
    if (a1 == 1)
    {
      if (!v2)
      {
        goto LABEL_13;
      }

      sub_2676CA50C();

      if (!v6)
      {
        goto LABEL_13;
      }

      v3 = sub_2676CA53C();
    }

    else
    {
      if (!v2)
      {
        goto LABEL_13;
      }

      sub_2676CA50C();

      if (!v6)
      {
        goto LABEL_13;
      }

      v3 = sub_2676CA54C();
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_13;
    }

    sub_2676CA50C();

    if (!v6)
    {
      goto LABEL_13;
    }

    v3 = sub_2676CA51C();
  }

  v4 = v3;

  if (!v4)
  {
LABEL_13:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_267630970(uint64_t *a1)
{
  v1 = *a1;
  result = sub_2676CA47C();
  if (result)
  {
    v3 = sub_2676CA49C();
    v5 = v4;
    v6 = sub_2676CA42C();
    if (v5)
    {
      if (v3 == v6 && v5 == v7)
      {

        return 1;
      }

      v9 = sub_2676CC59C();

      if (v9)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_267630A54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2676CA47C();
  if (result)
  {
    v5 = sub_2676CA49C();
    v7 = v6;
    v8 = sub_2676CA42C();
    if (v7)
    {
      if (v5 == v8 && v7 == v9)
      {

LABEL_13:
        sub_2676CA4AC();

        v12 = v13;
        goto LABEL_14;
      }

      v11 = sub_2676CC59C();

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_14:
  *a2 = v12;
  return result;
}

void sub_267630BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v449 = v27;
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3(v446);
  v451 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  v438 = v32;
  OUTLINED_FUNCTION_7_3();
  v418 = sub_2676CB71C();
  v33 = OUTLINED_FUNCTION_3(v418);
  v426 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v37);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB58, &qword_2676D05B8);
  OUTLINED_FUNCTION_2_6(v417);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB60, &qword_2676D05C0);
  v43 = OUTLINED_FUNCTION_4_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2801CCB68, &qword_2676D05C8);
  OUTLINED_FUNCTION_4_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB70, &qword_2676D05D0);
  v55 = OUTLINED_FUNCTION_3(v54);
  v433 = v56;
  v434 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v60);
  v443 = sub_2676CB6CC();
  v61 = OUTLINED_FUNCTION_3(v443);
  v445 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v65);
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB78, &qword_2676D05D8);
  v66 = OUTLINED_FUNCTION_2_6(v442);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_10_4();
  v439 = v70;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB80, &unk_2676D2A90);
  v74 = OUTLINED_FUNCTION_4_1(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10_4();
  v435 = v81;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_10_4();
  v436 = v83;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  v89 = OUTLINED_FUNCTION_4_1(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_10_4();
  v441 = v93;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v95);
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  v96 = OUTLINED_FUNCTION_3(v452);
  v447 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_10_4();
  v448 = v101;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC608, &unk_2676CF500);
  OUTLINED_FUNCTION_4_1(v104);
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_108();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2801CCB88, &qword_2676D05E0);
  OUTLINED_FUNCTION_4_1(v108);
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v111);
  v113 = v412 - v112;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB90, &qword_2676D05E8);
  OUTLINED_FUNCTION_3(v450);
  v440 = v114;
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_9_1();
  v444 = v118;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v119);
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v122);
  v124 = v412 - v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3(v125);
  v127 = v126;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v130);
  v132 = v412 - v131;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  sub_267638E90(&qword_2801CC670, MEMORY[0x277D5C808]);
  sub_267638E90(&qword_2801CBF68, MEMORY[0x277D5C8D8]);
  OUTLINED_FUNCTION_65_0();
  v133 = v125;
  sub_2676CA3EC();

  OUTLINED_FUNCTION_17_11(v124);
  if (v141)
  {
    sub_2675EB7EC(v124, &qword_2801CC428, &unk_2676CEDD0);
    goto LABEL_60;
  }

  v414 = v127;
  v134 = *(v127 + 32);
  v135 = OUTLINED_FUNCTION_73_0();
  v136(v135);
  v137 = OUTLINED_FUNCTION_61_0();
  MEMORY[0x26D5FC5D0](v137);
  sub_2676CB53C();
  OUTLINED_FUNCTION_41_2();
  v140 = sub_267638E90(v138, v139);
  sub_2676CA8EC();
  OUTLINED_FUNCTION_21_3(v113, 1, v450);
  v437 = v125;
  v453 = v132;
  v142 = v20;
  if (v141)
  {
    sub_2675EB7EC(v113, &off_2801CCB88, &qword_2676D05E0);
    v431 = 0;
    v143 = v451;
    v144 = v452;
    v145 = v448;
    v146 = v449;
    goto LABEL_35;
  }

  v147 = *(v440 + 32);
  OUTLINED_FUNCTION_14_11();
  v148();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_16();
  sub_267638E90(v149, v150);
  v151 = v429;
  OUTLINED_FUNCTION_88_0();
  sub_2676CA87C();

  v152 = v452;
  OUTLINED_FUNCTION_21_3(v151, 1, v452);
  if (v153)
  {
    sub_2675EB7EC(v151, &qword_2801CC048, &qword_2676CDAB0);
    v154 = 0;
    OUTLINED_FUNCTION_91_0();
    v155 = v433;
    v156 = v450;
    goto LABEL_20;
  }

  v412[1] = v140;
  v413 = v20;
  v157 = v447;
  OUTLINED_FUNCTION_57_2();
  v158 = OUTLINED_FUNCTION_112();
  v159(v158, v151, v152);
  swift_getKeyPath();
  v20 = v424;
  sub_2676CA84C();

  v160 = *MEMORY[0x277D5C578];
  v161 = *(v445 + 104);
  v162 = OUTLINED_FUNCTION_65_1();
  v163 = v443;
  v164(v162);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v163);
  v168 = *(v442 + 48);
  OUTLINED_FUNCTION_116(&v445);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v169, v170, v171, v172);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v173, v174, v175, v176);
  OUTLINED_FUNCTION_15_11(v151);
  if (!v177)
  {
    v185 = v157;
    v20 = v152;
    sub_2675F95E4(v151, v416, &qword_2801CCB80, &unk_2676D2A90);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v151 + v168, 1, v163);
    v187 = v445;
    v188 = (v445 + 8);
    v155 = v433;
    v184 = v151;
    if (EnumTagSinglePayload != 1)
    {
      v198 = v421;
      (*(v445 + 32))(v421, v151 + v168, v163);
      OUTLINED_FUNCTION_0_18();
      sub_267638E90(v199, v200);
      v201 = sub_2676CBF1C();
      v202 = *(v187 + 8);
      v202(v198, v163);
      v20 = &unk_2676D2A90;
      OUTLINED_FUNCTION_69_0();
      sub_2675EB7EC(v203, v204, v205);
      OUTLINED_FUNCTION_66_1();
      OUTLINED_FUNCTION_69_0();
      sub_2675EB7EC(v206, v207, v208);
      v154 = v201;
      (*(v185 + 8))(v423, v452);
      v202(v416, v163);
      v209 = OUTLINED_FUNCTION_58_1();
      sub_2675EB7EC(v209, v210, &unk_2676D2A90);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v189, v190, v191);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v192, v193, v194);
    (*(v185 + 8))(v423, v20);
    v195 = *v188;
    v196 = OUTLINED_FUNCTION_85_0();
    v197(v196);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_14_11();
  sub_2675EB7EC(v178, v179, v180);
  OUTLINED_FUNCTION_14_11();
  sub_2675EB7EC(v181, v182, v183);
  (*(v157 + 8))(v124, v152);
  OUTLINED_FUNCTION_15_11(v151 + v168);
  v155 = v433;
  v184 = v151;
  if (!v141)
  {
LABEL_17:
    sub_2675EB7EC(v184, &qword_2801CCB78, &qword_2676D05D8);
    v154 = 0;
    goto LABEL_19;
  }

  sub_2675EB7EC(v151, &qword_2801CCB80, &unk_2676D2A90);
  v154 = 1;
LABEL_19:
  v142 = v413;
  OUTLINED_FUNCTION_91_0();
  v156 = v450;
LABEL_20:
  swift_getKeyPath();
  OUTLINED_FUNCTION_42_1();
  sub_267638E90(v211, v212);
  v213 = v430;
  v214 = v444;
  sub_2676CA87C();

  v215 = v434;
  OUTLINED_FUNCTION_21_3(v213, 1, v434);
  v431 = v154;
  if (!v141)
  {
    v216 = v155;
    OUTLINED_FUNCTION_57_2();
    v217 = v425;
    v218(v425, v213, v215);
    KeyPath = swift_getKeyPath();
    sub_2676CA84C();

    v220 = *MEMORY[0x277D5C5E8];
    OUTLINED_FUNCTION_127(&a12);
    v221 = OUTLINED_FUNCTION_112();
    v222 = v418;
    v223(v221);
    v224 = OUTLINED_FUNCTION_29_5();
    __swift_storeEnumTagSinglePayload(v224, v225, v226, v222);
    OUTLINED_FUNCTION_94_0(&v446);
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v227, v228, v229, v230);
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v231, v232, v233, v234);
    OUTLINED_FUNCTION_15_11(v20);
    if (v235)
    {
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v236, v237, v238);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v239, v240, v241);
      (*(v216 + 8))(v217, v434);
      v242 = OUTLINED_FUNCTION_54_2();
      v243(v242);
      OUTLINED_FUNCTION_15_11(v20 + KeyPath);
      v143 = v451;
      v146 = v449;
      if (v141)
      {
        sub_2675EB7EC(v20, &qword_2801CCB60, &qword_2676D05C0);
        v431 = 1;
LABEL_33:
        v133 = v437;
        v145 = v448;
        goto LABEL_34;
      }
    }

    else
    {
      OUTLINED_FUNCTION_131(v20, &qword_2801CCB60, &qword_2676D05C0, &v442);
      OUTLINED_FUNCTION_15_11(v20 + KeyPath);
      if (!v244)
      {
        OUTLINED_FUNCTION_80(&a12);
        v368 = OUTLINED_FUNCTION_65_1();
        v369(v368);
        OUTLINED_FUNCTION_39_2();
        sub_267638E90(v370, v371);
        OUTLINED_FUNCTION_63_0();
        v372 = sub_2676CBF1C();
        v373 = v142;
        v374 = off_2801CCB68;
        v375 = OUTLINED_FUNCTION_68_0();
        v374(v375);
        OUTLINED_FUNCTION_70_0();
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v376, v377, v378);
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v379, v380, v381);
        v382 = OUTLINED_FUNCTION_123();
        v383(v382);
        v384 = OUTLINED_FUNCTION_54_2();
        v385(v384);
        (v374)(v156, v222);
        v142 = v373;
        v386 = v431;
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v387, v388, v389);
        v431 = v372 | v386;
        v133 = v437;
        v145 = v448;
        v143 = v451;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v245, v246, v247);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v248, v249, v250);
      v251 = OUTLINED_FUNCTION_123();
      v252(v251);
      v253 = OUTLINED_FUNCTION_54_2();
      v254(v253);
      OUTLINED_FUNCTION_27_5(&a12);
      v255(v156, v222);
      v143 = v451;
      v146 = v449;
    }

    sub_2675EB7EC(v20, &qword_2801CCB58, &qword_2676D05B8);
    goto LABEL_33;
  }

  (*(v440 + 8))(v214, v156);
  sub_2675EB7EC(v213, &off_2801CCB68, &qword_2676D05C8);
  v143 = v451;
  v133 = v437;
  v145 = v448;
LABEL_23:
  v146 = v449;
LABEL_34:
  v144 = v452;
LABEL_35:
  v444 = "SendMail#IntentHandled";
  v256 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D5FC5D0](v256);
  v257 = v142;
  v258 = sub_2676CB6EC();
  OUTLINED_FUNCTION_7_16();
  v261 = sub_267638E90(v259, v260);
  v262 = v441;
  v440 = v258;
  sub_2676CA8EC();
  OUTLINED_FUNCTION_17_11(v262);
  v450 = v261;
  if (v141)
  {
    sub_2675EB7EC(v262, &qword_2801CC048, &qword_2676CDAB0);
    v263 = v446;
    v267 = v144;
    OUTLINED_FUNCTION_92();
    v264 = v143;
    goto LABEL_48;
  }

  v413 = v257;
  v265 = v447;
  (*(v447 + 32))(v145, v262, v144);
  swift_getKeyPath();
  v266 = v436;
  sub_2676CA84C();

  v267 = v445;
  v268 = v435;
  v269 = v443;
  (*(v445 + 104))(v435, *MEMORY[0x277D5C578], v443);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v270, v271, v272, v269);
  v273 = *(v442 + 48);
  v274 = v439;
  OUTLINED_FUNCTION_46_0();
  sub_2675F95E4(v275, v276, v277, &unk_2676D2A90);
  sub_2675F95E4(v268, v274 + v273, &qword_2801CCB80, &unk_2676D2A90);
  OUTLINED_FUNCTION_15_11(v274);
  if (v278)
  {
    OUTLINED_FUNCTION_30_4();
    sub_2675EB7EC(v279, v280, v281);
    v282 = v439;
    sub_2675EB7EC(v266, &qword_2801CCB80, &unk_2676D2A90);
    (*(v265 + 8))(v448, v144);
    OUTLINED_FUNCTION_15_11(v282 + v273);
    v267 = v144;
    v263 = v446;
    v146 = v449;
    if (v141)
    {
      sub_2675EB7EC(v282, &qword_2801CCB80, &unk_2676D2A90);
      LODWORD(v144) = 1;
      v133 = v437;
LABEL_46:
      v264 = v451;
      goto LABEL_48;
    }

LABEL_45:
    sub_2675EB7EC(v282, &qword_2801CCB78, &qword_2676D05D8);
    v133 = v437;
    OUTLINED_FUNCTION_92();
    goto LABEL_46;
  }

  sub_2675F95E4(v274, v419, &qword_2801CCB80, &unk_2676D2A90);
  v283 = __swift_getEnumTagSinglePayload(v274 + v273, 1, v269);
  v144 = v267 + 8;
  v263 = v446;
  if (v283 == 1)
  {
    OUTLINED_FUNCTION_30_4();
    sub_2675EB7EC(v284, v285, v286);
    v282 = v439;
    sub_2675EB7EC(v436, &qword_2801CCB80, &unk_2676D2A90);
    v287 = OUTLINED_FUNCTION_109();
    v288(v287);
    v289 = *v144;
    v290 = OUTLINED_FUNCTION_85_0();
    v291(v290);
    v146 = v449;
    goto LABEL_45;
  }

  v292 = *(v267 + 32);
  v267 += 32;
  v293 = v274 + v273;
  v294 = v421;
  v292(v421, v293, v269);
  OUTLINED_FUNCTION_0_18();
  sub_267638E90(v295, v296);
  OUTLINED_FUNCTION_102_0();
  v297 = v274;
  v298 = sub_2676CBF1C();
  v299 = *(v267 - 24);
  v299(v294, v269);
  sub_2675EB7EC(v435, &qword_2801CCB80, &unk_2676D2A90);
  sub_2675EB7EC(v436, &qword_2801CCB80, &unk_2676D2A90);
  v300 = OUTLINED_FUNCTION_109();
  v301(v300);
  v302 = OUTLINED_FUNCTION_85_0();
  (v299)(v302);
  v264 = v451;
  sub_2675EB7EC(v297, &qword_2801CCB80, &unk_2676D2A90);
  OUTLINED_FUNCTION_92();
  LODWORD(v144) = v298 | v144;
  v146 = v449;
  v133 = v437;
LABEL_48:
  v303 = OUTLINED_FUNCTION_106();
  MEMORY[0x26D5FC5D0](v303, 0xEA00000000007374, v133);
  sub_2676CB91C();
  OUTLINED_FUNCTION_34_4();
  sub_267638E90(v304, v305);
  sub_2676CA8EC();
  OUTLINED_FUNCTION_9_15(v146);
  if (v141)
  {
    v306 = &qword_2801CC038;
    v307 = &qword_2676D5A40;
    v308 = v146;
LABEL_54:
    sub_2675EB7EC(v308, v306, v307);
    goto LABEL_55;
  }

  (*(v264 + 32))(v438, v146, v263);
  v309 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D5FC5D0](v309);
  v310 = v432;
  sub_2676CA8EC();
  OUTLINED_FUNCTION_16_8(v310);
  if (v311)
  {
    v312 = *(v264 + 8);
    v313 = OUTLINED_FUNCTION_29_0();
    v314(v313);
    v306 = &qword_2801CC048;
    v307 = &qword_2676CDAB0;
    v308 = v310;
    goto LABEL_54;
  }

  v431 = v144;
  v325 = v447;
  (*(v447 + 32))(v427, v310, v267);
  swift_getKeyPath();
  v326 = v420;
  sub_2676CA84C();

  v144 = v443;
  (*(v445 + 104))(v428, *MEMORY[0x277D5C578], v443);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v327, v328, v329, v144);
  v330 = *(v442 + 48);
  v331 = v422;
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v332, v333, v334, v335);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v336, v337, v338, v339);
  OUTLINED_FUNCTION_17_11(v331);
  if (v340)
  {
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v341, v342, v343);
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v344, v345, v346);
    v347 = *(v325 + 8);
    v348 = OUTLINED_FUNCTION_95_0();
    v349(v348);
    v350 = OUTLINED_FUNCTION_53_2();
    v351(v350);
    OUTLINED_FUNCTION_17_11(v331 + v330);
    if (v141)
    {
      sub_2675EB7EC(v331, &qword_2801CCB80, &unk_2676D2A90);
      LOBYTE(v144) = 1;
LABEL_70:
      v133 = v437;
      goto LABEL_55;
    }
  }

  else
  {
    v352 = v415;
    sub_2675F95E4(v331, v415, &qword_2801CCB80, &unk_2676D2A90);
    OUTLINED_FUNCTION_17_11(v331 + v330);
    v354 = v144;
    if (!v353)
    {
      v390 = v326;
      v391 = v445;
      v392 = *(v445 + 32);
      v393 = OUTLINED_FUNCTION_65_1();
      v394(v393);
      OUTLINED_FUNCTION_0_18();
      sub_267638E90(v395, v396);
      OUTLINED_FUNCTION_65_0();
      v397 = sub_2676CBF1C();
      v398 = *(v391 + 8);
      v398(v330, v354);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v399, v400, v401);
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v402, v403, v404);
      v405 = OUTLINED_FUNCTION_90_0();
      v406(v405);
      v407 = OUTLINED_FUNCTION_53_2();
      v408(v407);
      v398(v352, v354);
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v409, v410, v411);
      OUTLINED_FUNCTION_92();
      LOBYTE(v144) = v397 | v390;
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v355, v356, v357);
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v358, v359, v360);
    v361 = OUTLINED_FUNCTION_90_0();
    v362(v361);
    v363 = OUTLINED_FUNCTION_53_2();
    v364(v363);
    v365 = *(v445 + 8);
    v366 = OUTLINED_FUNCTION_102_0();
    v367(v366);
  }

  sub_2675EB7EC(v331, &qword_2801CCB78, &qword_2676D05D8);
  v133 = v437;
  OUTLINED_FUNCTION_92();
LABEL_55:
  v315 = v414;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v316 = sub_2676CBE4C();
  __swift_project_value_buffer(v316, qword_2801CDC90);
  v317 = sub_2676CBE2C();
  v318 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v318))
  {
    v319 = swift_slowAlloc();
    *v319 = 67109120;
    v319[1] = v144 & 1;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v320, v321, v322, v323, v324, 8u);
    v133 = v437;
    OUTLINED_FUNCTION_2_5();
  }

  (*(v315 + 8))(v453, v133);
LABEL_60:
  OUTLINED_FUNCTION_20_1();
}