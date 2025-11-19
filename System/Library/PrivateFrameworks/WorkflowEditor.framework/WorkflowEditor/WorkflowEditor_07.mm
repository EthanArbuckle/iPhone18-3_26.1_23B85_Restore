BOOL sub_2744AA4F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E0);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - v2;
  v4 = sub_27463B04C();
  v5 = sub_274453594(v4);
  if (v5)
  {
    sub_2744535A4(0, (v4 & 0xC000000000000001) == 0);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x277C58B20](0, v4);
    }

    else
    {
      v6 = *(v4 + 32);
    }

    v7 = v6;

    [v7 preferredPresentationSize];
    v9 = v8;
    sub_274637EDC();

    v10 = type metadata accessor for DragReorderingPlaceholder(0);
    *&v3[*(v10 + 20)] = v9;
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
    OUTLINED_FUNCTION_30_1();
    sub_2744B0C7C();
    swift_endAccess();
  }

  else
  {
  }

  return v5 != 0;
}

uint64_t sub_2744AA65C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D938);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v71 - v6;
  v8 = type metadata accessor for PseudoLayout(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8);
  OUTLINED_FUNCTION_53_0(v13);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  v78 = v20 - v19;
  OUTLINED_FUNCTION_29_3();
  sub_2744342DC();
  if (!*(&v84[1] + 1))
  {
    sub_27440CB1C(v84, &qword_28094D900);
    return 0;
  }

  sub_2743F45D0(v84, v85);
  OUTLINED_FUNCTION_29_3();
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    v21 = &qword_28094D8E8;
    v22 = v1;
LABEL_7:
    sub_27440CB1C(v22, v21);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v85);
    return 0;
  }

  v23 = v78;
  (*(v17 + 32))(v78, v1, v15);
  sub_2744AB860(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v23, v15);
    v21 = &qword_28094D938;
    v22 = v7;
    goto LABEL_7;
  }

  v73 = v17;
  v74 = v15;
  OUTLINED_FUNCTION_2_15();
  sub_2744B0DBC();
  v75 = a1;
  sub_27463B05C();
  v27 = sub_2744AC0A4(v12, v25, v26);
  v77 = v28;
  v76 = v29;
  v30 = ~v29;
  v31 = sub_2744A9A44();
  v34 = v33;
  if (!v30)
  {
    v35 = v76;
    if (v33 == -1)
    {
      goto LABEL_17;
    }

    v39 = OUTLINED_FUNCTION_27_4();
    v31 = sub_2744B04F4(v39, v40, v34);
    goto LABEL_16;
  }

  v35 = v76;
  if (v33 == -1 || (v36 = sub_2744A6734(v27, v77, v76 & 1, v31, v32, v33 & 1), v37 = OUTLINED_FUNCTION_27_4(), v31 = sub_2744B04F4(v37, v38, v34), (v36 & 1) == 0))
  {
LABEL_16:
    MEMORY[0x28223BE20](v31);
    *(&v71 - 6) = v85;
    *(&v71 - 5) = v27;
    *(&v71 - 4) = v77;
    *(&v71 - 24) = v35;
    *(&v71 - 2) = v2;
    sub_2744AB6A4();
  }

LABEL_17:
  sub_27463B04C();
  if (v35 == -1)
  {

    OUTLINED_FUNCTION_1_16();
    sub_2744B049C(v12, v42);
    (*(v73 + 8))(v78, v74);
    goto LABEL_8;
  }

  v41 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_viewState);
  if (v41)
  {
    sub_2744306B8(v41 + 16, v84);
  }

  else
  {
    memset(v84, 0, 40);
  }

  sub_2744A9DEC(v84);
  __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  sub_2744B3CA4();

  [*(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator) draggingItemDropped];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890);
  *&v84[0] = sub_27463831C();

  sub_2744AE83C(v84);

  v43 = *&v84[0];
  if (v35)
  {

    v44 = v78;
    if (*(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholderAnchor))
    {
      type metadata accessor for CGRect(0);

      sub_2746393EC();
      v86.origin.x = OUTLINED_FUNCTION_7_16();
      CGRectGetMidX(v86);
      v87.origin.x = OUTLINED_FUNCTION_7_16();
      CGRectGetMidY(v87);
      sub_27463B03C();
    }
  }

  else
  {
    v71 = v27;
    v72 = v12;
    v45 = 0;
    v46 = *(*&v84[0] + 16);
    v47 = *&v84[0] + 32;
    v48 = MEMORY[0x277D84F90];
    v49 = v77;
    while (v46 != v45)
    {
      if (v45 >= *(v43 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);

        __break(1u);
        return result;
      }

      sub_2744AE8A8(v47, v84);
      if (*(&v84[2] + 1) >= v49)
      {
        sub_2744AE8E0(v84);
      }

      else
      {
        memcpy(v83, v84, sizeof(v83));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v79 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27445141C();
          v49 = v77;
          v48 = v79;
        }

        v51 = *(v48 + 2);
        if (v51 >= *(v48 + 3) >> 1)
        {
          sub_27445141C();
          v49 = v77;
          v48 = v79;
        }

        *(v48 + 2) = v51 + 1;
        memcpy(&v48[10 * v51 + 4], v83, 0x50uLL);
      }

      v47 += 80;
      ++v45;
    }

    v12 = v72;
    v52 = *v72;
    v53 = *(v48 + 2);
    if (v53)
    {
      v54 = 0;
      do
      {
        v55 = &v48[10 * v54++ + 4];
        sub_2744AE8A8(v55, v84);
        v56 = sub_2744A9824();
        v57 = *(v56 + 16);
        v58 = (v56 + 72);
        if (v57)
        {
          while ((MEMORY[0x277C58A40](v58 - 5, v84) & 1) == 0 || *v58 != *(&v84[2] + 1))
          {
            v58 += 6;
            if (!--v57)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:

          v52 = v52 + *&v84[3] + *(&v84[4] + 1);
        }

        sub_2744AE8E0(v84);
      }

      while (v54 != v53);

      v12 = v72;
    }

    else
    {
    }

    v48 = sub_2744A9824();
    v59 = 0;
    v60 = *(v48 + 2);
    v61 = v48 + 4;
    v72 = v48 + 4;
LABEL_48:
    for (i = &v61[6 * v59]; v60 != v59; i += 48)
    {
      if (v59 >= *(v48 + 2))
      {
        goto LABEL_59;
      }

      *&v84[0] = v59;
      sub_274434ED4(i, v84 + 8);
      if (!*&v84[2])
      {
        break;
      }

      v79 = *(v84 + 8);
      v80 = *(&v84[1] + 1);
      v81 = v84[2];
      v82 = *&v84[3];
      if (*(sub_2744AB724() + 16))
      {
        sub_274534E8C();
        if (v63)
        {
          OUTLINED_FUNCTION_25_6();
          sub_2744AE8A8(v65 + v64 * v66, v83);
          sub_2744AE910(&v79);

          memcpy(v84, v83, 0x50uLL);
          v67 = v52 + *&v84[3];
          v68 = *(&v84[4] + 1);
          v88.origin.x = OUTLINED_FUNCTION_7_16();
          CGRectGetMidX(v88);
          v89.origin.x = OUTLINED_FUNCTION_7_16();
          CGRectGetMidY(v89);
          sub_27463B03C();
          sub_2744AE8E0(v84);
          v52 = v67 + v68;
          ++v59;
          v61 = v72;
          goto LABEL_48;
        }
      }

      sub_2744AE910(&v79);
      ++v59;
    }

    v69 = sub_2744A9824();
    sub_2744A95D8(v69);
    sub_2744B04F4(v71, v77, v76);
    v44 = v78;
  }

  OUTLINED_FUNCTION_1_16();
  sub_2744B049C(v12, v70);
  (*(v73 + 8))(v44, v74);
  __swift_destroy_boxed_opaque_existential_1(v85);
  return 1;
}

uint64_t sub_2744AAF1C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2744B3508();
  sub_2744B050C(a2, a3, a4);
  return sub_2744A9B6C(a2, a3, a4);
}

uint64_t sub_2744AAFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_27463939C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D938);
  OUTLINED_FUNCTION_53_0(v11);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for PseudoLayout(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = (v18 - v17);
  if ((sub_2744A9EE8() & 1) == 0)
  {
    sub_2744A96EC(1);
  }

  sub_2744AB860(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    v41 = v4;
    v42 = a1;
    OUTLINED_FUNCTION_2_15();
    sub_2744B0DBC();
    v21 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator);
    [v21 draggingPositionUpdated];
    sub_27463B05C();
    v43 = sub_2744AC0A4(v19, v22, v23);
    v44 = v24;
    v26 = v25;
    v27 = sub_2744A9A44();
    if (v29 == -1)
    {
      if (v26 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = v27;
      v31 = v28;
      v32 = v29;
      if (v26 == -1)
      {
        sub_2744B04F4(v27, v28, v29);
      }

      else
      {
        v33 = sub_2744A6734(v27, v28, v29 & 1, v43, v44, v26 & 1);
        sub_2744B04F4(v30, v31, v32);
        if (v33)
        {
          goto LABEL_13;
        }
      }
    }

    v34 = [v21 draggingItemSnapped];
    MEMORY[0x28223BE20](v34);
    v36 = v43;
    v35 = v44;
    *(&v41 - 4) = v2;
    *(&v41 - 3) = v36;
    *(&v41 - 2) = v35;
    *(&v41 - 8) = v26;
    sub_2744AB6A4();
    if (v26 != -1)
    {
LABEL_13:
      if (v26)
      {
        v37 = MEMORY[0x277CDD858];
      }

      else
      {
        v37 = MEMORY[0x277CDD860];
      }

      (*(v6 + 104))(v10, *v37, v41);
      a1 = v42;
      sub_27463927C();
      sub_2744B04F4(v43, v44, v26);
      goto LABEL_18;
    }

LABEL_15:
    (*(v6 + 104))(v10, *MEMORY[0x277CDD868], v41);
    a1 = v42;
    sub_27463927C();
LABEL_18:
    OUTLINED_FUNCTION_1_16();
    sub_2744B049C(v19, v38);
    v20 = 0;
    goto LABEL_19;
  }

  sub_27440CB1C(v14, &qword_28094D938);
  v20 = 1;
LABEL_19:
  v39 = sub_27463928C();
  return __swift_storeEnumTagSinglePayload(a1, v20, 1, v39);
}

uint64_t sub_2744AB30C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  sub_2744342DC();
  if (v10)
  {
    sub_2744306B8(v9, v8);
    sub_27440CB1C(v9, &qword_28094D900);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_2744B3508();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_27440CB1C(v9, &qword_28094D900);
  }

  sub_2744B050C(a2, a3, a4);
  return sub_2744A9B6C(a2, a3, a4);
}

uint64_t sub_2744AB41C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v1, v2);
  OUTLINED_FUNCTION_20_6();
  sub_2746380DC();

  swift_getKeyPath();
  OUTLINED_FUNCTION_20_6();
  sub_2746380FC();

  *(v0 + 48) = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_2746380EC();
}

id sub_2744AB520()
{
  sub_2744AB6A4();
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator);

  return [v1 draggingCancelled];
}

uint64_t sub_2744AB574()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v1, v2);
  OUTLINED_FUNCTION_20_6();
  sub_2746380DC();

  swift_getKeyPath();
  OUTLINED_FUNCTION_20_6();
  sub_2746380FC();

  *(v0 + 48) = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_2746380EC();

  sub_2744A9B6C(0, 0, 255);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_2744A9DEC(v4);
  return sub_2744A96EC(0);
}

uint64_t sub_2744AB6A4()
{
  OUTLINED_FUNCTION_57();
  MEMORY[0x277C57870](0.3, 1.0, 0.0);
  sub_27463946C();
}

uint64_t sub_2744AB724()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v3 = sub_2744AD448(v1, v2);
  OUTLINED_FUNCTION_8_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2746380DC();

  OUTLINED_FUNCTION_29_3();
}

uint64_t sub_2744AB7F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__draggingItemElements;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_2744AB860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for PseudoLayout(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_29_3();
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
  {
    sub_27440CB1C(v1, &qword_28094D8E8);
    return __swift_storeEnumTagSinglePayload(v68, 1, 1, v3);
  }

  v66 = v10;
  v67 = v3;
  v65 = v12;
  v18 = (*(v12 + 32))(v16, v1, v10);
  v19 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_activeElements);
  MEMORY[0x28223BE20](v18);
  v63[-2] = v16;

  v20 = sub_2744B022C(sub_2744B2084, &v63[-4], v19);

  MEMORY[0x28223BE20](v21);
  v63[-2] = v16;

  OUTLINED_FUNCTION_20_6();
  v25 = sub_2744B022C(v22, v23, v24);

  *&__dst[0] = sub_2745E0074(v25);
  sub_2744AE7D0(__dst);
  sub_274442D88(*&__dst[0], __dst);

  v64 = v16;
  if (*(&__dst[1] + 1))
  {
    MinY = CGRectGetMinY(*&__dst[3]);
    sub_2744AE910(__dst);
  }

  else
  {
    sub_27440CB1C(__dst, &qword_28094D908);
    MinY = 0.0;
  }

  v27 = v65;
  v28 = v66;
  sub_2744A8CDC(v20, v25, v7, MinY);
  v29 = sub_2744A9824();
  v30 = *(v29 + 16);
  if (!v30)
  {

    v61 = v67;
LABEL_28:
    OUTLINED_FUNCTION_2_15();
    v62 = v68;
    sub_2744B0DBC();
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    return (*(v27 + 8))(v64, v28);
  }

  v31 = *(v67 + 20);
  v72 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator___observationRegistrar;
  v69 = v31;
  v70 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__draggingItemElements;
  v63[1] = v29;
  v32 = v29 + 32;
  while (1)
  {
    sub_274434ED4(v32, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890);
    sub_27463837C();
    if (v76[3])
    {
      break;
    }

    sub_2744AE910(v77);
    sub_27440CB1C(v76, &qword_28094D910);
LABEL_25:
    v32 += 48;
    if (!--v30)
    {

      v28 = v66;
      v61 = v67;
      v27 = v65;
      goto LABEL_28;
    }
  }

  v33 = v7;
  memcpy(__dst, v76, sizeof(__dst));
  sub_274434ED4(v77, v75);
  sub_2744AE8A8(__dst, v76);
  swift_getKeyPath();
  v74[0] = v2;
  OUTLINED_FUNCTION_0_24();
  v35 = sub_2744AD448(&qword_28094D918, v34);
  sub_2746380DC();

  v74[0] = v2;
  swift_getKeyPath();
  v71 = v35;
  sub_2746380FC();

  v36 = v70;
  OUTLINED_FUNCTION_30_1();
  if (!v76[3])
  {
    sub_27440CB1C(v76, &qword_28094D910);
    v45 = v36;
    v46 = sub_274534E8C();
    v7 = v33;
    if (v47)
    {
      v48 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v73 = *(v2 + v36);
      *(v2 + v36) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D920);
      OUTLINED_FUNCTION_28_5();
      sub_27463C4CC();
      v49 = v73;
      sub_2744AE910(*(v73 + 48) + 48 * v48);
      OUTLINED_FUNCTION_25_6();
      memcpy(v74, (v50 + v48 * v51), 0x50uLL);
      sub_2744AD15C();
      sub_27463C4EC();
      sub_2744AE910(v75);
      *(v2 + v45) = v49;
    }

    else
    {
      sub_2744AE910(v75);
      memset(v74, 0, 80);
    }

    sub_27440CB1C(v74, &qword_28094D910);
LABEL_24:
    swift_endAccess();
    v74[0] = v2;
    swift_getKeyPath();
    sub_2746380EC();

    sub_2744AE8E0(__dst);
    sub_2744AE910(v77);
    goto LABEL_25;
  }

  memcpy(v74, v76, 0x50uLL);
  swift_isUniquelyReferenced_nonNull_native();
  v37 = v36;
  v38 = *(v2 + v36);
  v73 = v38;
  *(v2 + v37) = 0x8000000000000000;
  v39 = sub_274534E8C();
  if (!__OFADD__(*(v38 + 16), (v40 & 1) == 0))
  {
    v41 = v39;
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D920);
    OUTLINED_FUNCTION_28_5();
    if (sub_27463C4CC())
    {
      v43 = sub_274534E8C();
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_31;
      }

      v41 = v43;
    }

    v52 = v73;
    if (v42)
    {
      OUTLINED_FUNCTION_25_6();
      sub_2744AEAB4(v74, v53 + v41 * v54);
    }

    else
    {
      OUTLINED_FUNCTION_30_3(v73 + 8 * (v41 >> 6));
      sub_274434ED4(v75, v55 + 48 * v41);
      OUTLINED_FUNCTION_25_6();
      memcpy((v56 + v41 * v57), v74, 0x50uLL);
      v58 = *(v52 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_30;
      }

      *(v52 + 16) = v60;
    }

    sub_2744AE910(v75);
    *(v2 + v70) = v52;
    v7 = v33;
    goto LABEL_24;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_27463C71C();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_2744ABFF8()
{
  sub_2744342DC();
  MinY = CGRectGetMinY(v6);
  sub_2744342DC();
  v1 = MinY < CGRectGetMinY(v4);
  sub_2744AE910(&v3);
  sub_2744AE910(v5);
  return v1;
}

uint64_t sub_2744AC0A4(double *a1, double a2, double a3)
{
  v4 = v3;
  v73 = a1;
  v72 = type metadata accessor for DragReorderingPlaceholder(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v71 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E0);
  OUTLINED_FUNCTION_53_0(v10);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  v13 = v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8);
  OUTLINED_FUNCTION_53_0(v14);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_29_3();
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v3, 1, v16) == 1)
  {
    sub_27440CB1C(v3, &qword_28094D8E8);
    return 0;
  }

  (*(v18 + 32))(v22, v3, v16);
  v23 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_viewState);
  v24 = v18;
  if (!v23)
  {
    v29 = OUTLINED_FUNCTION_26_5();
    v30(v29);
    return 0;
  }

  v25 = sub_2744A9824();
  sub_274442DA8(v25, &v83);

  v68 = v22;
  v69 = v16;
  if (*(&v84 + 1))
  {
    v78 = v83;
    v79 = v84;
    v80 = v85;
    v26 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_activeElements);

    v27 = sub_27452F3B4(&v78, v26);

    if (v27)
    {
      type metadata accessor for CGRect(0);
      sub_2746393EC();

      sub_2744AE910(&v78);
      v28 = *(&v84 + 1);
      goto LABEL_13;
    }

    sub_2744AE910(&v78);
  }

  else
  {
    sub_27440CB1C(&v83, &qword_28094D8F0);
  }

  OUTLINED_FUNCTION_29_3();
  sub_2744342DC();
  v31 = v72;
  if (__swift_getEnumTagSinglePayload(v13, 1, v72))
  {
    sub_27440CB1C(v13, &qword_28094D8E0);
    v28 = 0.0;
  }

  else
  {
    v32 = v71;
    sub_2744AE94C(v13, v71);
    sub_27440CB1C(v13, &qword_28094D8E0);
    v28 = *(v32 + *(v31 + 20));
    sub_2744B049C(v32, type metadata accessor for DragReorderingPlaceholder);
  }

