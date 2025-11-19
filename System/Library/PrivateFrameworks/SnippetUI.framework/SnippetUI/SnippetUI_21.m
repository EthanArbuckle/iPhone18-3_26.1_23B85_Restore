void sub_26A6A7470(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_26A84E278();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v6 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  v8 = (a1 + 56);
  for (i = v5; v7; v5 = i)
  {
    v10 = *(v8 - 2);
    v9 = *(v8 - 1);
    v11 = *(v8 - 3);
    v12 = *v8;
    v13 = objc_allocWithZone(MEMORY[0x277D4C328]);

    sub_26A5065E0(v9, v12);
    v14 = [v13 init];
    v28 = 0xD000000000000014;
    v29 = 0x800000026A88E5F0;
    MEMORY[0x26D663B00](v11, v10);
    sub_26A6A78B0(v28, v29, v14);

    sub_26A5066FC(v9, v12);
    MEMORY[0x26D663CE0]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26A851B08();
    }

    sub_26A851B28();
    v6 = v30;
    v8 += 32;
    --v7;
  }

  sub_26A6A782C(v6, v5);
  sub_26A4EC5B0(0, &qword_28157D880);
  switch(sub_26A63CD18())
  {
    case 1u:

      goto LABEL_8;
    case 4u:
      goto LABEL_9;
    default:
      v15 = sub_26A852598();

      if (v15)
      {
LABEL_8:
        v16 = v25;
        (*(v23 + 104))(v25, *MEMORY[0x277D63760], v24);
        LOBYTE(v28) = 1;
        LOBYTE(v30) = 74;
        v17 = objc_allocWithZone(type metadata accessor for RFInteractionPerformed());
        v18 = RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:)(0xD000000000000011, 0x800000026A88E610, v16, &v28, &v30, 0, 0);
        sub_26A5E6164(v18, 0xD000000000000011, 0x800000026A88E610);
      }

      else
      {
LABEL_9:
        v19 = objc_allocWithZone(MEMORY[0x277D4C250]);
        v20 = [v19 initWithCard_];
        if (v20)
        {
          v21 = v20;
          InteractionDelegateWrapper.report(feedback:)();
        }

        v22 = i;
      }

      return;
  }
}

void sub_26A6A782C(uint64_t a1, void *a2)
{
  sub_26A4EC5B0(0, qword_2815804E0);
  v3 = sub_26A851A88();

  [a2 setCardSections_];
}

void sub_26A6A78B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A851788();

  [a3 setCommandDetail_];
}

uint64_t sub_26A6A7914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = (v6 - v5);
  sub_26A54F32C(a1, a2);
  sub_26A54F32C(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = (a2 + *(type metadata accessor for AnyRootView(0) + 20));
  if (EnumCaseMultiPayload == 1)
  {
    v9[3] = &type metadata for PluginView;
    v9[4] = sub_26A54F390();
    v10 = swift_allocObject();
    *v9 = v10;
    memcpy((v10 + 16), v7, 0x58uLL);
  }

  else
  {
    v9[3] = type metadata accessor for ResponseView();
    v9[4] = sub_26A6A80B0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    sub_26A54F494(v7, boxed_opaque_existential_1);
  }

  return sub_26A6A8058(a1, type metadata accessor for AnyRootView.ContentType);
}

uint64_t AnyRootView.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ResponseView();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = (v8 - v7);
  sub_26A54F32C(v1, v8 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v12, v9, sizeof(v12));
    v10 = PluginView.description.getter();
    sub_26A6A7DE0(__dst);
  }

  else
  {
    sub_26A54F494(v9, v5);
    v10 = ResponseView.description.getter();
    sub_26A6A8058(v5, type metadata accessor for ResponseView);
  }

  return v10;
}

uint64_t AnyRootView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnyRootView(0) + 20));
  v4 = v3[3];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = View.eraseToAnyView()(v4);
  *a1 = result;
  return result;
}

unint64_t sub_26A6A7F10()
{
  result = type metadata accessor for AnyRootView.ContentType(319);
  if (v1 <= 0x3F)
  {
    result = sub_26A6A7F94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26A6A7F94()
{
  result = qword_2803B35F8;
  if (!qword_2803B35F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803B35F8);
  }

  return result;
}

uint64_t sub_26A6A7FF0()
{
  result = type metadata accessor for ResponseView();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A6A8058(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26A6A80B0()
{
  result = qword_2803ACF80;
  if (!qword_2803ACF80)
  {
    type metadata accessor for ResponseView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACF80);
  }

  return result;
}

uint64_t sub_26A6A8134(uint64_t a1)
{
  sub_26A5582C8(a1, &v6);
  if (v7)
  {
    sub_26A4C2314(&v6, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = (*(v3 + 8))(v2, v3);
    sub_26A537648(a1);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_26A537648(a1);
    sub_26A537648(&v6);
    return 0;
  }

  return v4;
}

BOOL sub_26A6A8230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A6A8318@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v121);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v119 + 1) = &type metadata for PartialText;
      v120 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v118[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v118[0] + 16);
    }

    else
    {
      v120 = 0;
      v119 = 0u;
      *v118 = 0u;
    }

    v10 = [v2 text_3];
    if (v10)
    {
      v11 = v10;
      *(&v116 + 1) = &type metadata for PartialText;
      v117 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v115[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v115[0] + 16);
    }

    else
    {
      v117 = 0;
      v116 = 0u;
      *v115 = 0u;
    }

    v12 = [v2 text_4];
    if (v12)
    {
      v13 = v12;
      *(&v113 + 1) = &type metadata for PartialText;
      v114 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v112[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v112[0] + 16);
    }

    else
    {
      v114 = 0;
      v113 = 0u;
      *v112 = 0u;
    }

    v14 = [v2 thumbnail];
    if (v14)
    {
      v15 = v14;
      *(&v110 + 1) = sub_26A84BD28();
      v111 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v109);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v111 = 0;
      v110 = 0u;
      *v109 = 0u;
    }

    v16 = [v2 addTint];
    if (qword_28157E660 != -1)
    {
      swift_once();
    }

    *v99 = xmmword_281588758[0];
    v100 = unk_281588768;
    *v101 = xmmword_281588778;
    v102 = xmmword_281588788;
    *v103 = xmmword_281588758[0];
    v104 = unk_281588768;
    *v105 = xmmword_281588778;
    v106 = xmmword_281588788;
    *v59 = xmmword_281588788;
    v62 = xmmword_281588778;
    sub_26A4EA070(v99, __dst, &qword_2803A91B0);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xC0uLL);
    a1[12] = v62;
    a1[13] = *v59;
    v17 = v104;
    a1[14] = *v103;
    a1[15] = v17;
    v18 = v106;
    a1[16] = *v105;
    a1[17] = v18;
    v19 = type metadata accessor for PrimaryHeaderRichView();
    v20 = v19[5];
    *(a1 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v21 = a1 + v19[6];
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    v22 = v19[7];
    *(a1 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v23 = memcpy(__dst, v121, 0xFAuLL);
    OUTLINED_FUNCTION_1_68(v23, v24, v25, v26, v27, v28, v29, v30, v59[0], v59[1], v62, *(&v62 + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0]);
    sub_26A4EC458(__dst, &v65);
    sub_26A4EC4B4();
    *(a1 + v19[8]) = sub_26A851248();
    sub_26A4EA070(v118, v97, &qword_2803A91B8);
    if (v98)
    {
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v31 = OUTLINED_FUNCTION_1_2();
      v33 = v32(v31);
      __swift_destroy_boxed_opaque_existential_1(v97);
    }

    else
    {
      sub_26A4E2544(v97, &qword_2803A91B8);
      v33 = 0;
    }

    *(a1 + v19[9]) = v33;
    sub_26A4EA070(v115, v97, &qword_2803A91B8);
    if (v98)
    {
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v34 = OUTLINED_FUNCTION_1_2();
      v36 = v35(v34);
      __swift_destroy_boxed_opaque_existential_1(v97);
    }

    else
    {
      sub_26A4E2544(v97, &qword_2803A91B8);
      v36 = 0;
    }

    *(a1 + v19[10]) = v36;
    sub_26A4EA070(v112, v97, &qword_2803A91B8);
    if (v98)
    {
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v37 = OUTLINED_FUNCTION_1_2();
      v39 = v38(v37);
      __swift_destroy_boxed_opaque_existential_1(v97);
    }

    else
    {
      sub_26A4E2544(v97, &qword_2803A91B8);
      v39 = 0;
    }

    *(a1 + v19[11]) = v39;
    v40 = sub_26A4EA070(v109, &v65, &qword_2803A91B8);
    if (v68)
    {
      __swift_project_boxed_opaque_existential_1(&v65, v68);
      v48 = OUTLINED_FUNCTION_1_2();
      v50 = v49(v48);

      OUTLINED_FUNCTION_1_68(v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0]);
      sub_26A4EC508(v97);
      OUTLINED_FUNCTION_4_54(v109);
      OUTLINED_FUNCTION_4_54(v112);
      OUTLINED_FUNCTION_4_54(v115);
      OUTLINED_FUNCTION_4_54(v118);
      result = __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    else
    {
      OUTLINED_FUNCTION_1_68(v40, v41, v42, v43, v44, v45, v46, v47, v60, v61, v63, v64, v65, v66, v67, 0, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0]);
      sub_26A4EC508(v97);

      OUTLINED_FUNCTION_2_8(v109);
      OUTLINED_FUNCTION_2_8(v112);
      OUTLINED_FUNCTION_2_8(v115);
      OUTLINED_FUNCTION_2_8(v118);
      result = OUTLINED_FUNCTION_2_8(&v65);
      v50 = 0;
    }

    *(a1 + v19[12]) = v50;
    *(a1 + v19[13]) = v16;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B136B8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A6A89B0()
{
  result = qword_2803B3640;
  if (!qword_2803B3640)
  {
    type metadata accessor for PrimaryHeaderRichView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3640);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x520], 0xFAuLL);
}

uint64_t OUTLINED_FUNCTION_4_54(uint64_t a1)
{

  return sub_26A4E2544(a1, v1);
}

BOOL sub_26A6A8A3C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_26A6A8A90()
{
  v0 = sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  SFImage.asVisualProperty()();
  VisualProperty.asAnyView()();
  (*(v2 + 8))(v6, v0);
  objc_opt_self();
  if (OUTLINED_FUNCTION_25_19())
  {
    swift_getKeyPath();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3650);
  sub_26A6AB2E8();
  sub_26A84FDF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3668);
  sub_26A6AB3C8();
  return sub_26A851248();
}

uint64_t SFImage.asVisualProperty()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3648);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26A8570D0;
  v1 = sub_26A84BA88();
  v2 = MEMORY[0x277D62EB0];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  SFImage.asVisualElement()();
  return sub_26A84BD48();
}

void sub_26A6A9838(uint64_t a1@<X8>)
{
  v112 = a1;
  v111 = sub_26A84B2F8();
  OUTLINED_FUNCTION_15();
  v100 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_15();
  v101 = v4;
  OUTLINED_FUNCTION_25_2();
  v110 = sub_26A84B2E8();
  OUTLINED_FUNCTION_15();
  v98 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_15();
  v99 = v7;
  OUTLINED_FUNCTION_25_2();
  v109 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v107 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_15();
  v108 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v106 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v105 = v16;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B2C8();
  OUTLINED_FUNCTION_15();
  v103 = v18;
  v104 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_15();
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8);
  OUTLINED_FUNCTION_79(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_82();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  v26 = OUTLINED_FUNCTION_79(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_1();
  v32 = v31;
  OUTLINED_FUNCTION_25_2();
  v33 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v39 = v37 - v38;
  *&v41 = MEMORY[0x28223BE20](v40).n128_u64[0];
  v43 = &v92 - v42;
  v44 = [v1 urlValue];
  if (v44)
  {
    v45 = v44;
    sub_26A84AB78();

    v97 = v35;
    (*(v35 + 32))(v43, v39, v33);
    v46 = [v1 darkUrlValue];
    v102 = v43;
    if (v46)
    {
      v47 = v46;
      sub_26A84AB78();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    __swift_storeEnumTagSinglePayload(v29, v48, 1, v33);
    v96 = v32;
    sub_26A67B504(v29, v32);
    sub_26A84B248();
    v95 = v24;
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    v64 = *MEMORY[0x277D62CE0];
    v65 = *(v103 + 104);
    v94 = v20;
    v65(v20, v64, v104);
    [v1 size];
    OUTLINED_FUNCTION_31_15();
    [v1 v66];
    OUTLINED_FUNCTION_20_21();
    v67 = sub_26A84B2B8();
    OUTLINED_FUNCTION_5_51(v67);
    sub_26A84DFA8();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    (*(v107 + 104))(v108, *MEMORY[0x277D62B70], v109);
    v72 = v98;
    v73 = v99;
    (*(v98 + 104))();
    v74 = v100;
    v75 = v101;
    (*(v100 + 104))(v101, *MEMORY[0x277D62D28], v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860);
    v76 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v78 = v77;
    v79 = *(v77 + 80);
    v93 = v33;
    v80 = (v79 + 32) & ~v79;
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_26A8570D0;
    (*(v78 + 104))(v81 + v80, *MEMORY[0x277D62A28], v76);
    sub_26A67BF28(v81);
    v82 = v73;
    v83 = v95;
    v84 = v96;
    v85 = v94;
    v86 = v108;
    v87 = v105;
    sub_26A84B428();

    (*(v74 + 8))(v75, v111);
    (*(v72 + 8))(v82, v110);
    (*(v107 + 8))(v86, v109);
    sub_26A4E2544(v106, &qword_2803AD038);
    sub_26A4E2544(v87, &qword_2803AF0C0);
    (*(v103 + 8))(v85, v104);
    sub_26A4E2544(v83, &qword_2803AF0C8);
    sub_26A4E2544(v84, &qword_2803AF0D0);
    (*(v97 + 8))(v102, v93);
    sub_26A84B718();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    sub_26A7AF248(v49, v50, v51, v52, v53, 81, v54, 19, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    OUTLINED_FUNCTION_27_12();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_86();

    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  }
}

void sub_26A6AABB8()
{
  v1 = v0;
  v95 = sub_26A84B2F8();
  OUTLINED_FUNCTION_15();
  v84 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_15();
  v85 = v4;
  OUTLINED_FUNCTION_25_2();
  v94 = sub_26A84B2E8();
  OUTLINED_FUNCTION_15();
  v82 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_15();
  v83 = v7;
  OUTLINED_FUNCTION_25_2();
  v93 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v91 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_15();
  v92 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v90 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v89 = v16;
  OUTLINED_FUNCTION_25_2();
  v88 = sub_26A84B2C8();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_15();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8);
  OUTLINED_FUNCTION_79(v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_82();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  OUTLINED_FUNCTION_79(v26);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_82();
  v29 = v28;
  OUTLINED_FUNCTION_25_2();
  v30 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_0();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_27_1();
  v39 = v38;
  v40 = [v1 filePath];
  if (v40)
  {
    v41 = v40;
    sub_26A84AB78();

    v80 = v30;
    (*(v32 + 32))(v39, v36, v30);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v30);
    sub_26A84B248();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    (*(v18 + 104))(v21, *MEMORY[0x277D62CE0], v88);
    [v1 size];
    OUTLINED_FUNCTION_31_15();
    [v1 v49];
    OUTLINED_FUNCTION_20_21();
    v50 = sub_26A84B2B8();
    OUTLINED_FUNCTION_5_51(v50);
    sub_26A84DFA8();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    (*(v91 + 104))(v92, *MEMORY[0x277D62B70], v93);
    (*(v82 + 104))();
    (*(v84 + 104))(v85, *MEMORY[0x277D62D28], v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860);
    v55 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v57 = v56;
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_26A8570D0;
    (*(v57 + 104))(v59 + v58, *MEMORY[0x277D62A28], v55);
    sub_26A67BF28(v59);
    sub_26A84B428();

    (*(v84 + 8))(v85, v95);
    (*(v82 + 8))(v83, v94);
    (*(v91 + 8))(v92, v93);
    sub_26A4E2544(v90, &qword_2803AD038);
    sub_26A4E2544(v89, &qword_2803AF0C0);
    (*(v18 + 8))(v21, v88);
    sub_26A4E2544(v25, &qword_2803AF0C8);
    sub_26A4E2544(v29, &qword_2803AF0D0);
    (*(v32 + 8))(v39, v80);
    sub_26A84B718();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    sub_26A7AFB74(v64, v65, v66, v67, v68, 145, v69, 19, v75, v76, v77, v78, v79, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    OUTLINED_FUNCTION_27_12();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_86();

    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  }
}

unint64_t sub_26A6AB2E8()
{
  result = qword_2803B3658;
  if (!qword_2803B3658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3650);
    sub_26A6AB374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3658);
  }

  return result;
}

unint64_t sub_26A6AB374()
{
  result = qword_2803B3660;
  if (!qword_2803B3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3660);
  }

  return result;
}

