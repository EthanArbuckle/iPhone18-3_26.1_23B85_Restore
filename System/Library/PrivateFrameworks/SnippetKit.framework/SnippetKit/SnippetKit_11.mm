uint64_t _ProtoControl_Slider.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_6();
        sub_26A1CFC3C();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A1CFCF0();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A1CFDA4();
        break;
      case 4:
        sub_26A424924();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1CFC3C()
{
  v0 = *(type metadata accessor for _ProtoControl_Slider(0) + 24);
  type metadata accessor for _ProtoSlider(0);
  sub_26A1D15D0(&qword_28036D918, type metadata accessor for _ProtoSlider);
  return sub_26A424944();
}

uint64_t sub_26A1CFCF0()
{
  v0 = *(type metadata accessor for _ProtoControl_Slider(0) + 28);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t sub_26A1CFDA4()
{
  v0 = *(type metadata accessor for _ProtoControl_Slider(0) + 32);
  type metadata accessor for _ProtoActionProperty();
  sub_26A1D15D0(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t _ProtoControl_Slider.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A1CFF4C(v3, a1, a2, a3);
  if (!v4)
  {
    v8 = OUTLINED_FUNCTION_124();
    sub_26A1D012C(v8, v9, a2, a3);
    v10 = OUTLINED_FUNCTION_124();
    sub_26A1D030C(v10, v11, a2, a3);
    v12 = *v3;
    v13 = v3[1];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_26A424A64();
    }

    v15 = v3 + *(type metadata accessor for _ProtoControl_Slider(0) + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1CFF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D078, &qword_26A42C830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoSlider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoControl_Slider(0) + 24);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036D078, &qword_26A42C830);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036D918, type metadata accessor for _ProtoSlider);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoControl_Slider(0) + 28);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoControl_Slider(0) + 32);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