LABEL_13:
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = 0;
  v33[6] = 0;
  v33[7] = 0;
  v33[5] = 1;
  v34 = *v73;
  type metadata accessor for PseudoLayout(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890);
  v78.n128_u64[0] = sub_27463831C();

  sub_2744AE83C(&v78);
  v73 = (v33 + 2);

  v35 = *(v78.n128_u64[0] + 16);
  v70 = v23;
  if (v35)
  {
    v36 = v33;
    v71 = v78.n128_u64[0];
    v72 = v24;
    v37 = 0;
    v38 = v78.n128_u64[0] + 32;
    v39 = v28 * 0.5;
    do
    {
      v40 = v38 + 80 * v37++;
      sub_2744AE8A8(v40, &v78);
      v34 = v34 + v81;
      v41 = v4;
      v42 = sub_2744A9824();
      v43 = *(v42 + 16);
      v44 = (v42 + 72);
      if (v43)
      {
        while ((MEMORY[0x277C58A40](v44 - 5, &v78) & 1) == 0 || *v44 != *(&v80 + 1))
        {
          v44 += 6;
          if (!--v43)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:

        sub_274434ED4(&v78, &v83);
        v75 = v83;
        v76 = v84;
        v77 = v85;
        sub_2744AC99C(v39 + v34, a2, a3);
        sub_27440CB1C(&v75, &qword_28094A4B0);
        v34 = v34 + v82;
      }

      sub_2744AE8E0(&v78);
      v4 = v41;
    }

    while (v37 != v35);

    v46 = v68;
    v45 = v69;
    v24 = v72;
    v33 = v36;
  }

  else
  {

    v39 = v28 * 0.5;
    v46 = v68;
    v45 = v69;
  }

  *&v80 = 0;
  v78 = 0u;
  v79 = 0u;
  sub_2744AC99C(v39 + v34, a2, a3);
  sub_27440CB1C(&v78, &qword_28094A4B0);
  OUTLINED_FUNCTION_29_3();
  sub_2744342DC();
  if (*(&v84 + 1) == 1)
  {
    v47 = OUTLINED_FUNCTION_27_4();
    v48(v47);

    sub_27440CB1C(&v83, &qword_28094D8F8);

    return 0;
  }

  v75 = v83;
  v76 = v84;
  v77 = v85;
  v51 = *(sub_2744A9824() + 16);

  v67[1] = v33;
  if (v51)
  {
    v73 = v51;
    v52 = v46;
    v53 = sub_2744A9824();
    v54 = *(v53 + 16);
    if (v54)
    {
      v71 = v4;
      v72 = v24;
      v74 = MEMORY[0x277D84F90];
      sub_27445124C(0, v54, 0);
      v55 = v74;
      v56 = v53 + 32;
      do
      {
        sub_274434ED4(v56, &v78);
        sub_27448E108(&v78, &v83);
        sub_2744AE910(&v78);
        v74 = v55;
        v58 = *(v55 + 16);
        v57 = *(v55 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_27445124C((v57 > 1), v58 + 1, 1);
          v55 = v74;
        }

        *(v55 + 16) = v58 + 1;
        v59 = v55 + 40 * v58;
        v60 = v83;
        v61 = v84;
        *(v59 + 64) = v85;
        *(v59 + 32) = v60;
        *(v59 + 48) = v61;
        v56 += 48;
        --v54;
      }

      while (v54);

      v45 = v69;
      v24 = v72;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v49 = sub_2744A69E0(v55);
    v62 = v63;

    v46 = v52;
    v51 = v73;
  }

  else
  {
    v49 = sub_2744A6BA0();
    v62 = 0;
  }

  OUTLINED_FUNCTION_29_3();
  sub_2744342DC();
  if (*(&v84 + 1))
  {
    sub_2743F45D0(&v83, &v78);
    __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
    v64 = sub_2744B695C(v49, v62, v51 == 0);

    sub_2744AE940(v49, v62, v51 == 0);
    sub_27440CB1C(&v75, &qword_28094A4B0);
    (*(v24 + 8))(v46, v45);
    __swift_destroy_boxed_opaque_existential_1(&v78);

    return v64;
  }

  else
  {

    sub_27440CB1C(&v75, &qword_28094A4B0);
    v65 = OUTLINED_FUNCTION_27_4();
    v66(v65);
    sub_27440CB1C(&v83, &qword_28094D900);
  }

  return v49;
}

uint64_t sub_2744AC99C(double a1, double a2, double a3)
{
  v3 = vabdd_f64(a3, a1);
  swift_beginAccess();
  sub_2744342DC();
  if (*(&v6 + 1) == 1)
  {
    sub_27440CB1C(&v5, &qword_28094D8F8);
    sub_2744342DC();
    v11 = v3;
    swift_beginAccess();
  }

  else
  {
    v9[0] = v5;
    v9[1] = v6;
    v10 = v7;
    v11 = v8;
    result = sub_27440CB1C(v9, &qword_28094A4B0);
    if (v3 >= v8)
    {
      return result;
    }

    sub_2744342DC();
    v11 = v3;
    swift_beginAccess();
  }

  return sub_2744B0C7C();
}

uint64_t sub_2744ACB08()
{
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v0, v1);
  return sub_2746380CC();
}

uint64_t sub_2744ACBB0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = (a3 & a6) == 255;
  if (a3 != 255 && a6 != 0xFF)
  {
    if (a3)
    {
      v6 = a6 & (a1 == a4);
    }

    else if (a6)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_2744F57D0(a1, a4) & (a2 == a5);
    }
  }

  return v6 ^ 1u;
}

uint64_t sub_2744ACC30()
{

  sub_2744B04F4(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_27440CB1C(v0 + 80, &qword_28094D948);
  sub_27440CB1C(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_geometryProxy, &qword_28094D8E8);

  sub_27440CB1C(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholder, &qword_28094D8E0);

  sub_27440CB1C(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate, &qword_28094D900);

  v1 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator___observationRegistrar;
  sub_27463811C();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2744ACD8C()
{
  sub_2744ACC30();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2744ACE0C()
{
  sub_2744ACFC0(319, &qword_28094D880, MEMORY[0x277CDF6E0]);
  if (v0 <= 0x3F)
  {
    sub_2744ACFC0(319, &qword_28094D888, type metadata accessor for DragReorderingPlaceholder);
    if (v1 <= 0x3F)
    {
      sub_27463811C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2744ACFC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27463C0AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2744AD07C()
{
  sub_2744AD0F8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2744AD0F8()
{
  if (!qword_28094D8A8)
  {
    sub_2744AD15C();
    v0 = sub_27463835C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094D8A8);
    }
  }
}

unint64_t sub_2744AD15C()
{
  result = qword_28094D8B0;
  if (!qword_28094D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D8B0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2744AD1E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2744AD220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2744AD280(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2744AD2C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744AD344()
{
  result = sub_274637EEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2744AD448(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2744AD494()
{
  result = qword_28094D8D0;
  if (!qword_28094D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D8D0);
  }

  return result;
}

uint64_t sub_2744AD610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBE8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBF0);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBF8);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = &v30 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC00) - 8;
  MEMORY[0x28223BE20](v36);
  v13 = *(v2 + 56);
  v33 = &v30 - v14;
  v34 = v13;
  if (sub_2744A9FF0(v3))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC08);
  v17 = *(*(v16 - 8) + 16);
  v31 = v7;
  v17(v7, a1, v16);
  *&v7[*(v5 + 36)] = v15;
  memset(v46, 0, 32);
  sub_2744B1DC8(v3, __src);
  v18 = swift_allocObject();
  memcpy((v18 + 16), __src, 0x50uLL);
  sub_2744B1DC8(v3, v44);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v44, 0x50uLL);
  sub_2744B1DC8(v3, v43);
  v20 = swift_allocObject();
  memcpy((v20 + 16), v43, 0x50uLL);
  sub_2744B1DC8(v3, v42);
  v21 = swift_allocObject();
  memcpy((v21 + 16), v42, 0x50uLL);
  v29 = sub_2744B1E88();
  v22 = v31;
  v23 = v32;
  sub_27463A94C();

  sub_27440CB1C(v46, &unk_28094A230);
  sub_27440CB1C(v22, &qword_28094DBE8);
  __src[0] = v5;
  __src[1] = v29;
  swift_getOpaqueTypeConformance2();
  v24 = v35;
  v25 = v39;
  sub_27463A89C();
  (*(v40 + 8))(v23, v25);
  v26 = v33;
  v27 = &v33[*(v36 + 44)];
  sub_274434ED4(v3, v27);
  *(v27 + 48) = v34;
  (*(v37 + 32))(v26, v24, v38);
  sub_2743FB21C();
}

id sub_2744ADAF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_27463938C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CDD850], v3, v5);
  v8 = sub_27463937C();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    return sub_2744AA0D0(a2);
  }

  return result;
}

uint64_t sub_2744ADC58@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D9D8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D9E0);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v8[*(v6 + 36)] = 0;
  v19[3] = type metadata accessor for DragReorderingCoordinator(0);
  v19[4] = sub_2744AD448(&qword_28094D8D8, type metadata accessor for DragReorderingCoordinator);
  v19[0] = a2;
  sub_2744B0B40();

  sub_27463A96C();
  sub_27440CB1C(v8, &qword_28094D9D8);
  __swift_destroy_boxed_opaque_existential_1(v19);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D9F8) + 36)) = a2;
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA00) + 36));
  *v10 = sub_2744B0C24;
  v10[1] = a2;
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA08) + 36));
  *v11 = sub_2744B0C48;
  v11[1] = a2;
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA10) + 36));
  *v12 = sub_2744B0C6C;
  v12[1] = a2;
  swift_retain_n();
  v13 = sub_27463B0CC();
  v15 = v14;
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA18) + 36));
  *v16 = sub_2744B0C74;
  v16[1] = a2;
  v16[2] = v13;
  v16[3] = v15;
}

uint64_t sub_2744ADEDC(void *a1, uint64_t a2, void *a3)
{
  *(a2 + *a3) = *a1;
}

uint64_t sub_2744ADF20(void *a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholderAnchor) = *a1;
}

uint64_t sub_2744ADF68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_2746393DC();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  swift_beginAccess();
  sub_2744B0C7C();
  swift_endAccess();
  result = sub_27463AB7C();
  *a2 = result;
  return result;
}

uint64_t sub_2744AE0A0()
{
  sub_2744A9950();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBD8);
  sub_27440CA78(&qword_28094DBE0, &qword_28094DBD8);
  return sub_27463A76C();
}

uint64_t sub_2744AE190(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094D950);
  sub_2744AD15C();
  result = sub_27463B4DC();
  *a2 = result;
  return result;
}

uint64_t sub_2744AE278@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  *a3 = *a2;
}

void *sub_2744AE2D0(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_2744AE31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a1;
  v28 = a3;
  swift_getWitnessTable();
  v6 = sub_274639F5C();
  type metadata accessor for CGRect(255);
  v25[0] = v7;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v25[1] = sub_27463A0BC();
  v10 = sub_27463965C();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  v16 = sub_2744A9F8C();
  v17 = sub_27463AD3C();
  (*(*(a2 - 8) + 16))(v31, v4, a2);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v8;
  *(v18 + 32) = v16 & 1;
  v19 = v31[1];
  *(v18 + 40) = v31[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = v31[2];
  *(v18 + 88) = v32;
  WitnessTable = swift_getWitnessTable();
  sub_2744AE6E8(v9, v17, sub_2744B1938, v18, v6, v25[0], v9, WitnessTable);

  v21 = swift_getWitnessTable();
  v29 = WitnessTable;
  v30 = v21;
  v22 = swift_getWitnessTable();
  sub_2744E9688(v12, v10, v22);
  v23 = *(v26 + 8);
  v23(v12, v10);
  sub_2744E9688(v15, v10, v22);
  return (v23)(v15, v10);
}

uint64_t sub_2744AE5FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648570;
    sub_274434ED4(a3, inited + 32);
    *(inited + 80) = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094D950);
  sub_2744AD15C();
  result = sub_27463B4DC();
  *a4 = result;
  return result;
}

uint64_t sub_2744AE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v14[0] = sub_2744AE7CC();
  v14[1] = v10;
  v14[2] = v11;
  v12 = sub_27463A0BC();
  MEMORY[0x277C57160](v14, a5, v12, a8);
}

uint64_t sub_2744AE7D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274545CAC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2744AE9B0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2744AE83C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274545CC4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2744AEAEC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2744AE940(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2744AE94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragReorderingPlaceholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744AE9B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27463C65C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B1A8);
        v6 = sub_27463B88C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2744AEE80(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2744AEBE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2744AEAEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27463C65C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_27463B88C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2744AF66C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2744AED74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2744AEBE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 80 * a3;
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        sub_2744342DC();
        sub_2744342DC();
        sub_2744342DC();
        MinY = CGRectGetMinY(v16);
        sub_2744342DC();
        v11 = CGRectGetMinY(v14);
        sub_2744AE910(v13);
        sub_2744AE910(v15);
        sub_27440CB1C(v17, &qword_28094B1A8);
        result = sub_27440CB1C(__dst, &qword_28094B1A8);
        if (MinY >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v9, 0x50uLL);
        memcpy(v9, v9 - 80, 0x50uLL);
        result = memcpy(v9 - 80, __dst, 0x50uLL);
        v9 -= 80;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 += 80;
      --v7;
      if (v4 != v19)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2744AED74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 80 * a3;
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        sub_2744AE8A8(v9, __dst);
        sub_2744AE8A8((v9 - 80), v13);
        v10 = __dst[5];
        v11 = v14;
        sub_2744AE8E0(v13);
        result = sub_2744AE8E0(__dst);
        if (v10 >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v9, 0x50uLL);
        memcpy(v9, v9 - 80, 0x50uLL);
        result = memcpy(v9 - 80, __dst, 0x50uLL);
        v9 -= 80;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 += 80;
      --v7;
      if (v4 != v16)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2744AEE80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_94:
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_96;
    }

    goto LABEL_131;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &qword_28094B1A8;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v9 = *a3;
      sub_2744342DC();
      sub_2744342DC();
      v10 = v109;
      v11 = sub_2744ABFF8();
      v109 = v10;
      if (v10)
      {
        sub_27440CB1C(v107, &qword_28094B1A8);
        sub_27440CB1C(__dst, &qword_28094B1A8);
LABEL_106:

        return;
      }

      v12 = v8;
      v13 = v11;
      sub_27440CB1C(v107, v7);
      sub_27440CB1C(__dst, v7);
      v14 = 80 * v12;
      v15 = v9 + 80 * v12 + 160;
      v96 = v12;
      v16 = v12 + 2;
      do
      {
        v17 = v16;
        if (++v5 >= v4)
        {
          v5 = v4;
          if (!v13)
          {
            goto LABEL_22;
          }

          goto LABEL_11;
        }

        sub_2744342DC();
        sub_2744342DC();
        sub_2744342DC();
        MinY = CGRectGetMinY(v106);
        sub_2744342DC();
        v19 = CGRectGetMinY(v104);
        sub_2744AE910(v103);
        sub_2744AE910(v105);
        sub_27440CB1C(v107, v7);
        sub_27440CB1C(__dst, v7);
        v15 += 80;
        v16 = v17 + 1;
      }

      while (((v13 ^ (MinY >= v19)) & 1) != 0);
      if (!v13)
      {
        goto LABEL_22;
      }

LABEL_11:
      v8 = v96;
      if (v5 < v96)
      {
        goto LABEL_130;
      }

      if (v96 < v5)
      {
        v20 = v6;
        if (v4 >= v17)
        {
          v21 = v17;
        }

        else
        {
          v21 = v4;
        }

        v22 = 80 * v21 - 80;
        v23 = v5;
        v24 = v96;
        do
        {
          if (v24 != --v23)
          {
            v25 = v5;
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_135;
            }

            memcpy(__dst, (v26 + v14), 0x50uLL);
            memmove((v26 + v14), (v26 + v22), 0x50uLL);
            memcpy((v26 + v22), __dst, 0x50uLL);
            v5 = v25;
          }

          ++v24;
          v22 -= 80;
          v14 += 80;
        }

        while (v24 < v23);
        v6 = v20;
LABEL_22:
        v8 = v96;
      }
    }

    v27 = a3[1];
    if (v5 < v27)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_127;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v5 < v8)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744503AC();
      v6 = v84;
    }

    v37 = *(v6 + 2);
    v38 = v37 + 1;
    if (v37 >= *(v6 + 3) >> 1)
    {
      sub_2744503AC();
      v6 = v85;
    }

    *(v6 + 2) = v38;
    v39 = v6 + 32;
    v40 = &v6[16 * v37 + 32];
    *v40 = v8;
    *(v40 + 1) = v5;
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v37)
    {
      v102 = v6;
      while (1)
      {
        v41 = v38 - 1;
        v42 = &v39[16 * v38 - 16];
        v43 = &v6[16 * v38];
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v44 = *(v6 + 4);
          v45 = *(v6 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_61:
          if (v47)
          {
            goto LABEL_113;
          }

          v59 = *v43;
          v58 = *(v43 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_116;
          }

          v63 = *(v42 + 1);
          v64 = v63 - *v42;
          if (__OFSUB__(v63, *v42))
          {
            goto LABEL_119;
          }

          if (__OFADD__(v61, v64))
          {
            goto LABEL_121;
          }

          if (v61 + v64 >= v46)
          {
            if (v46 < v64)
            {
              v41 = v38 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v38 < 2)
        {
          goto LABEL_115;
        }

        v66 = *v43;
        v65 = *(v43 + 1);
        v54 = __OFSUB__(v65, v66);
        v61 = v65 - v66;
        v62 = v54;
LABEL_76:
        if (v62)
        {
          goto LABEL_118;
        }

        v68 = *v42;
        v67 = *(v42 + 1);
        v54 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v69 < v61)
        {
          goto LABEL_90;
        }

LABEL_83:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v73 = &v39[16 * v41 - 16];
        v74 = *v73;
        v75 = v41;
        v76 = &v39[16 * v41];
        v77 = *(v76 + 1);
        v78 = v109;
        sub_2744AFD10((*a3 + 80 * *v73), (*a3 + 80 * *v76), (*a3 + 80 * v77), v100);
        v109 = v78;
        if (v78)
        {
          goto LABEL_106;
        }

        if (v77 < v74)
        {
          goto LABEL_108;
        }

        v79 = v7;
        v80 = v39;
        v81 = v5;
        v82 = *(v102 + 2);
        if (v75 > v82)
        {
          goto LABEL_109;
        }

        *v73 = v74;
        *(v73 + 1) = v77;
        if (v75 >= v82)
        {
          goto LABEL_110;
        }

        v38 = v82 - 1;
        sub_274546A38(v76 + 16, v82 - 1 - v75, v76);
        v6 = v102;
        *(v102 + 2) = v82 - 1;
        v83 = v82 > 2;
        v5 = v81;
        v39 = v80;
        v7 = v79;
        if (!v83)
        {
          goto LABEL_90;
        }
      }

      v48 = &v39[16 * v38];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_111;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_112;
      }

      v55 = *(v43 + 1);
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_114;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_117;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = *(v42 + 1);
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_90:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_94;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_128;
  }

  if (v8 + a4 >= v27)
  {
    v28 = a3[1];
  }

  else
  {
    v28 = v8 + a4;
  }

  if (v28 < v8)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    v6 = sub_274546A20();
LABEL_96:
    v86 = v6 + 16;
    v87 = *(v6 + 2);
    while (v87 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_134;
      }

      v88 = v6;
      v89 = &v6[16 * v87];
      v90 = *v89;
      v91 = &v86[2 * v87];
      v92 = *(v91 + 1);
      v93 = v109;
      sub_2744AFD10((*a3 + 80 * *v89), (*a3 + 80 * *v91), (*a3 + 80 * v92), v102);
      v109 = v93;
      if (v93)
      {
        break;
      }

      if (v92 < v90)
      {
        goto LABEL_122;
      }

      if (v87 - 2 >= *v86)
      {
        goto LABEL_123;
      }

      *v89 = v90;
      *(v89 + 1) = v92;
      v94 = *v86 - v87;
      if (*v86 < v87)
      {
        goto LABEL_124;
      }

      v87 = *v86 - 1;
      sub_274546A38(v91 + 16, v94, v91);
      *v86 = v87;
      v6 = v88;
    }

    goto LABEL_106;
  }

  if (v5 == v28)
  {
    goto LABEL_40;
  }

  v102 = v6;
  v29 = *a3;
  v30 = *a3 + 80 * v5;
  v97 = v8;
  v31 = v8 - v5;
  v99 = v28;