unint64_t sub_26A6AB3C8()
{
  result = qword_2803B3670;
  if (!qword_2803B3670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3668);
    sub_26A6AB2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3670);
  }

  return result;
}

uint64_t sub_26A6AB454(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A6AB4AC(void *a1)
{
  v1 = [a1 imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A84ABF8();

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_15_25()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_26A84B268();
}

uint64_t OUTLINED_FUNCTION_25_19()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_26A84B1D8();
}

uint64_t OUTLINED_FUNCTION_27_12()
{

  return sub_26A84B718();
}

void View.imageElementFixedSize(horizontal:vertical:)()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_34();
  v8 = v7;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  swift_getKeyPath();
  v14 = v6;
  sub_26A8509A8();

  swift_getKeyPath();
  v14 = v4;
  v12 = sub_26A6ACB90(&qword_28157FB50, &unk_2803B31B0);
  v13[1] = v2;
  v13[2] = v12;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  (*(v8 + 8))(v11, v0);
  OUTLINED_FUNCTION_27_0();
}

void View.imageElementRenderingMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  OUTLINED_FUNCTION_79(v24);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  swift_getKeyPath();
  v28 = sub_26A850F68();
  OUTLINED_FUNCTION_46();
  (*(v29 + 16))(v27, v23, v28);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  sub_26A8509A8();

  sub_26A6AC8E8(v27, &qword_2803AC918);
  OUTLINED_FUNCTION_27_0();
}

uint64_t EnvironmentValues.imageElementRenderingMode.getter()
{
  v0 = sub_26A6ABAE8();
  OUTLINED_FUNCTION_2_39(v0, &unk_287B1EAF0);

  return sub_26A84F998();
}

uint64_t sub_26A6AB970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_26A51D0F8(a1, &v7 - v4, &qword_2803AC918);
  return EnvironmentValues.imageElementRenderingMode.setter(v5);
}

uint64_t sub_26A6ABAA0(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

unint64_t sub_26A6ABAE8()
{
  result = qword_28157FCC8;
  if (!qword_28157FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCC8);
  }

  return result;
}

unint64_t sub_26A6ABB3C()
{
  result = qword_28157FD00;
  if (!qword_28157FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD00);
  }

  return result;
}

unint64_t sub_26A6ABB90()
{
  result = qword_28157FCF8;
  if (!qword_28157FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCF8);
  }

  return result;
}

void View.imageElementFixedSize()()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_34();
  v4 = v3;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = v9 - v6;
  swift_getKeyPath();
  v10 = 1;
  sub_26A8509A8();

  swift_getKeyPath();
  v10 = 1;
  v8 = sub_26A6ACB90(&qword_28157FB50, &unk_2803B31B0);
  v9[1] = v2;
  v9[2] = v8;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  (*(v4 + 8))(v7, v0);
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A6ABDDC()
{
  result = qword_28157FD10;
  if (!qword_28157FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD10);
  }

  return result;
}

uint64_t sub_26A6ABE70(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

unint64_t sub_26A6ABEBC()
{
  result = qword_28157FD08;
  if (!qword_28157FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD08);
  }

  return result;
}

uint64_t (*EnvironmentValues.imageElementFixedHeight.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26A6ABB90();
  sub_26A84F998();
  *(a1 + 16) = *(a1 + 17);
  return sub_26A6ABFE8;
}

uint64_t (*EnvironmentValues.imageElementFixedWidth.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26A6ABB3C();
  sub_26A84F998();
  *(a1 + 16) = *(a1 + 17);
  return sub_26A6AC05C;
}

uint64_t sub_26A6AC098@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157FD58 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  v3 = __swift_project_value_buffer(v2, qword_281588A18);
  return sub_26A51D0F8(v3, a1, &qword_2803AFE50);
}

uint64_t sub_26A6AC128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6ACD6C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.imageElementImageStyle.getter()
{
  v0 = sub_26A6AC1CC();
  OUTLINED_FUNCTION_2_39(v0, &unk_287B1EA50);

  return sub_26A84F998();
}

unint64_t sub_26A6AC1CC()
{
  result = qword_28157FD48;
  if (!qword_28157FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD48);
  }

  return result;
}

uint64_t sub_26A6AC250(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_50_0(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = sub_26A51D0F8(a1, &v13 - v10, a2);
  a4(v11);
  sub_26A84F9A8();
  return sub_26A6AC8E8(a1, a2);
}

void (*EnvironmentValues.imageElementImageStyle.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_52(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  OUTLINED_FUNCTION_79(v2);
  v4 = *(v3 + 64);
  v0[1] = __swift_coroFrameAllocStub(v4);
  v0[2] = __swift_coroFrameAllocStub(v4);
  v0[3] = __swift_coroFrameAllocStub(v4);
  v0[4] = sub_26A6AC1CC();
  sub_26A84F998();
  return sub_26A6AC3E0;
}

uint64_t sub_26A6AC42C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157FCD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  v3 = __swift_project_value_buffer(v2, qword_2815889E8);
  return sub_26A51D0F8(v3, a1, &qword_2803AC918);
}

uint64_t sub_26A6AC4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6ACC34();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.imageElementRenderingMode.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_52(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  OUTLINED_FUNCTION_79(v2);
  v4 = *(v3 + 64);
  v0[1] = __swift_coroFrameAllocStub(v4);
  v0[2] = __swift_coroFrameAllocStub(v4);
  v0[3] = __swift_coroFrameAllocStub(v4);
  v0[4] = sub_26A6ABAE8();
  sub_26A84F998();
  return sub_26A6AC5EC;
}

void sub_26A6AC608()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  sub_26A51D0F8((*v4)[3], (*v4)[2], v0);
  v6 = v5[3];
  v7 = v5[1];
  v8 = v5[2];
  if (v3)
  {
    sub_26A51D0F8(v5[2], v5[1], v1);
    sub_26A84F9A8();
    sub_26A6AC8E8(v8, v1);
  }

  else
  {
    sub_26A84F9A8();
  }

  sub_26A6AC8E8(v6, v1);
  free(v6);
  free(v8);
  free(v7);
  OUTLINED_FUNCTION_27_0();

  free(v9);
}

uint64_t sub_26A6AC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_50_0(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  __swift_allocate_value_buffer(v8, a4);
  v9 = __swift_project_value_buffer(v8, a4);
  v10 = a5(0);

  return __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
}

uint64_t sub_26A6AC794@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157FCE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFE8);
  v3 = __swift_project_value_buffer(v2, qword_281588A00);
  return sub_26A51D0F8(v3, a1, &qword_2803ABFE8);
}

uint64_t EnvironmentValues.imageSymbolRenderingMode.getter()
{
  v0 = sub_26A6AC864();
  OUTLINED_FUNCTION_2_39(v0, &unk_287B1EA30);

  return sub_26A84F998();
}

unint64_t sub_26A6AC864()
{
  result = qword_28157FCD8;
  if (!qword_28157FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCD8);
  }

  return result;
}

uint64_t sub_26A6AC8E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_50_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(a1);
  return a1;
}

void (*EnvironmentValues.imageSymbolRenderingMode.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_52(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFE8);
  OUTLINED_FUNCTION_79(v2);
  v4 = *(v3 + 64);
  v0[1] = __swift_coroFrameAllocStub(v4);
  v0[2] = __swift_coroFrameAllocStub(v4);
  v0[3] = __swift_coroFrameAllocStub(v4);
  v0[4] = sub_26A6AC864();
  sub_26A84F998();
  return sub_26A6ACA08;
}

void (*EnvironmentValues.imageElementFrameWidth.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_26A6ABDDC();
  sub_26A84F998();
  OUTLINED_FUNCTION_9_41();
  return sub_26A6ACAA4;
}

void (*EnvironmentValues.imageElementFrameHeight.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_26A6ABEBC();
  sub_26A84F998();
  OUTLINED_FUNCTION_9_41();
  return sub_26A6ACB30;
}

void sub_26A6ACB3C(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_26A84F9A8();

  free(v1);
}

uint64_t sub_26A6ACB90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A6ACC34()
{
  result = qword_2803B3688;
  if (!qword_2803B3688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC918);
    sub_26A6ACE20(&qword_2803AC950, MEMORY[0x277CE1030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3688);
  }

  return result;
}

unint64_t sub_26A6ACCE8()
{
  result = qword_2803B3690;
  if (!qword_2803B3690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA470);
    sub_26A504FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3690);
  }

  return result;
}

unint64_t sub_26A6ACD6C()
{
  result = qword_28157FFE0;
  if (!qword_28157FFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFE50);
    sub_26A6ACE20(&qword_28157FFF0, MEMORY[0x277D62C10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FFE0);
  }

  return result;
}

uint64_t sub_26A6ACE20(unint64_t *a1, void (*a2)(uint64_t))
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

void *OUTLINED_FUNCTION_5_52(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

void OUTLINED_FUNCTION_9_41()
{
  v1 = *(v0 + 24);
  *v0 = *(v0 + 16);
  *(v0 + 8) = v1;
}

uint64_t View.componentTapped(isNavigation:perform:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  swift_getKeyPath();
  *v9 = a2;
  *(v9 + 1) = a3;
  v9[16] = a1;
  v10 = type metadata accessor for ActionType();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);

  sub_26A8509A8();

  return sub_26A4DBD10(v9, &qword_2803A91C8);
}

uint64_t sub_26A6ACFB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  type metadata accessor for ActionType();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = v23 - v22;
  sub_26A576E7C(v2, v23 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v20, v24, v14);
    VRXIdiom.idiom.getter(a1, v9);
    sub_26A84BAA8();
    (*(v29 + 8))(v9, v4);
    (*(v16 + 8))(v20, v14);
    v25 = sub_26A84E278();
    v26 = __swift_getEnumTagSinglePayload(v13, 1, v25) != 1;
    sub_26A4DBD10(v13, &qword_2803B38C0);
  }

  else
  {
    sub_26A576EE0(v24);
    return 1;
  }

  return v26;
}

uint64_t sub_26A6AD22C()
{
  sub_26A6AD850();

  return sub_26A84F998();
}

uint64_t type metadata accessor for ActionType()
{
  result = qword_28157FAC0;
  if (!qword_28157FAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26A6AD2C0()
{
  result = qword_2803AA878;
  if (!qword_2803AA878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA878);
  }

  return result;
}

void sub_26A6AD324()
{
  sub_26A6AD3DC(319, &unk_2803B36B0, &qword_2803ADFC0);
  if (v0 <= 0x3F)
  {
    sub_26A84BAB8();
    if (v1 <= 0x3F)
    {
      sub_26A6AD3DC(319, &qword_2803B36C0, &unk_2803B3630);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_26A6AD3DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_26A6AD444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  sub_26A6AD7E0(a1, &v6 - v4);
  sub_26A6AD850();
  sub_26A84F9A8();
  return sub_26A4DBD10(a1, &qword_2803A91C8);
}

uint64_t sub_26A6AD4FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v30 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  type metadata accessor for ActionType();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = v23 - v22;
  sub_26A576E7C(v2, v23 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 32))(v20, v24, v14);
      VRXIdiom.idiom.getter(a1, v9);
      sub_26A84BAA8();
      (*(v30 + 8))(v9, v4);
      v26 = sub_26A84E278();
      if (__swift_getEnumTagSinglePayload(v13, 1, v26) == 1)
      {
        (*(v16 + 8))(v20, v14);
        sub_26A4DBD10(v13, &qword_2803B38C0);
        v27 = 0;
      }

      else
      {
        v27 = sub_26A84E258();
        (*(v16 + 8))(v20, v14);
        (*(*(v26 - 8) + 8))(v13, v26);
      }
    }

    else
    {
      v27 = *(v24 + 8);
    }
  }

  else
  {
    v27 = *(v24 + 16);
  }

  return v27 & 1;
}

uint64_t sub_26A6AD7E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6AD850()
{
  result = qword_28157E1C0;
  if (!qword_28157E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E1C0);
  }

  return result;
}

uint64_t sub_26A6AD8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  __swift_allocate_value_buffer(v0, qword_28157E1E0);
  v1 = __swift_project_value_buffer(v0, qword_28157E1E0);
  v2 = type metadata accessor for ActionType();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_26A6AD930@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157E1D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v3 = __swift_project_value_buffer(v2, qword_28157E1E0);

  return sub_26A6AD7E0(v3, a1);
}

id UEIKeyboardInvocationEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_26A6AD9F0(uint64_t a1)
{
  v3 = sub_26A6ADD30();
  if (v3)
  {
    v4 = v3;
    KeyPath = swift_getKeyPath();
    v7 = v4;
    v6 = sub_26A5E0C54(v4, KeyPath, a1);

    if (v6)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_instrumentationClient), *(v1 + OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_instrumentationClient + 24));
      sub_26A58733C(v6);
    }
  }
}

void sub_26A6ADBA0()
{
  v1 = sub_26A84AC88();
  [v0 emitWithTurnIdentifier_];
}

void *sub_26A6ADD30()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D5A7F0]) init];
  v1 = objc_opt_self();

  v2 = sub_26A851788();

  v3 = [v1 convertLanguageCodeToSchemaLocale_];

  [v0 setKeyboardLocale_];
  if (v0)
  {
    [v0 setKeyboardPresented_];
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D5A928]) init];
  v5 = v4;
  if (v4)
  {
    [v4 setInvocationSource_];
  }

  v6 = v5;
  [v6 setKeyboardInvocationContext_];

  return v5;
}