void static _ProtoControl_Slider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v100 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v100);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v96 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v97 = v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v99);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v101 = v16;
  v17 = OUTLINED_FUNCTION_45();
  v104 = type metadata accessor for _ProtoTextProperty(v17);
  v18 = OUTLINED_FUNCTION_12(v104);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v98 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_42();
  v102 = v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12(v103);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_42();
  v105 = v30;
  v31 = OUTLINED_FUNCTION_45();
  v32 = type metadata accessor for _ProtoSlider(v31);
  v33 = OUTLINED_FUNCTION_12(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D078, &qword_26A42C830);
  OUTLINED_FUNCTION_41(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v41);
  v43 = &v95 - v42;
  v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F350, &qword_26A42C838) - 8);
  v45 = *(*v44 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v46);
  v48 = &v95 - v47;
  v106 = type metadata accessor for _ProtoControl_Slider(0);
  v107 = v3;
  v49 = *(v106 + 24);
  v50 = v44[14];
  sub_26A10FD9C();
  v108 = v1;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v48);
  if (v51)
  {
    OUTLINED_FUNCTION_9(&v48[v50]);
    if (v51)
    {
      sub_26A0E48F0(v48, &qword_28036D078, &qword_26A42C830);
      goto LABEL_13;
    }

LABEL_9:
    v52 = &qword_28036F350;
    v53 = &qword_26A42C838;
LABEL_35:
    v84 = v48;
LABEL_36:
    sub_26A0E48F0(v84, v52, v53);
    goto LABEL_37;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&v48[v50]);
  if (v51)
  {
    sub_26A1CD590();
    goto LABEL_9;
  }

  sub_26A1CA878();
  v54 = *(v32 + 20);
  v55 = *&v43[v54];
  v56 = *&v37[v54];
  if (v55 != v56)
  {
    v57 = *&v43[v54];

    v58 = sub_26A15C47C(v55, v56);

    if (!v58)
    {
      sub_26A1CD590();
      sub_26A1CD590();
      v52 = &qword_28036D078;
      v53 = &qword_26A42C830;
      goto LABEL_35;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_12();
  sub_26A1D15D0(v59, v60);
  v61 = sub_26A424B64();
  sub_26A1CD590();
  OUTLINED_FUNCTION_94_1();
  sub_26A1CD590();
  sub_26A0E48F0(v48, &qword_28036D078, &qword_26A42C830);
  if ((v61 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_13:
  v63 = v106;
  v62 = v107;
  v64 = *(v106 + 28);
  v65 = *(v103 + 48);
  v48 = v105;
  OUTLINED_FUNCTION_78_3();
  v66 = v108;
  OUTLINED_FUNCTION_78_3();
  v67 = OUTLINED_FUNCTION_107();
  v68 = v104;
  OUTLINED_FUNCTION_37(v67, v69, v104);
  if (v51)
  {
    OUTLINED_FUNCTION_37(&v48[v65], 1, v68);
    if (v51)
    {
      sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v70 = v102;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v48[v65], 1, v68);
  if (v71)
  {
    sub_26A1CD590();
LABEL_21:
    v52 = &qword_28036C7D0;
    v53 = &qword_26A426DE0;
    goto LABEL_35;
  }

  v72 = v98;
  sub_26A1CA878();
  static _ProtoTextProperty.== infix(_:_:)(v70, v72);
  OUTLINED_FUNCTION_36_6();
  sub_26A1CD590();
  OUTLINED_FUNCTION_94_1();
  sub_26A1CD590();
  sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_23:
  v73 = *(v63 + 32);
  v74 = *(v99 + 48);
  v75 = v101;
  OUTLINED_FUNCTION_78_3();
  v76 = v75;
  OUTLINED_FUNCTION_78_3();
  v77 = OUTLINED_FUNCTION_107();
  v78 = v100;
  OUTLINED_FUNCTION_37(v77, v79, v100);
  if (!v51)
  {
    v85 = v97;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v76 + v74, 1, v78);
    if (!v86)
    {
      v87 = v96;
      sub_26A1CA878();
      v88 = *v85;
      v89 = *v87;
      sub_26A0E36D8();
      if (v90)
      {
        v91 = v85[1] == v87[1] && v85[2] == v87[2];
        if (v91 || (sub_26A425354() & 1) != 0)
        {
          v92 = *(v78 + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_2_12();
          sub_26A1D15D0(v93, v94);
          LOBYTE(v92) = sub_26A424B64();
          sub_26A1CD590();
          sub_26A1CD590();
          sub_26A0E48F0(v76, &off_28036C7C0, &off_26A427400);
          if ((v92 & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_28;
        }
      }

      sub_26A1CD590();
      sub_26A1CD590();
      v52 = &off_28036C7C0;
      v53 = &off_26A427400;
      goto LABEL_51;
    }

    sub_26A1CD590();
LABEL_41:
    v52 = &qword_28036C7C8;
    v53 = &qword_26A425C00;
LABEL_51:
    v84 = v76;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_37(v75 + v74, 1, v78);
  if (!v51)
  {
    goto LABEL_41;
  }

  sub_26A0E48F0(v75, &off_28036C7C0, &off_26A427400);
LABEL_28:
  v80 = *v62 == *v66 && v62[1] == v66[1];
  if (v80 || (sub_26A425354() & 1) != 0)
  {
    v81 = *(v63 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_2_12();
    sub_26A1D15D0(v82, v83);
    sub_26A424B64();
  }

LABEL_37:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1D0E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1D15D0(&qword_28036F400, type metadata accessor for _ProtoControl_Slider);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1D0E84(uint64_t a1)
{
  v2 = sub_26A1D15D0(&qword_28036D080, type metadata accessor for _ProtoControl_Slider);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1D0EF4()
{
  sub_26A1D15D0(&qword_28036D080, type metadata accessor for _ProtoControl_Slider);

  return sub_26A4249B4();
}

uint64_t sub_26A1D0F90()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F2D0);
  __swift_project_value_buffer(v0, qword_28036F2D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label_1";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label_2";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "player";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "component_name";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "link_identifier";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A1D1274(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_100_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A1D12C4()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label2, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player) = MEMORY[0x277D84F90];
  v3 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1D1368()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  v14 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player) = MEMORY[0x277D84F90];
  v15 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  OUTLINED_FUNCTION_142();
  v18 = *(v2 + v17);
  OUTLINED_FUNCTION_26_10();
  v19 = *(v0 + v14);
  *(v0 + v14) = v18;

  v20 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v22 = *v20;
  v21 = v20[1];
  OUTLINED_FUNCTION_26_10();
  v23 = v15[1];
  *v15 = v22;
  v15[1] = v21;

  v24 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v26 = *v24;
  v25 = v24[1];

  OUTLINED_FUNCTION_26_10();
  v27 = v16[1];
  *v16 = v26;
  v16[1] = v25;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1D15D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A1D1618()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label2, &qword_28036C7B8, &unk_26A425BF0);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player);

  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A1D16D0(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26A1D1780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_100_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_5_3();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_26A1D1844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A1D1958();
        break;
      case 2:
        sub_26A1D1A34();
        break;
      case 3:
        sub_26A1D1B10();
        break;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName;
        goto LABEL_8;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier;
LABEL_8:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1D1958()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1D1A34()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1D1B10()
{
  swift_beginAccess();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A1D15D0(&qword_28036D1F0, type metadata accessor for _ProtoPlayer);
  sub_26A424934();
  return swift_endAccess();
}

uint64_t sub_26A1D1C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_90_3();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1D1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1D1E88(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1D207C(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for _ProtoPlayer(0);
      sub_26A1D15D0(&qword_28036D1F0, type metadata accessor for _ProtoPlayer);

      sub_26A424A74();
    }

    v11 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      sub_26A424A64();
    }

    v15 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A1D1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D229C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_12();
  sub_26A1D15D0(v12, v13);
  return sub_26A424B64() & 1;
}

void sub_26A1D2380()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v72 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v75 = v13;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  v17 = OUTLINED_FUNCTION_44();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v71 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  v74 = v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  v76 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - v29;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_90_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v73 = v9;
  v31 = *(v9 + 48);
  OUTLINED_FUNCTION_90_3();
  sub_26A10FD9C();
  v32 = v1;
  OUTLINED_FUNCTION_90_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v16, 1, v4);
  if (v35)
  {

    sub_26A0E48F0(v30, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_14_9(&v16[v31]);
    v33 = v3;
    if (v35)
    {
      sub_26A0E48F0(v16, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v36 = v16;
LABEL_20:
    sub_26A0E48F0(v36, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_21;
  }

  v33 = v3;
  v34 = v76;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(&v16[v31]);
  if (v35)
  {

    sub_26A0E48F0(v30, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_5_13();
    sub_26A1CD590();
    goto LABEL_9;
  }

  v37 = v72;
  sub_26A1CA878();

  v38 = static _ProtoTextProperty.== infix(_:_:)(v34, v37);
  sub_26A1CD590();
  sub_26A0E48F0(v30, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1CD590();
  v39 = OUTLINED_FUNCTION_94_1();
  sub_26A0E48F0(v39, v40, &unk_26A425BF0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_142();
  v41 = v74;
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_142();
  v42 = *(v73 + 48);
  v43 = v75;
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_14_9(v43);
  if (!v35)
  {
    v44 = v71;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v43 + v42);
    if (!v45)
    {
      v46 = v72;
      sub_26A1CA878();
      static _ProtoTextProperty.== infix(_:_:)(v44, v46);
      OUTLINED_FUNCTION_36_6();
      sub_26A1CD590();
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v47, v48, v49);
      sub_26A1CD590();
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v50, v51, v52);
      if ((&qword_28036C7B8 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_5_13();
    sub_26A1CD590();
    goto LABEL_19;
  }

  sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_14_9(v43 + v42);
  if (!v35)
  {
LABEL_19:
    v36 = v43;
    goto LABEL_20;
  }

  sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
LABEL_23:
  v53 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  OUTLINED_FUNCTION_142();
  v54 = *(v33 + v53);
  v55 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  OUTLINED_FUNCTION_142();
  v56 = *(v32 + v55);

  OUTLINED_FUNCTION_175();
  sub_26A0E3F04();
  v57 = v33;
  v59 = v58;

  if (v59)
  {
    v60 = (v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
    OUTLINED_FUNCTION_142();
    v61 = *v60;
    v62 = v60[1];
    v63 = (v32 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
    OUTLINED_FUNCTION_142();
    v64 = v61 == *v63 && v62 == v63[1];
    if (v64 || (OUTLINED_FUNCTION_133(), (sub_26A425354() & 1) != 0))
    {
      v65 = (v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
      OUTLINED_FUNCTION_142();
      v66 = *v65;
      v67 = v65[1];
      v68 = (v32 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
      OUTLINED_FUNCTION_142();
      if (v66 != *v68 || v67 != v68[1])
      {
        OUTLINED_FUNCTION_133();
        sub_26A425354();
      }
    }
  }

LABEL_21:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1D2A4C(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  v2 = OUTLINED_FUNCTION_125();
  sub_26A1D15D0(v2, v3);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1D2DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1D15D0(&qword_28036F3F8, type metadata accessor for _ProtoControl_PlayerButton);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1D2EBC(uint64_t a1)
{
  v2 = sub_26A1D15D0(&qword_28036F390, type metadata accessor for _ProtoControl_PlayerButton);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1D2F74()
{
  sub_26A1D15D0(&qword_28036F390, type metadata accessor for _ProtoControl_PlayerButton);

  return sub_26A4249B4();
}

void sub_26A1D305C()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A1D353C(319, &qword_28036F3C0, type metadata accessor for _ProtoSlider);
    if (v1 <= 0x3F)
    {
      sub_26A1D353C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
      if (v2 <= 0x3F)
      {
        sub_26A1D353C(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_26A424794();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_44_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26A424794();
  result = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A1D32F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A1D3384()
{
  sub_26A1D353C(319, &qword_28036F008, type metadata accessor for _ProtoSwitch);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_26A1D353C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_26A1D353C(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_26A1D353C(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A1D353C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A1D3598()
{
  sub_26A1D353C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_13_11()
{
  result = type metadata accessor for _ProtoControl_Switch(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1)
{
  result = type metadata accessor for _ProtoControl_Switch(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_43_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_6()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_79_5()
{

  return sub_26A1CA878();
}

uint64_t OUTLINED_FUNCTION_85_2@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_86_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_87_3(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for _ProtoControl_Slider(0);
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v6 = *(v4 + 36);
  return result;
}

uint64_t Button.action.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  v6 = type metadata accessor for _ProtoActionProperty();
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = (v11 - v10);
  v13 = *(v0 + *(type metadata accessor for _ProtoButton(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_15(v1);
  if (v14)
  {
    *v12 = MEMORY[0x277D84F90];
    v12[1] = 0;
    v12[2] = 0xE000000000000000;
    v15 = v12 + *(v6 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_15(v1);
    if (!v14)
    {
      sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  return sub_26A1D7028();
}

uint64_t Button.label.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = *(v0 + *(type metadata accessor for _ProtoButton(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_15(v1);
  if (v15)
  {
    *v13 = MEMORY[0x277D84F90];
    *(v13 + 8) = 0;
    v16 = v13 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v7[8];
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    OUTLINED_FUNCTION_15(v1);
    if (!v15)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  return sub_26A1D7028();
}

void Button.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v39 = v1;
  v2 = type metadata accessor for _ProtoVisualProperty();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = *(v0 + *(type metadata accessor for _ProtoButton(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v20 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v2);
  v22 = v39;
  sub_26A0E48F0(v18, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v23 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v23, v24, v2);
    if (v25)
    {
      *v8 = MEMORY[0x277D84F90];
      *(v8 + 8) = 0;
      v26 = v8 + v2[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v27 = v2[8];
      v28 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
      v32 = v2[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v28);
      v36 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v36, v37, v2);
      if (!v25)
      {
        sub_26A0E48F0(v15, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1D7028();
    }

    sub_26A1D7028();
    v20 = 0;
  }

  v38 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v22, v20, 1, v38);
  OUTLINED_FUNCTION_75();
}

uint64_t Button.formAction.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  v3 = type metadata accessor for _ProtoButton(v2);
  OUTLINED_FUNCTION_25_11(v3);
  result = OUTLINED_FUNCTION_18_10();
  v5 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v5;
  return result;
}

uint64_t Button.labelStyle.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  v3 = type metadata accessor for _ProtoButton(v2);
  OUTLINED_FUNCTION_25_11(v3);
  result = OUTLINED_FUNCTION_18_10();
  if (v1[8] == 1)
  {
    v5 = *v1;
  }

  else
  {
    v5 = 1;
  }

  *v0 = v5;
  return result;
}

uint64_t Button.buttonRole.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  v3 = type metadata accessor for _ProtoButton(v2);
  OUTLINED_FUNCTION_25_11(v3);
  result = OUTLINED_FUNCTION_18_10();
  if (v1[8] == 1)
  {
    v5 = *v1;
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

char *ButtonRole.init(proto:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  if (result[8] == 1)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t Button.componentName.getter()
{
  v0 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_25_11(v0);
  v2 = (v1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
  OUTLINED_FUNCTION_20_13();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t Button.linkIdentifier.getter()
{
  v0 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_25_11(v0);
  v2 = (v1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_20_13();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char *a5, char *a6)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *a5;
  v11 = *a6;
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v12, v13);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A1D41F4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a8;
  v77 = a6;
  v76 = a5;
  v73 = a4;
  v15 = type metadata accessor for VisualProperty();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v70 - v20;
  v74 = type metadata accessor for _ProtoVisualProperty();
  v21 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v71 = &v70 - v24;
  v25 = type metadata accessor for _ProtoTextProperty(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = type metadata accessor for TextProperty(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = type metadata accessor for _ProtoActionProperty();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = type metadata accessor for ActionProperty();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  (*(v34 + 8))(v33, v34);
  sub_26A1D7028();
  _ProtoButton.action.setter();
  v35 = a3[3];
  v36 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v35);
  (*(v36 + 8))(v35, v36);
  sub_26A1D7028();
  _ProtoButton.label.setter();
  sub_26A10FD9C();
  v37 = v81;
  if (v81)
  {
    v38 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(v38 + 8))(v37, v38);
    v39 = v75;
    sub_26A1D7028();
    v40 = v74;
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v74);
    __swift_destroy_boxed_opaque_existential_1(v80);
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) != 1)
    {
      v41 = v71;
      sub_26A1D7028();
      sub_26A1D707C();
      _ProtoButton.thumbnail.setter();
      sub_26A1D6FD0(v41, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v80, &qword_28036CB00, &unk_26A426450);
    v39 = v75;
    __swift_storeEnumTagSinglePayload(v75, 1, 1, v74);
  }

  sub_26A0E48F0(v39, &qword_28036CAE8, &unk_26A426430);
LABEL_6:
  v42 = *(type metadata accessor for _ProtoButton(0) + 20);
  v43 = *(a1 + v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(a1 + v42);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = type metadata accessor for _ProtoButton._StorageClass(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    sub_26A2A11E0();
    v45 = v49;
    *(a1 + v42) = v49;
  }

  v50 = v45 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction;
  swift_beginAccess();
  *v50 = v76;
  *(v50 + 8) = v77 & 1;
  v51 = v78;
  v52 = *(a1 + v42);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(a1 + v42);
  if ((v53 & 1) == 0)
  {
    v55 = type metadata accessor for _ProtoButton._StorageClass(0);
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_26A2A11E0();
    v54 = v58;
    *(a1 + v42) = v58;
  }

  v59 = v54 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle;
  swift_beginAccess();
  *v59 = v51;
  *(v59 + 8) = 1;
  v60 = v79;
  v61 = *(a1 + v42);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a1 + v42);
  if ((v62 & 1) == 0)
  {
    v64 = type metadata accessor for _ProtoButton._StorageClass(0);
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    sub_26A2A11E0();
    v63 = v67;
    *(a1 + v42) = v67;
  }

  v68 = v63 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole;
  swift_beginAccess();
  *v68 = v60;
  *(v68 + 8) = 1;

  result = _ProtoButton.componentName.setter(a9, a10);
  if (a12)
  {

    return _ProtoButton.linkIdentifier.setter(a11, a12);
  }

  return result;
}

uint64_t Button.init(action:label:thumbnail:formAction:labelStyle:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = *a5;
  sub_26A0E5D68(a1, v17);
  sub_26A0E5D68(a2, v16);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v10, v11);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v15, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t Button.init(action:label:thumbnail:formAction:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  sub_26A0E5D68(a1, v14);
  sub_26A0E5D68(a2, v13);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v8, v9);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v12, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t Button.init(action:label:thumbnail:formAction:)()
{
  OUTLINED_FUNCTION_31_7();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_26A0E5D68(v6, v12);
  sub_26A0E5D68(v1, v11);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v7, v8);
  sub_26A4249C4();
  sub_26A0E48F0(v2, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v0);
  sub_26A0E48F0(v10, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t Button.init(action:label:thumbnail:formAction:componentName:)()
{
  OUTLINED_FUNCTION_31_7();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_26A0E5D68(v6, v12);
  sub_26A0E5D68(v1, v11);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v7, v8);
  sub_26A4249C4();

  sub_26A0E48F0(v2, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v0);
  sub_26A0E48F0(v10, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

Swift::String __swiftcall Button.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v112 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v117 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v115 = &v112 - v13;
  v114 = type metadata accessor for _ProtoTextProperty(0);
  v14 = OUTLINED_FUNCTION_12(v114);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v113 = (v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v116 = &v112 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  v30 = type metadata accessor for _ProtoActionProperty();
  v31 = OUTLINED_FUNCTION_12(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v36 = (v35 - v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v40);
  v42 = &v112 - v41;
  v43 = type metadata accessor for Button();
  v44 = OUTLINED_FUNCTION_41(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v47);
  v49 = &v112 - v48;
  v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB0, &qword_26A426BD8) - 8);
  v51 = *(*v50 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v52);
  v54 = &v112 - v53;
  sub_26A1D707C();
  sub_26A1D707C();
  sub_26A1D7028();
  v54[v50[10]] = v3;
  sub_26A1D6FD0(v49, type metadata accessor for Button);
  v55 = v50[9];
  v56 = MEMORY[0x277D84F90];
  *&v54[v55] = MEMORY[0x277D84F90];
  v57 = *&v54[*(type metadata accessor for _ProtoButton(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v29, 1, v30);
  if (v58)
  {
    *v36 = v56;
    v36[1] = 0;
    v36[2] = 0xE000000000000000;
    v59 = v36 + *(v30 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_37(v29, 1, v30);
    if (!v58)
    {
      sub_26A0E48F0(v29, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  sub_26A1D7028();
  type metadata accessor for ActionProperty();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  sub_26A105924();
  sub_26A0E48F0(v42, &qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_142();
  v64 = v115;
  sub_26A10FD9C();
  v65 = OUTLINED_FUNCTION_38_1();
  v66 = v114;
  OUTLINED_FUNCTION_37(v65, v67, v114);
  if (v58)
  {
    v68 = v113;
    *v113 = v56;
    *(v68 + 4) = 0;
    v69 = v68 + v66[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v70 = v66[8];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v30);
    v74 = v66[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v30);
    OUTLINED_FUNCTION_15(v64);
    if (!v58)
    {
      sub_26A0E48F0(v64, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  v78 = v116;
  sub_26A1D7028();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  sub_26A1058FC();
  sub_26A0E48F0(v78, &qword_28036CB30, &qword_26A426480);
  v83 = v117;
  Button.thumbnail.getter();
  sub_26A1058D4();
  sub_26A0E48F0(v83, &qword_28036CB20, &unk_26A426470);
  v120 = 0;
  v121 = 0xE000000000000000;
  v84 = (v57 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction);
  OUTLINED_FUNCTION_20_13();
  v85 = *(v84 + 8);
  v118 = *v84;
  v119 = v85;
  sub_26A424FA4();
  v87 = v120;
  v86 = v121;
  v88 = HIBYTE(v121) & 0xF;
  if ((v121 & 0x2000000000000000) == 0)
  {
    v88 = v120 & 0xFFFFFFFFFFFFLL;
  }

  if (v88)
  {
    v89 = *&v54[v55];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = *(v89 + 16);
      sub_26A1674F4();
      v89 = v109;
    }

    v90 = *(v89 + 16);
    if (v90 >= *(v89 + 24) >> 1)
    {
      sub_26A1674F4();
      v89 = v110;
    }

    *(v89 + 16) = v90 + 1;
    v91 = v89 + 32 * v90;
    *(v91 + 32) = xmmword_26A42CD30;
    *(v91 + 48) = v87;
    *(v91 + 56) = v86;
    *&v54[v55] = v89;
  }

  else
  {
  }

  v92 = (v57 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle);
  OUTLINED_FUNCTION_20_13();
  if (v92[8] == 1)
  {
    v93 = *v92;
  }

  sub_26A146360();
  v94 = (v57 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole);
  OUTLINED_FUNCTION_20_13();
  if (v94[8] == 1)
  {
    v95 = *v94;
  }

  sub_26A146278();
  KeyPath = swift_getKeyPath();
  sub_26A0F7980(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v97, v98, v99, v100, v112, v113);

  v101 = swift_getKeyPath();
  sub_26A0F842C(v101, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v102, v103, v104, v105, v112, v113);

  sub_26A0FC388();
  sub_26A0E48F0(v54, &qword_28036CFB0, &qword_26A426BD8);
  OUTLINED_FUNCTION_75();
  result._object = v107;
  result._countAndFlagsBits = v106;
  return result;
}

uint64_t type metadata accessor for Button()
{
  result = qword_28036F430;
  if (!qword_28036F430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Button.jsonString(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = sub_26A4247D4();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for _ProtoButton(0);
  v17 = OUTLINED_FUNCTION_12(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  if (redacted)
  {
    _ProtoButton.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_26();
    sub_26A1D6C8C(v20, v21);
    v22 = sub_26A424954();
    if (!v1)
    {
      v2 = v22;
      v16 = v23;
    }

    (*(v7 + 8))(v15, v4);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_26();
    sub_26A1D6C8C(v24, v25);
    v26 = sub_26A424954();
    if (!v1)
    {
      v2 = v26;
      v16 = v27;
    }

    (*(v7 + 8))(v12, v4);
  }

  v28 = v2;
  v29 = v16;
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

void _ProtoButton.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_26_13();
  v133 = type metadata accessor for _ProtoActionProperty();
  v1 = OUTLINED_FUNCTION_12(v133);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v129 = v4;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v5);
  v128 = (v125 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v130 = v11;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  v127 = v13;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v14);
  v132 = v125 - v15;
  v131 = type metadata accessor for _ProtoVisualProperty();
  v16 = OUTLINED_FUNCTION_12(v131);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  v126 = (v125 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v22 = OUTLINED_FUNCTION_41(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  v28 = v125 - v27;
  v29 = type metadata accessor for _ProtoTextProperty(0);
  v30 = OUTLINED_FUNCTION_12(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  v35 = v125 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v37 = OUTLINED_FUNCTION_41(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  v42 = v125 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v125 - v44;
  OUTLINED_FUNCTION_3_19();
  sub_26A1D707C();
  v134 = *(type metadata accessor for _ProtoButton(0) + 20);
  v135 = v0;
  v46 = *(v0 + v134);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v47 = OUTLINED_FUNCTION_71();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, v48, v29);
  sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
  v50 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v42, 1, v29);
    if (v51)
    {
      *v35 = v50;
      *(v35 + 4) = 0;
      v52 = &v35[v29[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v53 = v29[8];
      OUTLINED_FUNCTION_92();
      v54 = v133;
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v133);
      v58 = v29[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v54);
      OUTLINED_FUNCTION_37(v42, 1, v29);
      v63 = v134;
      v62 = v135;
      if (!v51)
      {
        sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1D7028();
      v63 = v134;
      v62 = v135;
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A1D6FD0(v35, type metadata accessor for _ProtoTextProperty);
    v64 = *(v62 + v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v62 + v63);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = type metadata accessor for _ProtoButton._StorageClass(0);
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      sub_26A2A11E0();
      *(v62 + v63) = v70;
    }

    sub_26A1D7028();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v29);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v74 = v131;
  v75 = __swift_getEnumTagSinglePayload(v28, 1, v131);
  sub_26A0E48F0(v28, &qword_28036CAE8, &unk_26A426430);
  if (v75 == 1)
  {
    v76 = v133;
    v77 = v135;
  }

  else
  {
    v78 = v125[2];
    sub_26A10FD9C();
    v79 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v79, v80, v74);
    v77 = v135;
    if (v51)
    {
      v92 = v126;
      *v126 = v50;
      *(v92 + 8) = 0;
      v81 = v92 + v74[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v82 = v74[8];
      OUTLINED_FUNCTION_92();
      v76 = v133;
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v133);
      v86 = v74[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v76);
      v90 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v90, v91, v74);
      v93 = v134;
      if (!v51)
      {
        sub_26A0E48F0(v78, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v92 = v126;
      sub_26A1D7028();
      v76 = v133;
      v93 = v134;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A1D6FD0(v92, type metadata accessor for _ProtoVisualProperty);
    v94 = *(v77 + v93);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(v77 + v93);
    if ((v95 & 1) == 0)
    {
      v97 = type metadata accessor for _ProtoButton._StorageClass(0);
      v98 = *(v97 + 48);
      v99 = *(v97 + 52);
      swift_allocObject();
      sub_26A2A11E0();
      *(v77 + v93) = v100;
    }

    sub_26A1D7028();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v74);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v104 = v132;
  sub_26A10FD9C();
  v105 = __swift_getEnumTagSinglePayload(v104, 1, v76);
  sub_26A0E48F0(v104, &off_28036C7C0, &off_26A427400);
  if (v105 != 1)
  {
    v106 = v127;
    sub_26A10FD9C();
    v107 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v107, v108, v76);
    v109 = v134;
    if (v51)
    {
      v113 = v128;
      *v128 = v50;
      *(v113 + 8) = 0;
      *(v113 + 16) = 0xE000000000000000;
      v110 = v113 + *(v76 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v111 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v111, v112, v76);
      v114 = v129;
      if (!v51)
      {
        sub_26A0E48F0(v106, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v113 = v128;
      sub_26A1D7028();
      v114 = v129;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v114);
    sub_26A1D6FD0(v113, type metadata accessor for _ProtoActionProperty);
    v115 = *(v77 + v109);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v77 + v109);
    if ((v116 & 1) == 0)
    {
      v118 = type metadata accessor for _ProtoButton._StorageClass(0);
      v119 = *(v118 + 48);
      v120 = *(v118 + 52);
      swift_allocObject();
      sub_26A2A11E0();
      *(v77 + v109) = v121;
    }

    sub_26A1D7028();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v76);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t Button.hash(into:)()
{
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v0, v1);

  return sub_26A424B44();
}

uint64_t Button.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1D637C()
{
  sub_26A425504();
  type metadata accessor for _ProtoButton(0);
  sub_26A1D6C8C(&qword_28036F410, type metadata accessor for _ProtoButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Button.hasThumbnail(for:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  Button.thumbnail.getter();
  v16 = type metadata accessor for VisualProperty();
  OUTLINED_FUNCTION_37(v7, 1, v16);
  if (v25)
  {
    sub_26A0E48F0(v7, &qword_28036CB20, &unk_26A426470);
    type metadata accessor for VisualElement();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
LABEL_6:
    v21 = 0;
    goto LABEL_7;
  }

  VisualProperty.allVisualElements.getter();
  sub_26A1D6FD0(v7, type metadata accessor for VisualProperty);
  sub_26A1D65A0();

  type metadata accessor for VisualElement();
  v21 = 1;
  v22 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_37(v22, v23, v24);
  if (v25)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_26A0E48F0(v13, &qword_28036CC28, &qword_26A43A760);
  return v21;
}

void sub_26A1D65A0()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v33 = v6;
  v32 = type metadata accessor for VisualElement();
  v7 = OUTLINED_FUNCTION_24(v32);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  v16 = 0;
  v17 = *(v1 + 16);
  while (v17 != v16)
  {
    v18 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = *(v9 + 72);
    OUTLINED_FUNCTION_16_12();
    v20 = VisualElement.idioms.getter();
    v21 = sub_26A165034(v5, v3 & 1, v20);

    if (v21)
    {
      sub_26A1D7028();
LABEL_13:
      sub_26A1D7028();
      OUTLINED_FUNCTION_9_13();
      v30 = v33;
      sub_26A1D7028();
      v31 = 0;
      goto LABEL_14;
    }

    ++v16;
    OUTLINED_FUNCTION_14_10();
  }

  for (i = 0; i != v17; i = v23)
  {
    v23 = i + 1;
    v24 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v25 = *(v9 + 72);
    OUTLINED_FUNCTION_16_12();
    v26 = VisualElement.idioms.getter();
    v27 = v26[2] + 1;
    v28 = 4;
    while (--v27)
    {
      v29 = v26[v28];
      v28 += 2;
      if (!v29)
      {

        OUTLINED_FUNCTION_9_13();
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_14_10();
  }

  v31 = 1;
  v30 = v33;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v30, v31, 1, v32);
  OUTLINED_FUNCTION_75();
}

uint64_t Button.componentProto.getter()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = type metadata accessor for _ProtoButton(v1);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = v0 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_3_19();
  sub_26A1D707C();
  sub_26A0E48F0(v0, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_10_17();
  sub_26A1D7028();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t Button.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for Button();
  *(inited + 64) = &protocol witness table for Button;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A1D707C();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1D6C8C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t ButtonRole.description.getter()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t Button.LabelStyle.description.getter()
{
  result = 0x6974616D6F747561;
  switch(*v0)
  {
    case 1:
      result = 0x796C6E4F6E6F6369;
      break;
    case 2:
      result = 0x646E41656C746974;
      break;
    case 3:
      result = 0x6C6E4F656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s10SnippetKit10ButtonRoleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

uint64_t sub_26A1D6C8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A1D6CD8()
{
  result = qword_28036F420;
  if (!qword_28036F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036F420);
  }

  return result;
}

unint64_t sub_26A1D6D30()
{
  result = qword_28036F428;
  if (!qword_28036F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036F428);
  }

  return result;
}

uint64_t sub_26A1D6DAC()
{
  result = type metadata accessor for _ProtoButton(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonRole(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Button.LabelStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A1D6FD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A1D7028()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A1D707C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_26A1D6FD0(v0, type metadata accessor for VisualElement);
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_26A1D6FD0(v0, type metadata accessor for _ProtoButton);
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_26A1D707C();
}

uint64_t OUTLINED_FUNCTION_18_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return type metadata accessor for _ProtoButton(0);
}

uint64_t sub_26A1D7270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoSeparators();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Separators.top.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  v4 = v2;
  SeparatorStyle.init(proto:)(&v3, a1);
}

void Separators.bottom.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = v2;
  SeparatorStyle.init(proto:)(&v3, a1);
}

uint64_t sub_26A1D7344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoSeparators();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall Separators.description(redacted:)(Swift::Bool redacted)
{
  v2 = 0x656E6F6E2ELL;
  sub_26A424EF4();

  v3 = 0xE500000000000000;
  v4 = *(v1 + 8);
  OUTLINED_FUNCTION_1_18(*v1, v11, v13, *v15, *&v15[2], v15[4], v15[5]);
  v5 = 0x656E6F6E2ELL;
  switch(v16[5])
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x65766F6D65722ELL;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v3 = 0x800000026A4483F0;
      break;
    case 3:
      v5 = 0x456F54656764652ELL;
      v3 = 0xEB00000000656764;
      break;
    case 4:
      v5 = 0x654C7465736E692ELL;
      v3 = 0xED0000676E696461;
      break;
    case 5:
      v5 = 0x6F427465736E692ELL;
      v3 = 0xEA00000000006874;
      break;
    case 6:
      break;
    default:
      v5 = 0x7261646E6174732ELL;
      v3 = 0xE900000000000064;
      break;
  }

  MEMORY[0x26D65BA70](v5, v3);

  MEMORY[0x26D65BA70](0x6D6F74746F62202CLL, 0xEA0000000000203ALL);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_1_18(*(v1 + 16), v12, v14, *v16, *&v16[2], v16[4], v16[5]);
  v7 = 0xE500000000000000;
  switch(v17)
  {
    case 0:
      v2 = 0x7261646E6174732ELL;
      v7 = 0xE900000000000064;
      break;
    case 1:
      v7 = 0xE700000000000000;
      v2 = 0x65766F6D65722ELL;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v7 = 0x800000026A4483F0;
      break;
    case 3:
      v2 = 0x456F54656764652ELL;
      v7 = 0xEB00000000656764;
      break;
    case 4:
      v2 = 0x654C7465736E692ELL;
      v7 = 0xED0000676E696461;
      break;
    case 5:
      v2 = 0x6F427465736E692ELL;
      v7 = 0xEA00000000006874;
      break;
    case 6:
      break;
    default:
      JUMPOUT(0);
  }

  MEMORY[0x26D65BA70](v2, v7);

  v8 = 0x203A706F74;
  v9 = 0xE500000000000000;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t Separators.init(top:bottom:)(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for _ProtoSeparators();
  sub_26A1D770C();
  return OUTLINED_FUNCTION_0_27();
}

uint64_t sub_26A1D76CC(uint64_t result, unsigned __int8 a2, unsigned __int8 a3)
{
  *result = a2;
  *(result + 8) = 1;
  *(result + 16) = a3;
  *(result + 24) = 1;
  return result;
}

unint64_t sub_26A1D770C()
{
  result = qword_28036F440;
  if (!qword_28036F440)
  {
    type metadata accessor for _ProtoSeparators();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036F440);
  }

  return result;
}

uint64_t static Separators.none.getter()
{
  type metadata accessor for _ProtoSeparators();
  sub_26A1D770C();
  return OUTLINED_FUNCTION_0_27();
}

uint64_t type metadata accessor for Separators()
{
  result = qword_28036F448;
  if (!qword_28036F448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1D783C()
{
  result = type metadata accessor for _ProtoSeparators();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_1_18(uint64_t a1@<X8>, uint64_t a2, char a3, __int16 a4, __int16 a5, char a6, char a7)
{
  a2 = a1;
  a3 = v7;

  SeparatorStyle.init(proto:)(&a2, &a7);
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return type metadata accessor for _ProtoSeparators();
}

uint64_t sub_26A1D795C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoCommand.noOp.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v7)
  {
    sub_26A13440C();
    return 0;
  }

  OUTLINED_FUNCTION_175();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A1D87EC();
    return 0;
  }

  return *v0;
}

uint64_t _ProtoCommand.noOp.setter(char a1)
{
  sub_26A13440C();
  *v1 = a1;
  v3 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
}

void (*_ProtoCommand.noOp.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(a1 + 8) = v7;
  sub_26A1E05A8();
  *(a1 + 16) = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_23(v7);
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    if (!swift_getEnumCaseMultiPayload())
    {
      v10 = *v7;
      goto LABEL_7;
    }

    sub_26A1D87EC();
  }

  v10 = 0;
LABEL_7:
  *(a1 + 24) = v10;
  return sub_26A1D7C50;
}

void sub_26A1D7C50(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 24);
  sub_26A13440C();
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v1);

  free(v2);
}

uint64_t _ProtoCommand.aceCommand.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t _ProtoCommand.aceCommand.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t _ProtoCommand.response.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t sub_26A1D7FE4()
{
  OUTLINED_FUNCTION_75_3();
  sub_26A13440C();
  *v0 = v2;
  v0[1] = v1;
  OUTLINED_FUNCTION_41_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_13();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t _ProtoCommand.response.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

void sub_26A1D813C()
{
  OUTLINED_FUNCTION_69_1();
  v1 = *v0;
  v3 = **v0;
  v2 = (*v0)[1];
  v4 = (*v0)[3];
  v5 = (*v0)[4];
  v6 = (*v0)[2];
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_65_4();
    sub_26A0E45C0(v8, v9);
    sub_26A13440C();
    *v6 = v3;
    v6[1] = v2;
    OUTLINED_FUNCTION_88();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    sub_26A0E4784(*v1, v1[1]);
  }

  else
  {
    v14 = (*v0)[2];
    sub_26A13440C();
    *v6 = v3;
    v6[1] = v2;
    OUTLINED_FUNCTION_88();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  free(v4);
  OUTLINED_FUNCTION_67_1();

  free(v19);
}

uint64_t _ProtoCommand.utterance.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_26A1D87EC();
  }

  return 0;
}

uint64_t sub_26A1D82E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoCommand.utterance.setter();
}

uint64_t _ProtoCommand.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
  v12 = v1[1];
LABEL_8:
  *v0 = v11;
  v0[1] = v12;
  return OUTLINED_FUNCTION_66_2();
}

void sub_26A1D8410(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = (*a1)[1];

    sub_26A13440C();
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    v13 = v2[1];
  }

  else
  {
    v14 = (*a1)[2];
    sub_26A13440C();
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  free(v5);

  free(v2);
}

uint64_t _ProtoCommand.changeBackground.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_12();
  v8 = OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_23(v8);
  if (v9)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A1D8D5C();
    }

    sub_26A1D87EC();
  }

  *a1 = MEMORY[0x277D84F90];
  v12 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  return OUTLINED_FUNCTION_79_6(v12);
}

uint64_t _ProtoCommand.ChangeBackground.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  return OUTLINED_FUNCTION_79_6(v1);
}

void _ProtoCommand.changeBackground.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoCommand.ChangeBackground(v6);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_35_9(v10);
  OUTLINED_FUNCTION_28_6();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v9 = MEMORY[0x277D84F90];
    v13 = v9 + *(v7 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A1D87EC()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t _ProtoCommand.sfCommand.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t _ProtoCommand.sfCommand.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t _ProtoCommand.directInvocation.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t _ProtoCommand.directInvocation.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t _ProtoCommand.responseGroup.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_12();
  v8 = OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_23(v8);
  if (v9)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A1D8D5C();
    }

    sub_26A1D87EC();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v12 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  return OUTLINED_FUNCTION_79_6(v12);
}

uint64_t sub_26A1D8D5C()
{
  OUTLINED_FUNCTION_45_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A1D8DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A1D901C();
  return a7(v7);
}

uint64_t _ProtoCommand.ResponseGroup.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  return OUTLINED_FUNCTION_79_6(v1);
}

void _ProtoCommand.responseGroup.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoCommand.ResponseGroup(v6);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_35_9(v10);
  OUTLINED_FUNCTION_28_6();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v13 = v9 + *(v7 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A1D901C()
{
  OUTLINED_FUNCTION_45_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t _ProtoCommand.appPunchout.getter()
{
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_12();
  v6 = OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_23(v6);
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A1D8D5C();
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_26A1D91A0()
{
  OUTLINED_FUNCTION_75_3();
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
  OUTLINED_FUNCTION_41_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_13();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void _ProtoCommand.appPunchout.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoCommand.AppPunchout(v6);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_35_9(v10);
  OUTLINED_FUNCTION_28_6();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    v13 = v9 + *(v7 + 28);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A1D93C4()
{
  OUTLINED_FUNCTION_76();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_125();
    sub_26A1D901C();
    sub_26A13440C();
    sub_26A1D8D5C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    sub_26A1D87EC();
  }

  else
  {
    v11 = **v0;
    sub_26A13440C();
    sub_26A1D8D5C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_75();

  free(v16);
}

uint64_t _ProtoCommand.isNavigation.setter(char a1)
{
  result = OUTLINED_FUNCTION_64_3();
  *(v1 + v4) = a1;
  return result;
}

uint64_t _ProtoCommand.isNavigation.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoCommand(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.shouldUseSearchuiButton.setter(char a1)
{
  result = type metadata accessor for _ProtoCommand(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t _ProtoCommand.shouldUseSearchuiButton.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoCommand(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoCommand(v0) + 28);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoCommand.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v92 = v0;
  v93 = v1;
  v2 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v86 = v7 - v6;
  v85 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  v8 = OUTLINED_FUNCTION_12(v85);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v88 = (v12 - v11);
  v84 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  v13 = OUTLINED_FUNCTION_12(v84);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v87 = (v17 - v16);
  v18 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v89 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  v91 = &v84 - v24;
  OUTLINED_FUNCTION_40();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (&v84 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v84 - v30);
  MEMORY[0x28223BE20](v29);
  v90 = &v84 - v32;
  OUTLINED_FUNCTION_40();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (&v84 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v84 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v84 - v41);
  MEMORY[0x28223BE20](v40);
  v44 = &v84 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F500, &qword_26A42D088);
  OUTLINED_FUNCTION_41(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_39();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = (&v84 + *(v49 + 56) - v50);
  sub_26A1D901C();
  sub_26A1D901C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A1D901C();
      v75 = *v42;
      v76 = v42[1];
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    case 2u:
      sub_26A1D901C();
      v59 = *v39;
      v60 = v39[1];
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    case 3u:
      sub_26A1D901C();
      v68 = *v36;
      v67 = v36[1];
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_34;
      }

      if (v68 == *v51 && v67 == v51[1])
      {
        v83 = v51[1];
      }

      else
      {
        v70 = v51[1];
        sub_26A425354();
      }

      goto LABEL_37;
    case 4u:
      v53 = v90;
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_33;
      }

      v54 = v87;
      sub_26A1D8D5C();
      v55 = *v53;
      v56 = *v54;
      sub_26A0DDAD4();
      if (v57)
      {
        v58 = *(v84 + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_0_28();
        sub_26A1DDCA4();
        OUTLINED_FUNCTION_76_3();
      }

      goto LABEL_36;
    case 5u:
      sub_26A1D901C();
      v79 = *v31;
      v80 = v31[1];
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 6u:
      sub_26A1D901C();
      v81 = *v28;
      v82 = v28[1];
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_8:
        v62 = *v51;
        v61 = v51[1];
        OUTLINED_FUNCTION_133();
        OUTLINED_FUNCTION_87();
        MEMORY[0x26D65B4F0]();
        v63 = OUTLINED_FUNCTION_103();
        sub_26A0E4784(v63, v64);
        v65 = OUTLINED_FUNCTION_133();
        sub_26A0E4784(v65, v66);
        goto LABEL_37;
      }

LABEL_24:
      v77 = OUTLINED_FUNCTION_133();
      sub_26A0E4784(v77, v78);
      goto LABEL_34;
    case 7u:
      v71 = v91;
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_33;
      }

      v72 = v88;
      sub_26A1D8D5C();
      v73 = *v71 == *v72 && v71[1] == v72[1];
      if (v73 || (sub_26A425354() & 1) != 0)
      {
        v74 = *(v85 + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_0_28();
        sub_26A1DDCA4();
        OUTLINED_FUNCTION_76_3();
      }

LABEL_36:
      sub_26A1D87EC();
      sub_26A1D87EC();
      goto LABEL_37;
    case 8u:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_26A1D8D5C();
        OUTLINED_FUNCTION_88();
        static _ProtoCommand.AppPunchout.== infix(_:_:)();
        sub_26A1D87EC();
        sub_26A1D87EC();
LABEL_37:
        sub_26A1D87EC();
      }

      else
      {
LABEL_33:
        sub_26A1D87EC();
LABEL_34:
        sub_26A13440C();
      }

LABEL_35:
      OUTLINED_FUNCTION_75();
      return;
    default:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_34;
      }

      v52 = *v44 ^ *v51;
      OUTLINED_FUNCTION_38_8();
      sub_26A1D87EC();
      goto LABEL_35;
  }
}

uint64_t static _ProtoCommand.ChangeBackground.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v1 = *v0;
  v3 = *v2;
  sub_26A0DDAD4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for _ProtoCommand.ChangeBackground(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_28();
  sub_26A1DDCA4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t static _ProtoCommand.ResponseGroup.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_73_3(v0);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for _ProtoCommand.ResponseGroup(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_28();
  sub_26A1DDCA4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t static _ProtoCommand.AppPunchout.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_73_3(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v6 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v7 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for _ProtoCommand.AppPunchout(0) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_0_28();
  sub_26A1DDCA4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t _ProtoCommand.ResponseGroup.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoCommand.ResponseGroup(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.ChangeBackground.background.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t sub_26A1DA150()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v2 = *(v1(v0) + 20);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_57_5();

  return v7(v6);
}

uint64_t sub_26A1DA1D8()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t _ProtoCommand.ChangeBackground.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoCommand.ChangeBackground(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.AppPunchout.punchOutUri.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoCommand.AppPunchout.punchOutUri.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t _ProtoCommand.AppPunchout.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoCommand.AppPunchout.bundleID.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t _ProtoCommand.AppPunchout.appDisplayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoCommand.AppPunchout.appDisplayName.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_26A1DA414()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v2 = *(v1(v0) + 28);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_57_5();

  return v7(v6);
}

uint64_t sub_26A1DA49C()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 28);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t _ProtoCommand.AppPunchout.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoCommand.AppPunchout(v0) + 28);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.init()()
{
  v1 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoCommand.OneOf_Value(v1);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_64_3();
  *(v0 + v7) = 0;
  *(v0 + *(v6 + 24)) = 0;
  v8 = v0 + *(v6 + 28);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoActionElement.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_7();
  v7 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v9)
  {
    return sub_26A1D8D5C();
  }

  type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *(a1 + v8[5]) = 0;
  *(a1 + v8[6]) = 0;
  v14 = a1 + v8[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v9)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoActionElement.command.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = *(type metadata accessor for _ProtoActionElement(v1) + 28);
  sub_26A13440C();
  OUTLINED_FUNCTION_7_10();
  sub_26A1D8D5C();
  v3 = type metadata accessor for _ProtoCommand(0);

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

void _ProtoActionElement.command.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for _ProtoCommand(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v0 + 32) = v8;
  *(v0 + 40) = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v4, 1, v5);
  if (v9)
  {
    type metadata accessor for _ProtoCommand.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v8[v5[5]] = 0;
    v8[v5[6]] = 0;
    v14 = &v8[v5[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_37(v4, 1, v5);
    if (!v9)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1D8D5C();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A1DA8F4()
{
  OUTLINED_FUNCTION_69_1();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_157();
    sub_26A1D901C();
    sub_26A13440C();
    OUTLINED_FUNCTION_7_10();
    sub_26A1D8D5C();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_26A1D87EC();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_7_10();
    sub_26A1D8D5C();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_67_1();

  free(v16);
}

uint64_t _ProtoActionElement.hasCommand.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_7();
  v7 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_37(v0, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_26A13440C();
  return v10;
}

Swift::Void __swiftcall _ProtoActionElement.clearCommand()()
{
  v0 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A13440C();
  type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoActionElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *(v1 + 8);

  *(v1 + 8) = v0;
  return result;
}

uint64_t _ProtoActionElement.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1 = *(type metadata accessor for _ProtoActionElement(v0) + 24);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_57_5();

  return v6(v5);
}

uint64_t _ProtoActionElement.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoActionElement(v2) + 24);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t _ProtoActionElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoActionElement(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoActionElement.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for _ProtoActionElement(0);
  v4 = a1 + *(v3 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v5 = *(v3 + 28);
  type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26A1DAD30()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F458);
  __swift_project_value_buffer(v0, qword_28036F458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26A42B070;
  v4 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v4 = "no_op";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v29 + v3 + v2 + v1[14];
  *(v29 + v3 + v2) = 2;
  *v8 = "ace_command";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v29 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v7();
  v12 = (v29 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "utterance";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v7();
  v14 = (v29 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "change_background";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v7();
  v16 = (v29 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sf_command";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v7();
  v18 = (v29 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "direct_invocation";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v7();
  v20 = (v29 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "response_group";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v7();
  v22 = (v29 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "app_punchout";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v7();
  v24 = (v29 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 8;
  *v25 = "is_navigation";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v7();
  v26 = (v29 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "should_use_searchui_button";
  *(v27 + 1) = 26;
  v27[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t _ProtoCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A1DB264(v3, v4);
        continue;
      case 2:
        v13 = OUTLINED_FUNCTION_5_6();
        v17 = 1;
        goto LABEL_14;
      case 3:
        v13 = OUTLINED_FUNCTION_5_6();
        v17 = 2;
        goto LABEL_14;
      case 4:
        v18 = OUTLINED_FUNCTION_5_6();
        sub_26A1DB5B0(v18, v19);
        continue;
      case 5:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A1DB754(v5, v6, v7, v8);
        continue;
      case 6:
        v13 = OUTLINED_FUNCTION_5_6();
        v17 = 5;
        goto LABEL_14;
      case 7:
        v13 = OUTLINED_FUNCTION_5_6();
        v17 = 6;
LABEL_14:
        sub_26A1DB3F0(v13, v14, v15, v16, v17);
        break;
      case 8:
        OUTLINED_FUNCTION_5_6();
        sub_26A1DBC4C();
        break;
      case 9:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A1DBCB0(v20, v21, v22, v23);
        break;
      case 10:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A1DC1A8(v9, v10, v11, v12);
        break;
      case 12:
        OUTLINED_FUNCTION_5_6();
        sub_26A1DC6A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1DB264(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v13 = 2;
  result = sub_26A424864();
  if (!v2)
  {
    v9 = v13;
    if (v13 != 2)
    {
      sub_26A1E05A8();
      v10 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
      sub_26A13440C();
      if (EnumTagSinglePayload != 1)
      {
        sub_26A424844();
      }

      sub_26A13440C();
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_26A1DB3F0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v29 = xmmword_26A427140;
  sub_26A4248B4();
  v14 = v29;
  if (v5 || *(&v29 + 1) >> 60 == 15)
  {
    v18 = OUTLINED_FUNCTION_65_4();
    return sub_26A10E794(v18, v19);
  }

  else
  {
    v30 = a5;
    sub_26A1E05A8();
    v28 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v28);
    v16 = OUTLINED_FUNCTION_65_4();
    sub_26A0E45C0(v16, v17);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    v21 = OUTLINED_FUNCTION_65_4();
    sub_26A10E794(v21, v22);
    sub_26A13440C();
    *a2 = v14;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_6();
    return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }
}

uint64_t sub_26A1DB5B0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0;
  result = sub_26A424914();
  if (v2)
  {
  }

  v9 = v13;
  if (v13)
  {
    v14 = v12;
    sub_26A1E05A8();
    v10 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    sub_26A13440C();
    *a2 = v14;
    a2[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_26A1DB754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F638, &qword_26A42D8C8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A1D8D5C();
    sub_26A1D8D5C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A13440C();
      sub_26A1D8D5C();
      sub_26A1D8D5C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A1D87EC();
    }
  }

  sub_26A1DDCA4();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A1D8D5C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A1D8D5C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A1DBCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F640, &qword_26A42D8D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A1D8D5C();
    sub_26A1D8D5C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26A13440C();
      sub_26A1D8D5C();
      sub_26A1D8D5C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A1D87EC();
    }
  }

  sub_26A1DDCA4();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A1D8D5C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A1D8D5C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A1DC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28036F648, &qword_26A42D8D8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A1D8D5C();
    sub_26A1D8D5C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26A13440C();
      sub_26A1D8D5C();
      sub_26A1D8D5C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A1D87EC();
    }
  }

  sub_26A1DDCA4();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A1D8D5C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A1D8D5C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t _ProtoCommand.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v34[1] = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  v35 = v34 - v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - v13;
  sub_26A1E05A8();
  v15 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_26A1E05A8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        OUTLINED_FUNCTION_1_19();
        sub_26A1DCB84();
        goto LABEL_12;
      case 1u:
        sub_26A1D87EC();
        OUTLINED_FUNCTION_1_19();
        sub_26A1DCCC0();
        goto LABEL_12;
      case 2u:
        sub_26A1D87EC();
        OUTLINED_FUNCTION_1_19();
        sub_26A1DCE1C();
        goto LABEL_12;
      case 3u:
        sub_26A1D87EC();
        OUTLINED_FUNCTION_1_19();
        sub_26A1DCF78();
        goto LABEL_12;
      case 4u:
        v16 = OUTLINED_FUNCTION_1_19();
        sub_26A1DD0CC(v16, v17, v18, v19);
        v2 = v1;
        if (!v1)
        {
          goto LABEL_8;
        }

        sub_26A1D87EC();
        return sub_26A13440C();
      case 5u:
        sub_26A1D87EC();
        OUTLINED_FUNCTION_1_19();
        sub_26A1DD2E0();
        goto LABEL_12;
      case 6u:
        sub_26A1D87EC();
        OUTLINED_FUNCTION_1_19();
        sub_26A1DD43C();
LABEL_12:
        v2 = v1;
        if (!v1)
        {
          break;
        }

        return sub_26A13440C();
      default:
LABEL_8:
        sub_26A1D87EC();
        break;
    }
  }

  sub_26A13440C();
  v20 = type metadata accessor for _ProtoCommand(0);
  if (*(v3 + v20[5]) != 1 || (OUTLINED_FUNCTION_39_8(), result = sub_26A4249E4(), !v2))
  {
    v22 = v35;
    sub_26A1E05A8();
    if (__swift_getEnumTagSinglePayload(v22, 1, v15) != 1)
    {
      sub_26A1E05A8();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 8)
      {
        OUTLINED_FUNCTION_39_8();
        v24 = v2;
        sub_26A1DD7AC(v29, v30, v31, v32);
LABEL_20:
        v2 = v24;
        OUTLINED_FUNCTION_38_8();
        sub_26A1D87EC();
        if (v24)
        {
          return sub_26A13440C();
        }

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 7)
      {
        OUTLINED_FUNCTION_39_8();
        v24 = v2;
        sub_26A1DD598(v25, v26, v27, v28);
        goto LABEL_20;
      }

      sub_26A1D87EC();
    }

LABEL_23:
    sub_26A13440C();
    if (*(v3 + v20[6]) != 1 || (OUTLINED_FUNCTION_39_8(), result = sub_26A4249E4(), !v2))
    {
      v33 = v3 + v20[7];
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t sub_26A1DCB84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v5 = *v3;
      return sub_26A4249E4();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DCCC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DCE1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DCF78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_26A424A64();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A1D8D5C();
      sub_26A1DDCA4();
      sub_26A424A84();
      return sub_26A1D87EC();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD2E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD43C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26A1D8D5C();
      sub_26A1DDCA4();
      sub_26A424A84();
      return sub_26A1D87EC();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26A1D8D5C();
      sub_26A1DDCA4();
      sub_26A424A84();
      return sub_26A1D87EC();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

void static _ProtoCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_45_3();
  v3 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C860, &unk_26A425E10);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_59_7();
  v16 = *(v15 + 56);
  sub_26A1E05A8();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v2, 1, v3);
  if (!v17)
  {
    OUTLINED_FUNCTION_12_2();
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v2 + v16, 1, v3);
    if (!v17)
    {
      sub_26A1D8D5C();
      OUTLINED_FUNCTION_88();
      static _ProtoCommand.OneOf_Value.== infix(_:_:)();
      v19 = v18;
      sub_26A1D87EC();
      sub_26A1D87EC();
      sub_26A13440C();
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_26A1D87EC();
LABEL_9:
    sub_26A13440C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_37(v2 + v16, 1, v3);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_11:
  v20 = OUTLINED_FUNCTION_64_3();
  if (*(v1 + v21) == *(v0 + v21) && *(v1 + *(v20 + 24)) == *(v0 + *(v20 + 24)))
  {
    v22 = *(v20 + 28);
    sub_26A424794();
    OUTLINED_FUNCTION_0_28();
    sub_26A1DDCA4();
    OUTLINED_FUNCTION_14_7();
  }

LABEL_14:
  OUTLINED_FUNCTION_75();
}

unint64_t sub_26A1DDCA4()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A1DDD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DDDC4(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DDE34()
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t _ProtoCommand.ResponseGroup.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoCommand.ResponseGroup.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_84_0();
  if (!v4 || (result = OUTLINED_FUNCTION_42_7(), !v1))
  {
    v6 = *(type metadata accessor for _ProtoCommand.ResponseGroup(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A1DE08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DE10C(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DE17C()
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t sub_26A1DE1FC()
{
  result = MEMORY[0x26D65BA70](0xD000000000000011, 0x800000026A448490);
  qword_28036F498 = 0xD000000000000011;
  unk_28036F4A0 = 0x800000026A448410;
  return result;
}

void sub_26A1DE2AC()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26A424AC4();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26A426410;
  v13 = v12 + v11 + v9[14];
  *(v12 + v11) = 1;
  *v13 = v5;
  *(v13 + 8) = v3;
  *(v13 + 16) = 2;
  v14 = *v1;
  v15 = sub_26A424A94();
  OUTLINED_FUNCTION_12(v15);
  (*(v16 + 104))(v13, v14);
  sub_26A424AA4();
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoCommand.ChangeBackground.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A1DF194(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t _ProtoCommand.ChangeBackground.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoBackgroundElement(), sub_26A1DDCA4(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    v3 = *(type metadata accessor for _ProtoCommand.ChangeBackground(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A1DE614(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DE694(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DE704()
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t sub_26A1DE7B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x800000026A448410;
  return result;
}

uint64_t sub_26A1DE83C(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_246();
}

uint64_t sub_26A1DE88C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F4D0);
  __swift_project_value_buffer(v0, qword_28036F4D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "punch_out_uri";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundle_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "app_display_name";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoCommand.AppPunchout.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoCommand.AppPunchout.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_84_0();
  if (!v5 || (result = OUTLINED_FUNCTION_42_7(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_84_0();
    if (!v9 || (result = OUTLINED_FUNCTION_42_7(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_84_0();
      if (!v12 || (result = OUTLINED_FUNCTION_42_7(), !v1))
      {
        v13 = *(type metadata accessor for _ProtoCommand.AppPunchout(0) + 28);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

uint64_t sub_26A1DEC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DECD4(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DED44()
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t sub_26A1DEDE0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F4E8);
  __swift_project_value_buffer(v0, qword_28036F4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "command";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_elements";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "idioms";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoActionElement.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A1DF22C();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A1DF194(v3, v4, v5, v6, v7);
        break;
      case 1:
        OUTLINED_FUNCTION_5_6();
        sub_26A1DF0E0();
        break;
    }
  }

  return result;
}

uint64_t sub_26A1DF0E0()
{
  v0 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  type metadata accessor for _ProtoCommand(0);
  sub_26A1DDCA4();
  return sub_26A424944();
}

uint64_t sub_26A1DF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_157();
  sub_26A1DDCA4();
  return sub_26A424934();
}

uint64_t _ProtoActionElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_87();
  result = sub_26A1DF3A0(v2, v3, v4, v5);
  if (!v0)
  {
    if (*(*v1 + 16))
    {
      type metadata accessor for _ProtoTextElement(0);
      sub_26A1DDCA4();
      OUTLINED_FUNCTION_48_8();
      sub_26A424A74();
    }

    if (*(v1[1] + 16))
    {
      sub_26A11EF50();
      OUTLINED_FUNCTION_48_8();
      sub_26A4249D4();
    }

    v7 = *(type metadata accessor for _ProtoActionElement(0) + 24);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A1DF3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoCommand(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1D8D5C();
  sub_26A1DDCA4();
  sub_26A424A84();
  return sub_26A1D87EC();
}

void static _ProtoActionElement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for _ProtoCommand(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C870, &unk_26A425E20) - 8);
  v14 = *(*v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141_0();
  v25 = type metadata accessor for _ProtoActionElement(0);
  v16 = *(v25 + 28);
  v17 = v13[14];
  sub_26A1E05A8();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v0, 1, v5);
  if (!v18)
  {
    OUTLINED_FUNCTION_104();
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v0 + v17, 1, v5);
    if (!v18)
    {
      sub_26A1D8D5C();
      static _ProtoCommand.== infix(_:_:)();
      v20 = v19;
      sub_26A1D87EC();
      sub_26A1D87EC();
      sub_26A13440C();
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_26A1D87EC();
LABEL_9:
    sub_26A13440C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_37(v0 + v17, 1, v5);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_11:
  v21 = *v4;
  v22 = *v2;
  sub_26A0D9294();
  if (v23 & 1) != 0 && (sub_26A0DB6A0(v4[1], v2[1]))
  {
    v24 = *(v25 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0_28();
    sub_26A1DDCA4();
    sub_26A424B64();
  }

LABEL_14:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1DF8AC(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_125();
  sub_26A1DDCA4();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t (*sub_26A1DFE24(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_26A1DFE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DFF88(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1E0040()
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

void sub_26A1E00E8()
{
  sub_26A1E035C(319, &qword_28036F5B8, type metadata accessor for _ProtoCommand.OneOf_Value, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A1E01AC()
{
  result = type metadata accessor for _ProtoCommand.ChangeBackground(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoCommand.ResponseGroup(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for _ProtoCommand.AppPunchout(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A1E02A8()
{
  sub_26A1E035C(319, &qword_28036F5F0, type metadata accessor for _ProtoBackgroundElement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A1E035C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A1E03E8()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26A1E0494()
{
  sub_26A1E035C(319, &qword_28036D480, type metadata accessor for _ProtoTextElement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A11FDC8();
    if (v1 <= 0x3F)
    {
      sub_26A424794();
      if (v2 <= 0x3F)
      {
        sub_26A1E035C(319, &qword_28036F608, type metadata accessor for _ProtoCommand, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26A1E05A8()
{
  OUTLINED_FUNCTION_45_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v2 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  *(v0 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_28_6()
{
  v2 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t result)
{
  *v1 = result;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_42_7()
{

  return sub_26A424A64();
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_64_3()
{
  result = type metadata accessor for _ProtoCommand(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v1 = v0 + *(type metadata accessor for _ProtoCommand.AppPunchout(0) + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_79_6(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A1E09C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for ProtoDescription.MessageProperty();
    sub_26A424E44();
    v2 = sub_26A424D94();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_26A1E0A80(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26A1E0BD4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A1E0DF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A1E0E44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26A1E0E84(uint64_t result, int a2, int a3)
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

void sub_26A1E0EF4()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoControl_Switch(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoControl_Switch.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_99_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_24_14();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_99_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1098()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoControl_PlayerButton(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoControl_PlayerButton.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_95_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_95_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1254()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoFactItem_Standard(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoFactItem_Standard.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_94_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_94_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1768()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoFactItem_Button(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoFactItem_Button.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_88_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_88_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1AE0()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_ShortNumber.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_85_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_85_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1C9C()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_Text(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Text.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_84_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_84_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1E58()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_LargeText(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_LargeText.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_83_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_83_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E21D0()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_PairV2(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_PairV2.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_81_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_81_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E238C()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_PairNumberV2.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_79_7();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_79_7();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2548()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_Button(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Button.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_78_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_78_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E28C0()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_SwitchV2.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_76_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_76_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2A7C()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSystemText_ClarificationTitle.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_75_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_75_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2DF4()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSimpleItem_Rich(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_Rich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_72_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_72_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2FB0()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_ReverseRich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_70_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_70_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E316C()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSimpleItem_Visual(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_Visual.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_68_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_68_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E34E4()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_64_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_64_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E36A0()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoPrimaryHeader_Standard(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoPrimaryHeader_Standard.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_61_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_61_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E385C()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoPrimaryHeader_Marquee.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_59_8();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_59_8();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E3BD4()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoSecondaryHeader_Standard(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSecondaryHeader_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_55_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_55_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E3D90()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSecondaryHeader_Emphasized.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_53_7();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_53_7();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E3F4C()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoSectionHeader_Standard(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSectionHeader_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_51_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_51_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4108()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSectionHeader_Rich(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSectionHeader_Rich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_50_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_50_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E42C4()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoBinaryButton(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoBinaryButton.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_49_9();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_49_9();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4480()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoReference_Standard(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoReference_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_48_9();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_48_9();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E463C()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoReference_Logo(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoReference_Logo.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_47_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_47_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E47F8()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoReference_Rich(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoReference_Rich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_46_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_46_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E49B4()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoReference_Button(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoReference_Button.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_45_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_45_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4D2C()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoStatusIndicator_Error(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A1F33A8(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_43_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_43_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4EE8()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoStatusIndicator_InProgress(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A156AB0(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_110_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_110_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E50A4()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A380EA0(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_109_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_109_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5260()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoControl_Slider(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoControl_Slider.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_108_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_108_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E541C()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoTable(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoTable.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_107_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_107_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E55D8()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoVisualization_Chart(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoVisualization_Chart.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_106_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_106_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5794()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoVisualization_Image(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoVisualization_Image.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_105_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_105_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5950()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoVisualization_Map(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoVisualization_Map.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_104_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_104_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5B68()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoIntentsUI_Standard(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    sub_26A2B3BB8();
    sub_26A4247C4();
    OUTLINED_FUNCTION_102_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_102_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5EE0()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoHeroHeader(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    HeroHeader.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_100_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_100_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E60F8()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v17 = v0;
  v4 = v3;
  v18 = sub_26A4247D4();
  v5 = OUTLINED_FUNCTION_24(v18);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v16 - v14;
  sub_26A4247C4();
  v2(0);
  OUTLINED_FUNCTION_136_2();
  sub_26A424954();
  if ((v4 & 1) == 0)
  {
    v15 = v12;
  }

  (*(v7 + 8))(v15, v18);
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6290()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoTertiaryHeader_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_98_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_98_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E644C()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_Switch(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Switch.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_97_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_97_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6608()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_Pair(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Pair.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_96_0();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_96_0();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E68D8()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoResponse.Section(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    sub_26A31C07C();
    sub_26A4247C4();
    OUTLINED_FUNCTION_19_12();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_19_12();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6A94()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoSummaryItem_PairNumber(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_PairNumber.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_93_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_93_1();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6C50()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoStandardPlayerButton(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A2917A8(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_91_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_91_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6E0C()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoHorizontalList_Standard.Item(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    HorizontalListStandard.Item.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_89_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_89_2();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E72F4()
{
  OUTLINED_FUNCTION_40_5();
  v4 = OUTLINED_FUNCTION_32_9();
  v5 = OUTLINED_FUNCTION_2_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_121_0();
  v14 = type metadata accessor for _ProtoTextElement(0);
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_20();
  if (v3)
  {
    sub_26A1EDE38();
    v18 = *(v2 + 16);
    if (v18 != 255)
    {
      sub_26A0D6768(*v2, *(v2 + 8), *(v2 + 16));
      *v2 = xmmword_26A42D990;
      *(v2 + 16) = v18 & 1;
    }

    sub_26A4247C4();
    OUTLINED_FUNCTION_80_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_133_2();
    sub_26A424954();
    if (!v1)
    {
      OUTLINED_FUNCTION_132_2();
    }

    v19 = OUTLINED_FUNCTION_12_12();
    v20(v19);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_80_3();
    sub_26A1EDD4C();
    sub_26A424954();
    if (!v1)
    {
      OUTLINED_FUNCTION_132_2();
    }

    (*(v7 + 8))(v12, v0);
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7538()
{
  OUTLINED_FUNCTION_40_5();
  v4 = v3;
  v27 = sub_26A4247D4();
  v5 = OUTLINED_FUNCTION_24(v27);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_121_0();
  v14 = type metadata accessor for ImageElement();
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v20 = (v19 - v18);
  v21 = type metadata accessor for _ProtoImageElement(0);
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_20();
  if (v4)
  {
    sub_26A1EDE38();
    if (qword_28036C790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v14, qword_2803A8980);
    sub_26A1EDE38();
    v25 = *v20;

    OUTLINED_FUNCTION_23_16();
    sub_26A1EDDE4();
    v26 = *v2;

    *v2 = v25;
    sub_26A4247C4();
    OUTLINED_FUNCTION_73_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_133_2();
    sub_26A424954();
    if (!v0)
    {
      OUTLINED_FUNCTION_132_2();
    }

    (*(v7 + 8))(v1, v27);
    OUTLINED_FUNCTION_23_16();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_73_4();
    sub_26A1EDD4C();
    sub_26A424954();
    if (!v0)
    {
      OUTLINED_FUNCTION_132_2();
    }

    (*(v7 + 8))(v12, v27);
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E781C()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoPlayerButton(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoPlayerButton.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_71_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_71_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E79D8()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoActionElement(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0();
    sub_26A4247C4();
    OUTLINED_FUNCTION_69_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_69_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7B94()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoCustomElement();
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _s10SnippetKit13CustomElementV13redactedProtoAA01_fcD0Vvg_0(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_67_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_67_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7D50()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_15();
  v9 = type metadata accessor for _ProtoResponse.Group(v8);
  v10 = OUTLINED_FUNCTION_8_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A3C1E64(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_65_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_21();
    }

    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_65_5();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_4_20();
    }

    v16(v15);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7F68()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_15();
  v7 = type metadata accessor for _ProtoCoreChartElement();
  v8 = OUTLINED_FUNCTION_8_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    CoreChartElement.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_62_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_3_21();
    }

    v12(v11);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_62_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v13 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_4_20();
    }

    v14(v13);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E8124()
{
  OUTLINED_FUNCTION_40_5();
  v3 = OUTLINED_FUNCTION_32_9();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoBackgroundElement();
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    BackgroundElement.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_60_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_60_6();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E82E0()
{
  OUTLINED_FUNCTION_40_5();
  v2 = OUTLINED_FUNCTION_32_9();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = type metadata accessor for _ProtoPlayer(v7);
  v9 = OUTLINED_FUNCTION_8_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    Player.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_58_7();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14();
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_21();
    }

    v13(v12);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_58_7();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11();
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_20();
    }

    v15(v14);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}