LABEL_33:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    sub_2744342DC();
    sub_2744342DC();
    sub_2744342DC();
    v34 = CGRectGetMinY(v106);
    sub_2744342DC();
    v35 = CGRectGetMinY(v104);
    sub_2744AE910(v103);
    sub_2744AE910(v105);
    sub_27440CB1C(v107, v7);
    sub_27440CB1C(__dst, v7);
    if (v34 >= v35)
    {
LABEL_38:
      v30 += 80;
      --v31;
      if (++v5 == v99)
      {
        v5 = v99;
        v6 = v102;
        v8 = v97;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v29)
    {
      break;
    }

    memcpy(__dst, v33, 0x50uLL);
    memcpy(v33, v33 - 80, 0x50uLL);
    memcpy(v33 - 80, __dst, 0x50uLL);
    v33 -= 80;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

void sub_2744AF66C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v102 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_96:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v82 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v82 = i)
      {
        if (!*v102)
        {
          goto LABEL_134;
        }

        v84 = &v8[16 * i];
        v85 = *v84;
        v86 = &v82[2 * i];
        v87 = *(v86 + 1);
        sub_2744B002C((*v102 + 80 * *v84), (*v102 + 80 * *v86), (*v102 + 80 * v87), v98);
        if (v5)
        {
          break;
        }

        if (v87 < v85)
        {
          goto LABEL_122;
        }

        if (i - 2 >= *v82)
        {
          goto LABEL_123;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - i;
        if (*v82 < i)
        {
          goto LABEL_124;
        }

        i = *v82 - 1;
        sub_274546A38(v86 + 16, v88, v86);
      }

LABEL_106:

      return;
    }

LABEL_131:
    v8 = sub_274546A20();
    goto LABEL_98;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v93 = v8;
      v10 = *v102;
      sub_2744AE8A8(*v102 + 80 * v7, __dst);
      v11 = 80 * v9;
      sub_2744AE8A8(v10 + 80 * v9, v99);
      v95 = v100;
      v98 = __dst[5];
      sub_2744AE8E0(v99);
      sub_2744AE8E0(__dst);
      v12 = v10 + 80 * v9 + 160;
      v90 = v9;
      v13 = v9 + 2;
      while (1)
      {
        v14 = v13;
        if (++v7 >= v6)
        {
          break;
        }

        sub_2744AE8A8(v12, __dst);
        sub_2744AE8A8(v12 - 80, v99);
        v15 = v5;
        v16 = __dst[5];
        v17 = v100;
        sub_2744AE8E0(v99);
        sub_2744AE8E0(__dst);
        v18 = v16 < v17;
        v5 = v15;
        v19 = !v18;
        v20 = (v98 < v95) ^ v19;
        v12 += 80;
        v13 = v14 + 1;
        if ((v20 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v7 = v6;
LABEL_12:
      if (v98 >= v95)
      {
        v8 = v93;
        v9 = v90;
      }

      else
      {
        if (v7 < v90)
        {
          goto LABEL_128;
        }

        if (v90 >= v7)
        {
          v8 = v93;
          v9 = v90;
        }

        else
        {
          if (v6 >= v14)
          {
            v21 = v14;
          }

          else
          {
            v21 = v6;
          }

          v22 = 80 * v21 - 80;
          v23 = v7;
          v24 = v90;
          v9 = v90;
          do
          {
            if (v24 != --v23)
            {
              v25 = *v102;
              if (!*v102)
              {
                goto LABEL_135;
              }

              memcpy(__dst, (v25 + v11), 0x50uLL);
              memmove((v25 + v11), (v25 + v22), 0x50uLL);
              memcpy((v25 + v22), __dst, 0x50uLL);
            }

            ++v24;
            v22 -= 80;
            v11 += 80;
          }

          while (v24 < v23);
          v8 = v93;
        }
      }
    }

    v26 = v102[1];
    if (v7 < v26)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_127;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v7 < v9)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744503AC();
      v8 = v80;
    }

    v37 = *(v8 + 2);
    v38 = v37 + 1;
    if (v37 >= *(v8 + 3) >> 1)
    {
      sub_2744503AC();
      v8 = v81;
    }

    *(v8 + 2) = v38;
    v39 = v8 + 32;
    v40 = &v8[16 * v37 + 32];
    *v40 = v9;
    *(v40 + 1) = v7;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v37)
    {
      v97 = v7;
      while (1)
      {
        v41 = v38 - 1;
        v42 = &v39[16 * v38 - 16];
        v43 = &v8[16 * v38];
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v44 = *(v8 + 4);
          v45 = *(v8 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_64:
          if (v47)
          {
            goto LABEL_113;
          }

          v59 = *v43;
          v58 = *(v43 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_116;
          }

          v63 = *(v42 + 1);
          v64 = v63 - *v42;
          if (__OFSUB__(v63, *v42))
          {
            goto LABEL_119;
          }

          if (__OFADD__(v61, v64))
          {
            goto LABEL_121;
          }

          if (v61 + v64 >= v46)
          {
            if (v46 < v64)
            {
              v41 = v38 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v38 < 2)
        {
          goto LABEL_115;
        }

        v66 = *v43;
        v65 = *(v43 + 1);
        v54 = __OFSUB__(v65, v66);
        v61 = v65 - v66;
        v62 = v54;
LABEL_79:
        if (v62)
        {
          goto LABEL_118;
        }

        v68 = *v42;
        v67 = *(v42 + 1);
        v54 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v69 < v61)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*v102)
        {
          goto LABEL_133;
        }

        v73 = &v39[16 * v41 - 16];
        v74 = *v73;
        v75 = v41;
        v76 = &v39[16 * v41];
        v77 = *(v76 + 1);
        sub_2744B002C((*v102 + 80 * *v73), (*v102 + 80 * *v76), (*v102 + 80 * v77), v98);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v77 < v74)
        {
          goto LABEL_108;
        }

        v5 = v39;
        v78 = v8;
        v79 = *(v8 + 2);
        if (v75 > v79)
        {
          goto LABEL_109;
        }

        *v73 = v74;
        *(v73 + 1) = v77;
        if (v75 >= v79)
        {
          goto LABEL_110;
        }

        v38 = v79 - 1;
        sub_274546A38(v76 + 16, v79 - 1 - v75, v76);
        *(v78 + 2) = v79 - 1;
        v18 = v79 > 2;
        v8 = v78;
        v39 = v5;
        v5 = 0;
        v7 = v97;
        if (!v18)
        {
          goto LABEL_93;
        }
      }

      v48 = &v39[16 * v38];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_111;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_112;
      }

      v55 = *(v43 + 1);
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_114;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_117;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = *(v42 + 1);
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_64;
    }

LABEL_93:
    v6 = v102[1];
    if (v7 >= v6)
    {
      goto LABEL_96;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_129;
  }

  if (v9 + a4 >= v26)
  {
    v27 = v102[1];
  }

  else
  {
    v27 = (v9 + a4);
  }

  if (v27 < v9)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v7 == v27)
  {
    goto LABEL_43;
  }

  v94 = v8;
  v96 = v5;
  v28 = *v102;
  v29 = v9;
  v30 = *v102 + 80 * v7;
  v91 = v29;
  v31 = v29 - v7;
  v98 = v27;