id UEIKeyboardInvocationEvent.init()()
{
  v1 = &v0[OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_instrumentationClient];
  v2 = type metadata accessor for StandardSELFInstrumentationClient();
  v3 = swift_allocObject();
  v1[3] = v2;
  v1[4] = &off_287B17ED8;
  *v1 = v3;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 textInputMode];

  if (!v5 || (v6 = sub_26A6AE008(v5), !v7))
  {

    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v0[OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_keyboardPrimaryLanguage];
  *v8 = v6;
  v8[1] = v7;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for UEIKeyboardInvocationEvent();
  return objc_msgSendSuper2(&v10, sel_init);
}

id UEIKeyboardInvocationEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UEIKeyboardInvocationEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A6AE008(void *a1)
{
  v2 = [a1 primaryLanguage];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A6AE0A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 191))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6AE0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 190) = 0;
    *(result + 188) = 0;
    *(result + 184) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 191) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 191) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A6AE178(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF5 && *(a1 + 9))
    {
      v2 = *a1 + 244;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 0xB)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6AE1B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 8) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_26A6AE208()
{
  result = sub_26A5046B4();
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1D80);
    sub_26A4E325C();
    result = sub_26A8516D8();
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeMetadata2();
      result = sub_26A851B48();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A6AE314(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_26A6AE4A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A6AE718@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1D80);
  v27 = a5;
  v11 = *(a5 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_26A852068();
  OUTLINED_FUNCTION_2_34();
  v25 = v14;
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  OUTLINED_FUNCTION_2_34();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  v39 = *(v6 + 24);
  v31 = v11;
  v32 = a1;
  v33 = a2;
  v34 = v29;
  v35 = a4 & 1;
  v22 = vdupq_n_s64(a4);
  *v22.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v22, xmmword_26A874A70), vshlq_u64(v22, xmmword_26A874A60))), 0x1000100010001);
  v36 = vuzp1_s8(*v22.i8, *v22.i8).u32[0];
  v37 = BYTE5(a4) & 1;
  v38 = BYTE6(a4) & 1;
  sub_26A851B48();

  swift_getWitnessTable();
  sub_26A851A18();

  if (__swift_getEnumTagSinglePayload(v16, 1, TupleTypeMetadata2) == 1)
  {
    (*(v25 + 8))(v16, v26);
    return (*(v18 + 16))(v30, v28 + *(v27 + 36), v11);
  }

  else
  {

    v24 = *(v18 + 32);
    v24(v21, &v16[*(TupleTypeMetadata2 + 48)], v11);
    return (v24)(v30, v21, v11);
  }
}

uint64_t sub_26A6AE9E8()
{
  sub_26A851848();
}

uint64_t sub_26A6AEA64(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_13_29();
      break;
    default:
      break;
  }

  sub_26A851848();
}

uint64_t sub_26A6AEB20()
{
  sub_26A851848();
}

uint64_t sub_26A6AEBD0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_13_29();
      break;
    default:
      break;
  }

  sub_26A851848();
}

uint64_t sub_26A6AEC98(uint64_t a1, char a2)
{
  v2 = 0.0;
  if (a2)
  {
    v2 = 1.0;
  }

  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x26D664950](*&v3);
}

uint64_t sub_26A6AECD8(uint64_t a1, char a2)
{
  sub_26A6300C8(a2);
  sub_26A851848();
}

uint64_t sub_26A6AED2C()
{
  sub_26A851848();
}

uint64_t sub_26A6AEDCC()
{
  sub_26A851848();
}

uint64_t sub_26A6AEE1C()
{
  sub_26A851848();
}

uint64_t sub_26A6AEE74@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v27[0] = 0;
  v15 = swift_getKeyPath();
  v26[0] = 0;
  v14 = swift_getKeyPath();
  v25[0] = 0;
  v13 = swift_getKeyPath();
  v24[0] = 0;
  v2 = swift_getKeyPath();
  v23[0] = 0;
  v3 = swift_getKeyPath();
  v22[0] = 0;
  v4 = swift_getKeyPath();
  v21[0] = 0;
  v5 = swift_getKeyPath();
  v20[0] = 0;
  v6 = swift_getKeyPath();
  v19[0] = 0;
  v7 = swift_getKeyPath();
  v18[0] = 0;
  if (qword_28157F7C0 != -1)
  {
    swift_once();
  }

  v8 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    swift_once();
  }

  v9 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    swift_once();
  }

  v10 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    swift_once();
  }

  v11 = byte_2803D1D89;
  result = 0;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 9) = *v27;
  *(a1 + 12) = *&v27[3];
  *(a1 + 16) = v15;
  *(a1 + 24) = 0;
  *(a1 + 25) = *v26;
  *(a1 + 28) = *&v26[3];
  *(a1 + 32) = v14;
  *(a1 + 40) = 0;
  *(a1 + 44) = *&v25[3];
  *(a1 + 41) = *v25;
  *(a1 + 48) = v13;
  *(a1 + 56) = 0;
  *(a1 + 60) = *&v24[3];
  *(a1 + 57) = *v24;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  *(a1 + 76) = *&v23[3];
  *(a1 + 73) = *v23;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0;
  *(a1 + 92) = *&v22[3];
  *(a1 + 89) = *v22;
  *(a1 + 96) = v4;
  *(a1 + 104) = 0;
  *(a1 + 108) = *&v21[3];
  *(a1 + 105) = *v21;
  *(a1 + 112) = v5;
  *(a1 + 120) = 0;
  *(a1 + 124) = *&v20[3];
  *(a1 + 121) = *v20;
  *(a1 + 128) = v6;
  *(a1 + 136) = 0;
  *(a1 + 140) = *&v19[3];
  *(a1 + 137) = *v19;
  *(a1 + 144) = v7;
  *(a1 + 152) = 0;
  *(a1 + 156) = *&v18[3];
  *(a1 + 153) = *v18;
  *(a1 + 160) = v8;
  *(a1 + 168) = v9;
  *(a1 + 172) = *&v17[3];
  *(a1 + 169) = *v17;
  *(a1 + 176) = 1;
  *(a1 + 184) = v10;
  *(a1 + 185) = 0;
  *(a1 + 186) = v11;
  *(a1 + 187) = 0;
  return result;
}

uint64_t sub_26A6AF1BC(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  while (v5)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v8 = qword_26A8751D0[*(*(result + 48) + ((v6 << 10) | (16 * v7)) + 8)];
    v9 = __OFADD__(v2, v8);
    v2 += v8;
    if (v9)
    {
      __break(1u);
      return v2;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return v2;
    }

    v5 = *(result + 56 + 8 * v6);
    ++v1;
    if (v5)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A6AF268(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(result + 48) + ((v1 << 10) | (16 * v8)));
    if (!v9[8])
    {
      v10 = *(*v9 + 16);
      v11 = __OFADD__(v2, v10);
      v2 += v10;
      if (v11)
      {
        __break(1u);
        return v2;
      }
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return v2;
    }

    v5 = *(result + 56 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_26A6AF30C(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = a5 + 56;
  OUTLINED_FUNCTION_2_69();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v41 = v15;

  v16 = 0;
  v44 = a4;
  v40 = HIDWORD(a4) & 1;
  v17 = 2.0;
  v18 = 3.0;
LABEL_2:
  while (2)
  {
    if (v12)
    {
      goto LABEL_7;
    }

    do
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v19 >= v14)
      {
        goto LABEL_72;
      }

      v12 = *(v9 + 8 * v19);
      ++v16;
    }

    while (!v12);
    v16 = v19;
LABEL_7:
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = *(a5 + 48) + ((v16 << 10) | (16 * v20));
    v22 = *v21;
    v23 = *(v21 + 8);
    switch(*(v21 + 8))
    {
      case 0:
        if (!*(v22 + 16))
        {
          goto LABEL_37;
        }

        sub_26A8526B8();
        MEMORY[0x26D664930](v41);
        a4 = &v45;
        v24 = sub_26A8526F8();
        v25 = ~(-1 << *(v22 + 32));
        while (1)
        {
          v26 = v24 & v25;
          if (((*(v22 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
          {
            break;
          }

          v24 = v26 + 1;
          if (*(*(v22 + 48) + 8 * v26) == v41)
          {
            goto LABEL_2;
          }
        }

LABEL_37:
        sub_26A4E324C(v22, 0);
        goto LABEL_52;
      case 1:
        OUTLINED_FUNCTION_6_45();
        v30 = v29;
        v31 = 0xE900000000000074;
        switch(v32)
        {
          case 1:
            v31 = 0xE400000000000000;
            v30 = 1769105747;
            break;
          case 2:
            v30 = 0xD000000000000010;
            v31 = 0x800000026A88A230;
            break;
          case 3:
            v30 = OUTLINED_FUNCTION_12_32();
            v31 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        switch(a2)
        {
          case 1:
            a4 = 0xE400000000000000;
            v29 = 1769105747;
            break;
          case 2:
            v29 = 0xD000000000000010;
            a4 = 0x800000026A88A230;
            break;
          case 3:
            OUTLINED_FUNCTION_5_53();
            break;
          default:
            break;
        }

        if (v30 == v29 && v31 == a4)
        {
        }

        else
        {
          v36 = sub_26A852598();

          if ((v36 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        continue;
      case 2:
        if (v22 != a3)
        {
          goto LABEL_52;
        }

        continue;
      case 3:
        a4 = *v21 & 1;
        if (sub_26A84BBC8() & 1) != a4 || ((sub_26A84BBC8() ^ v44))
        {
          goto LABEL_52;
        }

        continue;
      case 4:
        a4 = (v44 >> 8) & 1 ^ v22;
        sub_26A4E324C(v22, 4);
        if ((BYTE1(v44) & 1 ^ v22))
        {
          goto LABEL_52;
        }

        continue;
      case 5:
        v28 = *v21 & 1;
        sub_26A4E324C(*v21, 5);
        if (_UISolariumEnabled() != v28)
        {
          goto LABEL_52;
        }

        a4 = (v44 >> 16) & 1;
        if (a4 != _UISolariumEnabled())
        {
          goto LABEL_52;
        }

        continue;
      case 7:
        if (v22)
        {
          v33 = 375.0;
        }

        else
        {
          v33 = 414.0;
        }

        a4 = [objc_opt_self() mainScreen];
        [a4 _referenceBounds];
        OUTLINED_FUNCTION_75_0();

        v46.origin.x = v5;
        v46.origin.y = v17;
        v17 = 2.0;
        v46.size.width = v18;
        v18 = 3.0;
        v46.size.height = v6;
        if (v33 > CGRectGetWidth(v46))
        {
          goto LABEL_52;
        }

        continue;
      case 0xB:
        v27 = (v44 >> 40) & 1;
        goto LABEL_28;
      default:
        sub_26A4E324C(*v21, *(v21 + 8));
        if (v23 != 8)
        {
          if (v23 == 10)
          {
            if (v40 != (v22 & 1))
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v23 != 9)
            {
              goto LABEL_52;
            }

            v27 = (v44 >> 24) & 1;
LABEL_28:
            if ((v27 ^ v22))
            {
LABEL_52:
              v34 = 3;
              goto LABEL_53;
            }
          }

          continue;
        }

        v34 = v22;
LABEL_53:
        a4 = [objc_opt_self() mainScreen];
        [a4 scale];
        v5 = v37;

        if (v5 == 1.0)
        {
          v38 = 0;
        }

        else if (v5 == v17)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        v39 = 1.0;
        switch(v34)
        {
          case 1:
            v39 = 2.0;
            goto LABEL_60;
          case 2:
            v39 = 3.0;
            if (!v38)
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 3:
            goto LABEL_66;
          default:
LABEL_60:
            if (!v38)
            {
LABEL_65:
              if (v39 != 1.0)
              {
                goto LABEL_66;
              }

              goto LABEL_63;
            }

LABEL_61:
            if (v38 != 1)
            {
              if (v39 != v18)
              {
                goto LABEL_66;
              }

LABEL_63:
              sub_26A587EE4(v22, v23);
              continue;
            }

            if (v39 == v17)
            {
              goto LABEL_63;
            }

LABEL_66:
            if (v23 == 6)
            {
              if ((HIWORD(v44) & 1 ^ v22))
              {
                goto LABEL_72;
              }

              continue;
            }

            sub_26A587EE4(v22, v23);
LABEL_72:

            return;
        }
    }
  }
}

uint64_t sub_26A6AF834(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    v12 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
    swift_beginAccess();
    if (sub_26A6B4FA4(*(a2 + v12), v7))
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (v8 == 1)
  {
    if (*a1 != 4 && (sub_26A62F904(*a1, *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_currentProcess)) & 1) != 0)
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (v8 != 7)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    v9 = 375.0;
  }

  else
  {
    v9 = 414.0;
  }

  v10 = [objc_opt_self() mainScreen];
  [v10 _referenceBounds];
  OUTLINED_FUNCTION_75_0();

  v21.origin.x = v2;
  v21.origin.y = v3;
  v21.size.width = v4;
  v21.size.height = v5;
  v11 = v9 <= CGRectGetWidth(v21);
LABEL_13:
  v13 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  swift_beginAccess();
  if (v8 == 2)
  {
    if (v7 == *(a2 + v13))
    {
      return 1;
    }

    sub_26A61C83C();
  }

  else
  {
    v14 = sub_26A61C83C();
    if (v8 == 3)
    {
      if ((sub_26A84BBC8() & 1) == (v7 & 1))
      {
        v15 = sub_26A84BBC8() & 1;
        goto LABEL_22;
      }
    }

    else if (v8 == 11 && (v14 & 1) == (v7 & 1))
    {
      return 1;
    }
  }

  v15 = 2;
LABEL_22:
  if (v15 != 2 && ((*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isModernizedSnippet) ^ v15) & 1) == 0)
  {
    return 1;
  }

  if (v8 == 5)
  {
    if (_UISolariumEnabled() == (v7 & 1))
    {
      v16 = _UISolariumEnabled();
      goto LABEL_30;
    }
  }

  else if (v8 == 4 && *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isSpotlightPlus) == (v7 & 1))
  {
    return 1;
  }

  v16 = 2;
LABEL_30:
  if (v16 != 2 && ((*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isSolariumEnabled) ^ v16) & 1) == 0)
  {
    return 1;
  }

  if (v8 == 8)
  {
    v17 = v7 << 56;
    if (*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_deviceScaleFactor))
    {
      if (*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_deviceScaleFactor) == 1)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0x200000000000000;
      }

      if (v17 == v18)
      {
        return 1;
      }

      goto LABEL_42;
    }

    if (v17)
    {
      goto LABEL_42;
    }

    return 1;
  }

LABEL_42:
  v19 = sub_26A61CE1C();
  if (v8 == 6 && ((v19 ^ v7) & 1) == 0)
  {
    return 1;
  }

  return v11;
}

void sub_26A6AFAEC()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_2_34();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v7 = v63;

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v9 = OUTLINED_FUNCTION_0_69(v7);
    v10(v9);
    v63 = v64;
  }

  v11 = *(v0 + 96);
  if (*(v0 + 104) != 1)
  {

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v13 = OUTLINED_FUNCTION_0_69(v11);
    v14(v13);
    v11 = v64;
  }

  v15 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v17 = OUTLINED_FUNCTION_0_69(v15);
    v18(v17);
    v15 = v64;
  }

  v19 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_26A851EA8();
    v20 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v21 = OUTLINED_FUNCTION_0_69(v19);
    v22(v21);
    v19 = v64;
  }

  v23 = *(v0 + 48);
  if (*(v0 + 56) != 1)
  {

    sub_26A851EA8();
    v24 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v25 = OUTLINED_FUNCTION_0_69(v23);
    v26(v25);
    v23 = v64;
  }

  v27 = *(v0 + 64);
  v28 = *(v0 + 72);
  v60 = v23;
  if (v28 != 1)
  {
    v29 = v27;

    sub_26A851EA8();
    v30 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v31 = OUTLINED_FUNCTION_0_69(v29);
    v32(v31);
    v27 = v64;
  }

  v33 = *(v0 + 112);
  v34 = *(v0 + 120);
  v59 = v27;
  if (v34 != 1)
  {

    sub_26A851EA8();
    v35 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v36 = OUTLINED_FUNCTION_0_69(v33);
    v37(v36);
    LOBYTE(v33) = v64;
  }

  v38 = *(v0 + 128);
  v39 = *(v0 + 136);
  v62 = v15;
  if (v39 != 1)
  {

    sub_26A851EA8();
    v40 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v41 = OUTLINED_FUNCTION_0_69(v38);
    v42(v41);
    LOBYTE(v38) = v64;
  }

  v43 = *(v0 + 80);
  v44 = *(v0 + 88);
  v61 = v19;
  if (v44 != 1)
  {

    sub_26A851EA8();
    v45 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v46 = OUTLINED_FUNCTION_0_69(v43);
    v47(v46);
    LOBYTE(v43) = v64;
  }

  v48 = *(v0 + 144);
  if (*(v0 + 152) != 1)
  {

    sub_26A851EA8();
    v49 = sub_26A8501F8();
    v58 = v11;
    v50 = v33;
    v33 = v1;
    v51 = v49;
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    sub_26A49035C(v48, 0);
    v52 = v33;
    LOBYTE(v33) = v50;
    LOBYTE(v11) = v58;
    (*(v3 + 8))(v6, v52);
    LOBYTE(v48) = v64;
  }

  v53 = v60;
  v54 = v59;
  v55 = v61 & 1;
  v56 = v62;
  *(v0 + 160) = v63;
  *(v0 + 168) = v11;
  *(v0 + 176) = v56;
  *(v0 + 184) = v55;
  *(v0 + 185) = v53 & 1;
  *(v0 + 186) = v54 & 1;
  *(v0 + 187) = v33 & 1;
  *(v0 + 188) = v38 & 1;
  *(v0 + 189) = v43 & 1;
  *(v0 + 190) = v48 & 1;
}

uint64_t sub_26A6B0248(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_29;
      }

      return sub_26A62F904(a1, a3);
    case 2:
      v7 = a4 == 2 && a1 == a3;
      return v7 & 1;
    case 3:
      v5 = a4 == 3;
      goto LABEL_22;
    case 4:
      v5 = a4 == 4;
      goto LABEL_22;
    case 5:
      v5 = a4 == 5;
      goto LABEL_22;
    case 6:
      v5 = a4 == 6;
      goto LABEL_22;
    case 7:
      v7 = a4 == 7 && ((a3 ^ a1) & 1) == 0;
      return v7 & 1;
    case 8:
      if (a4 != 8)
      {
        goto LABEL_29;
      }

      v8 = a1 << 56;
      if (a3)
      {
        if (a3 == 1)
        {
          v9 = 0x100000000000000;
        }

        else
        {
          v9 = 0x200000000000000;
        }

        if (v8 == v9)
        {
          goto LABEL_33;
        }

LABEL_29:
        v7 = 0;
        return v7 & 1;
      }

      if (v8)
      {
        goto LABEL_29;
      }

LABEL_33:
      v7 = 1;
      return v7 & 1;
    case 9:
      v5 = a4 == 9;
      goto LABEL_22;
    case 10:
      v5 = a4 == 10;
      goto LABEL_22;
    case 11:
      v5 = a4 == 11;
LABEL_22:
      v7 = a3 ^ a1 ^ 1;
      if (!v5)
      {
        v7 = 0;
      }

      return v7 & 1;
    default:
      if (a4)
      {
        goto LABEL_29;
      }

      return sub_26A6B067C(a1, a3);
  }
}

uint64_t sub_26A6B036C(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      MEMORY[0x26D664930](1);

      return sub_26A6AEA64(a1, a2);
    case 2:
      MEMORY[0x26D664930](2);
      v7 = a2;
      return MEMORY[0x26D664930](v7);
    case 3:
      v6 = 3;
      goto LABEL_18;
    case 4:
      v6 = 4;
      goto LABEL_18;
    case 5:
      v6 = 5;
      goto LABEL_18;
    case 6:
      v6 = 6;
      goto LABEL_18;
    case 7:
      MEMORY[0x26D664930](7);
      v7 = a2 & 1;
      return MEMORY[0x26D664930](v7);
    case 8:
      MEMORY[0x26D664930](8);

      return sub_26A6AEB9C(a1, a2);
    case 9:
      v6 = 9;
      goto LABEL_18;
    case 10:
      v6 = 10;
      goto LABEL_18;
    case 11:
      v6 = 11;
LABEL_18:
      MEMORY[0x26D664930](v6);
      result = sub_26A8526D8();
      break;
    default:
      MEMORY[0x26D664930](0);

      result = sub_26A6B0C8C(a1, a2);
      break;
  }

  return result;
}

uint64_t sub_26A6B049C(uint64_t a1, char a2)
{
  sub_26A8526B8();
  sub_26A6B036C(v5, a1, a2);
  return sub_26A8526F8();
}

uint64_t sub_26A6B0504()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26A8526B8();
  sub_26A6B036C(v4, v1, v2);
  return sub_26A8526F8();
}

unint64_t sub_26A6B056C()
{
  result = qword_28157E728;
  if (!qword_28157E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E728);
  }

  return result;
}

uint64_t sub_26A6B05C0(uint64_t *a1)
{
  v2 = 256;
  if (!*(v1 + 49))
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 48);
  v4 = 0x10000;
  if (!*(v1 + 50))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v1 + 51))
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  v7 = 0x100000000;
  if (!*(v1 + 52))
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if (!*(v1 + 53))
  {
    v8 = 0;
  }

  v9 = 0x1000000000000;
  if (!*(v1 + 54))
  {
    v9 = 0;
  }

  sub_26A6AF30C(*(v1 + 24), *(v1 + 32), *(v1 + 40), v6 | v7 | v8 | v9, *a1);
  return v10 & 1;
}

uint64_t sub_26A6B067C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    sub_26A8526B8();
    MEMORY[0x26D664930](v13);
    result = sub_26A8526F8();
    v14 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v15 = result & v14;
      if (((*(a2 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
      {
        return 0;
      }

      result = v15 + 1;
      if (*(*(a2 + 48) + 8 * v15) == v13)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    ++v10;
    if (*(v3 + 56 + 8 * v4))
    {
      OUTLINED_FUNCTION_2_66();
      v7 = v12 & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_26A6B07D0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v52 = a1 + 56;
    OUTLINED_FUNCTION_2_69();
    v7 = (v6 + 63) >> 6;
    v53 = v7;
    if ((v5 & v4) != 0)
    {
LABEL_4:
      OUTLINED_FUNCTION_10_40();
      v54 = v10;
      goto LABEL_10;
    }

LABEL_5:
    v11 = v3;
    do
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        return;
      }

      if (v3 >= v7)
      {
        return;
      }

      ++v11;
    }

    while (!*(v52 + 8 * v3));
    OUTLINED_FUNCTION_2_66();
    v54 = v13 & v12;
LABEL_10:
    v14 = *(v8 + 48) + 16 * (v9 | (v3 << 6));
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_26A8526B8();
    sub_26A4E324C(v15, v16);
    sub_26A6B036C(v55, v15, v16);
    v17 = v55;
    v18 = sub_26A8526F8();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = a2 + 56;
    if ((*(a2 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v22 = ~v19;
      while (1)
      {
        v23 = *(a2 + 48) + 16 * v20;
        v24 = *v23;
        switch(*(v23 + 8))
        {
          case 1:
            if (v16 != 1)
            {
              goto LABEL_54;
            }

            OUTLINED_FUNCTION_6_45();
            v42 = v41;
            v43 = 0xE900000000000074;
            switch(v44)
            {
              case 1:
                v43 = 0xE400000000000000;
                v42 = 1769105747;
                break;
              case 2:
                v42 = 0xD000000000000010;
                v43 = 0x800000026A88A230;
                break;
              case 3:
                v42 = OUTLINED_FUNCTION_12_32();
                v43 = 0xEC00000069726166;
                break;
              default:
                break;
            }

            switch(v15)
            {
              case 1:
                v17 = 0xE400000000000000;
                v41 = 1769105747;
                break;
              case 2:
                v41 = 0xD000000000000010;
                v17 = 0x800000026A88A230;
                break;
              case 3:
                OUTLINED_FUNCTION_5_53();
                break;
              default:
                break;
            }

            if (v42 == v41 && v43 == v17)
            {
            }

            else
            {
              v48 = sub_26A852598();

              v21 = a2 + 56;
              if ((v48 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_78;
          case 2:
            if (v16 != 2 || v24 != v15)
            {
              goto LABEL_54;
            }

            goto LABEL_78;
          case 3:
            if (v16 != 3)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 4:
            if (v16 != 4)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 5:
            if (v16 != 5)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 6:
            if (v16 != 6)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 7:
            if (v16 == 7 && ((v24 ^ v15) & 1) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_54;
          case 8:
            if (v16 != 8)
            {
              goto LABEL_54;
            }

            v45 = v24 << 56;
            if (v15)
            {
              if (v15 == 1)
              {
                v46 = 0x100000000000000;
              }

              else
              {
                v46 = 0x200000000000000;
              }

              if (v45 == v46)
              {
LABEL_78:
                v7 = v53;
                if (v54)
                {
                  goto LABEL_4;
                }

                goto LABEL_5;
              }
            }

            else if (!v45)
            {
              goto LABEL_78;
            }

LABEL_54:
            v20 = (v20 + 1) & v22;
            if (((*(v21 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_82;
            }

            break;
          case 9:
            if (v16 != 9)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 0xA:
            if (v16 == 10)
            {
              goto LABEL_53;
            }

            goto LABEL_54;
          case 0xB:
            if (v16 != 11)
            {
              goto LABEL_54;
            }

LABEL_53:
            if ((v24 ^ v15))
            {
              goto LABEL_54;
            }

            goto LABEL_78;
          default:
            if (v16)
            {
              goto LABEL_54;
            }

            if (v24 == v15)
            {
              goto LABEL_77;
            }

            if (*(v24 + 16) != *(v15 + 16))
            {
              goto LABEL_54;
            }

            v25 = 0;
            OUTLINED_FUNCTION_2_69();
            v29 = (v28 + 63) >> 6;
            v49 = v29;
            v51 = v30;
            if ((v27 & v26) != 0)
            {
              goto LABEL_17;
            }

            while (2)
            {
              v33 = v25;
LABEL_19:
              v25 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                goto LABEL_85;
              }

              if (v25 < v29)
              {
                ++v33;
                if (*(v24 + 56 + 8 * v25))
                {
                  OUTLINED_FUNCTION_2_66();
                  for (i = v35 & v34; ; i = v32)
                  {
                    v36 = *(*(v24 + 48) + 8 * (v31 | (v25 << 6)));
                    sub_26A8526B8();
                    MEMORY[0x26D664930](v36);
                    v17 = v55;
                    v37 = sub_26A8526F8();
                    v38 = ~(-1 << *(v15 + 32));
                    v21 = a2 + 56;
                    do
                    {
                      v39 = v37 & v38;
                      if (((*(v51 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
                      {
                        goto LABEL_54;
                      }

                      v37 = v39 + 1;
                    }

                    while (*(*(v15 + 48) + 8 * v39) != v36);
                    v29 = v49;
                    if (!i)
                    {
                      break;
                    }

LABEL_17:
                    OUTLINED_FUNCTION_10_40();
                  }

                  continue;
                }

                goto LABEL_19;
              }

              break;
            }

LABEL_77:
            sub_26A587EE4(v15, 0);
            goto LABEL_78;
        }
      }
    }

LABEL_82:
    sub_26A587EE4(v15, v16);
  }
}

uint64_t sub_26A6B0C8C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_26A8526F8();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + ((v10 << 9) | (8 * v11)));
    sub_26A8526B8();
    MEMORY[0x26D664930](v12);
    result = sub_26A8526F8();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x26D664930](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A6B0DB4(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_26A8526F8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + ((v10 << 10) | (16 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_26A8526B8();
    sub_26A4E324C(v13, v14);
    sub_26A6B036C(v16, v13, v14);
    v15 = sub_26A8526F8();
    result = sub_26A587EE4(v13, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x26D664930](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_69()
{

  return sub_26A84EA78();
}

uint64_t OUTLINED_FUNCTION_4_55@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26A6B1004@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  type metadata accessor for FactItemHeroButtonView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A51A3E0(v8, a1);
  }

  sub_26A851EA8();
  v10 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26A6B11DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for FactItemHeroButtonView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A6B13E4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemHeroButtonView() + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t FactItemHeroButtonView.init(number:text1:button:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  __swift_project_value_buffer(v7, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(a4, __src, 0xBFuLL);
  sub_26A6B2F38();
  v8 = type metadata accessor for FactItemHeroButtonView();
  v9 = &a4[v8[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v31 = xmmword_281588758[0];
  v32 = unk_281588768;
  v33 = xmmword_281588778;
  v34 = xmmword_281588788;
  v35 = xmmword_281588758[0];
  v36 = unk_281588768;
  v37 = xmmword_281588778;
  v38 = xmmword_281588788;
  v25 = xmmword_281588788;
  v26 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v39);
  memcpy(v9, v39, 0xC0uLL);
  *(v9 + 12) = v26;
  *(v9 + 13) = v25;
  v10 = v36;
  *(v9 + 14) = v35;
  *(v9 + 15) = v10;
  v11 = v38;
  *(v9 + 16) = v37;
  *(v9 + 17) = v11;
  v12 = v8[6];
  *&a4[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v8[7];
  *&a4[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v14 = &a4[v8[8]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_26A4D7E54();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v15 = OUTLINED_FUNCTION_16_5();
    v17 = v16(v15);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_26A6A1DE4(v28, &qword_2803A91B8);
    v17 = 0;
  }

  *&a4[v8[9]] = v17;
  sub_26A4D7E54();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v18 = OUTLINED_FUNCTION_16_5();
    v20 = v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_26A6A1DE4(v28, &qword_2803A91B8);
    v20 = 0;
  }

  *&a4[v8[10]] = v20;
  sub_26A4D7E54();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v21 = OUTLINED_FUNCTION_16_5();
    v23 = v22(v21);
    sub_26A6A1DE4(a3, &qword_2803A91B8);
    sub_26A6A1DE4(a2, &qword_2803A91B8);
    sub_26A6A1DE4(a1, &qword_2803A91B8);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    OUTLINED_FUNCTION_6_46(a3);
    OUTLINED_FUNCTION_6_46(a2);
    OUTLINED_FUNCTION_6_46(a1);
    result = OUTLINED_FUNCTION_6_46(v28);
    v23 = 0;
  }

  *&a4[v8[11]] = v23;
  return result;
}

uint64_t type metadata accessor for FactItemHeroButtonView()
{
  result = qword_2803B36E0;
  if (!qword_2803B36E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FactItemHeroButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A6B1004(&v15[-v7]);
  sub_26A6B1BE8(v17);
  sub_26A6B13E4();
  sub_26A6B11DC(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CC990();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B36D8) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  return result;
}

void sub_26A6B1BE8(uint64_t a1@<X8>)
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v3 = 0uLL;
  if (byte_2803B0440 == 1)
  {
    v4 = sub_26A6B13E4();
    if (sub_26A61B05C(v4, &unk_287B13090))
    {
      v5 = type metadata accessor for FactItemHeroButtonView();
      v6 = 0;
      v7 = (v1 + *(v5 + 20));
      __asm { FMOV            V0.2D, #10.0 }

      v3 = vaddq_f64(v7[12], _Q0);
      v13 = vaddq_f64(v7[13], _Q0);
    }

    else
    {
      v6 = 1;
      v13 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v13 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
}

uint64_t sub_26A6B1CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9AE8);
  MEMORY[0x28223BE20](v28);
  v4 = &v26 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3700);
  MEMORY[0x28223BE20](v27);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9AD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9AC8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_26A84F3A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A6B11DC(v14);
  v15 = sub_26A84F388();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = sub_26A84FC08();
    v17 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 8);
    *v7 = v16;
    *(v7 + 1) = v17;
    v7[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3710);
    sub_26A6B2584(a1, &v7[*(v18 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4ABB90();
    memcpy(&v10[*(v8 + 36)], __src, 0x70uLL);
    v19 = &qword_2803A9AC8;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D5118();
    sub_26A4D51D0();
    sub_26A84FDF8();
    v20 = v10;
  }

  else
  {
    *v4 = sub_26A84FA78();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3708);
    sub_26A6B2104(a1, &v4[*(v21 + 44)]);
    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v24 = &v4[*(v28 + 36)];
    *v24 = KeyPath;
    v24[8] = 0;
    *(v24 + 2) = v23;
    *(v24 + 12) = 256;
    v19 = &qword_2803A9AE8;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D5118();
    sub_26A4D51D0();
    sub_26A84FDF8();
    v20 = v4;
  }

  return sub_26A6A1DE4(v20, v19);
}

uint64_t sub_26A6B2104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for RFButtonStyle();
  MEMORY[0x28223BE20](v42);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3718);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v7;
  v8 = type metadata accessor for FactItemHeroButtonView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3720);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v36 - v18);
  v20 = sub_26A8502C8();
  sub_26A6B2F38();
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_26A6B2F8C(v12, v22 + v21);
  v23 = *(v14 + 56);
  *(v19 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A8505C8();
  *v19 = sub_26A6B3528;
  v19[1] = v22;
  v19[2] = 2;
  v19[3] = v20;
  v19[4] = 0;
  v38 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 32);
  v45 = *(a1 + *(v9 + 52));

  static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFF8);
  sub_26A4EA164();
  sub_26A6B2FF4();
  v24 = v39;
  sub_26A850978();
  sub_26A522628(v4);

  v37 = v16;
  sub_26A4D7E54();
  v26 = v40;
  v25 = v41;
  v27 = *(v40 + 16);
  v28 = v24;
  v29 = v24;
  v30 = v43;
  v27(v41, v28, v43);
  v31 = v44;
  sub_26A4D7E54();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3738);
  v33 = v31 + *(v32 + 48);
  *v33 = v38;
  *(v33 + 8) = 0;
  v27((v31 + *(v32 + 64)), v25, v30);
  v34 = *(v26 + 8);
  v34(v29, v30);
  sub_26A6A1DE4(v19, &qword_2803B3720);
  v34(v25, v30);
  return sub_26A6A1DE4(v37, &qword_2803B3720);
}

uint64_t sub_26A6B2584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = type metadata accessor for RFButtonStyle();
  MEMORY[0x28223BE20](v37);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3718);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v7;
  v8 = type metadata accessor for FactItemHeroButtonView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3720);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v33 - v18);
  v20 = sub_26A8502C8();
  sub_26A6B2F38();
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_26A6B2F8C(v12, v22 + v21);
  v23 = *(v14 + 56);
  *(v19 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A8505C8();
  *v19 = sub_26A6B2FF0;
  v19[1] = v22;
  v19[2] = 2;
  v19[3] = v20;
  v19[4] = 0;
  v40 = *(a1 + *(v9 + 52));

  static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFF8);
  sub_26A4EA164();
  sub_26A6B2FF4();
  v24 = v34;
  sub_26A850978();
  sub_26A522628(v4);

  v33 = v16;
  sub_26A4D7E54();
  v26 = v35;
  v25 = v36;
  v27 = *(v35 + 16);
  v28 = v38;
  v27(v36, v24, v38);
  v29 = v39;
  sub_26A4D7E54();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3728);
  v27((v29 + *(v30 + 48)), v25, v28);
  v31 = *(v26 + 8);
  v31(v24, v28);
  sub_26A6A1DE4(v19, &qword_2803B3720);
  v31(v25, v28);
  return sub_26A6A1DE4(v33, &qword_2803B3720);
}

uint64_t sub_26A6B29C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FC08();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return sub_26A6B2A04(a1);
}

uint64_t sub_26A6B2A04(uint64_t a1)
{
  v2 = type metadata accessor for FactItemHeroButtonView();
  v3 = *(a1 + *(v2 + 40));
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v18, __src, sizeof(v18));
  v20 = 0;
  v19 = sub_26A80A810;
  v17 = v3;
  v4 = *(a1 + *(v2 + 36));
  v5 = qword_2803A9048;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v22);
  memcpy(v10, v22, sizeof(v10));
  v12 = 0;
  v11 = sub_26A80A810;
  v9 = v4;
  KeyPath = swift_getKeyPath();
  v14 = 0x3FE0000000000000;
  v15 = swift_getKeyPath();
  v16 = 1;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();

  sub_26A6A1DE4(&v9, &qword_2803B3730);
  sub_26A6A1DE4(&v17, &qword_2803AAFE0);
  sub_26A6A1DE4(&v7, &qword_2803B3730);
  return sub_26A6A1DE4(v8, &qword_2803AAFE0);
}

void sub_26A6B2C90()
{
  sub_26A662E30(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A662E30(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A662E30(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
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

unint64_t sub_26A6B2E54()
{
  result = qword_2803B36F0;
  if (!qword_2803B36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B36D8);
    sub_26A4DBCC8(&qword_2803B36F8, &qword_2803A9AB0);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B36F0);
  }

  return result;
}

uint64_t sub_26A6B2F38()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6B2F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemHeroButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6B2FF4()
{
  result = qword_2803AC1A0;
  if (!qword_2803AC1A0)
  {
    type metadata accessor for RFButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC1A0);
  }

  return result;
}

uint64_t sub_26A6B304C@<X0>(void *a1@<X8>)
{
  result = sub_26A84F7F8();
  *a1 = v3;
  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = type metadata accessor for FactItemHeroButtonView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v4 = v2 + *(v3 + 28);
  v5 = type metadata accessor for FactItemConstants();
  v6 = *(v5 + 52);
  v7 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + *(v5 + 56), v7);
  v10 = v2 + *(v3 + 32);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0) + 36);
  v9(v11 + *(v5 + 52), v7);
  v9(v11 + *(v5 + 56), v7);
  v12 = v2 + v1[5];
  sub_26A49035C(*v12, *(v12 + 8));
  sub_26A49035C(*(v12 + 16), *(v12 + 24));
  sub_26A49035C(*(v12 + 32), *(v12 + 40));
  sub_26A49035C(*(v12 + 48), *(v12 + 56));
  sub_26A49035C(*(v12 + 64), *(v12 + 72));
  sub_26A49035C(*(v12 + 80), *(v12 + 88));
  sub_26A49035C(*(v12 + 96), *(v12 + 104));
  sub_26A49035C(*(v12 + 112), *(v12 + 120));
  sub_26A49035C(*(v12 + 128), *(v12 + 136));
  sub_26A49035C(*(v12 + 144), *(v12 + 152));

  v13 = (v2 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_7;
  }

  v14 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v19 + 8))(v13);
  }