LABEL_36:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    sub_2744AE8A8(v33, __dst);
    sub_2744AE8A8((v33 - 80), v99);
    v34 = __dst[5];
    v35 = v100;
    sub_2744AE8E0(v99);
    sub_2744AE8E0(__dst);
    if (v34 >= v35)
    {
LABEL_41:
      ++v7;
      v30 += 80;
      --v31;
      if (v7 == v98)
      {
        v7 = v98;
        v8 = v94;
        v5 = v96;
        v9 = v91;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    if (!v28)
    {
      break;
    }

    memcpy(__dst, v33, 0x50uLL);
    memcpy(v33, v33 - 80, 0x50uLL);
    memcpy(v33 - 80, __dst, 0x50uLL);
    v33 -= 80;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

uint64_t sub_2744AFD10(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 80;
  v10 = (a3 - a2) / 80;
  if (v9 < v10)
  {
    sub_2744510EC(a1, (a2 - a1) / 80, a4);
    v11 = &v5[80 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      sub_2744342DC();
      sub_2744342DC();
      sub_2744342DC();
      MinY = CGRectGetMinY(v30);
      sub_2744342DC();
      v14 = CGRectGetMinY(v28);
      sub_2744AE910(v27);
      sub_2744AE910(v29);
      sub_27440CB1C(v31, &qword_28094B1A8);
      sub_27440CB1C(v32, &qword_28094B1A8);
      if (MinY >= v14)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 80;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 80;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 80;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v8, v15, 0x50uLL);
    goto LABEL_13;
  }

  v33 = v4;
  sub_2744510EC(a2, (a3 - a2) / 80, a4);
  v17 = &v5[80 * v10];
LABEL_15:
  v18 = v7 - 80;
  v6 -= 80;
  for (i = v17 - 80; ; i -= 80)
  {
    v11 = i + 80;
    if (i + 80 <= v5 || v7 <= v8)
    {
      break;
    }

    sub_2744342DC();
    sub_2744342DC();
    sub_2744342DC();
    v21 = CGRectGetMinY(v30);
    sub_2744342DC();
    v22 = CGRectGetMinY(v28);
    sub_2744AE910(v27);
    sub_2744AE910(v29);
    sub_27440CB1C(v31, &qword_28094B1A8);
    sub_27440CB1C(v32, &qword_28094B1A8);
    v23 = v6 + 80;
    if (v21 < v22)
    {
      v17 = i + 80;
      v16 = v23 == v7;
      v7 -= 80;
      if (!v16)
      {
        memmove(v6, v18, 0x50uLL);
        v7 = v18;
      }

      goto LABEL_15;
    }

    if (v11 != v23)
    {
      memmove(v6, i, 0x50uLL);
    }

    v6 -= 80;
  }

LABEL_28:
  v24 = (v11 - v5) / 80;
  if (v7 != v5 || v7 >= &v5[80 * v24])
  {
    memmove(v7, v5, 80 * v24);
  }

  return 1;
}

uint64_t sub_2744B002C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 80;
  v9 = (a3 - a2) / 80;
  if (v8 < v9)
  {
    sub_2744510EC(a1, (a2 - a1) / 80, a4);
    v10 = &v4[80 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_27;
      }

      sub_2744AE8A8(v6, v27);
      sub_2744AE8A8(v4, v25);
      v12 = v28;
      v13 = v26;
      sub_2744AE8E0(v25);
      sub_2744AE8E0(v27);
      if (v12 >= v13)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 80;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 80;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 80;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_13;
  }

  sub_2744510EC(a2, (a3 - a2) / 80, a4);
  v16 = &v4[80 * v9];
LABEL_15:
  v17 = v6 - 80;
  while (1)
  {
    v5 -= 80;
    v16 -= 80;
    v10 = v16 + 80;
    if (v16 + 80 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_2744AE8A8(v16, v27);
    sub_2744AE8A8((v6 - 80), v25);
    v19 = v28;
    v20 = v26;
    sub_2744AE8E0(v25);
    sub_2744AE8E0(v27);
    v21 = v5 + 80;
    if (v19 < v20)
    {
      v16 += 80;
      v15 = v21 == v6;
      v6 -= 80;
      if (!v15)
      {
        memmove(v5, v17, 0x50uLL);
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      memmove(v5, v16, 0x50uLL);
    }
  }

LABEL_27:
  v22 = (v10 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v22])
  {
    memmove(v6, v4, 80 * v22);
  }

  return 1;
}

uint64_t sub_2744B022C(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D930);
  result = sub_27463C5EC();
  v6 = result;
  v7 = 0;
  v30 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 64;
  v28 = result;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      sub_274434ED4(*(v30 + 48) + 48 * v18, v35);
      v36 = *(*(v30 + 56) + 8 * v18);
      v32 = v35[0];
      v33 = v35[1];
      v34 = v35[2];

      a1(v31, &v36);
      if (v3)
      {
        break;
      }

      v6 = v28;
      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (v28[6] + 48 * v18);
      v20 = v32;
      v21 = v34;
      v19[1] = v33;
      v19[2] = v21;
      *v19 = v20;
      v22 = (v28[7] + 32 * v18);
      v23 = v31[1];
      *v22 = v31[0];
      v22[1] = v23;
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v28[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v28;

    sub_2744AE910(&v32);

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2744B049C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2744B04F4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2744AE940(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2744B050C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2744B0524(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2744B0524(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2744B05B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D948);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2744B0694()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = sub_27463C7CC();
    if (v2 <= 0x3F)
    {
      v0 = type metadata accessor for DragReorderingCoordinator(319);
      if (v3 <= 0x3F)
      {
        v0 = sub_274431930();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_2744B0790(uint64_t result, unsigned int a2, uint64_t a3)
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
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2744B08DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
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
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_2744B0B40()
{
  result = qword_28094D9E8;
  if (!qword_28094D9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D9D8);
    sub_27440CA78(&qword_28094D9F0, &qword_28094D9E0);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D9E8);
  }

  return result;
}

uint64_t sub_2744B0C7C()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_2744B0CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = type metadata accessor for DragReorderableForEach();
  OUTLINED_FUNCTION_53_0(v11);
  v13 = v2 + ((*(v12 + 80) + 64) & ~*(v12 + 80));

  return sub_2744A8200(a1, v13, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_2744B0DBC()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_2744B0E54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744B0E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2744B0ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744B0F3C()
{
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DragReorderingPlaceholder(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2744B0FF4(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = ((*(v4 + 80) + 48) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = ((*(*(sub_274637EEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_23:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_23;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_2744B11C8(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = ((*(v6 + 80) + 48) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = ((*(*(sub_274637EEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_2744B141C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2744B145C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744B14C0()
{
  result = qword_28094DB50;
  if (!qword_28094DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA18);
    sub_2744B1578();
    sub_27440CA78(&qword_28094DBB0, &qword_28094DBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB50);
  }

  return result;
}

unint64_t sub_2744B1578()
{
  result = qword_28094DB58;
  if (!qword_28094DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA10);
    sub_2744B1630();
    sub_27440CA78(&qword_28094DBA0, &qword_28094DBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB58);
  }

  return result;
}

unint64_t sub_2744B1630()
{
  result = qword_28094DB60;
  if (!qword_28094DB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA08);
    sub_2744B16E8();
    sub_27440CA78(&qword_28094DB90, &qword_28094DB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB60);
  }

  return result;
}

unint64_t sub_2744B16E8()
{
  result = qword_28094DB68;
  if (!qword_28094DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA00);
    sub_2744B17A0();
    sub_27440CA78(&qword_28094DB80, &qword_28094DB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB68);
  }

  return result;
}

unint64_t sub_2744B17A0()
{
  result = qword_28094DB70;
  if (!qword_28094DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D9F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D9D8);
    sub_2744B0B40();
    swift_getOpaqueTypeConformance2();
    sub_2744B1868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB70);
  }

  return result;
}

unint64_t sub_2744B1868()
{
  result = qword_28094DB78;
  if (!qword_28094DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB78);
  }

  return result;
}

uint64_t sub_2744B1948(uint64_t a1, uint64_t a2)
{
  sub_274434ED4(a2, a1);
}

uint64_t sub_2744B198C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2744B1948(a2, a1);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_2744B19C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_2744B1A34(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_2744B1A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_2744B1C30(a1, a2, a3, v37);
  v33 = v37[0];
  v34 = v37[1];
  v35 = v37[2];
  v36 = v38;

  while (1)
  {
    sub_2744B1C6C(&v29);
    if (!*(&v30 + 1))
    {
      sub_274406A24();
    }

    v26 = v29;
    v27 = v30;
    v28 = v31;
    v7 = v32;
    v8 = *a5;
    v10 = sub_274534E8C();
    v11 = *(v8 + 16);
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (*(v8 + 24) >= v13)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBC8);
        sub_27463C4DC();
      }
    }

    else
    {
      sub_274431278(v13, a4 & 1);
      v15 = sub_274534E8C();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_17;
      }

      v10 = v15;
    }

    v17 = *a5;
    if (v14)
    {
      sub_2744AE910(&v26);
      *(*(v17 + 56) + 8 * v10) = v7;
    }

    else
    {
      OUTLINED_FUNCTION_30_3(v17 + 8 * (v10 >> 6));
      v19 = (v18 + 48 * v10);
      v20 = v26;
      v21 = v28;
      v19[1] = v27;
      v19[2] = v21;
      *v19 = v20;
      *(*(v17 + 56) + 8 * v10) = v7;
      v22 = *(v17 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_16;
      }

      *(v17 + 16) = v24;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

uint64_t sub_2744B1C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2744B1C6C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    sub_274434ED4(*(v3 + 48) + 48 * (__clz(__rbit64(v7)) | (v8 << 6)), &v17);
    v15 = v18;
    v16 = v17;
    v11 = v19;
    v10 = v20;

    v13 = v15;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (*(&v13 + 1))
    {
      v14 = v1[5];
      v18 = v13;
      v17 = v16;
      v19 = v11;
      v20 = v10;
      v21 = v12;
      v14(&v17);
      sub_27440CB1C(&v17, &qword_28094DBD0);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v9 = 0;
        v13 = 0uLL;
        v16 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t objectdestroy_160Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_2744B1E88()
{
  result = qword_28094DC10;
  if (!qword_28094DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DBE8);
    sub_27440CA78(&qword_28094DC18, &qword_28094DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DC10);
  }

  return result;
}

unint64_t sub_2744B1F40()
{
  result = qword_28094DC20;
  if (!qword_28094DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DC00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DBE8);
    sub_2744B1E88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094DC28, &unk_28094DC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DC20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_2746393DC();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_2746380EC();
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return swift_getKeyPath();
}

void sub_2744B2260()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v3, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E138);
  sub_274412C20(v1[1], v3 + v6[12], &unk_28094C9F0);
  sub_274412C20(v1[2], v3 + v6[16], &unk_28094C9F0);
  sub_274412C20(v1[3], v3 + v6[20], &qword_28094C9E8);
  sub_274412C20(v1[4], v3 + v6[24], &unk_28094E140);
  v7 = sub_27463AF6C();
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_20_6();
  v9();
  sub_274412C20(v1[6], v3 + v6[32], &unk_28094C9D0);
  (v9)(v3 + v6[36], v1[7], v7);
  sub_274412C20(v1[8], v3 + v6[40], &qword_28094E150);
  OUTLINED_FUNCTION_56_0();
}

void sub_2744B2408()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  sub_274412C20(*v0, v2, &qword_28094E050);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E058);
  v5 = sub_27463AF6C();
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_20_6();
  v7();
  sub_274412C20(v1[2], v3 + v4[16], &unk_28094E060);
  sub_274412C20(v1[3], v3 + v4[20], &qword_28094D2C8);
  (v7)(v3 + v4[24], v1[4], v5);
  sub_274412C20(v1[5], v3 + v4[28], &qword_28094E070);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_2744B2528@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = v2[4];
  LOBYTE(v2) = *(v2 + 40);
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  v14 = v8[4];
  v15 = *v9;
  v16 = *(v8 + 40);
  v20 = *(v9 + 8);
  LOBYTE(v8) = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v2;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v14;
  *(a2 + 104) = v16;
  *(a2 + 112) = v15;
  *(a2 + 120) = v20;
  sub_27440B094(v4, v3, v5);

  v17 = OUTLINED_FUNCTION_24_5();

  return sub_2744C8580(v17, v18, v12, v13);
}

id sub_2744B2618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_274412C20(*a1, a2, &qword_28094DED8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF08);
  v5 = v4[12];
  v6 = a1[1];
  memcpy(__dst, v6, 0x61uLL);
  memmove((a2 + v5), v6, 0x61uLL);
  sub_274412C20(a1[2], a2 + v4[16], &qword_28094DEC0);
  v7 = a2 + v4[20];
  v9 = a1[3];
  v8 = a1[4];
  v10 = *(v9 + 16);
  *v17 = *v9;
  *v7 = *v9;
  *(v7 + 16) = v10;
  sub_274412C20(v8, a2 + v4[24], &unk_28094DEB0);
  v11 = a2 + v4[28];
  v12 = a1[5];
  v13 = *(v12 + 16);
  v16 = *v12;
  *v11 = *v12;
  *(v11 + 16) = v13;
  sub_274412C20(__dst, v18, &unk_28094DEF0);
  v14 = v16;

  return v17[0];
}

uint64_t sub_2744B2774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = *(v11 + 8);
  v16 = *(v11 + 24);
  v15 = *(v11 + 16);
  v18 = *(v12 + 8);
  v19 = *v12;
  v20 = *(v12 + 24);
  v21 = *(v12 + 16);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v19;
  *(a2 + 104) = v18;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  sub_27440B094(v4, v3, v5);

  sub_274483EE8(v7, v8, v9, v10);
  sub_27440B094(v13, v14, v15);

  sub_27440B094(v19, v18, v21);
}

uint64_t sub_2744B288C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(*a1 + 8);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *v7;
  v10 = v7[1];
  v12 = v7[3];
  v11 = *(v7 + 16);
  v13 = *v8;
  v17 = *(v8 + 8);
  *a2 = **a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v17;

  v14 = OUTLINED_FUNCTION_24_5();
  sub_27440B094(v14, v15, v11);
}

void sub_2744B29A0()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v5 = v4;
  v6(v4);
  OUTLINED_FUNCTION_59_1();
  while (1)
  {
    if (v0 == v1)
    {
LABEL_11:
      OUTLINED_FUNCTION_23();
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277C58B20](v1, v5);
      goto LABEL_6;
    }

    if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(v5 + 8 * v1 + 32);
LABEL_6:
    v8 = v7;
    sub_274412734(0, v3);
    v9 = sub_27463BF7C();

    if (v9)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2744B2AC4()
{
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 16);
  for (i = v2 + 32; ; i += 40)
  {
    if (v3 == v1)
    {
      return 0;
    }

    if (MEMORY[0x277C58A40](i, v0))
    {
      break;
    }

    ++v1;
  }

  return v1;
}

void sub_2744B2B2C()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4(v2);
  OUTLINED_FUNCTION_59_1();
  while (1)
  {
    if (v0 == v1)
    {
LABEL_11:
      OUTLINED_FUNCTION_23();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x277C58B20](v8);
      goto LABEL_6;
    }

    if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    v5 = sub_274599D28();
    v6 = sub_274599D28();

    if (v5 == v6)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2744B2C20()
{
  v1 = OUTLINED_FUNCTION_45_2();
  type metadata accessor for WorkflowEditorOptions(v1);
  OUTLINED_FUNCTION_2_16();
  sub_2744C9840(v2, v3);
  OUTLINED_FUNCTION_21_2();
  *(v0 + 32) = sub_27463979C();
  *(v0 + 40) = v4;
  sub_27444A444();
  sub_2746390FC();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = 0;
  v5 = type metadata accessor for WorkflowView(0);
  type metadata accessor for DragReorderingCoordinator(0);
  sub_27463B15C();
  v6 = v5[10];
  *(v0 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  swift_storeEnumTagMultiPayload();
  v7 = v5[11];
  v8 = [objc_opt_self() systemShortcutsUserDefaults];
  *(v0 + v7) = sub_27463902C();
  v9 = (v0 + v5[12]);
  sub_27463883C();
  swift_allocObject();
  sub_27463882C();
  sub_27463ACDC();
  *v9 = v15;
  v9[1] = v16;
  type metadata accessor for ActionList(0);
  sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);

  *v0 = sub_27463950C();
  *(v0 + 8) = v10;
  type metadata accessor for WorkflowSelectionCoordinator();
  sub_2744C9840(&qword_28094DC88, type metadata accessor for WorkflowSelectionCoordinator);

  OUTLINED_FUNCTION_20_6();
  v11 = sub_27463950C();
  v13 = v12;

  *(v0 + 16) = v11;
  *(v0 + 24) = v13;
  return result;
}

BOOL sub_2744B2E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  sub_2744CA97C(&qword_28094DEE8, &qword_28094C9E0);
  sub_27463BACC();
  sub_27463BB0C();
  return v2 == v1;
}

uint64_t sub_2744B2F30()
{
  sub_2744C899C();

  return sub_274639ACC();
}

uint64_t sub_2744B2F78(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_24_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_48_2();
  sub_274412C20(a1, v1, &unk_28094D7C0);
  sub_2744C899C();
  sub_274639ADC();
  return sub_2744C9C24(a1, &unk_28094D7C0);
}

uint64_t *sub_2744B302C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v2[5] = v10;
  v2[6] = sub_2744CA97C(&qword_28094DF10, &qword_28094C9E0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(v6 + 16))(boxed_opaque_existential_1, a1, v5);
  v12 = *(v6 + 32);
  v12(v9, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v12((v14 + v13), v9, v5);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v2[7] = sub_2744C76B8;
  v2[8] = v14;
  return v2;
}

uint64_t sub_2744B31D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  sub_2744CA97C(&qword_28094DEE8, &qword_28094C9E0);
  result = sub_27463BAEC();
  v2 = *(&v14[0] + 1);
  v1 = *&v14[0];
  if (*&v14[0] == *(&v14[0] + 1))
  {
    return MEMORY[0x277D84F90];
  }

  if (*(&v14[0] + 1) < *&v14[0])
  {
    __break(1u);
  }

  else if (*&v14[0] < *(&v14[0] + 1))
  {
    v3 = MEMORY[0x277D84F90];
    do
    {
      v19 = v1;
      v4 = sub_27463BB3C();
      v6 = v5[1];
      v16 = *v5;
      v17 = v6;
      v18 = *(v5 + 1);
      v7 = v6;
      v4(v14, 0);
      swift_getAtKeyPath();

      v16 = v20;
      sub_27444A444();
      sub_27463C31C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2744504A4();
        v3 = v12;
      }

      v8 = *(v3 + 16);
      if (v8 >= *(v3 + 24) >> 1)
      {
        sub_2744504A4();
        v3 = v13;
      }

      ++v1;
      *(v3 + 16) = v8 + 1;
      v9 = v3 + 40 * v8;
      v10 = v14[0];
      v11 = v14[1];
      *(v9 + 64) = v15;
      *(v9 + 32) = v10;
      *(v9 + 48) = v11;
    }

    while (v2 != v1);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_2744B33C8()
{
  OUTLINED_FUNCTION_55_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48_2();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_2();
  sub_274638FAC();

  sub_27463839C();
  (*(v3 + 8))(v0, v1);
  v5 = v6;
  sub_27451DF10(MEMORY[0x277D84FA0]);
  sub_27451F32C(&v6);

  OUTLINED_FUNCTION_56_0();
}

void sub_2744B3508()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v77 = v3;
  v5 = v4;
  v6 = ~v1;
  v7 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v74 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  if (!v6 || (v2 & 1) != 0)
  {
    sub_27451F220();
LABEL_4:
    OUTLINED_FUNCTION_23();
    return;
  }

  v72 = v7;
  v73 = v5;
  v70 = v12;
  v71 = v15;
  v25 = *(v0 + 16);
  v26 = &v69 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  v27 = sub_2746382EC();
  v28 = *(v18 + 8);
  v29 = OUTLINED_FUNCTION_35_2();
  v28(v29);
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v25;
  sub_274638FAC();

  v30 = sub_27463834C();
  v75 = v26;
  v31 = OUTLINED_FUNCTION_35_2();
  v78 = v18 + 8;
  v28(v31);
  if (v30 >= v27)
  {
    v32 = v28;
    v33 = v77;
    if (v27 > v77 || v30 < v77)
    {
      goto LABEL_4;
    }

    v35 = [*(v76 + 24) actions];
    sub_274412734(0, &qword_28094E040);
    OUTLINED_FUNCTION_21_2();
    v36 = sub_27463B81C();

    v83 = v36;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    OUTLINED_FUNCTION_17_6();
    sub_2744CA97C(v37, v38);
    OUTLINED_FUNCTION_34_3();
    sub_27463BACC();
    OUTLINED_FUNCTION_34_3();
    sub_27463BB0C();
    v39 = sub_27463BAFC();
    v40 = OUTLINED_FUNCTION_35_2();
    v32(v40);
    if (v39 <= v33)
    {
      v69 = sub_274453594(v36);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274638FAC();

      sub_27463839C();
      v41 = OUTLINED_FUNCTION_35_2();
      v32(v41);
      v69 = v80;
    }

    v77 = v32;
    v42 = *(v73 + 16);
    v43 = MEMORY[0x277D84F90];
    if (!v42)
    {
LABEL_27:
      v51 = v43[2];
      if (v51)
      {
        v82 = MEMORY[0x277D84F90];
        sub_27445126C(0, v51, 0);
        v52 = 32;
        v53 = v82;
        do
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_274638FAC();

          sub_27463839C();
          v54 = OUTLINED_FUNCTION_35_2();
          v77(v54);
          v55 = v80;

          v82 = v53;
          v57 = v53[2];
          v56 = v53[3];
          if (v57 >= v56 >> 1)
          {
            sub_27445126C((v56 > 1), v57 + 1, 1);
            v53 = v82;
          }

          v53[2] = v57 + 1;
          v53[v57 + 4] = v55;
          v52 += 8;
          --v51;
        }

        while (v51);
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      sub_2744C9840(&qword_28094FE40, MEMORY[0x277CC9A28]);
      v58 = v70;
      v59 = v72;
      sub_27463C1DC();
      v60 = v53[2];
      v61 = v74;
      if (v60)
      {
        v62 = v53 + 4;
        do
        {
          v63 = *v62++;
          v82 = v63;
          sub_27463C1AC();
          --v60;
        }

        while (v60);
      }

      v64 = v71;
      (*(v61 + 32))(v71, v58, v59);
      v65 = OUTLINED_FUNCTION_5_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v65);
      OUTLINED_FUNCTION_7_1();
      sub_2744CA97C(v66, v67);
      sub_27463B5AC();
      (*(v61 + 8))(v64, v59);
      sub_27463BDCC();
      v68 = sub_274588EFC();
      sub_27451F424();

      goto LABEL_4;
    }

    v44 = (v73 + 32);
    while (1)
    {
      v46 = *v44++;
      v45 = v46;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274638FAC();

      OUTLINED_FUNCTION_34_3();
      sub_27463BACC();
      OUTLINED_FUNCTION_34_3();
      sub_27463BB0C();
      (v77)(v22, v16);
      if (v81 < v82)
      {
        break;
      }

      if (v45 >= v82 && v45 < v81)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27445126C(0, v43[2] + 1, 1);
          v43 = v79;
        }

        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_27445126C((v49 > 1), v50 + 1, 1);
          v43 = v79;
        }

        v43[2] = v50 + 1;
        v43[v50 + 4] = v45;
      }

      if (!--v42)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2744B3CA4()
{
  OUTLINED_FUNCTION_24();
  v2 = v0;
  v67 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v65 = v13;
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v63 = v15 - v14;
  v64 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v62 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v61 = v19 - v18;
  v20 = sub_27463B1FC();
  OUTLINED_FUNCTION_1();
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_18();
  v23 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v29 = v28 - v27;
  if (v5)
  {
    v30 = [*(*(v2 + 16) + 24) actionTree];
    sub_2744B6B1C();
    v32 = [v30 validIndexForInsertingActionAtIndex_];

    v33 = *(v2 + 24) + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_15:
      OUTLINED_FUNCTION_23();
      return;
    }

    v35 = Strong;
    v36 = *(v33 + 8);
    v37 = v67;
    if (sub_274453594(v67))
    {
      sub_2744535A4(0, (v37 & 0xC000000000000001) == 0);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x277C58B20](0, v37);
      }

      else
      {
        v38 = *(v37 + 32);
      }

      v39 = v38;
      sub_274412734(0, &qword_28094E040);
      if ([v39 canLoadObjectOfClass_])
      {
        sub_274412734(0, &qword_28094AF90);
        (*(v60 + 104))(v1, *MEMORY[0x277D851C8], v20);
        v67 = sub_27463BD0C();
        v40 = OUTLINED_FUNCTION_24_5();
        v41(v40);
        v42 = swift_allocObject();
        v42[2] = v39;
        v42[3] = v35;
        v42[4] = v36;
        v42[5] = v32;
        v69[4] = sub_2744C8908;
        v69[5] = v42;
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 1107296256;
        v69[2] = sub_27443E0E8;
        v69[3] = &block_descriptor_15;
        v43 = _Block_copy(v69);
        v44 = v39;
        swift_unknownObjectRetain();
        v45 = v61;
        sub_27463B20C();
        v68 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_21_7();
        sub_2744C9840(v46, v47);
        v48 = OUTLINED_FUNCTION_35_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v48);
        OUTLINED_FUNCTION_20_7();
        sub_2744CA97C(v49, &unk_28094AFA0);
        v50 = v63;
        v51 = v66;
        sub_27463C1EC();
        v52 = v67;
        MEMORY[0x277C58440](0, v45, v50, v43);
        _Block_release(v43);
        swift_unknownObjectRelease();

        (*(v65 + 8))(v50, v51);
        (*(v62 + 8))(v45, v64);

LABEL_14:
        sub_27451F220();
        goto LABEL_15;
      }
    }

    v56 = sub_27463B9FC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v56);
    sub_27463B9CC();
    swift_unknownObjectRetain();

    v57 = sub_27463B9BC();
    v58 = swift_allocObject();
    v59 = MEMORY[0x277D85700];
    v58[2] = v57;
    v58[3] = v59;
    v58[4] = v2;
    v58[5] = v37;
    v58[6] = v35;
    v58[7] = v36;
    v58[8] = v32;
    sub_274512004();

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  if (*(v7 + 16) == 1)
  {
    sub_2744B6B1C();
    sub_2744B6B1C();
    v53 = [*(*(v2 + 16) + 24) actionTree];
    sub_27463BD7C();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v54 = OUTLINED_FUNCTION_34_3();
      v55(v54);
      swift_unknownObjectRelease();
    }

    (*(v25 + 8))(v29, v23);
    goto LABEL_14;
  }

  sub_27463C56C();
  __break(1u);
}

void sub_2744B43B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_274412734(0, &qword_28094E040);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v12[4] = sub_2744C892C;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2744B4A6C;
  v12[3] = &block_descriptor_161;
  v10 = _Block_copy(v12);
  swift_unknownObjectRetain();

  v11 = [a1 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_2744B44D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v38 = a3;
  v7 = sub_274638DAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463B1EC();
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_27463B21C();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    sub_274412734(0, &qword_28094AF90);
    swift_unknownObjectRetain();
    v35 = sub_27463BCEC();
    v19 = swift_allocObject();
    v21 = v36;
    v20 = v37;
    v19[2] = v38;
    v19[3] = v21;
    v19[4] = v18;
    v19[5] = v20;
    aBlock[4] = sub_2744C8984;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27443E0E8;
    aBlock[3] = &block_descriptor_167;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_27463B20C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2744C9840(&qword_28094E100, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    sub_2744CA97C(&qword_28094E110, &unk_28094AFA0);
    sub_27463C1EC();
    v23 = v35;
    MEMORY[0x277C58440](0, v16, v13, v22);
    _Block_release(v22);
    swift_unknownObjectRelease();

    (*(v40 + 8))(v13, v11);
    return (*(v39 + 8))(v16, v14);
  }

  else
  {
    v25 = v7;
    sub_274638C2C();
    v26 = a2;
    v27 = sub_274638D9C();
    v28 = sub_27463BBFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v31 = sub_27463C72C();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = sub_2745E7980(v31, v33, aBlock);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2743F0000, v27, v28, "Unable to decode action from item provider: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C5A270](v30, -1, -1);
      MEMORY[0x277C5A270](v29, -1, -1);
    }

    return (*(v8 + 8))(v10, v25);
  }
}

void sub_2744B49D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = [a3 copyForDuplicating];
  (*(a2 + 24))(v8, a4, ObjectType, a2);
}

uint64_t sub_2744B4A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2744B4AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[9] = a6;
  v9 = sub_27463B1EC();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_27463B21C();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = sub_27463B9CC();
  v8[19] = sub_27463B9BC();
  v11 = swift_task_alloc();
  v8[20] = v11;
  *v11 = v8;
  v11[1] = sub_2744B4C58;

  return sub_2744B5044();
}

uint64_t sub_2744B4C58()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;
  *(v4 + 168) = v3;

  v6 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2744B4D8C, v6, v5);
}

uint64_t sub_2744B4D8C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v15 = *(v0 + 128);
  v16 = *(v0 + 120);
  v4 = *(v0 + 96);
  v14 = *(v0 + 104);
  v5 = *(v0 + 88);
  v17 = *(v0 + 72);

  sub_274412734(0, &qword_28094AF90);
  v13 = sub_27463BCEC();
  v6 = swift_allocObject();
  *(v6 + 16) = v17;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  *(v0 + 48) = sub_2744C8990;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_27443E0E8;
  *(v0 + 40) = &block_descriptor_173;
  v7 = _Block_copy((v0 + 16));
  swift_unknownObjectRetain();
  sub_27463B20C();
  *(v0 + 64) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_21_7();
  sub_2744C9840(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  OUTLINED_FUNCTION_20_7();
  sub_2744CA97C(v10, &unk_28094AFA0);
  sub_27463C1EC();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x277C58440]();
  _Block_release(v7);

  (*(v14 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);

  OUTLINED_FUNCTION_92();

  return v11();
}

uint64_t sub_2744B5044()
{
  OUTLINED_FUNCTION_79();
  v0[3] = v1;
  v0[4] = sub_27463B9CC();
  v0[5] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_2744B50DC, v3, v2);
}

uint64_t sub_2744B50DC()
{
  v3 = v2[3];
  v10 = MEMORY[0x277D84F90];
  sub_274453594(v3);
  OUTLINED_FUNCTION_59_1();
  while (v0 != v1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x277C58B20](v1, v2[3]);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v3 + 32 + 8 * v1);
    }

    v5 = v4;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return MEMORY[0x282200600]();
    }

    sub_274637E2C();
    sub_2744C9840(&unk_28094E0A0, MEMORY[0x277CC9260]);
    if (sub_27463BC3C())
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    else
    {
    }

    ++v1;
  }

  v2[8] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  v2[9] = sub_27463B9BC();
  v6 = swift_task_alloc();
  v2[10] = v6;
  *(v6 + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0B0);
  v7 = swift_task_alloc();
  v2[11] = v7;
  *v7 = v2;
  v7[1] = sub_2744B531C;
  OUTLINED_FUNCTION_72_0();

  return MEMORY[0x282200600]();
}

uint64_t sub_2744B531C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2744B5498, v5, v4);
}

uint64_t sub_2744B5498()
{
  OUTLINED_FUNCTION_79();

  if (*(*(v0 + 16) + 16))
  {
    v1 = sub_2744B64B4(*(v0 + 16));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    OUTLINED_FUNCTION_68_0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_274648560;
    *(v2 + 32) = v1;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2744B5554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  v3[13] = swift_task_alloc();
  v4 = sub_274637E2C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0D0);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0D8);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = sub_27463B9CC();
  v3[25] = sub_27463B9BC();
  v7 = sub_27463B96C();
  v3[26] = v7;
  v3[27] = v6;

  return MEMORY[0x2822009F8](sub_2744B577C, v7, v6);
}

uint64_t sub_2744B577C()
{
  v1 = *(v0 + 88);
  v2 = sub_274453594(v1);
  v5 = 0;
  v28 = v1 & 0xC000000000000001;
  v29 = v2;
  v26 = v1 + 32;
  v27 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v29 != v5)
  {
    if (v28)
    {
      v2 = MEMORY[0x277C58B20](v5, *(v0 + 88));
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        goto LABEL_22;
      }

      v2 = *(v26 + 8 * v5);
    }

    v6 = v2;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return MEMORY[0x2822002E8](v2, v3, v4);
    }

    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = sub_27463B9FC();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    OUTLINED_FUNCTION_68_0();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v6;
    sub_274412C20(v7, v8, &unk_28094A480);
    LODWORD(v7) = __swift_getEnumTagSinglePayload(v8, 1, v9);
    v11 = v6;
    v12 = *(v0 + 176);
    if (v7 == 1)
    {
      v13 = OUTLINED_FUNCTION_35_2();
      sub_2744C9C24(v13, v14);
    }

    else
    {
      sub_27463B9EC();
      OUTLINED_FUNCTION_25_0();
      (*(v15 + 8))(v12, v9);
    }

    if (v10[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_27463B96C();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = **(v0 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = &unk_274651BD8;
    *(v20 + 24) = v10;

    if (v18 | v16)
    {
      v21 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v16;
      *(v0 + 40) = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v0 + 184);
    *(v0 + 48) = 1;
    *(v0 + 56) = v21;
    *(v0 + 64) = v19;
    swift_task_create();

    v2 = sub_2744C9C24(v22, &unk_28094A480);
    ++v5;
  }

  sub_27463B99C();
  *(v0 + 224) = MEMORY[0x277D84F90];
  v23 = sub_27463B9BC();
  *(v0 + 232) = v23;
  v24 = swift_task_alloc();
  *(v0 + 240) = v24;
  *v24 = v0;
  v2 = OUTLINED_FUNCTION_15_5(v24);
  v4 = MEMORY[0x277D85700];
  v3 = v23;

  return MEMORY[0x2822002E8](v2, v3, v4);
}

uint64_t sub_2744B5ACC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v3 = v2;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_2744B5C04, v5, v4);
}

uint64_t sub_2744B5C04()
{
  if (__swift_getEnumTagSinglePayload(v0[18], 1, v0[12]) == 1)
  {
    v1 = v0[28];
    v2 = v0[9];
    (*(v0[20] + 8))(v0[21], v0[19]);

    *v2 = v1;

    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_72_0();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[13];
  v5 = v0[14];
  v7 = OUTLINED_FUNCTION_25_1();
  sub_27441277C(v7, v8, v9);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_2744C9C24(v0[13], &qword_280949E10);
  }

  else
  {
    v10 = *(v0[15] + 32);
    v10(v0[17], v0[13], v0[14]);
    v11 = OUTLINED_FUNCTION_4_3();
    v12(v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_274450708(0, *(v14 + 16) + 1, 1, v0[28]);
      v14 = v22;
    }

    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_274450708(v15 > 1, v16 + 1, 1, v14);
      v14 = v23;
    }

    v17 = v0[16];
    v18 = v0[14];
    v19 = v0[15];
    (*(v19 + 8))(v0[17], v18);
    *(v14 + 16) = v16 + 1;
    v10(v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v17, v18);
    v0[28] = v14;
  }

  v0[29] = sub_27463B9BC();
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_72_0();

  return MEMORY[0x2822002E8]();
}

uint64_t sub_2744B5EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2744B5EDC, 0, 0);
}

uint64_t sub_2744B5EDC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  *v3 = v0;
  v3[1] = sub_2744B5FE0;
  v5 = v0[2];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000011, 0x800000027468AC10, sub_2744C87B4, v2, v4);
}

uint64_t sub_2744B5FE0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_2744B60DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_274637E2C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_2744C9840(&unk_28094E0A0, MEMORY[0x277CC9260]);
}

uint64_t sub_2744B6274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0F0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_274412C20(a1, &v6 - v3, &qword_280949E10);
  swift_storeEnumTagMultiPayload();
  sub_2744B634C(v4);
  return sub_2744C9C24(v4, &unk_28094E0F0);
}

uint64_t sub_2744B634C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_274412C20(a1, &v9 - v6, &unk_28094E0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8);
    return sub_27463B97C();
  }

  else
  {
    sub_27441277C(v7, v4, &qword_280949E10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8);
    return sub_27463B98C();
  }
}

id sub_2744B64B4(uint64_t a1)
{
  v2 = sub_274637E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v38 = *(v11 + 56);
    v39 = v12;
    v14 = (v11 - 8);
    do
    {
      v15 = v39;
      (v39)(v8, v13, v2, v6);
      v16 = v9;
      v17 = v40;
      v18 = v11;
      v15(v40, v8, v2);
      v19 = objc_allocWithZone(MEMORY[0x277D7C428]);
      v20 = v17;
      v9 = v16;
      v21 = sub_27452D658(v20, 0, 0);
      v22 = (*v14)(v8, v2);
      if (v21)
      {
        MEMORY[0x277C57F30](v22);
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27463B85C();
        }

        sub_27463B8AC();
        v9 = v41;
      }

      v13 += v38;
      --v10;
      v11 = v18;
    }

    while (v10);
  }

  v40 = "com.apple.shortcuts.action";
  v41 = MEMORY[0x277D84F90];
  v23 = sub_274453594(v9);
  v24 = 0;
  while (v23 != v24)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x277C58B20](v24, v9);
    }

    else
    {
      if (v24 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v25 = *(v9 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v28 = [objc_allocWithZone(MEMORY[0x277D7C410]) initWithValue_];

    ++v24;
    if (v28)
    {
      MEMORY[0x277C57F30]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v37 = v41;
      v24 = v27;
    }
  }

  if (!(v37 >> 62))
  {

    sub_27463C6CC();
    goto LABEL_21;
  }

LABEL_25:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
  sub_27463C57C();

LABEL_21:
  sub_274412734(0, &qword_28094E0C0);
  v29 = sub_274467468();
  v30 = [objc_opt_self() sharedRegistry];
  v31 = sub_27463B66C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  v41 = 0x656C69464657;
  v42 = 0xE600000000000000;
  sub_27463C31C();
  result = [v29 serializedRepresentation];
  if (result)
  {
    v34 = result;

    *(inited + 96) = swift_getObjectType();
    *(inited + 72) = v34;
    v35 = sub_27463B4DC();
    v36 = sub_2744F51D0(v31, v35, v30);

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2744B695C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  if (a3)
  {
    sub_2744B69F4();
    return v4;
  }

  else if (*(a1 + 16) == 1)
  {

    sub_2744B69F4();
  }

  else
  {
    return 0;
  }

  return v3;
}

void sub_2744B69F4()
{
  OUTLINED_FUNCTION_55_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = [*(*(v0 + 16) + 24) actionTree];
  v13 = v12;
  if (v4)
  {
    [v12 validIndexForInsertingActionAtIndex_];
  }

  else
  {
    sub_27463BD7C();

    sub_27463BD9C();
    (*(v7 + 8))(v11, v5);
  }

  OUTLINED_FUNCTION_56_0();
}

void sub_2744B6B1C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v6 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  OUTLINED_FUNCTION_17_6();
  sub_2744CA97C(v7, &qword_28094C9E0);
  sub_27463BACC();
  sub_27463BB0C();
  v8 = sub_27463BAFC();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_25_1();
  v9(v10);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v8 <= v2)
      {
        v12 = [*(v6 + 24) actions];
        sub_274412734(0, &qword_28094E040);
        v13 = sub_27463B81C();

        sub_274453594(v13);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274638FAC();

        sub_27463839C();
        v11 = OUTLINED_FUNCTION_25_1();
        v9(v11);
      }
    }

    OUTLINED_FUNCTION_23();
  }
}

uint64_t sub_2744B6D74()
{

  return v0;
}

uint64_t sub_2744B6DBC()
{
  sub_2744B6D74();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_2744B6E5C()
{
  sub_2744B703C();
  if (v0 <= 0x3F)
  {
    sub_2744B70D0();
    if (v1 <= 0x3F)
    {
      sub_274481024();
      if (v2 <= 0x3F)
      {
        sub_2744B7164();
        if (v3 <= 0x3F)
        {
          sub_274458288(319, &qword_28094DCB0, &qword_28094DCB8);
          if (v4 <= 0x3F)
          {
            sub_2744C8D34(319, &qword_28094DCC0, type metadata accessor for DragReorderingCoordinator, MEMORY[0x277CE1438]);
            if (v5 <= 0x3F)
            {
              sub_274458288(319, &qword_28094BC00, &qword_28094A610);
              if (v6 <= 0x3F)
              {
                sub_2744C9F7C(319, &qword_28094DCC8, MEMORY[0x277D839B0], MEMORY[0x277CDD630]);
                if (v7 <= 0x3F)
                {
                  sub_2744C8D34(319, &unk_28094DCD0, MEMORY[0x277D7D3B8], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
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

void sub_2744B703C()
{
  if (!qword_28094DC70)
  {
    type metadata accessor for ActionList(255);
    sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094DC70);
    }
  }
}

void sub_2744B70D0()
{
  if (!qword_28094DC80)
  {
    type metadata accessor for WorkflowSelectionCoordinator();
    sub_2744C9840(&qword_28094DC88, type metadata accessor for WorkflowSelectionCoordinator);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094DC80);
    }
  }
}

void sub_2744B7164()
{
  if (!qword_28094DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DC98);
    sub_2744B71D4();
    v0 = sub_27463910C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094DC90);
    }
  }
}

unint64_t sub_2744B71D4()
{
  result = qword_28094DCA0;
  if (!qword_28094DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DC98);
    sub_27444A444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DCA0);
  }

  return result;
}

uint64_t sub_2744B7258@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkflowViewReorderingDelegate();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2744B7294@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = OUTLINED_FUNCTION_6_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_8();
  sub_2744C9158();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_8_12();
  result = sub_2744C7648();
  *a1 = sub_2744C5BF4;
  a1[1] = v3;
  return result;
}

uint64_t sub_2744B7380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a1;
  v91 = a3;
  v4 = sub_27463969C();
  v109 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v106 = v5;
  v89 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2746391CC();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkflowView(0);
  v8 = v7 - 8;
  v102 = *(v7 - 8);
  v98 = *(v102 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DCF0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v76 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DCF8);
  MEMORY[0x28223BE20](v99);
  v81 = &v76 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD00);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v100 = &v76 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD08);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v101 = &v76 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD10);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v76 - v18;
  *v14 = sub_274639C5C();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD18);
  sub_2744B7FE8(a2, &v14[*(v19 + 44)]);
  v20 = type metadata accessor for WorkflowEditorOptions(0);
  v96 = sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v97 = v20;
  v21 = sub_27463979C();
  v23 = v22;
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD20) + 36)];
  *v24 = v21;
  v24[1] = v23;
  KeyPath = swift_getKeyPath();
  v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD28) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD30) + 28);
  v103 = *(v109 + 16);
  v104 = v109 + 16;
  v103(v26 + v27, v108, v4);
  v95 = v4;
  __swift_storeEnumTagSinglePayload(v26 + v27, 0, 1, v4);
  *v26 = KeyPath;
  v28 = a2;
  v29 = swift_getKeyPath();
  v30 = (a2 + *(v8 + 56));
  v32 = *v30;
  v31 = v30[1];
  v111 = v32;
  v112 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD38);
  sub_27463ACEC();
  v33 = v110;
  v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD40) + 36)];
  *v34 = v29;
  v34[1] = v33;
  sub_2744C9158();
  v35 = *(v102 + 80);
  v36 = (v35 + 16) & ~v35;
  v37 = v98 + v36;
  v38 = v35 | 7;
  v39 = swift_allocObject();
  sub_2744C7648();
  v40 = &v14[*(v12 + 44)];
  *v40 = 0;
  *(v40 + 1) = 0;
  *(v40 + 2) = sub_2744C5E1C;
  *(v40 + 3) = v39;
  v41 = *(v28 + 32);
  if (v41)
  {
    v42 = v41;
    v43 = sub_27443D564();

    v97 = type metadata accessor for WorkflowView;
    v92 = v10;
    sub_2744C9158();
    v94 = v38;
    v44 = swift_allocObject();
    v98 = type metadata accessor for WorkflowView;
    sub_2744C7648();
    v96 = v36;
    v45 = v81;
    sub_27441277C(v14, v81, &qword_28094DCF0);
    v46 = v45 + *(v99 + 36);
    *v46 = v43 & 1;
    *(v46 + 8) = sub_2744C5E34;
    *(v46 + 16) = v44;
    OpaqueTypeConformance2 = v37;
    v47 = v90;
    sub_2746391DC();
    v48 = v89;
    v49 = v95;
    v103(v89, v108, v95);
    v80 = v28;
    v50 = *(v109 + 80);
    v51 = v109;
    v79 = (v50 + 16) & ~v50;
    v52 = swift_allocObject();
    v102 = *(v51 + 32);
    v109 = v51 + 32;
    v53 = v48;
    (v102)(v52 + ((v50 + 16) & ~v50), v48, v49);
    v76 = sub_2744C5EA0();
    sub_27463A97C();

    v54 = v49;
    v55 = *(v105 + 8);
    v105 += 8;
    v78 = v55;
    v55(v47, v107);
    sub_2744C9C24(v45, &qword_28094DCF8);
    sub_2746391DC();
    sub_2744C9158();
    v56 = v103;
    v103(v53, v108, v49);
    v93 = v50;
    v57 = (OpaqueTypeConformance2 + v50) & ~v50;
    v81 = v57;
    v58 = swift_allocObject();
    sub_2744C7648();
    (v102)(v58 + v57, v53, v54);
    v111 = v99;
    v112 = v76;
    v99 = MEMORY[0x277CDEEA8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v100;
    v60 = v83;
    sub_27463A97C();

    v61 = v78;
    v78(v47, v107);
    (*(v82 + 8))(v59, v60);
    sub_2746391DC();
    v62 = v53;
    v63 = v53;
    v64 = v95;
    v56(v63, v108, v95);
    v65 = v79;
    v66 = swift_allocObject();
    v67 = v62;
    (v102)(v66 + v65, v62, v64);
    v111 = v60;
    v112 = OpaqueTypeConformance2;
    v100 = swift_getOpaqueTypeConformance2();
    v68 = v85;
    v69 = v86;
    v70 = v101;
    sub_27463A97C();

    v61(v47, v107);
    (*(v84 + 8))(v70, v69);
    sub_2746391DC();
    sub_2744C9158();
    v71 = v64;
    v103(v67, v108, v64);
    v72 = v81;
    v73 = swift_allocObject();
    sub_2744C7648();
    (v102)(v73 + v72, v67, v71);
    v111 = v69;
    v112 = v100;
    swift_getOpaqueTypeConformance2();
    v74 = v88;
    sub_27463A97C();

    v61(v47, v107);
    return (*(v87 + 8))(v68, v74);
  }

  else
  {
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void sub_2744B7FE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  v11 = *(a1 + 32);
  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_274638FAC();

    if (v20[15])
    {
      v13 = 0;
      v14 = 1;
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      v14 = sub_27463979C();
      v13 = v15;
      v16 = v14;
    }

    sub_2744B82A0();
    v17 = *(v5 + 16);
    v17(v7, v10, v4);
    *a2 = v14;
    a2[1] = v13;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDB8);
    v17(a2 + *(v18 + 48), v7, v4);
    sub_2744C664C(v14);
    sub_2744C665C(v14);
    v19 = *(v5 + 8);
    v19(v10, v4);
    v19(v7, v4);
    sub_2744C665C(v14);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_2744B82A0()
{
  OUTLINED_FUNCTION_24();
  v77 = v1;
  sub_27463A19C();
  OUTLINED_FUNCTION_1();
  v63 = v3;
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v76 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_1();
  v67 = v7;
  MEMORY[0x28223BE20](v8);
  v78 = v9;
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDC0);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDC8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v17);
  v70 = &v63 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDD0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  v69 = v20;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDD8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_1();
  v72 = v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDE0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_40_1();
  v73 = v24;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDE8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_40_1();
  v74 = v26;
  v27 = *(v0 + 32);
  if (v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v27;
    sub_274638FAC();

    v29 = v81;
    OUTLINED_FUNCTION_9_8();
    sub_2744C9158();
    v67 = v0;
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_8_12();
    sub_2744C7648();
    LOBYTE(v81) = v29;
    v82 = sub_2744C666C;
    v83 = v30;
    sub_27463A18C();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDF0);
    v32 = sub_2744CA97C(&qword_28094DDF8, &qword_28094DDF0);
    sub_27463A82C();
    (*(v63 + 8))(v6, v64);

    v81 = v31;
    v82 = v32;
    swift_getOpaqueTypeConformance2();
    sub_27463A86C();
    (*(v12 + 8))(v15, v10);
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v33 = qword_28094BB00;
    v34 = sub_27463B66C();
    v35 = sub_27463B66C();

    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    v37 = sub_27463B6AC();
    v39 = v38;

    v81 = v37;
    v82 = v39;
    sub_274412BBC();
    v40 = v70;
    sub_2746395FC();

    v41 = OUTLINED_FUNCTION_15_2();
    sub_2744C9C24(v41, v42);
    v43 = v69;
    v44 = (v69 + *(v65 + 36));
    *v44 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
    swift_storeEnumTagMultiPayload();
    v45 = type metadata accessor for VariableEditorModifier();
    v46 = (v44 + v45[5]);
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_2_16();
    sub_2744C9840(v47, v48);
    *v46 = sub_27463979C();
    v46[1] = v49;
    v50 = v45[6];
    *(v44 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
    swift_storeEnumTagMultiPayload();
    v51 = (v44 + v45[7]);
    v80 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE00);
    sub_27463ACDC();
    v52 = v82;
    *v51 = v81;
    v51[1] = v52;
    sub_27441277C(v40, v43, &qword_28094DDC8);
    v53 = v72;
    sub_27441277C(v43, v72, &qword_28094DDD0);
    *(v53 + *(v68 + 36)) = 0;
    OUTLINED_FUNCTION_9_8();
    sub_2744C9158();
    v54 = swift_allocObject();
    OUTLINED_FUNCTION_8_12();
    sub_2744C7648();
    v55 = v53;
    v56 = v73;
    sub_27441277C(v55, v73, &qword_28094DDD8);
    v57 = (v56 + *(v71 + 36));
    *v57 = sub_2744C7060;
    v57[1] = v54;
    v57[2] = 0;
    v57[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
    sub_27463B16C();
    v58 = v81;
    v59 = v56;
    v60 = v74;
    sub_27441277C(v59, v74, &qword_28094DDE0);
    *(v60 + *(v75 + 36)) = v58;
    sub_2744C70E4();
    sub_27463A55C();
    sub_2744C9C24(v60, &qword_28094DDE8);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_2_16();
    sub_2744C9840(v61, v62);
    OUTLINED_FUNCTION_7_1();
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744B8B34()
{
  type metadata accessor for WorkflowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD38);
  sub_27463ACEC();
  sub_27463881C();
}

void sub_2744B8BA4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_2744B8BCC();
  }
}