LABEL_7:
  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v17 + 8))(v2 + v16);
  }

  else
  {
  }

  sub_26A49035C(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_6_46(uint64_t a1)
{

  return sub_26A6A1DE4(a1, v1);
}

uint64_t CustomCanvasView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CustomCanvasView();
  v5 = (a2 + v4[5]);
  *v5 = 0xD000000000000023;
  v5[1] = 0x800000026A88B1A0;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = sub_26A84B158();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t type metadata accessor for CustomCanvasView()
{
  result = qword_28157F090;
  if (!qword_28157F090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26A6B366C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CustomCanvasView() + 24));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_26A6B37C8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for CustomCanvasView() + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t CustomCanvasView.body.getter()
{
  sub_26A6B39A0(v0, v2);
  KeyPath = swift_getKeyPath();
  v4 = 0;
  sub_26A84B118();
  sub_26A4DEDF8();

  return sub_26A4E2544(v2, &qword_2803AA910);
}

void *sub_26A6B39A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v57 = sub_26A850F28();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (a1 + *(type metadata accessor for CustomCanvasView() + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = sub_26A84B108();
  v9 = v8;
  v10 = sub_26A84B138();
  v12 = v11;
  v13 = sub_26A84B148();
  v15 = v14;
  v16 = sub_26A6B37C8();
  v17 = sub_26A5C9E3C(v7, v9, v10, v12, v13, v15, v16, v6, v5);
  sub_26A513D40(v13, v15);

  if (v17)
  {
    v73[0] = v17;
    sub_26A6B4788(v73);
  }

  else
  {
    if (!AFIsInternalInstall())
    {
      sub_26A6B46DC(v80);
      return memcpy(v58, v80, 0x131uLL);
    }

    v54 = sub_26A84FC08();
    v76 = 1;
    v80[0] = sub_26A84B108();
    v80[1] = v18;
    sub_26A53ACC8();
    v19 = sub_26A850898();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v80[0] = sub_26A84B138();
    v80[1] = v26;
    v27 = sub_26A850898();
    v29 = v28;
    v31 = v30;
    v32 = v23 & 1;
    v75 = v23 & 1;
    v78[128] = v23 & 1;
    v34 = v33 & 1;
    v78[120] = v33 & 1;
    v48 = v32;
    sub_26A4EF6C0(v19, v21, v32);

    sub_26A4EF6C0(v27, v29, v34);

    v49 = v29;
    v50 = v27;
    v35 = v29;
    v36 = v31;
    LOBYTE(v31) = v34;
    sub_26A4EC448(v27, v35, v34);

    v52 = v21;
    v53 = v19;
    sub_26A4EC448(v19, v21, v75);
    v51 = v25;

    LOBYTE(v25) = v76;
    v47 = sub_26A850248();
    v77 = 1;
    sub_26A6B366C();
    sub_26A851448();
    sub_26A84F628();
    memcpy(&v78[7], v79, 0x70uLL);
    sub_26A850F08();
    v37 = v55;
    v38 = v56;
    v39 = v57;
    (*(v55 + 104))(v56, *MEMORY[0x277CE0FD8], v57);
    v40 = sub_26A850F98();

    (*(v37 + 8))(v38, v39);
    sub_26A850D68();
    v41 = sub_26A850E68();

    KeyPath = swift_getKeyPath();
    v43 = sub_26A851448();
    v74[0] = 1;
    v59[0] = v40;
    v59[1] = 0;
    LOWORD(v60) = 1;
    *(&v60 + 1) = KeyPath;
    *&v61 = v41;
    *(&v61 + 1) = v43;
    v62 = v44;
    v72 = v44;
    v69 = v40;
    v70 = v60;
    v71 = v61;
    v63[0] = v40;
    v63[1] = 0;
    v64 = 1;
    v65 = KeyPath;
    v66 = v41;
    v67 = v43;
    v68 = v44;
    sub_26A6B470C(v59, v80);
    sub_26A4E2544(v63, &unk_2803B37F0);
    v73[0] = v54;
    v73[1] = 0;
    LOBYTE(v73[2]) = v25;
    v73[3] = v53;
    v73[4] = v52;
    LOBYTE(v73[5]) = v48;
    v73[6] = v51;
    v73[7] = v50;
    v73[8] = v49;
    LOBYTE(v73[9]) = v31;
    v73[10] = v36;
    LOBYTE(v73[11]) = v47;
    memset(&v73[12], 0, 32);
    LOBYTE(v73[16]) = 1;
    memcpy(&v73[16] + 1, v78, 0x77uLL);
    *&v73[33] = v70;
    *&v73[35] = v71;
    *&v73[31] = v69;
    v73[37] = v72;
    sub_26A6B477C(v73);
  }

  memcpy(v74, v73, 0x131uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B37B0);
  sub_26A6B44E0();
  sub_26A84FDF8();
  memcpy(v74, v80, 0x131uLL);
  nullsub_1(v74);
  memcpy(v80, v74, 0x131uLL);
  return memcpy(v58, v80, 0x131uLL);
}

uint64_t sub_26A6B3F8C(uint64_t a1)
{
  result = sub_26A6B3FE4(&qword_2803B3740, MEMORY[0x277D62A78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A6B3FE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26A6B4054()
{
  sub_26A84B158();
  if (v0 <= 0x3F)
  {
    sub_26A4EEA20();
    if (v1 <= 0x3F)
    {
      sub_26A6B40F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A6B40F8()
{
  if (!qword_2803B3748)
  {
    type metadata accessor for VRXMode();
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B3748);
    }
  }
}

unint64_t sub_26A6B4150()
{
  result = qword_2803B3750;
  if (!qword_2803B3750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3758);
    sub_26A6B4208();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3750);
  }

  return result;
}

unint64_t sub_26A6B4208()
{
  result = qword_2803B3760;
  if (!qword_2803B3760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3768);
    sub_26A6B4294();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3760);
  }

  return result;
}

unint64_t sub_26A6B4294()
{
  result = qword_2803B3770;
  if (!qword_2803B3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA910);
    sub_26A6B434C();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3770);
  }

  return result;
}

unint64_t sub_26A6B434C()
{
  result = qword_2803B3778;
  if (!qword_2803B3778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3780);
    sub_26A6B43D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3778);
  }

  return result;
}

unint64_t sub_26A6B43D0()
{
  result = qword_2803B3788;
  if (!qword_2803B3788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3790);
    sub_26A6B4454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3788);
  }

  return result;
}

unint64_t sub_26A6B4454()
{
  result = qword_2803B3798;
  if (!qword_2803B3798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37A0);
    sub_26A6B44E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3798);
  }

  return result;
}

unint64_t sub_26A6B44E0()
{
  result = qword_2803B37A8;
  if (!qword_2803B37A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37B0);
    sub_26A6B4598();
    sub_26A4DBCC8(&qword_2803B37E8, &unk_2803B37F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B37A8);
  }

  return result;
}

unint64_t sub_26A6B4598()
{
  result = qword_2803B37B8;
  if (!qword_2803B37B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37C0);
    sub_26A6B4624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B37B8);
  }

  return result;
}

unint64_t sub_26A6B4624()
{
  result = qword_2803B37C8;
  if (!qword_2803B37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37D0);
    sub_26A4DBCC8(&qword_2803B37D8, &qword_2803B37E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B37C8);
  }

  return result;
}