void sub_2744B8BCC()
{
  v0 = [objc_opt_self() sharedContext];
  v1 = [v0 applicationOrNil];

  if (v1)
  {
    [v1 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }
}

uint64_t sub_2744B8C80()
{
  OUTLINED_FUNCTION_50_2();
  v0 = sub_2746391AC();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277CDD768], v0);
  sub_2746391BC();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_2744B8D60(uint64_t a1, uint64_t a2)
{
  v3 = sub_2746391AC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = v10;
    sub_27443B240();

    (*(v5 + 104))(v9, *MEMORY[0x277CDD760], v3);
    sub_2746391BC();
    return (*(v5 + 8))(v9, v3);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_2_16();
    sub_2744C9840(v13, v14);
    OUTLINED_FUNCTION_7_1();
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744B8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v110 = a2;
  v109 = sub_274639FEC();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v91 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50);
  MEMORY[0x28223BE20](v101);
  v108 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v90 - v10;
  MEMORY[0x28223BE20](v11);
  v106 = &v90 - v12;
  v13 = sub_274639F2C();
  MEMORY[0x28223BE20](v13);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE50);
  v14 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v16 = &v90 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE58);
  MEMORY[0x28223BE20](v96);
  v18 = &v90 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE60);
  MEMORY[0x28223BE20](v95);
  v98 = &v90 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE68);
  MEMORY[0x28223BE20](v97);
  v100 = &v90 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE70);
  MEMORY[0x28223BE20](v99);
  v111 = &v90 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE78);
  MEMORY[0x28223BE20](v103);
  v104 = &v90 - v22;
  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = objc_opt_self();
    v25 = v23;
    v94 = v24;
    [v24 _readableWidth];
    v27 = a3 + -16.0;
    if (v26 < a3 + -16.0)
    {
      v27 = v26;
    }

    if (a3 <= 0.0)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    v29 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth;
    swift_beginAccess();
    *&v25[v29] = v28;

    MEMORY[0x28223BE20](v30);
    v102 = a1;
    sub_274639C5C();
    LODWORD(__src[0]) = 0;
    sub_2744C9840(&qword_28094DE80, MEMORY[0x277CE0428]);
    sub_27463C7DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE88);
    sub_2744CA97C(&qword_28094DE90, &qword_28094DE88);
    sub_27463912C();
    sub_2744CA97C(&qword_28094DE98, &qword_28094DE50);
    v31 = v93;
    sub_27463A86C();
    (*(v14 + 8))(v16, v31);
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v32 = qword_28094BB00;
    v33 = sub_27463B66C();
    v34 = sub_27463B66C();

    v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

    v36 = sub_27463B6AC();
    v38 = v37;

    __src[0] = v36;
    __src[1] = v38;
    sub_274412BBC();
    v39 = v98;
    sub_2746395FC();

    sub_2744C9C24(v18, &qword_28094DE58);
    v40 = (v39 + *(v95 + 36));
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    *v40 = sub_27463979C();
    v40[1] = v41;
    v42 = type metadata accessor for ScrollToRunningActionModifier(0);
    v43 = v42[5];
    *(v40 + v43) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
    swift_storeEnumTagMultiPayload();
    v44 = v40 + v42[6];
    *v44 = swift_getKeyPath();
    v44[8] = 0;
    *(v40 + v42[7]) = 0x3FC999999999999ALL;
    [v94 _readableWidth];
    sub_27463B0CC();
    v45 = v107;
    v46 = v106;
    v47 = v105;
    sub_27463973C();
    v48 = v100;
    sub_27441277C(v39, v100, &qword_28094DE60);
    memcpy((v48 + *(v97 + 36)), __src, 0x70uLL);
    LOBYTE(v42) = sub_27463A31C();
    sub_2746390AC();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v48;
    v58 = v111;
    sub_27441277C(v57, v111, &qword_28094DE68);
    v59 = v58 + *(v99 + 36);
    *v59 = v42;
    *(v59 + 8) = v50;
    *(v59 + 16) = v52;
    *(v59 + 24) = v54;
    *(v59 + 32) = v56;
    *(v59 + 40) = 0;
    v60 = sub_27463A34C();
    type metadata accessor for WorkflowView(0);
    sub_2744C6930();
    v61 = v109;
    (*(v45 + 104))(v47, *MEMORY[0x277CE0558], v109);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v61);
    v62 = *(v101 + 48);
    v63 = v108;
    sub_274412C20(v46, v108, &qword_28094A610);
    sub_274412C20(v47, v63 + v62, &qword_28094A610);
    if (__swift_getEnumTagSinglePayload(v63, 1, v61) == 1)
    {
      sub_2744C9C24(v47, &qword_28094A610);
      sub_2744C9C24(v46, &qword_28094A610);
      if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v61) == 1)
      {
        sub_2744C9C24(v63, &qword_28094A610);
LABEL_16:
        sub_2746390AC();
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v74 = v73;
        v75 = v104;
        sub_27441277C(v111, v104, &qword_28094DE70);
        v76 = v75 + *(v103 + 36);
        *v76 = v60;
        *(v76 + 8) = v68;
        *(v76 + 16) = v70;
        *(v76 + 24) = v72;
        *(v76 + 32) = v74;
        *(v76 + 40) = 0;
        v77 = sub_27463A33C();
        sub_2746390AC();
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;
        v86 = v75;
        v87 = v110;
        sub_27441277C(v86, v110, &qword_28094DE78);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DEA0);
        v89 = v87 + *(result + 36);
        *v89 = v77;
        *(v89 + 8) = v79;
        *(v89 + 16) = v81;
        *(v89 + 24) = v83;
        *(v89 + 32) = v85;
        *(v89 + 40) = 0;
        return result;
      }
    }

    else
    {
      v64 = v92;
      sub_274412C20(v63, v92, &qword_28094A610);
      if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v61) != 1)
      {
        v65 = v91;
        (*(v45 + 32))(v91, v63 + v62, v61);
        sub_2744C9840(&unk_28094BC90, MEMORY[0x277CE0570]);
        sub_27463B5BC();
        v66 = *(v45 + 8);
        v66(v65, v61);
        sub_2744C9C24(v47, &qword_28094A610);
        sub_2744C9C24(v46, &qword_28094A610);
        v66(v64, v61);
        sub_2744C9C24(v63, &qword_28094A610);
        goto LABEL_16;
      }

      sub_2744C9C24(v47, &qword_28094A610);
      sub_2744C9C24(v46, &qword_28094A610);
      (*(v45 + 8))(v64, v61);
    }

    sub_2744C9C24(v63, &unk_28094BC50);
    goto LABEL_16;
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_2744B9CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v135 = a2;
  v147 = type metadata accessor for WorkflowView(0);
  v141 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v142 = v7;
  v143 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DEB0);
  MEMORY[0x28223BE20](v144);
  v134 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v121 - v10;
  *&v139 = type metadata accessor for EmptyStateView(0);
  MEMORY[0x28223BE20](v139);
  v123 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  v151 = *(v13 - 8);
  v152 = v13;
  MEMORY[0x28223BE20](v13);
  v140 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v145 = &v121 - v16;
  MEMORY[0x28223BE20](v17);
  v138 = &v121 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DEC0);
  MEMORY[0x28223BE20](v19 - 8);
  v133 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v121 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DEC8);
  MEMORY[0x28223BE20](v24);
  v26 = &v121 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DED0);
  MEMORY[0x28223BE20](v27);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v121 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DED8);
  MEMORY[0x28223BE20](v33 - 8);
  v132 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v149 = a1;
  v150 = &v121 - v36;
  v37 = *(a1 + 32);
  if (!v37)
  {
    goto LABEL_18;
  }

  v38 = v37;
  v39 = sub_27443AC4C();

  v146 = v11;
  if ((v39 & 1) != 0 && (v40 = sub_27451D93C()) != 0)
  {
    v41 = v40;
    v148 = v41;
    LODWORD(v137) = sub_27463A33C();
    sub_2746390AC();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v155[0]) = 0;

    sub_2745212EC(v41);

    sub_27446F35C(v32);
    *&v32[*(v27 + 36)] = 0x4000000000000000;
    v50 = __dst[0];
    v51 = v23;
    v52 = v155[0];
    sub_274412C20(v32, v29, &qword_28094DED0);
    *v26 = 0;
    v26[8] = v50;
    v26[16] = v137;
    *(v26 + 3) = v43;
    *(v26 + 4) = v45;
    *(v26 + 5) = v47;
    *(v26 + 6) = v49;
    v26[56] = v52;
    v23 = v51;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF00);
    sub_274412C20(v29, &v26[*(v53 + 48)], &qword_28094DED0);

    sub_2744C9C24(v32, &qword_28094DED0);
    sub_2744C9C24(v29, &qword_28094DED0);
    v54 = v150;
    sub_27441277C(v26, v150, &qword_28094DEC8);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v24);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v150, 1, 1, v24);
    v148 = 0;
  }

  v55 = v38;
  v56 = sub_27443AF38();

  v57 = v149;
  if (v56)
  {
    v58 = sub_27463A33C();
    sub_2746390AC();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v155[0]) = 0;
    KeyPath = swift_getKeyPath();
    v68 = swift_allocObject();
    v68[2] = v56;
    v129 = LOBYTE(__dst[0]);
    v127 = v58;
    v128 = LOBYTE(v155[0]);
    LOBYTE(v156[0]) = 0;
    LOBYTE(v154[0]) = 0;
    v124 = 0;
    v126 = 0;
    sub_2744C76A4(sub_2744C769C, v68, 0);
    j__swift_retain_0();
    v125 = sub_2744C769C;
    v130 = v68;
    sub_27445429C(sub_2744C769C, v68, 0);
    v131 = KeyPath;
    j__swift_release(KeyPath, 0);
  }

  else
  {
    v128 = 0;
    v129 = 0;
    v127 = 0;
    v130 = 0;
    v131 = 0;
    v126 = 0;
    v60 = 0;
    v62 = 0;
    v64 = 0;
    v124 = 255;
    v125 = 0;
    v66 = 0;
  }

  v69 = *(v57 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v138;
  sub_274638FAC();

  v71 = sub_2744B2E8C();
  v137 = *(v151 + 1);
  v138 = v151 + 8;
  v137(v70, v152);
  if (v71)
  {
    v72 = v55;
    v73 = sub_27443A95C();

    if (v73)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
      sub_27463B16C();
      v74 = sub_2744A9A44();
      v76 = v75;
      v78 = v77;
      v79 = ~v77;

      if (!v79)
      {
        type metadata accessor for WorkflowEditorOptions(0);
        sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
        v116 = sub_27463979C();
        v117 = v123;
        *v123 = v116;
        v117[1] = v118;
        v117[2] = swift_getKeyPath();
        *(v117 + 24) = 0;
        v81 = v139;
        v119 = *(v139 + 24);
        *(v117 + v119) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
        swift_storeEnumTagMultiPayload();
        v120 = *(v81 + 28);
        *(v117 + v120) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
        swift_storeEnumTagMultiPayload();
        sub_2744C7648();
        v80 = 0;
        goto LABEL_14;
      }

      sub_2744B04F4(v74, v76, v78);
    }
  }

  v80 = 1;
  v81 = v139;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v23, v80, 1, v81);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v82 = sub_27463979C();
  v122 = v83;
  v123 = v82;
  v84 = *(v57 + 64);
  v155[0] = *(v57 + 48);
  *&v155[1] = v84;
  v85 = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DEE0);
  sub_2746390DC();
  v139 = __dst[0];
  v86 = *&__dst[1];
  v87 = *(v57 + 24);
  v88 = type metadata accessor for WorkflowViewReorderingDelegate();
  v89 = swift_allocObject();
  *(v89 + 16) = v69;
  *(v89 + 24) = v85;
  *(v89 + 32) = v139;
  *(v89 + 48) = v86;
  *(v89 + 56) = v87;
  swift_getKeyPath();
  swift_getKeyPath();
  v136 = v69;

  v90 = v145;
  sub_274638FAC();

  v91 = swift_getKeyPath();
  *(&__dst[1] + 1) = v88;
  *&__dst[2] = &off_288367870;
  *&__dst[0] = v89;
  v147 = v89;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  sub_27463B16C();
  v92 = *&v155[0];
  sub_2744C9158();
  v93 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v149 = v23;
  v94 = (v142 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_2744C7648();
  v96 = (v95 + v94);
  *v96 = a3;
  v96[1] = a4;
  v97 = v152;
  v98 = *(v151 + 2);
  v99 = v146;
  v98(v146, v90, v152);
  v100 = v144;
  *(v99 + *(v144 + 68)) = v91;
  *(v99 + *(v100 + 72)) = v92;
  v101 = (v99 + *(v100 + 76));
  *v101 = sub_2744C753C;
  v101[1] = v95;
  v102 = v140;
  v98(v140, v90, v97);
  type metadata accessor for DragReorderableViewState();
  swift_allocObject();

  v103 = sub_2744B302C(v102, v91);
  v104 = v137;
  v137(v90, v97);
  *(v92 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_viewState) = v103;

  sub_2743F45D0(__dst, v155);
  v105 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate;
  swift_beginAccess();
  sub_2744C75D8(v155, v92 + v105);
  swift_endAccess();

  type metadata accessor for WorkflowEditorResults(0);
  sub_2744C9840(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
  v106 = sub_27463979C();
  v151 = v107;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  sub_2744CA97C(&qword_28094DEE8, &qword_28094C9E0);
  sub_27463BACC();
  sub_27463BB0C();
  v108 = sub_27463BAFC();
  v104(v90, v97);
  if (!__OFSUB__(0, v108))
  {
    v109 = -v108;
    v110 = v150;
    v111 = v132;
    sub_274412C20(v150, v132, &qword_28094DED8);
    *&v155[0] = 0;
    *(&v155[0] + 1) = v129;
    *&v155[1] = v127;
    *(&v155[1] + 1) = v60;
    *&v155[2] = v62;
    *(&v155[2] + 1) = v64;
    *&v155[3] = v66;
    *(&v155[3] + 1) = v128;
    *&v155[4] = v125;
    *(&v155[4] + 1) = v130;
    *&v155[5] = v124;
    *(&v155[5] + 1) = v131;
    LOBYTE(v155[6]) = v126;
    v156[0] = v111;
    v156[1] = v155;
    v112 = v149;
    v113 = v133;
    sub_274412C20(v149, v133, &qword_28094DEC0);
    v154[0] = v123;
    v154[1] = v122;
    v154[2] = 0x3FF0000000000000;
    v156[2] = v113;
    v156[3] = v154;
    v114 = v134;
    sub_274412C20(v99, v134, &unk_28094DEB0);
    v153[0] = v106;
    v153[1] = v151;
    v153[2] = *&v109;
    v156[4] = v114;
    v156[5] = v153;
    sub_2744B2618(v156, v135);

    sub_2744C9C24(v99, &unk_28094DEB0);
    sub_2744C9C24(v112, &qword_28094DEC0);
    sub_2744C9C24(v110, &qword_28094DED8);

    sub_2744C9C24(v114, &unk_28094DEB0);
    sub_2744C9C24(v113, &qword_28094DEC0);
    memcpy(__dst, v155, 0x61uLL);
    sub_2744C9C24(__dst, &unk_28094DEF0);
    return sub_2744C9C24(v111, &qword_28094DED8);
  }

  __break(1u);
LABEL_18:
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_2744BAC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 8);
  *a4 = sub_274639C5C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF18);
  sub_2744BADDC(v12, a3, v12, v10, v11, (a4 + *(v13 + 44)), v9, a1);
  v14 = objc_opt_self();
  v15 = v12;
  [v14 _readableWidth];
  v17 = v16;
  type metadata accessor for ActionList(0);
  sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);

  v18 = sub_27463950C();
  v20 = v19;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF20);
  v22 = a4 + *(result + 36);
  *v22 = v15;
  *(v22 + 8) = v10;
  *(v22 + 16) = v11;
  *(v22 + 24) = a5;
  *(v22 + 32) = v17;
  *(v22 + 40) = v18;
  *(v22 + 48) = v20;
  if (__OFSUB__(0, v10))
  {
    __break(1u);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF28);
    *(a4 + *(result + 36)) = -v10;
  }

  return result;
}