uint64_t sub_26A6B470C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B37F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StandardPlayerButtonView()
{
  result = qword_2803B3808;
  if (!qword_2803B3808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6B4804()
{
  sub_26A6B4BAC(319, &qword_2803AD350, MEMORY[0x277D62ED0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A6B4B48(319, &unk_2803B3820, &unk_2803B3630, &unk_26A860BE0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A6B4B48(319, &qword_2803B3830, &qword_2803ADFC0, &unk_26A875650, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A6B4AF8();
        if (v3 <= 0x3F)
        {
          sub_26A6B4B48(319, &qword_2803B3848, &unk_2803B3850, &unk_26A875658, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ActionHandler(319);
            if (v5 <= 0x3F)
            {
              sub_26A6B4BAC(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_26A6B4B48(319, &qword_2803B3860, &qword_2803B3868, &unk_26A875660, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_26A6B4B48(319, &unk_2803B3870, &qword_2803ABFB8, &unk_26A85A410, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_26A6B4B48(319, &qword_2803B3880, &qword_2803B3888, &unk_26A875670, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_26A6B4BAC(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A6B4AF8()
{
  if (!qword_2803B3840)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B3840);
    }
  }
}

void sub_26A6B4B48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26A6B4BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26A6B4C2C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38E0);
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3918) + 36);
  *v7 = KeyPath;
  *(v7 + 8) = a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3920);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_26A6B4CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for StandardPlayerButtonView();
  v6 = a3 + v5[10];
  sub_26A851048();
  v7 = __src[1];
  *v6 = __src[0];
  *(v6 + 8) = v7;
  v8 = (a3 + v5[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3850);
  sub_26A851048();
  v9 = __src[1];
  *v8 = __src[0];
  v8[1] = v9;
  ActionHandler.init()(a3 + v5[12]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v11);
  v12 = a3 + v5[15];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v14);
  v15 = v5[18];
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v16, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy((a3 + v15), __src, 0xBFuLL);
  OUTLINED_FUNCTION_2_70();
  sub_26A6BD4EC();
  v17 = sub_26A84BAB8();
  OUTLINED_FUNCTION_46();
  v19 = *(v18 + 32);
  v19(a3, a1, v17);
  __swift_storeEnumTagSinglePayload(a3, 0, 1, v17);
  v20 = v5[5];
  v19(a3 + v20, a2, v17);
  result = __swift_storeEnumTagSinglePayload(a3 + v20, 0, 1, v17);
  *(a3 + v5[6]) = 0;
  *(a3 + v5[7]) = 0;
  v22 = (a3 + v5[8]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a3 + v5[9]);
  *v23 = 0;
  v23[1] = 0;
  return result;
}

uint64_t sub_26A6B4FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_26A8526B8();
    MEMORY[0x26D664930](a1);
    sub_26A8526F8();
    OUTLINED_FUNCTION_17_23();
    do
    {
      OUTLINED_FUNCTION_14_30();
    }

    while (v6 && *(*(a2 + 48) + 8 * v5) != a1);
  }

  return v2;
}

uint64_t sub_26A6B5028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_26A8526A8();
    OUTLINED_FUNCTION_17_23();
    do
    {
      OUTLINED_FUNCTION_14_30();
    }

    while (v6 && *(*(a2 + 48) + 8 * v5) != a1);
  }

  return v2;
}

BOOL sub_26A6B5088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26A8526B8();
  sub_26A851848();
  v6 = sub_26A8526F8();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_26A852598();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_26A6B5174()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LoadableText.Source.URLImage(0);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v32 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v33 = &v30 - v16;
  MEMORY[0x28223BE20](v17);
  if (*(v1 + 16))
  {
    v37 = v18;
    sub_26A8526B8();
    sub_26A538DC4();
    v19 = sub_26A8526F8();
    v20 = -1 << *(v1 + 32);
    v21 = v19 & ~v20;
    v39 = v1 + 56;
    if ((*(v1 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v35 = ~v20;
      v36 = v1;
      v37 = *(v37 + 72);
      v38 = v3;
      v31 = v14;
      do
      {
        OUTLINED_FUNCTION_12_33();
        sub_26A6BD4EC();
        v22 = &v11[*(v8 + 48)];
        sub_26A6BD4EC();
        sub_26A6BD4EC();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_26A6BD4EC();
          v23 = v14[1];
          v46[0] = *v14;
          v46[1] = v23;
          v47[0] = v14[2];
          *(v47 + 9) = *(v14 + 41);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_26A6BD444();
            sub_26A5393B4(v46);
            goto LABEL_11;
          }

          v24 = *(v22 + 1);
          v44[0] = *v22;
          v44[1] = v24;
          v26 = *v22;
          v25 = *(v22 + 1);
          v45[0] = *(v22 + 2);
          *(v45 + 9) = *(v22 + 41);
          v27 = v14[1];
          v42[0] = *v14;
          v42[1] = v27;
          v43[0] = v14[2];
          *(v43 + 9) = *(v14 + 41);
          v40[0] = v26;
          v40[1] = v25;
          v41[0] = *(v22 + 2);
          *(v41 + 9) = *(v22 + 41);
          v28 = sub_26A538794(v42, v40);
          OUTLINED_FUNCTION_0_70();
          sub_26A6BD444();
          sub_26A5393B4(v44);
          sub_26A5393B4(v46);
          if (v28)
          {
            goto LABEL_16;
          }

          sub_26A6BD444();
        }

        else
        {
          sub_26A6BD4EC();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_26A6BD444();
            OUTLINED_FUNCTION_11_36();
            sub_26A6BD444();
LABEL_11:
            sub_26A4D6FD8();
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_8_49();
          sub_26A6BD498();
          sub_26A538054();
          v34 = v29;
          OUTLINED_FUNCTION_10_41();
          sub_26A6BD444();
          OUTLINED_FUNCTION_0_70();
          sub_26A6BD444();
          sub_26A6BD444();
          if (v34)
          {
LABEL_16:
            sub_26A6BD444();
            break;
          }

          sub_26A6BD444();
          v14 = v31;
        }

LABEL_14:
        v21 = (v21 + 1) & v35;
      }

      while (((*(v39 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
    }
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6B5624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for StandardPlayerButtonView();
  v8 = a5 + v7[10];
  sub_26A851048();
  v9 = __src[1];
  *v8 = __src[0];
  *(v8 + 8) = v9;
  v10 = (a5 + v7[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3850);
  sub_26A851048();
  v11 = __src[1];
  *v10 = __src[0];
  v10[1] = v11;
  ActionHandler.init()(a5 + v7[12]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v13);
  v14 = a5 + v7[15];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v16);
  v17 = v7[18];
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v18, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy((a5 + v17), __src, 0xBFuLL);
  OUTLINED_FUNCTION_2_70();
  sub_26A6BD4EC();
  v19 = sub_26A84BAB8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_81();
  result = __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  *(a5 + v7[6]) = 0;
  *(a5 + v7[7]) = 0;
  v27 = (a5 + v7[8]);
  *v27 = a1;
  v27[1] = a2;
  v28 = (a5 + v7[9]);
  *v28 = a3;
  v28[1] = a4;
  return result;
}

uint64_t sub_26A6B5898@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for StandardPlayerButtonView();
  v5 = a3 + v4[10];
  LOBYTE(v50) = 0;
  sub_26A851048();
  v6 = __src[1];
  *v5 = __src[0];
  *(v5 + 8) = v6;
  v7 = (a3 + v4[11]);
  v50 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3850);
  sub_26A851048();
  v8 = __src[1];
  *v7 = __src[0];
  v7[1] = v8;
  v9 = a3 + v4[12];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = swift_getKeyPath();
  *(v9 + 32) = 0;
  v10 = type metadata accessor for ActionHandler(0);
  v11 = v10[6];
  *(v9 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v12 = v9 + v10[7];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = v9 + v10[8];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v9 + v10[9];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v9 + v10[10];
  *v15 = swift_getKeyPath();
  *(v15 + 9) = 0;
  swift_unknownObjectWeakInit();
  v16 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v24);
  v25 = a3 + v4[15];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v27);
  v28 = (a3 + v4[18]);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v29, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v28, __src, 0xBFuLL);
  OUTLINED_FUNCTION_2_70();
  sub_26A6BD4EC();
  v30 = sub_26A84BAB8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  *(a3 + v4[6]) = a1;
  *(a3 + v4[7]) = a2;
  v37 = (a3 + v4[8]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (a3 + v4[9]);
  *v38 = 0;
  v38[1] = 0;
  v39 = a1;
  v40 = a2;
  result = sub_26A6BD28C(v39);
  if (v42)
  {
    v43 = result;
    v44 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8);
    sub_26A851058();
    sub_26A6B9514(&v50, v43, v44);

    OUTLINED_FUNCTION_21_22();
    result = sub_26A6BD28C(v40);
    if (v45)
    {
      v46 = result;
      v47 = v45;
      sub_26A851058();
      sub_26A6B9514(&v50, v46, v47);

      OUTLINED_FUNCTION_21_22();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A6B5D10()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for StandardPlayerButtonView() + 52);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A6B5E40()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for StandardPlayerButtonView() + 56));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v13;
  }

  return v9;
}

void sub_26A6B5F6C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = type metadata accessor for StandardPlayerButtonView();
  MEMORY[0x28223BE20](v2 - 8);
  sub_26A6B61F0(v1);
  v3 = sub_26A6B5E40();
  sub_26A6BD4EC();
  v4 = swift_allocObject();
  sub_26A6BD498();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3898);
  *(v1 + *(v5 + 52)) = v3;
  v6 = (v1 + *(v5 + 56));
  *v6 = sub_26A6B892C;
  v6[1] = v4;
  sub_26A6BD4EC();
  v7 = swift_allocObject();
  sub_26A6BD498();
  v8 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38A0) + 36));
  *v8 = sub_26A6B8ED0;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  sub_26A6BD4EC();
  v9 = swift_allocObject();
  sub_26A6BD498();
  type metadata accessor for Context();
  sub_26A6BD3D8();
  v10 = sub_26A84F678();
  v12 = v11;
  v13 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38B0) + 36));
  *v13 = v10;
  v13[1] = v12;
  v13[2] = sub_26A6B8F28;
  v13[3] = v9;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6B61F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_26A84F988();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26A84B058();
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v55 - v8;
  v67 = type metadata accessor for RFButtonStyle();
  MEMORY[0x28223BE20](v67);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v55 - v11;
  v12 = type metadata accessor for StandardPlayerButtonView();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFF8);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38E0);
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v55 = &v55 - v23;
  v68 = v12;
  v24 = &v2[*(v12 + 40)];
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v73) = v25;
  *(&v73 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851058();
  LOBYTE(v12) = v72;
  sub_26A6BD4EC();
  v61 = v5 + 104;
  if ((v12 & 1) == 0)
  {
    swift_allocObject();
    v33 = sub_26A6BD498();
    MEMORY[0x28223BE20](v33);
    *(&v55 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF010);
    sub_26A4D7DCC();
    sub_26A8510D8();
    v34 = sub_26A6B5D10();
    v35 = v64;
    VRXIdiom.idiom.getter(v34, v64);
    v37 = v62;
    v36 = v63;
    (*(v5 + 104))(v63, *MEMORY[0x277D629F0], v62);
    sub_26A6BD3D8();
    sub_26A851A48();
    sub_26A851A48();
    v38 = *(v5 + 8);
    v38(v36, v37);
    v38(v35, v37);
    v39 = v18;
    if (v73 == v72)
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      static PrimitiveButtonStyle<>.rfButton(margin:)(&v73, v56);
    }

    else
    {
      static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v56);
    }

    v40 = v55;
    sub_26A4D7DCC();
    sub_26A6BD3D8();
    v48 = v66;
    sub_26A850978();
    sub_26A6BD444();
    (*(v65 + 8))(v39, v48);
    v49 = &v2[*(v68 + 68)];
    v50 = *v49;
    v51 = v49[8];

    if ((v51 & 1) == 0)
    {
      sub_26A851EA8();
      v52 = sub_26A8501F8();
      sub_26A84EA78();

      v53 = v58;
      sub_26A84F978();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v59 + 8))(v53, v60);
      v50 = v72;
    }

    if (v50)
    {
      goto LABEL_10;
    }

LABEL_15:
    v47 = 0;
    goto LABEL_16;
  }

  v56 = v21;
  swift_allocObject();
  v27 = sub_26A6BD498();
  MEMORY[0x28223BE20](v27);
  *(&v55 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF010);
  sub_26A4D7DCC();
  v55 = v15;
  sub_26A8510D8();
  v28 = sub_26A6B5D10();
  v29 = v64;
  VRXIdiom.idiom.getter(v28, v64);
  v31 = v62;
  v30 = v63;
  (*(v5 + 104))(v63, *MEMORY[0x277D629F0], v62);
  sub_26A6BD3D8();
  sub_26A851A48();
  sub_26A851A48();
  v32 = *(v5 + 8);
  v32(v30, v31);
  v32(v29, v31);
  if (v73 == v72)
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    static PrimitiveButtonStyle<>.rfButton(margin:)(&v73, v57);
  }

  else
  {
    static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v57);
  }

  v40 = v56;
  sub_26A4D7DCC();
  sub_26A6BD3D8();
  v41 = v66;
  v42 = v55;
  sub_26A850978();
  sub_26A6BD444();
  (*(v65 + 8))(v42, v41);
  v43 = &v2[*(v68 + 68)];
  v44 = *v43;
  LOBYTE(v42) = v43[8];

  if ((v42 & 1) == 0)
  {
    sub_26A851EA8();
    v45 = sub_26A8501F8();
    sub_26A84EA78();

    v46 = v58;
    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v59 + 8))(v46, v60);
    v44 = v72;
  }

  if (!v44)
  {
    goto LABEL_15;
  }

LABEL_10:

  v47 = 1;
LABEL_16:
  sub_26A6B4C2C(v47, v71);
  return (*(v69 + 8))(v40, v70);
}

uint64_t sub_26A6B6D20(uint64_t result)
{
  if (!*(result + 24))
  {
    v2 = *(result + 8);
    v1 = *(result + 16);
    v3 = *result;
    type metadata accessor for StandardPlayerButtonView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8);
    sub_26A851058();
    LOBYTE(v1) = sub_26A6B5088(v2, v1, v4);

    if (v1)
    {
      return sub_26A6B6DD8(v3);
    }
  }

  return result;
}

uint64_t sub_26A6B6DD8(unint64_t a1)
{
  if (a1 > 1)
  {
    type metadata accessor for VRXPlayerState();
    result = sub_26A8525E8();
    __break(1u);
  }

  else
  {
    type metadata accessor for StandardPlayerButtonView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
    return sub_26A851068();
  }

  return result;
}