void sub_2744BADDC(void *a1@<X1>, uint64_t a2@<X4>, void *a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v184 = a4;
  v185 = a5;
  v177 = a6;
  v152 = sub_2746396BC();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF30);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = v143 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF38);
  MEMORY[0x28223BE20](v175);
  v147 = v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF40);
  MEMORY[0x28223BE20](v14 - 8);
  v176 = v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v182 = v143 - v17;
  v168 = type metadata accessor for WorkflowView(0);
  v18 = *(v168 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v168);
  v145 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v180 = v143 - v21;
  MEMORY[0x28223BE20](v22);
  v179 = v143 - v23;
  MEMORY[0x28223BE20](v24);
  v158 = type metadata accessor for ActionView(0);
  MEMORY[0x28223BE20](v158);
  v26 = v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v163 = v143 - v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF48);
  MEMORY[0x28223BE20](v160);
  v162 = v143 - v29;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF50);
  MEMORY[0x28223BE20](v161);
  v167 = v143 - v30;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF58);
  MEMORY[0x28223BE20](v164);
  v174 = v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v165 = v143 - v33;
  MEMORY[0x28223BE20](v34);
  v181 = v143 - v35;
  v36 = *(a2 + 8);
  v37 = type metadata accessor for ActionList(0);
  v38 = sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);
  swift_retain_n();
  v39 = a1;
  v171 = v37;
  v172 = v39;
  v169 = v38;
  v170 = sub_27463950C();
  v173 = v40;
  v166 = v36;
  v41 = a3;

  v42 = v41;
  v153 = v41;
  v156 = sub_2745212EC(v41);

  v43 = a2;
  sub_2744C9158();
  v44 = *(v18 + 80);
  v157 = (v19 + 7);
  v45 = (v19 + 7 + ((v44 + 16) & ~v44)) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_2744C7648();
  v155 = v46;
  v47 = (v46 + v45);
  v48 = v184;
  v49 = v185;
  *v47 = v42;
  v47[1] = v48;
  v47[2] = v49;
  sub_2744C9158();
  v178 = v44;
  v50 = swift_allocObject();
  v154 = v50;
  v143[1] = (v44 + 16) & ~v44;
  v51 = v153;
  sub_2744C7648();
  v144 = v45;
  v52 = (v50 + v45);
  *v52 = v51;
  v52[1] = v48;
  v52[2] = v49;
  v183 = v43;
  if (*(v43 + 32))
  {
    v159 = a8;
    v53 = v178;
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2744C9158();
    v56 = (v157 + ((v53 + 24) & ~v53)) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    sub_2744C7648();
    *(v57 + v56) = v54;
    *&v188 = v51;
    *(&v188 + 1) = v184;
    v189 = v185;
    v157 = v51;

    v58 = sub_2744BC5E4(&v188);
    v60 = v59;
    v62 = v61;
    v180 = type metadata accessor for WorkflowEditorOptions(0);
    v179 = sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    *(v26 + 11) = sub_27463979C();
    *(v26 + 12) = v63;
    type metadata accessor for WorkflowEditorResults(0);
    sub_2744C9840(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
    *(v26 + 13) = sub_27463979C();
    *(v26 + 14) = v64;
    LOBYTE(v186) = 0;
    sub_27463ACDC();
    v65 = *(&v188 + 1);
    v26[120] = v188;
    *(v26 + 16) = v65;
    LOBYTE(v186) = 0;
    sub_27463ACDC();
    v66 = *(&v188 + 1);
    v26[136] = v188;
    *(v26 + 18) = v66;
    v186 = 0;
    v187 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DF60);
    sub_27463ACDC();
    v67 = v189;
    *(v26 + 152) = v188;
    *(v26 + 21) = v67;
    *(v26 + 22) = swift_getKeyPath();
    v26[184] = 0;
    *(v26 + 24) = swift_getKeyPath();
    v26[200] = 0;
    *(v26 + 26) = swift_getKeyPath();
    v26[216] = 0;
    v68 = v158;
    v69 = *(v158 + 80);
    *&v26[v69] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
    swift_storeEnumTagMultiPayload();
    *&v26[*(v68 + 84)] = xmmword_27464D540;
    *&v26[*(v68 + 88)] = 0x4018000000000000;
    type metadata accessor for ActionViewModel();
    sub_2744C9840(&qword_28094C460, type metadata accessor for ActionViewModel);
    v70 = v156;
    *v26 = sub_27463950C();
    *(v26 + 1) = v71;
    v72 = v155;
    *(v26 + 2) = sub_2744C7A6C;
    *(v26 + 3) = v72;
    v73 = v154;
    *(v26 + 4) = sub_2744C7C04;
    *(v26 + 5) = v73;
    *(v26 + 6) = sub_2744C7C90;
    *(v26 + 7) = v57;
    *(v26 + 8) = v58;
    *(v26 + 9) = v60;
    v26[80] = v62;
    v26[81] = 0;
    v74 = *&v70[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action];

    objc_opt_self();
    LOBYTE(v68) = swift_dynamicCastObjCClass() != 0;

    v26[82] = 2 * v68;
    v26[83] = 0;
    v158 = type metadata accessor for ActionView;
    sub_2744C7648();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF70);
    sub_27463977C();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_2746486A0;
    sub_27463976C();
    sub_27463975C();
    *&v188 = v75;
    v76 = v162;
    v77 = &v162[*(v160 + 36)];
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF78);
    sub_2744C9840(&qword_28094DF80, MEMORY[0x277CDFC90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF88);
    sub_2744CA97C(&qword_28094DF90, &qword_28094DF88);
    sub_27463C1EC();
    v79 = *(sub_27463970C() + 20);
    v80 = *MEMORY[0x277CE0118];
    v81 = sub_274639BFC();
    (*(*(v81 - 8) + 104))(&v77->i8[v79], v80, v81);
    *v77 = vdupq_n_s64(0x403B800000000000uLL);
    v77->i8[*(v78 + 36)] = 0;
    sub_2744C7648();
    KeyPath = swift_getKeyPath();
    v83 = v167;
    sub_27441277C(v76, v167, &qword_28094DF48);
    v84 = v83 + *(v161 + 36);
    v85 = v157;
    v86 = v184;
    v87 = v185;
    *v84 = v157;
    *(v84 + 8) = v86;
    v88 = v166;
    *(v84 + 16) = v87;
    *(v84 + 24) = v88;
    *(v84 + 32) = KeyPath;
    *(v84 + 40) = 0;

    v89 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
    sub_27463B16C();
    v90 = v188;
    v91 = v165;
    v92 = &v165[*(v164 + 36)];
    sub_274434ED4(v159, v92);
    *(v92 + 48) = v89;
    *(v92 + 56) = v90;
    LOBYTE(v186) = 0;

    sub_27463ACDC();
    v93 = *(&v188 + 1);
    *(v92 + 64) = v188;
    *(v92 + 72) = v93;
    v94 = sub_27463979C();
    v96 = v95;

    *(v92 + 80) = v94;
    *(v92 + 88) = v96;
    *(v92 + 96) = swift_getKeyPath();
    *(v92 + 104) = 0;
    sub_27441277C(v83, v91, &qword_28094DF50);
    v97 = v91;
    v98 = v89;
    v99 = v181;
    sub_27441277C(v97, v181, &qword_28094DF58);
    *&v188 = v98;
    *(&v188 + 1) = v86;
    v189 = v87;
    v100 = sub_27451F0C0(&v188);
    v168 = v98;
    if (v100)
    {
      v101 = v184;
      *&v188 = v98;
      *(&v188 + 1) = v184;
      v102 = v98;
      v103 = v185;
      v189 = v185;
      v104 = sub_27451FB98(&v188);
      sub_2744C9158();
      v105 = v144;
      v106 = swift_allocObject();
      v107 = sub_2744C7648();
      v108 = (v106 + v105);
      *v108 = v102;
      v108[1] = v101;
      v108[2] = v103;
      MEMORY[0x28223BE20](v107);
      v143[-2] = v104;
      v109 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DFA0);
      sub_2744C7DC8();
      v110 = v146;
      sub_27463AD5C();
      v111 = v150;
      sub_2746396AC();
      sub_2744CA97C(&unk_28094E020, &qword_28094DF30);
      sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
      v112 = v147;
      v113 = v149;
      v114 = v152;
      sub_27463A69C();
      (*(v151 + 8))(v111, v114);
      (*(v148 + 8))(v110, v113);
      LOBYTE(v104) = sub_27463A32C();
      sub_2746390AC();
      v115 = v175;
      v116 = v112 + *(v175 + 36);
      *v116 = v104;
      *(v116 + 8) = v117;
      *(v116 + 16) = v118;
      *(v116 + 24) = v119;
      *(v116 + 32) = v120;
      *(v116 + 40) = 0;
      v121 = v182;
      sub_27441277C(v112, v182, &qword_28094DF38);
      v122 = 0;
    }

    else
    {
      v122 = 1;
      v121 = v182;
      v115 = v175;
    }

    __swift_storeEnumTagSinglePayload(v121, v122, 1, v115);
    v123 = sub_27463979C();
    v185 = v124;
    v184 = sub_27463950C();
    v126 = v125;
    v127 = v174;
    sub_274412C20(v99, v174, &qword_28094DF58);
    v128 = v121;
    v129 = v176;
    sub_274412C20(v128, v176, &qword_28094DF40);
    v130 = v177;
    v132 = v172;
    v131 = v173;
    v133 = v170;
    *v177 = v172;
    v130[1] = v133;
    v130[2] = v131;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF98);
    sub_274412C20(v127, v130 + v134[12], &qword_28094DF58);
    sub_274412C20(v129, v130 + v134[16], &qword_28094DF40);
    v135 = (v130 + v134[20]);
    v136 = v185;
    *v135 = v123;
    v135[1] = v136;
    v137 = v168;
    v138 = v184;
    v135[2] = v168;
    v135[3] = v138;
    v135[4] = v126;
    v135[5] = 0xBFF0000000000000;
    v139 = v123;
    v140 = v137;

    v141 = v132;

    sub_2744C9C24(v182, &qword_28094DF40);
    sub_2744C9C24(v181, &qword_28094DF58);

    sub_2744C9C24(v129, &qword_28094DF40);
    sub_2744C9C24(v127, &qword_28094DF58);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    v142 = v51;
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744BC13C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = v2 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_274648560;
      *(v8 + 32) = a2;
      v11 = 0;
      v9 = *(v6 + 8);
      v10 = a2;
      v9(v8, &v11, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744BC290(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a2 + 8) + 24) actions];
  sub_274412734(0, &qword_28094E040);
  sub_27463B81C();

  sub_2744B29A0();
  v6 = v5;
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    v9 = *(a2 + 32);
    if (v9)
    {
      v10 = v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(a1, v6, ObjectType, v11);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  return result;
}

void sub_2744BC434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(*(a3 + 8) + 24) actions];
    sub_274412734(0, &qword_28094E040);
    sub_27463B81C();

    sub_2744B29A0();
    v9 = v8;
    v11 = v10;

    if ((v11 & 1) == 0 && (swift_beginAccess(), (v12 = swift_unknownObjectWeakLoadStrong()) != 0) && (v13 = v12, v14 = v12 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate, swift_beginAccess(), v15 = swift_unknownObjectWeakLoadStrong(), v16 = *(v14 + 8), v13, v15))
    {
      v17 = __OFADD__(v9, 1);
      v18 = v9 + 1;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        ObjectType = swift_getObjectType();
        (*(v16 + 32))(a1, v18, ObjectType, v16);

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2744BC5E4(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v6;
  v20[2] = v7;
  if (!sub_27451F01C(v20))
  {
    return 0;
  }

  sub_2744C9158();
  sub_27463B9CC();
  v19 = v5;
  v18 = v7;
  v8 = sub_27463B9BC();
  v9 = (v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  sub_2744C7648();
  v12 = (v10 + v9);
  *v12 = v19;
  v12[1] = v6;
  v12[2] = v18;
  sub_2744C9158();
  v13 = v19;
  v14 = sub_27463B9BC();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = MEMORY[0x277D85700];
  sub_2744C7648();
  v16 = (v15 + v9);
  *v16 = v13;
  v16[1] = v6;
  v16[2] = v18;
  sub_27463AF0C();
  return v20[0];
}

uint64_t sub_2744BC830()
{
  sub_27463B13C();
  sub_27463946C();
}

double sub_2744BC8A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_274639B2C();
  sub_2744BCA88(a1, v36);
  v33 = v36[1];
  v34 = v36[0];
  v4 = v37;
  v32 = v38;
  v40 = 1;
  v39 = v37;
  v31 = sub_27463A31C();
  sub_2746390AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(v41[0]) = 0;
  v13 = sub_27463A38C();
  sub_2746390AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v36[0]) = 0;
  v30 = sub_27463A44C();
  KeyPath = swift_getKeyPath();
  v23 = sub_27463ABCC();
  v24 = swift_getKeyPath();
  v25 = sub_27463B0CC();
  v27 = v26;
  sub_27463AB6C();
  v28 = sub_27463ABAC();

  *a2 = v35;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = v33;
  *(a2 + 40) = v4;
  *(a2 + 48) = v32;
  *(a2 + 64) = v31;
  *(a2 + 72) = v6;
  *(a2 + 80) = v8;
  *(a2 + 88) = v10;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0;
  *(a2 + 112) = v13;
  *(a2 + 113) = v36[0];
  *(a2 + 116) = *(v36 + 3);
  *(a2 + 120) = v15;
  *(a2 + 128) = v17;
  *(a2 + 136) = v19;
  *(a2 + 144) = v21;
  *(a2 + 152) = 0;
  *(a2 + 156) = *(v41 + 3);
  *(a2 + 153) = v41[0];
  *(a2 + 160) = KeyPath;
  *(a2 + 168) = v30;
  *(a2 + 176) = v24;
  *(a2 + 184) = v23;
  *(a2 + 192) = sub_2744BCD38;
  *(a2 + 200) = 0;
  *(a2 + 208) = v25;
  *(a2 + 216) = v27;
  *(a2 + 224) = v28;
  result = 4.0;
  *(a2 + 232) = xmmword_274651470;
  *(a2 + 248) = 0x4010000000000000;
  return result;
}

uint64_t sub_2744BCA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27463B70C();
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_27463C38C();

    v24 = sub_274412BBC();
    v23 = MEMORY[0x277D837D0];
    sub_27463C0FC();
    MEMORY[0x277C57EA0](0xD000000000000010, 0x800000027468ABB0);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v7 = qword_28094BB00;
    v8 = sub_27463B66C();

    v9 = sub_27463B66C();

    v10 = [v7 localizedStringForKey:v8 value:v9 table:{0, v23, v24, v24, v24, 32, 0xE100000000000000, 10, 0xE100000000000000}];

    sub_27463B6AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83B88];
  *(v11 + 16) = xmmword_274648570;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  sub_27463B67C();

  sub_274412BBC();
  v14 = sub_27463A53C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_27463AC2C();
  *a2 = v14;
  *(a2 + 8) = v16;
  v18 &= 1u;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  sub_27440B094(v14, v16, v18);

  sub_274412C10(v14, v16, v18);
}

uint64_t sub_2744BCD38@<X0>(double *a1@<X8>)
{
  sub_2746393BC();
  v3 = v2 * 0.5;
  v4 = *(sub_27463970C() + 20);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_274639BFC();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = v3;
  a1[1] = v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E030);
  *(a1 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_2744BCDF0(uint64_t a1)
{
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkflowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  sub_27463B16C();
  v6 = v11;
  v7 = *(a1 + 72);
  LOBYTE(a1) = *(a1 + 80);

  if ((a1 & 1) == 0)
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v7, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  *(v6 + 32) = v7;
}

uint64_t sub_2744BCF84@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, _BYTE *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  result = sub_27451F0C0(v6);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2744BCFC8()
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_2744BD040(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  if (a1)
  {
    return sub_27451F0D4(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return sub_27451F174(v9, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_2744BD098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_274412C20(v2 + *(a1 + 60), &v15 - v10, &qword_28094BDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_274639C4C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2744BD2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v35 = *(a1 + 16);
  v32 = a1;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E750);
  v30 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v28[0] = sub_27463AE6C();
  v28[1] = sub_27463ADAC();
  v28[2] = sub_274639DEC();
  v3 = sub_27463AC1C();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = sub_27463965C();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600);
  v9 = sub_27463965C();
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v12 = sub_27463965C();
  v37 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v29 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v34 = v28 - v15;
  v40 = v35;
  v41 = v30;
  v42 = *(v32 + 32);
  v43 = v38;
  sub_2744BE35C();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v52 = WitnessTable;
  v53 = v17;
  v51 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  sub_27463A9DC();
  (*(v31 + 8))(v5, v3);
  sub_27463AB8C();
  v49 = v18;
  v50 = MEMORY[0x277CDF918];
  v19 = swift_getWitnessTable();
  sub_27463A78C();

  (*(v33 + 8))(v8, v6);
  v48 = sub_27463AB5C();
  v20 = sub_2744CA97C(&unk_28094D180, &qword_28094C600);
  v46 = v19;
  v47 = v20;
  v21 = swift_getWitnessTable();
  sub_274415328();
  v22 = v29;
  sub_27463A65C();

  (*(v36 + 8))(v11, v9);
  v23 = sub_2744CA97C(&qword_28094A710, &qword_280951400);
  v44 = v21;
  v45 = v23;
  v24 = swift_getWitnessTable();
  v25 = v34;
  sub_2744E9688(v22, v12, v24);
  v26 = *(v37 + 8);
  v26(v22, v12);
  sub_2744E9688(v25, v12, v24);
  return (v26)(v25, v12);
}

uint64_t sub_2744BD9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v66 = a6;
  swift_getTupleTypeMetadata2();
  v62 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v63 = sub_27463ADAC();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v67 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v50 - v12;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  v13 = sub_27463ADAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v61 = a2;
  v70 = a2;
  v71 = a3;
  v72 = a4;
  v73 = v68;
  v74 = a1;
  sub_27456E924();
  sub_27463AD9C();
  v20 = swift_getWitnessTable();
  v69 = v19;
  v56 = v20;
  sub_2744E9688(v16, v13, v20);
  v57 = v14;
  v21 = *(v14 + 8);
  v59 = v14 + 8;
  v58 = v21;
  v22 = v21(v16, v13);
  v23 = *(a1 + 40);
  if (v23)
  {
    v79 = *(a1 + 32);
    v80 = v23;
    sub_274412BBC();

    v24 = a3;
    v25 = a1;
    v26 = sub_27463A53C();
    v28 = v27;
    v30 = v29;
    v50 = a4;
    v55 = sub_27463A4FC();
    v54 = v31;
    v33 = v32;
    v53 = v34;
    v35 = v26;
    a1 = v25;
    a3 = v24;
    sub_274412C10(v35, v28, v30 & 1);
    a4 = v50;

    v52 = v33 & 1;
  }

  else
  {
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
  }

  MEMORY[0x28223BE20](v22);
  *(&v50 - 6) = v61;
  *(&v50 - 5) = a3;
  v36 = v68;
  *(&v50 - 4) = a4;
  *(&v50 - 3) = v36;
  *(&v50 - 2) = a1;
  sub_27456E924();
  v37 = v67;
  sub_27463AD9C();
  v38 = v63;
  v62 = swift_getWitnessTable();
  v39 = v65;
  sub_2744E9688(v37, v38, v62);
  v40 = v64;
  v68 = *(v64 + 8);
  v68(v37, v38);
  (*(v57 + 16))(v16, v69, v13);
  v41 = v16;
  v51 = v16;
  v42 = v55;
  v43 = v13;
  v44 = v54;
  v79 = v55;
  v80 = v54;
  v45 = v52;
  v46 = v53;
  v81 = v52;
  v82 = v53;
  v83[0] = v41;
  v83[1] = &v79;
  (*(v40 + 16))(v37, v39, v38);
  v83[2] = v37;
  sub_274483EE8(v42, v44, v45, v46);
  v78[0] = v43;
  v78[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E750);
  v78[2] = v38;
  v75 = v56;
  v76 = sub_2744CAA68();
  v77 = v62;
  sub_274575750(v83, 3, v78);
  sub_274483F2C(v42, v44, v45, v46);
  v47 = v68;
  v68(v39, v38);
  v48 = v58;
  v58(v69, v43);
  v47(v37, v38);
  sub_274483F2C(v79, v80, v81, v82);
  return v48(v51, v43);
}

uint64_t sub_2744BE020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  (*v13)(v10);
  sub_2744E9688(v8, a2, a4);
  v14 = *(v6 + 8);
  v14(v8, a2);
  (*(v6 + 16))(v8, v12, a2);
  v18 = 0;
  v19 = 1;
  v20[0] = v8;
  v20[1] = &v18;
  v17[0] = a2;
  v17[1] = MEMORY[0x277CE1180];
  v16[0] = a4;
  v16[1] = MEMORY[0x277CE1170];
  sub_274575750(v20, 2, v17);
  v14(v12, a2);
  return (v14)(v8, a2);
}

uint64_t sub_2744BE1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  (*(v14 + 16))(v11);
  sub_2744E9688(v9, a3, a5);
  v15 = *(v7 + 8);
  v15(v9, a3);
  v19 = 0;
  v20 = 1;
  v21[0] = &v19;
  (*(v7 + 16))(v9, v13, a3);
  v21[1] = v9;
  v18[0] = MEMORY[0x277CE1180];
  v18[1] = a3;
  v17[0] = MEMORY[0x277CE1170];
  v17[1] = a5;
  sub_274575750(v21, 2, v18);
  v15(v13, a3);
  return (v15)(v9, a3);
}

uint64_t sub_2744BE35C()
{
  sub_27463AE6C();
  sub_27463ADAC();
  sub_274639DEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_27463AC0C();
}

uint64_t sub_2744BE470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a8;
  v59 = a3;
  v57 = a2;
  v56 = a1;
  v63 = a9;
  v54 = a6;
  v13 = sub_27463ADAC();
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v48 - v16;
  v17 = sub_27463AE6C();
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v48 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v48 - v20;
  v21 = sub_274639C4C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v13;
  v25 = sub_274639DEC();
  v61 = *(v25 - 8);
  v62 = v25;
  MEMORY[0x28223BE20](v25);
  v60 = &v48 - v26;
  v74 = a4;
  v75 = a5;
  v27 = a5;
  v28 = a7;
  v76 = a7;
  v29 = v55;
  v77 = v55;
  v30 = type metadata accessor for WorkflowAuxiliaryBarContentView();
  sub_2744BD098(v30, v24);
  LOBYTE(a5) = sub_274639C3C();
  v31 = v24;
  v32 = v54;
  (*(v22 + 8))(v31, v21);
  v64 = a4;
  v65 = v27;
  v66 = v32;
  v67 = v28;
  v68 = v29;
  v69 = a10;
  v70 = v57;
  v71 = v59;
  if (a5)
  {
    sub_274415324();
    v33 = v48;
    sub_27463AE5C();
    WitnessTable = swift_getWitnessTable();
    v35 = v50;
    sub_2744E9688(v33, v17, WitnessTable);
    v36 = *(v51 + 8);
    v36(v33, v17);
    sub_2744E9688(v35, v17, WitnessTable);
    swift_getWitnessTable();
    v37 = v60;
    sub_27456E7CC();
    v36(v33, v17);
    v36(v35, v17);
  }

  else
  {
    sub_27456E924();
    v38 = v49;
    sub_27463AD9C();
    v39 = v58;
    v40 = swift_getWitnessTable();
    v41 = v52;
    sub_2744E9688(v38, v39, v40);
    v42 = *(v53 + 8);
    v42(v38, v39);
    sub_2744E9688(v41, v39, v40);
    swift_getWitnessTable();
    v37 = v60;
    sub_27456E878();
    v42(v38, v39);
    v42(v41, v39);
  }

  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v72 = v43;
  v73 = v44;
  v45 = v62;
  v46 = swift_getWitnessTable();
  sub_2744E9688(v37, v45, v46);
  return (*(v61 + 8))(v37, v45);
}