uint64_t sub_26A6B6EA0(uint64_t a1)
{
  v2 = sub_26A84B058();
  v51 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v45 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  sub_26A4D7E54();
  v22 = sub_26A84BAB8();
  v23 = a1;
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
    sub_26A4D6FD8();
    v24 = sub_26A84E278();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v24);
  }

  else
  {
    v25 = sub_26A6B5D10();
    VRXIdiom.idiom.getter(v25, v4);
    sub_26A84BAA8();
    (*(v51 + 8))(v4, v2);
    (*(*(v22 - 8) + 8))(v10, v22);
  }

  sub_26A4D7E54();
  v26 = sub_26A84E278();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v26);
  v50 = v2;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4D6FD8();
    v28 = a1;
  }

  else
  {
    v29 = sub_26A84E248();
    (*(*(v26 - 8) + 8))(v18, v26);
    v28 = v23;
    if (v29)
    {
      v49 = v21;
      result = sub_26A6BD2FC(v29);
      v47 = v31;
      v48 = result;
      if (!v31)
      {
        __break(1u);
        goto LABEL_20;
      }

      v32 = (v23 + *(type metadata accessor for StandardPlayerButtonView() + 44));
      v33 = v32[1];
      v56 = *v32;
      v34 = v56;
      v57 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8);
      v46 = v23;
      sub_26A851058();
      sub_26A6B9514(&v59, v48, v47);

      v54 = v34;
      v55 = v33;
      v53 = v58;
      v28 = v46;
      sub_26A851068();
    }
  }

  v35 = type metadata accessor for StandardPlayerButtonView();
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v7, 1, v22) == 1)
  {
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v26);
  }

  else
  {
    v36 = sub_26A6B5D10();
    VRXIdiom.idiom.getter(v36, v4);
    sub_26A84BAA8();
    (*(v51 + 8))(v4, v50);
    (*(*(v22 - 8) + 8))(v7, v22);
  }

  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v13, 1, v26) == 1)
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  v37 = sub_26A84E248();
  (*(*(v26 - 8) + 8))(v13, v26);
  if (!v37)
  {
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  v38 = v28;
  result = sub_26A6BD2FC(v37);
  if (v39)
  {
    v40 = result;
    v41 = v39;
    v42 = (v38 + *(v35 + 44));
    v43 = v42[1];
    v56 = *v42;
    v44 = v56;
    v57 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8);
    sub_26A851058();
    sub_26A6B9514(&v59, v40, v41);

    v54 = v44;
    v55 = v43;
    v53 = v58;
    sub_26A851068();

    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26A6B7568(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26A84CA58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84F988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v12 = sub_26A84CA68();
  v14 = v13;
  v38 = type metadata accessor for StandardPlayerButtonView();
  v39 = v2;
  v15 = v2 + *(v38 + 60);
  v17 = *v15;
  v16 = *(v15 + 8);
  LODWORD(v15) = *(v15 + 16);
  v41 = v7;
  if (v15 == 1)
  {

    if (v16)
    {
      goto LABEL_3;
    }
  }

  sub_26A851EA8();
  v21 = sub_26A8501F8();
  v37 = v8;
  v22 = v12;
  v23 = v5;
  v24 = v4;
  v25 = v21;
  sub_26A84EA78();

  v4 = v24;
  v5 = v23;
  v12 = v22;
  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A556DF4(v17, v16, 0);
  (*(v9 + 8))(v11, v37);
  v17 = v43;
  v16 = v44;
  if (!v44)
  {
  }

LABEL_3:
  if (v12 == v17 && v16 == v14)
  {

LABEL_12:
    v26 = v41;
    sub_26A84CA78();
    v27 = (*(v5 + 88))(v26, v4);
    if (v27 == *MEMORY[0x277D633E8])
    {
      v28 = (v39 + *(v38 + 40));
      v29 = *v28;
      v30 = *(v28 + 1);
      LOBYTE(v43) = v29;
      v44 = v30;
      HIBYTE(v42) = 1;
    }

    else
    {
      if (v27 != *MEMORY[0x277D633E0])
      {
        v34 = sub_26A851E98();
        LOBYTE(v35) = 2;
        sub_26A7C2B28(v34, 1, "SnippetUI/StandardPlayerButtonView.swift", 40, 2, 159, "updatePlayerButtonState(with:)", 30, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
        return (*(v5 + 8))(v26, v4);
      }

      v31 = (v39 + *(v38 + 40));
      v32 = *v31;
      v33 = *(v31 + 1);
      LOBYTE(v43) = v32;
      v44 = v33;
      HIBYTE(v42) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
    return sub_26A851068();
  }

  v19 = sub_26A852598();

  if (v19)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_26A6B7900()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = (&v39 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = sub_26A84BAB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_26A4D6FD8();
    v20 = type metadata accessor for StandardPlayerButtonView();
    v21 = *(v1 + *(v20 + 24));
    if (v21)
    {
      type metadata accessor for ActionHandler(0);
      sub_26A4D7E54();
      v22 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
      {
        return sub_26A4D6FD8();
      }

      v31 = v39;
      *v39 = v21;
      *(v31 + 8) = 0;
      v32 = type metadata accessor for ActionType();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
      BYTE6(v40) = 1;
      v33 = v21;
      sub_26A573B9C();

      sub_26A4D6FD8();
    }

    else
    {
      v27 = (v1 + *(v20 + 32));
      v28 = *v27;
      if (!*v27)
      {
        v34 = sub_26A851E98();
        LOBYTE(v37) = 2;
        return sub_26A7C2D04(v34, 1, "SnippetUI/StandardPlayerButtonView.swift", 40, 2, 126, "performPlayAction()", 19, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
      }

      v29 = v27[1];
      type metadata accessor for ActionHandler(0);
      sub_26A4D7E54();
      v30 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
      {
        return sub_26A4D6FD8();
      }

      v35 = v39;
      *v39 = v28;
      v35[1] = v29;
      *(v35 + 16) = 0;
      v36 = type metadata accessor for ActionType();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
      HIBYTE(v40) = 1;
      sub_26A4C2304(v28);

      sub_26A573B9C();
      sub_26A4C24DC(v28);
      sub_26A4D6FD8();
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    type metadata accessor for StandardPlayerButtonView();
    type metadata accessor for ActionHandler(0);
    sub_26A4D7E54();
    v23 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v23) == 1)
    {
      (*(v17 + 8))(v19, v16);
      return sub_26A4D6FD8();
    }

    v25 = v39;
    (*(v17 + 16))(v39, v19, v16);
    v26 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    BYTE5(v40) = 1;
    sub_26A573B9C();
    sub_26A4D6FD8();
    (*(v17 + 8))(v19, v16);
  }

  return sub_26A6BD444();
}

uint64_t sub_26A6B7F0C()
{
  v0 = sub_26A851778();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Resources();
  sub_26A851768();
  v4 = sub_26A588140(2036427888, 0xE400000000000000, v3);
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = v6;
  v9 = 0x6C69662E79616C70;
  v10 = 0xE90000000000006CLL;
  sub_26A850FC8();
}

uint64_t sub_26A6B8090(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for StandardPlayerButtonView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851058();
  sub_26A851068();
}

uint64_t sub_26A6B8144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v1 - 8);
  v40 = (&v38 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_26A84BAB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StandardPlayerButtonView();
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_26A4D6FD8();
    v19 = *(v0 + *(v18 + 28));
    if (v19)
    {
      type metadata accessor for ActionHandler(0);
      sub_26A4D7E54();
      v20 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
      {
        return sub_26A4D6FD8();
      }

      v30 = v40;
      *v40 = v19;
      *(v30 + 8) = 0;
      v31 = type metadata accessor for ActionType();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
      BYTE6(v41) = 1;
      v32 = v19;
      sub_26A573B9C();

      sub_26A4D6FD8();
    }

    else
    {
      v25 = (v0 + *(v18 + 36));
      v26 = *v25;
      if (!*v25)
      {
        v33 = sub_26A851E98();
        LOBYTE(v36) = 2;
        return sub_26A7C2EE0(v33, 1, "SnippetUI/StandardPlayerButtonView.swift", 40, 2, 138, "performPauseAction()", 20, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      }

      v27 = v25[1];
      type metadata accessor for ActionHandler(0);
      v28 = v39;
      sub_26A4D7E54();
      v29 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
      {
        return sub_26A4D6FD8();
      }

      v34 = v40;
      *v40 = v26;
      v34[1] = v27;
      *(v34 + 16) = 0;
      v35 = type metadata accessor for ActionType();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
      HIBYTE(v41) = 1;
      sub_26A4C2304(v26);

      sub_26A573B9C();
      sub_26A4C24DC(v26);
      sub_26A4D6FD8();
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    type metadata accessor for ActionHandler(0);
    sub_26A4D7E54();
    v21 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v21) == 1)
    {
      (*(v15 + 8))(v17, v14);
      return sub_26A4D6FD8();
    }

    v23 = v40;
    (*(v15 + 16))(v40, v17, v14);
    v24 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
    BYTE5(v41) = 1;
    sub_26A573B9C();
    sub_26A4D6FD8();
    (*(v15 + 8))(v17, v14);
  }

  return sub_26A6BD444();
}

uint64_t sub_26A6B8758()
{
  v0 = sub_26A851778();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Resources();
  sub_26A851768();
  v4 = sub_26A588140(0x6573756170, 0xE500000000000000, v3);
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = v6;
  v9 = 0x69662E6573756170;
  v10 = 0xEA00000000006C6CLL;
  sub_26A850FC8();
}

uint64_t sub_26A6B88E0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_26A850F08();
  *a1 = result;
  return result;
}