void sub_2744BEABC()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v11(v10);
  OUTLINED_FUNCTION_43_2();
  sub_2744E9688(v12, v13, v14);
  v15 = *(v4 + 8);
  v15(v8, v3);
  v16 = OUTLINED_FUNCTION_34_3();
  sub_2744E9688(v16, v17, v1);
  v18 = OUTLINED_FUNCTION_34_3();
  (v15)(v18);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_2744BEBD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v88 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4F8);
  MEMORY[0x28223BE20](v74);
  v79 = &v70 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E500);
  MEMORY[0x28223BE20](v78);
  v6 = (&v70 - v5);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E508);
  MEMORY[0x28223BE20](v87);
  v80 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E510);
  MEMORY[0x28223BE20](v8);
  v10 = (&v70 - v9);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E518);
  MEMORY[0x28223BE20](v84);
  v86 = &v70 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E520);
  MEMORY[0x28223BE20](v81);
  v13 = &v70 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E528);
  MEMORY[0x28223BE20](v85);
  v15 = &v70 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E530);
  MEMORY[0x28223BE20](v82);
  v17 = (&v70 - v16);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = a1;
    sub_274638FAC();

    v19 = v90;
    v20 = v93;
    if (v96)
    {
      if (v96 == 1)
      {
        v80 = v95;
        v74 = v15;
        v21 = v94;
        v77 = v94;
        v22 = v18;
        v73 = v18;
        v23 = a1;
        v24 = v92;
        v76 = v92;
        v72 = v13;
        v25 = v91;
        v75 = v91;

        v26 = [v19 localizedName];
        v27 = sub_27463B6AC();
        v78 = v19;
        v28 = v27;
        v71 = v29;

        v30 = swift_allocObject();
        v31 = v8;
        v32 = v83;
        *(v30 + 2) = v23;
        *(v30 + 3) = v32;
        *(v30 + 4) = v24;
        *(v30 + 5) = v20;
        v33 = swift_allocObject();
        v79 = v20;
        v34 = v33;
        *(v33 + 2) = v25;
        *(v33 + 3) = v23;
        *(v33 + 4) = v32;
        *(v33 + 5) = v21;
        v35 = v80;
        *(v33 + 6) = v80;
        v36 = *(v31 + 60);
        *(v10 + v36) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
        swift_storeEnumTagMultiPayload();
        v37 = v71;
        v10[4] = v28;
        v10[5] = v37;
        *v10 = sub_2744C9C08;
        v10[1] = v30;
        v10[2] = sub_2744C9C14;
        v10[3] = v34;
        sub_274412C20(v10, v72, &qword_28094E510);
        swift_storeEnumTagMultiPayload();
        sub_2744CA97C(&qword_28094E548, &qword_28094E530);
        sub_2744CA97C(&qword_28094E550, &qword_28094E510);
        v38 = v73;
        v39 = v79;

        v40 = v75;
        swift_unknownObjectRetain();

        v41 = v74;
        sub_274639DDC();
        sub_274412C20(v41, v86, &qword_28094E528);
        swift_storeEnumTagMultiPayload();
        sub_2744C9A28();
        sub_2744C9B08();
        sub_274639DDC();
        sub_27443C9D4(v78, v40, v76, v39, v77, v35, 1);
        sub_2744C9C24(v41, &qword_28094E528);
        v42 = v10;
        v43 = &qword_28094E510;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274638FAC();

        v57 = v89;
        if (v89)
        {
          sub_27463B70C();
          if (qword_2809492C0 != -1)
          {
            swift_once();
          }

          v58 = qword_28094BB00;
          v59 = sub_27463B66C();
          v60 = sub_27463B66C();

          v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

          v62 = sub_27463B6AC();
          v64 = v63;

          v65 = swift_allocObject();
          v66 = v83;
          *(v65 + 16) = a1;
          *(v65 + 24) = v66;
          v67 = v78[15];
          *(v6 + v67) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
          swift_storeEnumTagMultiPayload();
          v6[4] = v62;
          v6[5] = v64;
          *v6 = sub_2744C9BC0;
          v6[1] = v65;
          v6[2] = CGSizeMake;
          v6[3] = 0;
          sub_274412C20(v6, v79, &qword_28094E500);
          swift_storeEnumTagMultiPayload();
          sub_2744CA97C(&qword_28094E538, &qword_28094E500);
          v68 = v18;
          v69 = v80;
          sub_274639DDC();
          sub_2744C9BC8(v57);
          sub_2744C9C24(v6, &qword_28094E500);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_2744CA97C(&qword_28094E538, &qword_28094E500);
          v69 = v80;
          sub_274639DDC();
        }

        sub_274412C20(v69, v86, &qword_28094E508);
        swift_storeEnumTagMultiPayload();
        sub_2744C9A28();
        sub_2744C9B08();
        sub_274639DDC();
        v42 = v69;
        v43 = &qword_28094E508;
      }

      return sub_2744C9C24(v42, v43);
    }

    else
    {
      v75 = v91;
      v78 = v90;
      v76 = v92;
      v79 = v93;
      v77 = v94;
      v80 = v95;

      sub_27463B70C();
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v44 = qword_28094BB00;
      v45 = sub_27463B66C();
      v46 = sub_27463B66C();

      v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

      v48 = sub_27463B6AC();
      v50 = v49;

      v51 = swift_allocObject();
      v53 = v82;
      v52 = v83;
      *(v51 + 16) = a1;
      *(v51 + 24) = v52;
      v54 = *(v53 + 60);
      *(v17 + v54) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
      swift_storeEnumTagMultiPayload();
      v17[4] = v48;
      v17[5] = v50;
      *v17 = CGSizeMake;
      v17[1] = 0;
      v17[2] = sub_2744C9C74;
      v17[3] = v51;
      sub_274412C20(v17, v13, &qword_28094E530);
      swift_storeEnumTagMultiPayload();
      sub_2744CA97C(&qword_28094E548, &qword_28094E530);
      sub_2744CA97C(&qword_28094E550, &qword_28094E510);
      v55 = v18;
      sub_274639DDC();
      sub_274412C20(v15, v86, &qword_28094E528);
      swift_storeEnumTagMultiPayload();
      sub_2744C9A28();
      sub_2744C9B08();
      sub_274639DDC();
      sub_27443C9D4(v78, v75, v76, v79, v77, v80, 0);
      sub_2744C9C24(v15, &qword_28094E528);
      return sub_2744C9C24(v17, &qword_28094E530);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744BF860(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;

  return sub_27463AD5C();
}

void sub_2744BF904(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_27443DB34(0);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744BF9B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a5;
  v8 = sub_2746396BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E560);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v19[0];
  v16[5] = a4;
  v17 = a1;

  sub_27463AD5C();
  sub_2746396AC();
  sub_2744CA97C(&qword_28094E568, &qword_28094E560);
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  sub_27463A69C();
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2744BFC34(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    sub_27443CA58();

    return a3(v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744BFCF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v11 = a2;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  sub_2744CA97C(&unk_28094CDA0, &unk_28094CA00);

  return sub_27463AD5C();
}

uint64_t sub_2744BFE10()
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_2744BFE84(uint64_t a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    if (a2)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      a2 = a2;
      sub_27463B1BC();
      sub_27443DA88(v7, 1, v8, v9, 0);
      swift_unknownObjectRelease();

LABEL_5:
      v10 = a2;
      sub_27443CA58();

      return a4(v11, v12, v13, v14, v15, v16, v17);
    }

    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    swift_unknownObjectRetain();
  }

  else
  {
    if (a2)
    {
      goto LABEL_5;
    }

    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  }

  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_2744C0030()
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v0 = qword_28094BB00;
  v1 = sub_27463B66C();
  v2 = sub_27463B66C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  return sub_27463ACCC();
}

uint64_t sub_2744C015C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = sub_2746396BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E560);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = a1;
  sub_27463AD5C();
  sub_2746396AC();
  sub_2744CA97C(&qword_28094E568, &qword_28094E560);
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  sub_27463A69C();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

void sub_2744C03CC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_27443D214();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C0488@<X0>(uint64_t a1@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E308);
  MEMORY[0x28223BE20](v41);
  v4 = v32 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E310);
  MEMORY[0x28223BE20](v38);
  v37 = (v32 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E318);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E320);
  MEMORY[0x28223BE20](v39);
  v13 = v32 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E328);
  MEMORY[0x28223BE20](v40);
  v15 = v32 - v14;
  v16 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_274638FAC();

    v18 = v42;
    v19 = v43;
    if (v48)
    {
      sub_27443C9D4(v42, v43, v44, v45, v46, v47, v48);
      swift_storeEnumTagMultiPayload();
      sub_2744C93D4(&qword_28094E330, &qword_28094E328, &unk_274652500, sub_2744C944C);
      return sub_274639DDC();
    }

    else
    {
      v33 = v47;
      v34 = v46;
      v35 = v45;
      v36 = v44;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v32[0] = v19;
        v32[1] = a1;
        v23 = *(*(v1 + 32) + 24);
        swift_unknownObjectRetain();
        v24 = [v23 actionTree];
        v25 = [v24 outputsForAction:*(v1 + 16) inScopeOfAction:v22];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952610);
        v26 = sub_27463B81C();

        if (sub_274453594(v26))
        {
          *v11 = sub_274639B2C();
          *(v11 + 1) = 0;
          v11[16] = 1;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E350);
          sub_2744C0A70(v26, v18, v1, &v11[*(v27 + 44)]);

          sub_274412C20(v11, v8, &qword_28094E318);
          v28 = v37;
          *v37 = 0;
          *(v28 + 8) = 1;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E358);
          sub_274412C20(v8, v28 + *(v29 + 48), &qword_28094E318);
          swift_unknownObjectRelease();
          sub_2744C9C24(v11, &qword_28094E318);
          sub_2744C9C24(v8, &qword_28094E318);
          sub_27441277C(v28, v13, &qword_28094E310);
          v30 = 0;
        }

        else
        {

          swift_unknownObjectRelease();
          v30 = 1;
        }

        v19 = v32[0];
        __swift_storeEnumTagSinglePayload(v13, v30, 1, v38);
        sub_27441277C(v13, v15, &qword_28094E320);
        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      __swift_storeEnumTagSinglePayload(v15, v31, 1, v39);
      sub_274412C20(v15, v4, &qword_28094E328);
      swift_storeEnumTagMultiPayload();
      sub_2744C93D4(&qword_28094E330, &qword_28094E328, &unk_274652500, sub_2744C944C);
      sub_274639DDC();
      sub_27443C9D4(v18, v19, v36, v35, v34, v33, 0);
      return sub_2744C9C24(v15, &qword_28094E328);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744C0A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v44 = a4;
  v7 = sub_2746396BC();
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x28223BE20](v7);
  v41 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E360);
  MEMORY[0x28223BE20](v40);
  v11 = v35 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E368);
  MEMORY[0x28223BE20](v38);
  v36 = v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E370);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v39 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = v35 - v17;
  *v11 = sub_274639B2C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v35[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E378) + 44);
  v35[0] = a1;
  v47 = a1;
  v35[1] = swift_getKeyPath();
  v18 = *a3;
  v19 = *(a3 + 2);
  v48 = *(a3 + 24);
  v49 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = a3[1];
  *(v20 + 24) = *a3;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a3 + 4);

  swift_unknownObjectRetain();
  sub_274412C20(&v49, v46, &qword_28094C6C0);
  v22 = v19;
  sub_274412C20(&v48, v46, &qword_28094E388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E398);
  sub_2744CA97C(&qword_28094E3A0, &qword_28094E390);
  sub_2744CA97C(&qword_28094E3A8, &qword_28094E398);
  sub_27463AF7C();
  v45 = v35[0];
  sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
  sub_2744C951C();
  v23 = v36;
  sub_27463A61C();
  sub_2744C9C24(v11, &qword_28094E360);
  v24 = v41;
  sub_2746396AC();
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  v25 = v37;
  v26 = v42;
  sub_27463A69C();
  (*(v43 + 8))(v24, v26);
  sub_2744C9C24(v23, &qword_28094E368);
  v27 = *(v14 + 16);
  v28 = v39;
  v27(v39, v25, v13);
  v29 = v44;
  *v44 = 0;
  *(v29 + 8) = 1;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3F0);
  v27(&v30[*(v31 + 48)], v28, v13);
  v32 = &v30[*(v31 + 64)];
  *v32 = 0;
  v32[8] = 1;
  v33 = *(v14 + 8);
  v33(v25, v13);
  return (v33)(v28, v13);
}

void sub_2744C1028(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_27463B6AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2744C1080(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v5 = *a1;
  v6 = *a3;
  v7 = *(a3 + 2);
  v13 = *(a3 + 24);
  v14 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = a2;
  v9 = a3[1];
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a3 + 4);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_274412C20(&v14, v12, &qword_28094C6C0);
  v10 = v7;
  sub_274412C20(&v13, v12, &qword_28094E388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E408);
  sub_2744C9758();
  return sub_27463AD5C();
}

void sub_2744C11AC(void *a1, uint64_t a2, id *a3)
{
  v4 = [a1 variableWithProvider_];
  if (*a3)
  {
    v5 = v4;
    v6 = *a3;
    v7 = v5;
    sub_27443DB34(v5);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C1290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 displayName];
  sub_27463B6AC();

  v5 = [a1 icon];
  sub_274638B3C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E408);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2744C1348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3F8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  if (sub_274453594(a2) < 2)
  {
    sub_274412C20(a1, v6, &qword_28094E360);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E360);
    sub_2744C95D4();
    sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
    return sub_274639DDC();
  }

  else
  {
    v10 = sub_27463A32C();
    sub_2746390AC();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_274412C20(a1, v9, &qword_28094E360);
    v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3D8) + 36)];
    *v19 = v10;
    *(v19 + 1) = v12;
    *(v19 + 2) = v14;
    *(v19 + 3) = v16;
    *(v19 + 4) = v18;
    v19[40] = 0;
    v20 = &v9[*(v7 + 36)];
    v21 = *(sub_27463970C() + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_274639BFC();
    (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
    __asm { FMOV            V0.2D, #8.0 }

    *v20 = _Q0;
    sub_27463AB1C();
    v29 = sub_27463ABAC();

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400);
    *&v20[*(v30 + 52)] = v29;
    *&v20[*(v30 + 56)] = 256;
    v31 = sub_27463B0CC();
    v33 = v32;
    v34 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3E8) + 36)];
    *v34 = v31;
    v34[1] = v33;
    sub_274412C20(v9, v6, &qword_28094E3C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E360);
    sub_2744C95D4();
    sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
    sub_274639DDC();
    return sub_2744C9C24(v9, &qword_28094E3C8);
  }
}

uint64_t sub_2744C1714@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v36 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E470);
  MEMORY[0x28223BE20](v35);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E478);
  MEMORY[0x28223BE20](v33);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E488);
  MEMORY[0x28223BE20](v34);
  v15 = &v26 - v14;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = a1;
    sub_274638FAC();

    v17 = v37;
    v18 = v38;
    if (v43)
    {
      sub_27443C9D4(v37, v38, v39, v40, v41, v42, v43);
      swift_storeEnumTagMultiPayload();
      sub_2744C9964();
      return sub_274639DDC();
    }

    else
    {
      v28 = v42;
      v29 = v41;
      v30 = v40;
      v31 = v39;
      v20 = 1;
      if (v38)
      {
        v21 = objc_allocWithZone(MEMORY[0x277D7C888]);
        v22 = swift_unknownObjectRetain();
        v23 = sub_2745C2578(v22, 0);
        v27 = v23;
        *v13 = sub_274639B2C();
        *(v13 + 1) = 0;
        v13[16] = 1;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4A0);
        sub_2744C1B7C(a1, v32, v23, &v13[*(v24 + 44)]);
        sub_274412C20(v13, v10, &qword_28094E480);
        *v7 = 0;
        v7[8] = 1;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4A8);
        sub_274412C20(v10, &v7[*(v25 + 48)], &qword_28094E480);

        sub_2744C9C24(v13, &qword_28094E480);
        sub_2744C9C24(v10, &qword_28094E480);
        sub_27441277C(v7, v15, &qword_28094E478);
        v20 = 0;
      }

      __swift_storeEnumTagSinglePayload(v15, v20, 1, v33);
      sub_274412C20(v15, v5, &qword_28094E488);
      swift_storeEnumTagMultiPayload();
      sub_2744C9964();
      sub_274639DDC();
      sub_27443C9D4(v17, v18, v31, v30, v29, v28, 0);
      return sub_2744C9C24(v15, &qword_28094E488);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744C1B7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v39 = a4;
  v7 = sub_2746396BC();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x28223BE20](v7);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4B0);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4B8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v40 = a3;
  sub_274638B4C();
  sub_2744C9840(&qword_28094D360, MEMORY[0x277D7D598]);
  v22 = a1;
  v23 = a3;
  sub_27463AD5C();
  v24 = v34;
  sub_2746396AC();
  sub_2744CA97C(&qword_28094E4C0, &qword_28094E4B0);
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  v25 = v35;
  v26 = v37;
  sub_27463A69C();
  (*(v38 + 8))(v24, v26);
  (*(v36 + 8))(v13, v25);
  v27 = *(v15 + 16);
  v27(v17, v20, v14);
  v28 = v39;
  *v39 = 0;
  *(v28 + 8) = 1;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4C8);
  v27(&v29[*(v30 + 48)], v17, v14);
  v31 = &v29[*(v30 + 64)];
  *v31 = 0;
  v31[8] = 1;
  v32 = *(v15 + 8);
  v32(v20, v14);
  return (v32)(v17, v14);
}

void sub_2744C1F8C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    sub_27443DB34(a3);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C203C(void *a1)
{
  v2 = [a1 name];
  sub_27463B6AC();

  v3 = [a1 icon];

  return sub_274638B3C();
}

uint64_t sub_2744C20EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v27 = a1;
  v26 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v3 = sub_27463ADAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  WitnessTable = swift_getWitnessTable();
  sub_27463914C();
  swift_getWitnessTable();
  v10 = sub_2746394AC();
  v11 = sub_274639DEC();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  LOBYTE(v12) = *v2;
  v15 = *(v2 + 8);
  v14 = *(v2 + 16);
  if (v12)
  {
    LOBYTE(v38) = 1;
    v39 = v15;
    v40 = v14;
    sub_2744C297C();
    v16 = WitnessTable;
    sub_2744E9688(v6, v3, WitnessTable);
    v17 = *(v4 + 8);
    v17(v6, v3);
    sub_2744E9688(v9, v3, v16);
    swift_getWitnessTable();
    sub_27456E878();
    v17(v6, v3);
    v17(v9, v3);
  }

  else
  {
    v18 = swift_allocObject();
    v19 = *(v27 + 24);
    *(v18 + 16) = v26;
    *(v18 + 24) = v19;
    *(v18 + 32) = 0;
    *(v18 + 40) = v15;
    *(v18 + 48) = v14;

    v34 = sub_27463949C();
    v35 = v20;
    v21 = swift_getWitnessTable();
    sub_2744E9688(&v34, v10, v21);

    v32 = v38;
    v33 = v39;
    sub_2744E9688(&v32, v10, v21);
    v32 = v34;
    v33 = v35;
    v16 = WitnessTable;
    sub_27456E7CC();
  }

  v36 = swift_getWitnessTable();
  v37 = v16;
  v22 = v29;
  v23 = swift_getWitnessTable();
  sub_2744E9688(v13, v22, v23);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_2744C2544@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a1;
  v26 = a4;
  v27 = a7;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v11 = sub_27463ADAC();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_27463914C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  v29 = a5;
  v30 = a6;
  v31 = a2 & 1;
  v32 = a3;
  v33 = v26;
  v34 = v25;
  v20 = sub_27463A30C();
  sub_2744B2C08(v20, sub_2744C9130, v28, v11, WitnessTable);
  v21 = swift_getWitnessTable();
  sub_2744E9688(v16, v13, v21);
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_2744E9688(v19, v13, v21);
  return (v22)(v19, v13);
}