uint64_t sub_26A6B892C(uint64_t a1)
{
  v2 = type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_11_3();

  return sub_26A6B6D20(a1);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for StandardPlayerButtonView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_26A84BAB8();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  if (!__swift_getEnumTagSinglePayload(v3 + v6, 1, v4))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v7 + 8))(v3 + v6, v4);
  }

  if (*(v3 + v1[8]))
  {
  }

  if (*(v3 + v1[9]))
  {
  }

  v8 = v3 + v1[12];
  sub_26A556DF4(*v8, *(v8 + 8), *(v8 + 16));
  sub_26A49035C(*(v8 + 24), *(v8 + 32));
  v9 = type metadata accessor for ActionHandler(0);
  v10 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v12 + 8))(v8 + v10, v11);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v8 + v9[7]), *(v8 + v9[7] + 8), *(v8 + v9[7] + 16));
  sub_26A49035C(*(v8 + v9[8]), *(v8 + v9[8] + 8));
  sub_26A49035C(*(v8 + v9[9]), *(v8 + v9[9] + 8));
  v13 = v8 + v9[10];
  if (*(v13 + 9))
  {
    if ((*(v13 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v8 + v9[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v13 + 16);
  v14 = v8 + v9[11];
  v15 = type metadata accessor for StandardActionHandler(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    MEMORY[0x26D665710](v14);
    v16 = *(v15 + 24);
    v17 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = OUTLINED_FUNCTION_20_22(v1[13]);
  sub_26A49035C(v19, v20);

  sub_26A556DF4(*(v3 + v1[15]), *(v3 + v1[15] + 8), *(v3 + v1[15] + 16));
  OUTLINED_FUNCTION_20_22(v1[16]);
  j__swift_release();
  OUTLINED_FUNCTION_20_22(v1[17]);
  j__swift_release();
  v21 = v3 + v1[18];
  sub_26A49035C(*v21, *(v21 + 8));
  sub_26A49035C(*(v21 + 16), *(v21 + 24));
  sub_26A49035C(*(v21 + 32), *(v21 + 40));
  sub_26A49035C(*(v21 + 48), *(v21 + 56));
  sub_26A49035C(*(v21 + 64), *(v21 + 72));
  sub_26A49035C(*(v21 + 80), *(v21 + 88));
  sub_26A49035C(*(v21 + 96), *(v21 + 104));
  sub_26A49035C(*(v21 + 112), *(v21 + 120));
  sub_26A49035C(*(v21 + 128), *(v21 + 136));
  sub_26A49035C(*(v21 + 144), *(v21 + 152));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v23 = v21 + *(v22 + 28);
  v24 = type metadata accessor for SummaryItemConstants();
  v25 = *(v24 + 36);
  v26 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v28 = *(v27 + 8);
  v28(v23 + v25, v26);
  v28(v23 + *(v24 + 40), v26);
  v29 = v21 + *(v22 + 32);

  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890) + 36);
  v28(v30 + *(v24 + 36), v26);
  v28(v30 + *(v24 + 40), v26);

  return swift_deallocObject();
}

uint64_t sub_26A6B8ED0()
{
  v1 = type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_79(v1);
  OUTLINED_FUNCTION_11_3();

  return sub_26A6B6EA0(v0 + v2);
}

uint64_t sub_26A6B8F28(uint64_t a1)
{
  v2 = type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_11_3();
  return sub_26A6B7568(a1);
}

uint64_t sub_26A6B8F84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26A875620;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26A6B8FE8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v8 = *v3;
  sub_26A8526B8();
  sub_26A6B036C(v31, a2, a3);
  sub_26A8526F8();
  OUTLINED_FUNCTION_23_17();
  if (((*(v8 + 56 + v10) >> v4) & 1) == 0)
  {
LABEL_56:
    v23 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *v23;
    sub_26A4E324C(a2, a3);
    sub_26A6BAE34(a2, a3, v4, isUniquelyReferenced_nonNull_native);
    *v23 = v31[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }

  v11 = ~v9;
  while (2)
  {
    v12 = *(v8 + 48) + 16 * v4;
    v13 = *v12;
    switch(*(v12 + 8))
    {
      case 1:
        if (a3 != 1)
        {
          goto LABEL_33;
        }

        v29 = v5;
        v15 = 0xE900000000000074;
        v16 = 0x6867696C746F7053;
        v17 = 0x6867696C746F7053;
        v18 = 0xE900000000000074;
        switch(*v12)
        {
          case 1u:
            v18 = 0xE400000000000000;
            v17 = 1769105747;
            break;
          case 2u:
            v17 = 0xD000000000000010;
            v18 = 0x800000026A88A230;
            break;
          case 3u:
            v17 = 0x6153656C69626F4DLL;
            v18 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        switch(a2)
        {
          case 1:
            v15 = 0xE400000000000000;
            v16 = 1769105747;
            break;
          case 2:
            v16 = 0xD000000000000010;
            v15 = 0x800000026A88A230;
            break;
          case 3:
            v16 = 0x6153656C69626F4DLL;
            v15 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        if (v17 == v16 && v18 == v15)
        {
        }

        else
        {
          v22 = sub_26A852598();

          v5 = v29;
          if ((v22 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_58;
      case 2:
        if (a3 != 2 || v13 != a2)
        {
          goto LABEL_33;
        }

        goto LABEL_58;
      case 3:
        if (a3 != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 4:
        if (a3 != 4)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 5:
        if (a3 != 5)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 6:
        if (a3 != 6)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 7:
        if (a3 == 7 && ((v13 ^ a2) & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_33;
      case 8:
        if (a3 != 8)
        {
          goto LABEL_33;
        }

        v19 = v13 << 56;
        if (!a2)
        {
          if (!v19)
          {
            goto LABEL_58;
          }

LABEL_33:
          v4 = (v4 + 1) & v11;
          if (((*(v8 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            goto LABEL_56;
          }

          continue;
        }

        if (a2 == 1)
        {
          v20 = 0x100000000000000;
        }

        else
        {
          v20 = 0x200000000000000;
        }

        if (v19 != v20)
        {
          goto LABEL_33;
        }

LABEL_58:
        v26 = *(v8 + 48) + 16 * v4;
        v27 = *v26;
        *a1 = *v26;
        v28 = *(v26 + 8);
        *(a1 + 8) = v28;
        sub_26A4E324C(v27, v28);
        return 0;
      case 9:
        if (a3 != 9)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 0xA:
        if (a3 == 10)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      case 0xB:
        if (a3 != 11)
        {
          goto LABEL_33;
        }

LABEL_32:
        if ((v13 ^ a2))
        {
          goto LABEL_33;
        }

        goto LABEL_58;
      default:
        if (a3 || (sub_26A6B067C(v13, a2) & 1) == 0)
        {
          goto LABEL_33;
        }

        sub_26A587EE4(a2, 0);
        goto LABEL_58;
    }
  }
}

BOOL sub_26A6B93B4(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  sub_26A8526A8();
  OUTLINED_FUNCTION_26_12();
  while (1)
  {
    OUTLINED_FUNCTION_22_25();
    v10 = v9 & v8;
    if ((v9 & v8) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v11 = OUTLINED_FUNCTION_16_21();
  sub_26A6BB228(v11, v12, v13);
  *v4 = v15;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_26A6B9454(void *a1, uint64_t a2)
{
  v6 = *v2;
  sub_26A8526B8();
  MEMORY[0x26D664930](a2);
  sub_26A8526F8();
  OUTLINED_FUNCTION_26_12();
  while (1)
  {
    OUTLINED_FUNCTION_22_25();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v10 = OUTLINED_FUNCTION_16_21();
  sub_26A6BB32C(v10, v11, v12);
  *v2 = v14;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_26A6B9514(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26A8526B8();
  sub_26A851848();
  v8 = sub_26A8526F8();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_26A852598() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_26A6BB464(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_26A6B9660(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26A852178();

    if (v9)
    {

      sub_26A587EF4();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_26A852168();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_26A6B9D9C(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_26A6BA888();
        }

        v17 = v8;
        sub_26A6BADB0(v17, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    sub_26A587EF4();
    v11 = sub_26A851FE8();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_26A6BB5CC(v17, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_26A851FF8();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

void sub_26A6B9864()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v44 = v4;
  v5 = type metadata accessor for LoadableText.Source.URLImage(0);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v47 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v52 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = &v41 - v21;
  MEMORY[0x28223BE20](v22);
  v42 = &v41 - v23;
  v43 = v0;
  v24 = *v0;
  sub_26A8526B8();
  v53 = v3;
  sub_26A538DC4();
  sub_26A8526F8();
  OUTLINED_FUNCTION_23_17();
  v51 = v26;
  if ((*(v26 + v27) >> v1))
  {
    v49 = ~v25;
    v50 = *(v14 + 72);
    v45 = v17;
    v46 = v24;
    do
    {
      OUTLINED_FUNCTION_12_33();
      v48 = v28;
      sub_26A6BD4EC();
      v29 = &v12[*(v9 + 48)];
      sub_26A6BD4EC();
      sub_26A6BD4EC();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A6BD4EC();
        v30 = v17[1];
        v61[0] = *v17;
        v61[1] = v30;
        v62[0] = v17[2];
        *(v62 + 9) = *(v17 + 41);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_26A6BD444();
          sub_26A5393B4(v61);
          goto LABEL_10;
        }

        v31 = *(v29 + 1);
        v59[0] = *v29;
        v59[1] = v31;
        v33 = *v29;
        v32 = *(v29 + 1);
        v60[0] = *(v29 + 2);
        *(v60 + 9) = *(v29 + 41);
        v34 = v17[1];
        v57[0] = *v17;
        v57[1] = v34;
        v58[0] = v17[2];
        *(v58 + 9) = *(v17 + 41);
        v55[0] = v33;
        v55[1] = v32;
        v56[0] = *(v29 + 2);
        *(v56 + 9) = *(v29 + 41);
        v35 = sub_26A538794(v57, v55);
        OUTLINED_FUNCTION_0_70();
        sub_26A6BD444();
        sub_26A5393B4(v59);
        sub_26A5393B4(v61);
        if (v35)
        {
          goto LABEL_15;
        }

        sub_26A6BD444();
      }

      else
      {
        sub_26A6BD4EC();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_26A6BD444();
          OUTLINED_FUNCTION_11_36();
          sub_26A6BD444();
LABEL_10:
          sub_26A4D6FD8();
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_8_49();
        sub_26A6BD498();
        sub_26A538054();
        v37 = v36;
        OUTLINED_FUNCTION_10_41();
        sub_26A6BD444();
        OUTLINED_FUNCTION_0_70();
        sub_26A6BD444();
        sub_26A6BD444();
        if (v37)
        {
LABEL_15:
          sub_26A6BD444();
          sub_26A6BD444();
          OUTLINED_FUNCTION_1_70();
          sub_26A6BD4EC();
          goto LABEL_16;
        }

        sub_26A6BD444();
        v17 = v45;
      }

LABEL_13:
      v1 = (v1 + 1) & v49;
    }

    while (((*(v51 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0);
  }

  v38 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_70();
  v40 = v42;
  sub_26A6BD4EC();
  *&v61[0] = *v38;
  sub_26A6BB714(v40, v1, isUniquelyReferenced_nonNull_native);
  *v38 = *&v61[0];
  OUTLINED_FUNCTION_9_42();
  sub_26A6BD498();
LABEL_16:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6B9D9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950);
    v2 = sub_26A8521F8();
    v14 = v2;
    sub_26A852158();
    while (1)
    {
      if (!sub_26A852188())
      {

        return v2;
      }

      sub_26A587EF4();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_26A6BA888();
      }

      v2 = v14;
      result = sub_26A851FE8();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
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

uint64_t sub_26A6B9F58()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1090);
  result = sub_26A8521E8();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_26A6B8F84(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 16 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_26A8526B8();
    sub_26A6B036C(v28, v16, v17);
    result = sub_26A8526F8();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v4 + 48) + 16 * v21;
    *v26 = v16;
    *(v26 + 8) = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA1BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3940);
  result = sub_26A8521E8();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_26A6B8F84(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_26A8526A8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA3E0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1098);
  result = sub_26A8521E8();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_26A6B8F84(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_26A8526B8();
    MEMORY[0x26D664930](v15);
    result = sub_26A8526F8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA62C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38D0);
  result = sub_26A8521E8();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_26A6B8F84(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_26A8526B8();
    sub_26A851848();
    result = sub_26A8526F8();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA888()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950);
  result = sub_26A8521E8();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_26A6B8F84(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_26A851FE8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BAAAC()
{
  v1 = v0;
  v2 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3928);
  result = sub_26A8521E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v1 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v3 + 32);
    if (v23 >= 64)
    {
      sub_26A6B8F84(0, (v23 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v23;
    }

    v1 = v0;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v10 &= v10 - 1;
LABEL_12:
    sub_26A6BD498();
    sub_26A8526B8();
    sub_26A538DC4();
    result = sub_26A8526F8();
    v15 = -1 << *(v5 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    result = sub_26A6BD498();
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *(v12 + 8 * v17);
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_26A6BADB0(uint64_t a1, uint64_t a2)
{
  sub_26A851FE8();
  result = sub_26A852148();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26A6BAE34(uint64_t result, char a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26A6B9F58();
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_26A6BBCD4();
        goto LABEL_63;
      }

      sub_26A6BC52C();
    }

    v11 = *v4;
    sub_26A8526B8();
    sub_26A6B036C(v29, v8, a2);
    result = sub_26A8526F8();
    v12 = -1 << *(v11 + 32);
    a3 = result & ~v12;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = *(v11 + 48) + 16 * a3;
        result = *v14;
        switch(*(v14 + 8))
        {
          case 1:
            if (a2 != 1)
            {
              goto LABEL_40;
            }

            v16 = 0xE900000000000074;
            v17 = 0x6867696C746F7053;
            switch(*v14)
            {
              case 1u:
                v16 = 0xE400000000000000;
                v17 = 1769105747;
                break;
              case 2u:
                v17 = 0xD000000000000010;
                v16 = 0x800000026A88A230;
                break;
              case 3u:
                v17 = 0x6153656C69626F4DLL;
                v16 = 0xEC00000069726166;
                break;
              default:
                break;
            }

            v20 = 0x6867696C746F7053;
            v21 = 0xE900000000000074;
            switch(v8)
            {
              case 1:
                v21 = 0xE400000000000000;
                v20 = 1769105747;
                break;
              case 2:
                v20 = 0xD000000000000010;
                v21 = 0x800000026A88A230;
                break;
              case 3:
                v20 = 0x6153656C69626F4DLL;
                v21 = 0xEC00000069726166;
                break;
              default:
                break;
            }

            if (v17 == v20 && v16 == v21)
            {
              goto LABEL_66;
            }

            v23 = sub_26A852598();

            if (v23)
            {
              goto LABEL_67;
            }

            goto LABEL_40;
          case 2:
            if (a2 == 2 && result == v8)
            {
              goto LABEL_67;
            }

            goto LABEL_40;
          case 3:
            if (a2 != 3)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 4:
            if (a2 != 4)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 5:
            if (a2 != 5)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 6:
            if (a2 != 6)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 7:
            if (a2 == 7 && ((result ^ v8) & 1) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_40;
          case 8:
            if (a2 != 8)
            {
              goto LABEL_40;
            }

            v18 = result << 56;
            if (v8)
            {
              if (v8 == 1)
              {
                v19 = 0x100000000000000;
              }

              else
              {
                v19 = 0x200000000000000;
              }

              if (v18 == v19)
              {
                goto LABEL_67;
              }
            }

            else if (!v18)
            {
              goto LABEL_67;
            }

LABEL_40:
            a3 = (a3 + 1) & v13;
            if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              goto LABEL_63;
            }

            break;
          case 9:
            if (a2 != 9)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 0xA:
            if (a2 == 10)
            {
              goto LABEL_39;
            }

            goto LABEL_40;
          case 0xB:
            if (a2 != 11)
            {
              goto LABEL_40;
            }

LABEL_39:
            if ((result ^ v8))
            {
              goto LABEL_40;
            }

            goto LABEL_67;
          default:
            if (!a2)
            {
              result = sub_26A6B067C(result, v8);
              if (result)
              {
                goto LABEL_67;
              }
            }

            goto LABEL_40;
        }
      }
    }
  }

LABEL_63:
  v24 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v25 = *(v24 + 48) + 16 * a3;
  *v25 = v8;
  *(v25 + 8) = a2;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_66:

LABEL_67:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_26A6BB228(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BA1BC();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26A6BC76C();
LABEL_10:
      v12 = *v3;
      result = sub_26A8526A8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26A6BBE34();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_26A6BB32C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BA3E0();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26A6BC958();
LABEL_10:
      v12 = *v3;
      sub_26A8526B8();
      MEMORY[0x26D664930](v5);
      result = sub_26A8526F8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for VRXIdiom();
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26A6BBF74();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_26A6BB464(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26A6BA62C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26A6BCB74();
LABEL_10:
      v15 = *v4;
      sub_26A8526B8();
      sub_26A851848();
      result = sub_26A8526F8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_26A852598() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26A6BC0B4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_26A6BB5CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BA888();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26A6BCDA8();
LABEL_10:
      v12 = *v3;
      result = sub_26A851FE8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_26A587EF4();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = sub_26A851FF8();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26A6BC20C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_26A6BB714(uint64_t a1, unint64_t a2, char a3)
{
  v45 = a1;
  v6 = type metadata accessor for LoadableText.Source.URLImage(0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for LoadableText.Source(0);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v36 = v3;
  if (v17 <= v16 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BAAAC();
    }

    else
    {
      if (v17 > v16)
      {
        sub_26A6BC35C();
        goto LABEL_21;
      }

      sub_26A6BCFB8();
    }

    v18 = *v3;
    sub_26A8526B8();
    sub_26A538DC4();
    v19 = sub_26A8526F8();
    v43 = v18 + 56;
    v44 = v18;
    v20 = -1 << *(v18 + 32);
    a2 = v19 & ~v20;
    if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v42 = ~v20;
      v41 = *(v39 + 72);
      v37 = v10;
      v38 = v11;
      do
      {
        sub_26A6BD4EC();
        v21 = &v10[*(v8 + 48)];
        sub_26A6BD4EC();
        sub_26A6BD4EC();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_26A6BD4EC();
          v22 = v13[1];
          v52[0] = *v13;
          v52[1] = v22;
          v53[0] = v13[2];
          *(v53 + 9) = *(v13 + 41);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v23 = *(v21 + 1);
            v50[0] = *v21;
            v50[1] = v23;
            v25 = *v21;
            v24 = *(v21 + 1);
            v51[0] = *(v21 + 2);
            *(v51 + 9) = *(v21 + 41);
            v26 = v13[1];
            v48[0] = *v13;
            v48[1] = v26;
            v49[0] = v13[2];
            *(v49 + 9) = *(v13 + 41);
            v46[0] = v25;
            v46[1] = v24;
            v47[0] = *(v21 + 2);
            *(v47 + 9) = *(v21 + 41);
            v27 = sub_26A538794(v48, v46);
            sub_26A6BD444();
            sub_26A5393B4(v50);
            sub_26A5393B4(v52);
            if (v27)
            {
              goto LABEL_24;
            }

            sub_26A6BD444();
            goto LABEL_20;
          }

          sub_26A6BD444();
          sub_26A5393B4(v52);
        }

        else
        {
          sub_26A6BD4EC();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_26A6BD498();
            sub_26A538054();
            v29 = v28;
            sub_26A6BD444();
            sub_26A6BD444();
            sub_26A6BD444();
            if (v29)
            {
              goto LABEL_24;
            }

            v30 = v37;
            sub_26A6BD444();
            v10 = v30;
            goto LABEL_20;
          }

          sub_26A6BD444();
          sub_26A6BD444();
        }

        sub_26A4D6FD8();
LABEL_20:
        a2 = (a2 + 1) & v42;
      }

      while (((*(v43 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v31 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_26A6BD498();
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_24:
    sub_26A6BD444();
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

void *sub_26A6BBCD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1090);
  v2 = *v0;
  v3 = sub_26A8521D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        result = sub_26A4E324C(v19, v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26A6BBE34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3940);
  v2 = *v0;
  v3 = sub_26A8521D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26A6BBF74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1098);
  v2 = *v0;
  v3 = sub_26A8521D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26A6BC0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38D0);
  v2 = *v0;
  v3 = sub_26A8521D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_26A6BC20C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950);
  v2 = *v0;
  v3 = sub_26A8521D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_26A6BC35C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3928);
  v3 = *v0;
  v4 = sub_26A8521D8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 56 + 8 * v7)
    {
      memmove(v6, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        OUTLINED_FUNCTION_1_70();
        sub_26A6BD4EC();
        OUTLINED_FUNCTION_9_42();
        sub_26A6BD498();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A6BC52C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1090);
  result = sub_26A8521E8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(v2 + 48) + 16 * (v11 | (v5 << 6));
        v15 = *v14;
        v16 = *(v14 + 8);
        sub_26A8526B8();
        sub_26A4E324C(v15, v16);
        sub_26A6B036C(v26, v15, v16);
        result = sub_26A8526F8();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = *(v4 + 48) + 16 * v20;
        *v25 = v15;
        *(v25 + 8) = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_26A6BC76C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3940);
  result = sub_26A8521E8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_26A8526A8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26A6BC958()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1098);
  result = sub_26A8521E8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_26A8526B8();
        MEMORY[0x26D664930](v14);
        result = sub_26A8526F8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_26A6BCB74()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38D0);
  result = sub_26A8521E8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_26A8526B8();

        sub_26A851848();
        result = sub_26A8526F8();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}