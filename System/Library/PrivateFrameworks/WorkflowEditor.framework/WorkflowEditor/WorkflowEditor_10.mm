unint64_t sub_2744F34DC()
{
  result = qword_28094F4E0;
  if (!qword_28094F4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F460);
    sub_2744F3568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4E0);
  }

  return result;
}

unint64_t sub_2744F3568()
{
  result = qword_28094F4E8;
  if (!qword_28094F4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094F4F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F450);
    sub_2746396BC();
    sub_27440CA78(&qword_28094F4B8, &qword_28094F450);
    sub_2744F32CC(&qword_280949470, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4E8);
  }

  return result;
}

uint64_t sub_2744F36FC(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    v8 = &v15;
    sub_27463C44C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x277C58B20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a1 + 8 * j + 32);
      }

      v8 = v11;
      v13 = v11;
      sub_2744F48CC(&v13, a3, &v14);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      if (v10 == i)
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

uint64_t sub_2744F386C(unint64_t a1)
{
  v38 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v37 = v6 - v5;
  v7 = sub_27463B4DC();
  v43 = v7;
  v40 = sub_274453594(a1);
  if (v40)
  {
    v8 = 0;
    v39 = a1 & 0xC000000000000001;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1;
    v36 = (v3 + 8);
    while (1)
    {
      if (v39)
      {
        v9 = MEMORY[0x277C58B20](v8, a1);
      }

      else
      {
        if (v8 >= *(v34 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setGroupingIdentifier_];
      v12 = sub_2744F505C(v10);
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        sub_274637EDC();
        v16 = sub_274637E9C();
        v18 = v17;
        (*v36)(v37, v38);
        v41 = v18;
        sub_2744F50C0(v16, v18, v10);
        swift_isUniquelyReferenced_nonNull_native();
        v42 = v43;
        v19 = v14;
        v20 = sub_274534C48(v14, v15);
        if (__OFADD__(v43[2], (v21 & 1) == 0))
        {
          goto LABEL_25;
        }

        v22 = v20;
        v23 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F508);
        if (sub_27463C4CC())
        {
          v24 = sub_274534C48(v19, v15);
          if ((v23 & 1) != (v25 & 1))
          {
            goto LABEL_28;
          }

          v22 = v24;
        }

        if (v23)
        {

          v7 = v43;
          v26 = (v43[7] + 16 * v22);
          *v26 = v16;
          v26[1] = v41;
        }

        else
        {
          v7 = v43;
          v43[(v22 >> 6) + 8] |= 1 << v22;
          v27 = (v42[6] + 16 * v22);
          *v27 = v19;
          v27[1] = v15;
          v28 = (v42[7] + 16 * v22);
          *v28 = v16;
          v28[1] = v41;

          v29 = v42[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_27;
          }

          v42[2] = v31;
        }

        v43 = v7;
        a1 = v35;
        v11 = v8 + 1;
      }

      else
      {
      }

      ++v8;
      if (v11 == v40)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_27463C71C();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (*(v7 + 16))
    {
      a1 = sub_2744F36FC(a1, v33, &v43);
    }

    else
    {
    }

    return a1;
  }

  return result;
}

void sub_2744F3BB4(unint64_t a1)
{
  v2 = [objc_opt_self() generalPasteboard];

  if (a1 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F560);
    sub_27463C57C();
  }

  else
  {
    sub_27463C6CC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F560);
  v3 = sub_27463B7FC();

  [v2 setObjects:v3 localOnly:1 expirationDate:0];
}

uint64_t sub_2744F3CC8()
{
  v0 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_274648570;
  if (qword_280949300 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v2 = sub_274638C8C();
  __swift_project_value_buffer(v2, qword_280965EA0);
  *(v1 + 32) = sub_274638C6C();
  *(v1 + 40) = v3;
  v4 = sub_27463B7FC();

  v5 = [v0 containsPasteboardTypes_];

  LODWORD(v4) = [v0 hasStrings];
  v6 = [v0 hasURLs];

  return (v5 | v4 | v6) & 1;
}

uint64_t sub_2744F3DF0()
{
  v83 = *MEMORY[0x277D85DE8];
  v0 = sub_2746382DC();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_3_0();
  v76 = sub_274637E2C();
  OUTLINED_FUNCTION_1();
  v80 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  if (qword_280949300 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v6 = sub_274638C8C();
    __swift_project_value_buffer(v6, qword_280965EA0);
    v7 = sub_274638C6C();
    v9 = v8;
    v10 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_274648570;
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;

    v12 = sub_27463B7FC();

    v13 = [v10 containsPasteboardTypes_];

    v14 = [v10 hasStrings];
    v15 = [v10 hasURLs];
    if (!v13)
    {
      break;
    }

    v16 = sub_27463B66C();

    v17 = [v10 dataForPasteboardType:v16 inItemSet:0];

    v73 = v10;
    if (v17)
    {
      v18 = sub_27463B81C();
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v47 = 0;
    v48 = v18 + 40;
    v49 = *(v18 + 16);
    v80 = MEMORY[0x277D84F90];
LABEL_37:
    v5 = v48 + 16 * v47;
    while (1)
    {
      if (v49 == v47)
      {

        v66 = objc_opt_self();
        sub_2745DC0BC(v80);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F550);
        v67 = sub_27463B7FC();

        v68 = [objc_opt_self() sharedRegistry];
        v69 = [v66 actionsFromSerializedRepresentations:v67 actionRegistry:v68];

        sub_274412734(0, &qword_28094E040);
        v70 = sub_27463B81C();

        v71 = sub_2744F386C(v70);

        return v71;
      }

      if (v47 >= *(v18 + 16))
      {
        break;
      }

      v50 = objc_opt_self();
      v51 = OUTLINED_FUNCTION_4_20();
      sub_2744F525C(v51, v52);
      OUTLINED_FUNCTION_4_20();
      v53 = sub_274637E3C();
      v81[0] = 0;
      v54 = [v50 propertyListWithData:v53 options:0 format:0 error:v81];

      if (v54)
      {
        v55 = v81[0];
        sub_27463C13C();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B840);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v82 = 0;
        }

        v56 = OUTLINED_FUNCTION_4_20();
        sub_2744F52B4(v56, v57);
      }

      else
      {
        v58 = v81[0];
        v59 = sub_274637D6C();

        swift_willThrow();
        v82 = 0;
        v60 = OUTLINED_FUNCTION_4_20();
        sub_2744F52B4(v60, v61);
      }

      ++v47;
      v5 += 16;
      v62 = v82;
      if (v82)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2744501A0();
          v80 = v64;
        }

        v63 = *(v80 + 16);
        if (v63 >= *(v80 + 24) >> 1)
        {
          sub_2744501A0();
          v80 = v65;
        }

        *(v80 + 16) = v63 + 1;
        *(v80 + 8 * v63 + 32) = v62;
        v48 = v18 + 40;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    OUTLINED_FUNCTION_0_29();
  }

  v19 = v15;

  if (!v19)
  {
    if (v14)
    {
      v74 = v10;
      v34 = sub_2744F5118(v10);
      v35 = 0;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      v75 = MEMORY[0x277D84F90];
      v82 = MEMORY[0x277D84F90];
      v79 = *(v36 + 16);
      v80 = v36;
      v37 = v36 + 40;
      v76 = v36 + 40;
LABEL_24:
      v5 = v37 + 16 * v35;
      while (v79 != v35)
      {
        if (v35 >= *(v80 + 16))
        {
          goto LABEL_57;
        }

        sub_274412734(0, &unk_28094F530);
        swift_bridgeObjectRetain_n();
        sub_27463828C();
        v38 = sub_27463BE8C();
        v39 = [v38 serializedRepresentation];

        if (v39)
        {
          v40 = [objc_opt_self() sharedRegistry];
          v41 = sub_27463B66C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0C8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_274648570;
          v81[0] = 0xD000000000000010;
          v81[1] = 0x800000027468B700;
          sub_27463C31C();
          *(inited + 96) = swift_getObjectType();
          *(inited + 72) = v39;
          swift_unknownObjectRetain();
          v43 = sub_27463B4DC();
          v44 = sub_2744F51D0(v41, v43, v40);

          swift_unknownObjectRelease();

          if (v44)
          {
            MEMORY[0x277C57F30](v45);
            OUTLINED_FUNCTION_3_23();
            if (v46)
            {
              OUTLINED_FUNCTION_5_22();
            }

            ++v35;
            sub_27463B8AC();
            v75 = v82;
            v37 = v76;
            goto LABEL_24;
          }
        }

        else
        {
        }

        v5 += 16;
        ++v35;
      }

      goto LABEL_52;
    }

LABEL_54:

    return MEMORY[0x277D84F90];
  }

  v20 = sub_2744F5170(v10);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v82 = MEMORY[0x277D84F90];
  v22 = *(v21 + 16);
  if (!v22)
  {

    goto LABEL_54;
  }

  v74 = v10;
  sub_274412734(0, &unk_28094F540);
  v78 = *(v80 + 16);
  v23 = v21 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v77 = *(v80 + 72);
  v24 = (v80 + 8);
  v75 = MEMORY[0x277D84F90];
  v25 = v76;
  do
  {
    v78(v5, v23, v25);
    sub_274637DDC();
    sub_27463828C();
    v26 = sub_27463BE8C();
    v27 = [v26 serializedRepresentation];

    if (v27)
    {
      v28 = [objc_opt_self() sharedRegistry];
      v29 = sub_27463B66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0C8);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_274648570;
      strcpy(v81, "WFURLActionURL");
      HIBYTE(v81[1]) = -18;
      sub_27463C31C();
      *(v30 + 96) = swift_getObjectType();
      *(v30 + 72) = v27;
      swift_unknownObjectRetain();
      v31 = sub_27463B4DC();
      v32 = sub_2744F51D0(v29, v31, v28);
      swift_unknownObjectRelease();

      v25 = v76;
      v33 = (*v24)(v5, v76);
      if (v32)
      {
        MEMORY[0x277C57F30](v33);
        OUTLINED_FUNCTION_3_23();
        if (v46)
        {
          OUTLINED_FUNCTION_5_22();
        }

        sub_27463B8AC();
        v75 = v82;
      }
    }

    else
    {
      (*v24)(v5, v25);
    }

    v23 += v77;
    --v22;
  }

  while (v22);
LABEL_52:

  return v75;
}

id sub_2744F4830()
{
  v1 = [v0 serializedParameters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500);
  v2 = sub_27463B4CC();

  v3 = sub_2745942EC(v2, v0);
  [v3 setGroupingIdentifier_];
  return v3;
}

uint64_t sub_2744F48CC@<X0>(id *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v29 = *a1;
  v3 = [*a1 serializedParameters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500);
  v4 = sub_27463B4CC();

  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v31 = v9;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v4 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v4 + 56) + 8 * v12);
      v17 = *a2;

      swift_unknownObjectRetain();

      v33 = sub_2744F4B94(v16, v17);

      swift_isUniquelyReferenced_nonNull_native();
      v34 = v15;
      v18 = sub_274534C48(v15, v14);
      if (__OFADD__(*(v4 + 16), (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F510);
      if (sub_27463C4CC())
      {
        v22 = sub_274534C48(v34, v14);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      if (v21)
      {

        *(*(v4 + 56) + 8 * v20) = v33;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v4 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v24 = (*(v4 + 48) + 16 * v20);
        *v24 = v34;
        v24[1] = v14;
        *(*(v4 + 56) + 8 * v20) = v33;
        swift_unknownObjectRelease();
        v25 = *(v4 + 16);
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_21;
        }

        *(v4 + 16) = v27;
      }

      v8 &= v8 - 1;
      v9 = v31;
      v5 = v4 + 64;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        result = sub_2745942EC(v4, v29);
        *a3 = result;
        return result;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

uint64_t sub_2744F4B94(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500);
  v35 = a2;
  if (swift_dynamicCast())
  {
    v4 = 1 << *(a2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
LABEL_11:
      v6 &= v6 - 1;
      sub_274412BBC();

      sub_27463C0FC();
    }

    result = a2;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v3 = sub_27463B66C();
        goto LABEL_39;
      }

      v6 = *(a2 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F518);
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F528);
    result = sub_27463C5EC();
    v11 = result;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v16 = (v13 + 63) >> 6;
    for (i = result + 64; v15; v11[2] = v29)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_23:
      v20 = v17 | (v12 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];

      v24 = swift_unknownObjectRetain();
      v25 = sub_2744F4B94(v24, v35);
      result = swift_unknownObjectRelease();
      *(i + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (v11[6] + 16 * v20);
      *v26 = v22;
      v26[1] = v23;
      *(v11[7] + 8 * v20) = v25;
      v27 = v11[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_43;
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v3 = sub_27463B4BC();

        return v3;
      }

      v19 = *(a1 + 64 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_23;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F520);
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRetain();
    return v3;
  }

  v30 = sub_274453594(a1);
  if (!v30)
  {
LABEL_38:

    v3 = sub_27463B7FC();
LABEL_39:

    return v3;
  }

  v31 = v30;
  result = sub_27463C44C();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x277C58B20](v32, a1);
      }

      else
      {
        v33 = *(a1 + 8 * v32 + 32);
        swift_unknownObjectRetain();
      }

      ++v32;
      sub_2744F4B94(v33, a2);
      swift_unknownObjectRelease();
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    while (v31 != v32);
    goto LABEL_38;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_2744F505C(void *a1)
{
  v1 = [a1 UUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

void sub_2744F50C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();
  [a3 setUUID_];
}

uint64_t sub_2744F5118(void *a1)
{
  v1 = [a1 strings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_2744F5170(void *a1)
{
  v1 = [a1 URLs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_274637E2C();
  v3 = sub_27463B81C();

  return v3;
}

id sub_2744F51D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_27463B4BC();

  v6 = [a3 createActionWithIdentifier:a1 serializedParameters:v5];

  return v6;
}

uint64_t sub_2744F525C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2744F52B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return sub_27463B85C();
}

void sub_2744F536C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2744512CC(0, v1, 0);
    v4 = sub_274443724();
    v6 = v5;
    v7 = 0;
    v22 = a1 + 64;
    v20 = v1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v22 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_24;
        }

        v21 = v3;
        MaxY = CGRectGetMaxY(*(*(a1 + 56) + 32 * v4));
        v11 = *(v23 + 16);
        v10 = *(v23 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2744512CC((v10 > 1), v11 + 1, 1);
        }

        *(v23 + 16) = v11 + 1;
        *(v23 + 8 * v11 + 32) = MaxY;
        v12 = 1 << *(a1 + 32);
        if (v4 >= v12)
        {
          goto LABEL_25;
        }

        v13 = *(v22 + 8 * v8);
        if ((v13 & (1 << v4)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v4 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v8 << 6;
          v16 = v8 + 1;
          v17 = (a1 + 72 + 8 * v8);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              sub_274468390(v4, v6, v21 & 1);
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          sub_274468390(v4, v6, v21 & 1);
        }

LABEL_18:
        if (++v7 == v20)
        {
          return;
        }

        v3 = 0;
        v6 = *(a1 + 36);
        v4 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_2744F55B4()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner);

    sub_274530580();
    v6 = v5;

    if (v6)
    {
      v7 = *(*(v1 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);

      return v7 == v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2744F5644(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_27463C27C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v10 = a2 < 0 ? a2 : a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v8 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v13 = i - 4;
      v14 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v5 = sub_27463C27C();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x277C58B20](i - 4, a1);
        if (v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v4 = *(a1 + 8 * i);

        if (v11)
        {
LABEL_22:
          v15 = MEMORY[0x277C58B20](i - 4, a2);
          swift_unknownObjectRelease();
          goto LABEL_27;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v15 = *(a2 + 8 * i);
LABEL_27:

      if (v4 != v15)
      {
        return 0;
      }

      if (v14 == v5)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2744F57D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_2744F5840()
{
  OUTLINED_FUNCTION_15_9();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 72);
    v4 = (v1 + 40);
    while (1)
    {
      v6 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *v4;
      v9 = v4[1];
      v10 = v4[2];
      v11 = v4[4];
      v18 = *v3;
      if (v6)
      {
        if (!v8)
        {
          goto LABEL_24;
        }

        v12 = *(v3 - 5) == *(v4 - 1) && v6 == v8;
        if (!v12 && (sub_27463C6BC() & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (v8)
      {
        goto LABEL_24;
      }

      v13 = v5 == v9 && v7 == v10;
      if (!v13 && (sub_27463C6BC() & 1) == 0)
      {
        goto LABEL_24;
      }

      v14 = v11;

      v15 = v18;
      sub_2744F5B1C();
      if ((v16 & 1) == 0)
      {
        break;
      }

      sub_274412734(0, &qword_28094C5E0);
      v17 = sub_27463BF7C();

      if (v17)
      {
        v3 += 6;
        v4 += 6;
        if (--v2)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_16_10();
}

uint64_t sub_2744F5A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_27448E108(v3, v8);
        sub_27448E108(v4, v7);
        v5 = MEMORY[0x277C58A40](v8, v7);
        sub_274430664(v7);
        sub_274430664(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_2744F5B1C()
{
  OUTLINED_FUNCTION_15_9();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (v0 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    if (v4 >> 62)
    {
      v7 = sub_27463C27C();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != v7 || !i)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_21_9();
    if (!v11)
    {
      v10 = v4;
    }

    if (v4 >> 62)
    {
      v9 = v10;
    }

    if (v8 == v9)
    {
LABEL_25:
      OUTLINED_FUNCTION_16_10();
      return;
    }

    if (i < 0)
    {
      break;
    }

    sub_274412734(0, v2);
    v21 = v5;
    v12 = v5 & 0xC000000000000001;
    v5 = v4;
    v13 = v4 & 0xC000000000000001;
    v14 = 4;
    v4 = i;
    while (1)
    {
      v15 = v14 - 3;
      if (__OFADD__(v14 - 4, 1))
      {
        break;
      }

      if (v12)
      {
        v16 = MEMORY[0x277C58B20](v14 - 4, v21);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v17)
        {
          goto LABEL_27;
        }

        v16 = *(v21 + 8 * v14);
      }

      v2 = v16;
      if (v13)
      {
        v18 = MEMORY[0x277C58B20](v14 - 4, v5);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v17)
        {
          goto LABEL_28;
        }

        v18 = *(v5 + 8 * v14);
      }

      v19 = v18;
      v20 = sub_27463BF7C();

      if (v20)
      {
        ++v14;
        if (v15 != v4)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  __break(1u);
}

void sub_2744F5CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_15_9();
  v13 = v12;
  v14 = v11;
  if (v11 >> 62)
  {
    goto LABEL_31;
  }

  v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v13 >> 62)
  {
    v16 = sub_27463C27C();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 != v16 || !v15)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_21_9();
  if (!v26)
  {
    v19 = v13;
  }

  if (v13 >> 62)
  {
    v18 = v19;
  }

  if (v17 != v18)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      v20 = v13 & 0xC000000000000001;
      v21 = 4;
      while (1)
      {
        v22 = v21 - 4;
        v23 = v21 - 3;
        if (__OFADD__(v21 - 4, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v15 = sub_27463C27C();
          goto LABEL_3;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C58B20](v21 - 4, v14);
          if (v20)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v22 >= *(a11 + 16))
          {
            goto LABEL_29;
          }

          if (v20)
          {
LABEL_17:
            MEMORY[0x277C58B20](v21 - 4, v13);
            goto LABEL_22;
          }
        }

        if (v22 >= *(a10 + 16))
        {
          goto LABEL_30;
        }

LABEL_22:
        v24 = sub_274599D28();
        v25 = sub_274599D28();

        ++v21;
        v26 = v24 != v25 || v23 == v15;
        if (v26)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_16_10();
  }
}

uint64_t sub_2744F5E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27463C6BC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_2744F5EE8()
{
  OUTLINED_FUNCTION_15_9();
  v2 = v1;
  v3 = v0;
  v4 = v0 >> 62;
  if (v0 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    if (v2 >> 62)
    {
      v6 = sub_27463C27C();
    }

    else
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != v6 || !i)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    v10 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v2 < 0)
    {
      v9 = v2;
    }

    if (v2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      OUTLINED_FUNCTION_16_10();
      return;
    }

    if (i < 0)
    {
      break;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0);
    v22 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = v2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = v2;
    while (1)
    {
      v15 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v16 = MEMORY[0x277C58B20](v13 - 4, v22);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v17)
        {
          goto LABEL_31;
        }

        v16 = *(v22 + 8 * v13);
      }

      v18 = v16;
      if (v12)
      {
        v19 = MEMORY[0x277C58B20](v13 - 4, v2);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v17)
        {
          goto LABEL_32;
        }

        v19 = *(v2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_27463BF7C();

      if (v21)
      {
        ++v13;
        v2 = v14;
        if (v15 != v3)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
}

uint64_t sub_2744F6098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 48)
  {
    result = sub_274434ED4(v3, v10);
    if (!v2)
    {
      break;
    }

    sub_274434ED4(i, v9);
    if ((MEMORY[0x277C58A40](v10, v9) & 1) == 0)
    {
      sub_2744AE910(v9);
      sub_2744AE910(v10);
      return 0;
    }

    v6 = v11;
    sub_2744AE910(v10);
    v7 = v9[5];
    sub_2744AE910(v9);
    result = v6 == v7;
    v8 = v6 != v7 || v2-- == 1;
    v3 += 48;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2744F6174(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item];
  *v3 = a1;
  *(v3 + 1) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_2744F7104();
  [v2 setNeedsLayout];

  return swift_unknownObjectRelease();
}

id sub_2744F624C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    v9 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item + 8);
    objc_allocWithZone(a2(0));
    v10 = swift_unknownObjectRetain();
    v11 = a3(v10, v9);
    v12 = *(v3 + v4);
    *(v8 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

id sub_2744F62F0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton);
  }

  else
  {
    v4 = sub_2744F6354(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_2744F6354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = sub_27463C00C();
  MEMORY[0x28223BE20](v14);
  sub_274412734(0, &qword_28094F600);
  sub_27463BFFC();
  v15 = sub_27463C01C();
  sub_27463C02C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    sub_2744626F0(v13, v10, &qword_28094F5E0);
    sub_27463C03C();
    sub_27440CB1C(v13, &qword_28094F5E0);
  }

  else
  {
    sub_274412734(0, &unk_280951150);
    sub_274557868();
    sub_27463BFEC();
    sub_27463C03C();
  }

  sub_27463C02C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v14))
  {
    sub_2744626F0(v7, v10, &qword_28094F5E0);
    sub_27463C03C();
    sub_27440CB1C(v7, &qword_28094F5E0);
  }

  else
  {
    v16 = [objc_opt_self() quaternaryLabelColor];
    sub_27463BFDC();
    sub_27463C03C();
  }

  sub_27463C02C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v14))
  {
    sub_2744626F0(v4, v10, &qword_28094F5E0);
    sub_27463C03C();
    sub_27440CB1C(v4, &qword_28094F5E0);
  }

  else
  {
    sub_27463BFCC();
    sub_27463C03C();
  }

  [v15 addTarget:a1 action:sel_removeAction forControlEvents:64];
  return v15;
}

id sub_2744F66B4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost] = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton] = 0;
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 1;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 95) = 0;
  v4 = &v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item];
  *v4 = a1;
  *(v4 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ActionCellHeaderView();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_2744F61E4();
  OUTLINED_FUNCTION_20_9();

  v7 = sub_2744F6218();
  OUTLINED_FUNCTION_20_9();

  v8 = sub_2744F62F0();
  OUTLINED_FUNCTION_20_9();

  swift_unknownObjectRelease();
  return v5;
}

void sub_2744F67C4()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton) = 0;
  v1 = v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 95) = 0;
  sub_27463C56C();
  __break(1u);
}

uint64_t sub_2744F6884()
{
  v1 = v0;
  v2 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v55 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for ActionCellHeaderView();
  objc_msgSendSuper2(&v57, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v64);
  v15 = sub_2744F8DC4();
  v16 = sub_2744F6218();
  v17 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost];
  sub_27452F448(v15, v58);
  v18 = *v58;
  v19 = *&v58[1];
  v20 = *&v58[2];
  v21 = *&v58[3];

  v22 = 0.0;
  if (v59)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v18;
  }

  if (v59)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v19;
  }

  if (v59)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v20;
  }

  if (v59)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v21;
  }

  [v16 setFrame_];

  v27 = sub_2744F62F0();
  v28 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton];
  sub_27452F448(v15, v60);
  v29 = *v60;
  v30 = *&v60[1];
  v31 = *&v60[2];
  v32 = *&v60[3];

  if (v61)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v29;
  }

  if (v61)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v30;
  }

  if (v61)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v31;
  }

  if (v61)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v32;
  }

  [v27 setFrame_];

  v37 = sub_2744F61E4();
  sub_27452F448(v15, v62);
  v38 = *v62;
  v39 = *&v62[1];
  v40 = *&v62[2];
  v41 = *&v62[3];

  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  if ((v63 & 1) == 0)
  {
    v22 = v38;
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  [*&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] frame];
  v66.origin.x = v45;
  v66.origin.y = v46;
  v66.size.width = v47;
  v66.size.height = v48;
  v65.origin.x = v22;
  v65.origin.y = v42;
  v65.size.width = v43;
  v65.size.height = v44;
  result = CGRectEqualToRect(v65, v66);
  if ((result & 1) == 0)
  {
    sub_274412734(0, &qword_28094AF90);
    v54 = sub_27463BCEC();
    v50 = swift_allocObject();
    *(v50 + 2) = v1;
    v50[3] = v22;
    v50[4] = v42;
    v50[5] = v43;
    v50[6] = v44;
    aBlock[4] = sub_2744FB1E0;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    aBlock[2] = v51;
    aBlock[3] = &block_descriptor_39;
    v52 = _Block_copy(aBlock);
    v53 = v1;

    sub_27463B20C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2744FAEF8(&qword_28094E100, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
    sub_27463C1EC();
    MEMORY[0x277C58440](0, v14, v7, v52);
    _Block_release(v52);

    (*(v55 + 8))(v7, v2);
    return (*(v10 + 8))(v14, v8);
  }

  return result;
}

void sub_2744F6D58(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_2744F61E4();
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  if (CGRectIsEmpty(v31) || (v19 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView, [*&a1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] frame], v20 == a5))
  {
    v21 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView;
    [*&a1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] setFrame_];
    v22 = *&a1[v21];

    [v22 layoutIfNeeded];
  }

  else
  {
    v23 = objc_opt_self();
    v24 = *&a1[v19];
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    *(v25 + 32) = a3;
    *(v25 + 40) = a4;
    *(v25 + 48) = a5;
    v29[4] = sub_2744FB1F8;
    v29[5] = v25;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 1107296256;
    v29[2] = sub_27443E0E8;
    v29[3] = &block_descriptor_45_0;
    v26 = _Block_copy(v29);
    v27 = v24;
    v28 = a1;

    [v23 transitionWithView:v27 duration:5243008 options:v26 animations:0 completion:0.2];

    _Block_release(v26);
  }
}

void sub_2744F6F6C(double a1, double a2, double a3, double a4)
{
  v8 = sub_2744F61E4();
  [v8 setFrame_];
}

double sub_2744F7034(double a1)
{
  v2 = sub_2744F8DC4();
  sub_2744F536C(v2);
  v4 = v3;

  sub_2745F36B8(v4);

  return a1;
}

void sub_2744F7104()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5E8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_40_1();
  v45 = v12;
  v13 = &v0[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item];
  v14 = swift_unknownObjectRetain();
  sub_2744F9FE8(v14, v51);
  memcpy(__dst, v51, sizeof(__dst));
  swift_unknownObjectRelease();
  v15 = *&v51[24];
  if (*&v51[24] != 1)
  {
    v44 = v7;
    v53 = *v51;
    v54 = *&v51[16];
    memcpy(v52, &v51[32], sizeof(v52));
    v55 = *v51;
    v56 = *&v51[16];
    v57 = *&v51[24];
    v58 = *&v51[32];
    if (*&v51[24])
    {
      v43 = v4;
      v41 = v56;
      v42 = v58;
      v68 = *v51;
      v64 = *v51;
      v65 = v56;
      v66 = *&v51[24];
      v67 = v58;
      sub_2744FB154(v51, v63);
      sub_2744626F0(&v55, v63, &qword_28094F5F8);
      v16 = sub_2744F61E4();
      v17 = v10;
      v19 = *v13;
      v18 = v13[1];
      swift_unknownObjectRetain();
      v20 = sub_2744F79A0();
      sub_274459324(v19, v18, &v64, 1, v20, 0, 16.0);

      v10 = v17;
      swift_unknownObjectRelease();

      v69 = v68;
      sub_27440CB1C(&v69, &qword_28094C298);
      v70[0] = v41;
      v70[1] = v15;
      v4 = v43;
      sub_2744FB18C(v70);
      v71 = v42;
      sub_27440CB1C(&v71, &qword_28094C6B8);
    }

    else
    {
      memcpy(v63, v51, 0x63uLL);
      sub_2744FAFE4(v63, &v59);
    }

    v21 = &v0[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state];
    memcpy(v50, &v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state], 0x63uLL);
    if (v50[3] != 1)
    {
      v59 = *v21;
      v60 = *(v21 + 2);
      v61 = v50[3];
      memcpy(v62, v21 + 32, sizeof(v62));
      memcpy(v63, __dst, 0x63uLL);
      memcpy(v49, v21, 0x63uLL);
      sub_2744FAFE4(v49, v48);
      v22 = sub_2744F92F0(&v59, v63);
      sub_2744FB01C(v50);
      if (v22)
      {
        sub_2744FB01C(v51);
        sub_2744FB01C(v51);
        return;
      }
    }

    memcpy(v49, v21, 0x63uLL);
    memcpy(v21, v51, 0x63uLL);
    sub_2744FB01C(v49);
    v23 = sub_2744F6218();
    *&v23[OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView_item] = *v13;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    v24 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost];
    v25 = sub_2744FA330();

    sub_2744F7E98(v45);
    sub_2744FB04C();
    v48[0] = sub_27463AE9C();
    sub_2746395AC();

    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = v53;
    *(v27 + 40) = v54;
    *(v27 + 48) = v15;
    memcpy((v27 + 56), v52, 0x43uLL);
    v47[4] = sub_2744FB130;
    v47[5] = v27;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v47[2] = v28;
    v47[3] = &block_descriptor_18;
    v29 = _Block_copy(v47);
    sub_2744FB154(v51, v48);
    v30 = v1;

    [v26 animateWithDuration:6 delay:v29 options:0 animations:0.3 completion:0.0];
    _Block_release(v29);
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    v32 = sub_2744F62F0();
    if (v31)
    {
      sub_27463C02C();
      v33 = sub_27463C00C();
      if (__swift_getEnumTagSinglePayload(v10, 1, v33))
      {
        sub_2744626F0(v10, v44, &qword_28094F5E0);
        sub_27463C03C();

        sub_2744FB01C(v51);
        OUTLINED_FUNCTION_11_11();
LABEL_13:
        sub_27440CB1C(v34, v35);
        return;
      }

      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.737254902 green:0.588235294 blue:0.309803922 alpha:0.26];
      sub_27463BFDC();
    }

    else
    {
      sub_27463C02C();
      v36 = sub_27463C00C();
      if (__swift_getEnumTagSinglePayload(v4, 1, v36))
      {
        OUTLINED_FUNCTION_13_10();
        sub_2744626F0(v37, v38, v39);
        sub_27463C03C();

        sub_2744FB01C(v51);
        OUTLINED_FUNCTION_18_7();
        goto LABEL_13;
      }

      v40 = [objc_opt_self() quaternaryLabelColor];
      sub_27463BFDC();
    }

    sub_27463C03C();
    sub_2744FB01C(v51);
  }
}

void sub_2744F7800(uint64_t a1, uint64_t a2)
{
  v3 = sub_2744F62F0();
  v5 = v3;
  v4 = 1.0;
  if (*(a2 + 56))
  {
    v4 = 0.0;
  }

  [v3 setAlpha_];
}

void sub_2744F7868()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item + 8);
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OUTLINED_FUNCTION_13_10();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_11_11();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = swift_unknownObjectRetain();
    sub_274443A54(v5, v1, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2744F79A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_274648560;
  v2 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
  OUTLINED_FUNCTION_25_8(v2);

  v3 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
  OUTLINED_FUNCTION_25_8(v3);

  v4 = objc_allocWithZone(MEMORY[0x277D7D7A8]);
  v5 = OUTLINED_FUNCTION_19_7();
  *(v1 + 32) = [v6 v7];
  v8 = *(*(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32);
  v9 = sub_2744497AC();

  if (v9 != 1)
  {
    v10 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
    OUTLINED_FUNCTION_25_8(v10);

    v11 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
    OUTLINED_FUNCTION_25_8(v11);

    v12 = objc_allocWithZone(MEMORY[0x277D7D7A8]);
    v13 = OUTLINED_FUNCTION_19_7();
    [v14 v15];
    MEMORY[0x277C57F30]();
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_27463B85C();
    }

    sub_27463B8AC();
  }

  return v1;
}

uint64_t sub_2744F7BA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item);
  swift_getObjectType();
  v2 = *(v1 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_13_10();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_11_11();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 32);
    v7 = v2;
    v8 = swift_checkMetadataState();
    v9 = v6(v8, AssociatedConformanceWitness);
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0));
    v11 = v2;
    v9 = [v10 init];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  if (v16)
  {
  }

  else
  {
    v12 = v2;
    if (!sub_2745E2570() && [*&v12[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] displaysParameterSummary] && *&v12[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 24] && !*&v12[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError])
    {
      sub_2745E27D4();
      v15 = v14;

      if (!v15)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

void sub_2744F7DA4(uint64_t *a1@<X8>)
{
  v2 = v1;
  if ((sub_2744F7BA8() & 1) != 0 && (v4 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item, v5 = *(*(v1 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32), v6 = sub_2745E2510(), v8 = v7, v5, v8))
  {
    v9 = *(*(*(v2 + v4) + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummaryCoordinator);
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = (*(*(v2 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary);
    v11 = *v14;
    v12 = v14[1];
    v6 = v14[2];
    v8 = v14[3];
    v13 = v14[4];
    v9 = v14[5];
    sub_27448287C(*v14, v12, v6, v8, v13, v9);
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v13;
  a1[5] = v9;
}

uint64_t sub_2744F7E98@<X0>(uint64_t a1@<X8>)
{
  v153 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F428);
  OUTLINED_FUNCTION_3_24(v2, &__src[72]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F438);
  OUTLINED_FUNCTION_3_24(v5, &__src[56]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F418);
  OUTLINED_FUNCTION_3_24(v8, &v161);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v142 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5C0);
  OUTLINED_FUNCTION_3_24(v12, &v159);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5C8);
  OUTLINED_FUNCTION_3_24(v15, v158);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5D0);
  OUTLINED_FUNCTION_3_24(v18, &v160);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v20);
  v151 = sub_274638B7C();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v142 - v27;
  v29 = sub_274638B6C();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_0();
  v35 = (v34 - v33);
  v36 = sub_274638B8C();
  OUTLINED_FUNCTION_1();
  v149 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_0();
  v41 = v40 - v39;
  v155 = *(*(v1 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32);
  if (sub_2744497AC() == 1)
  {
    v42 = [objc_opt_self() clearBackground];
    v43 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v44 = sub_27446D8F0(0xD000000000000019, 0x800000027468B680, v42);
    v45 = *MEMORY[0x277D76918];
    v46 = objc_allocWithZone(MEMORY[0x277D75520]);
    v47 = v44;
    v48 = [v46 initForTextStyle_];
    [v48 scaledValueForValue_];
    v50 = v49;

    *v35 = v50;
    v35[1] = v50;
    (*(v31 + 104))(v35, *MEMORY[0x277D7D690], v29);
    v51 = [objc_opt_self() wf_accentColor];
    v52 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    *v28 = v52;
    v28[8] = 1;
    (*(v22 + 104))(v28, *MEMORY[0x277D7D6C0], v151);
    sub_274638B9C();
    v53 = v149;
    (*(v149 + 16))(v150, v41, v36);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8);
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v54, v55);
    sub_2744F2B70();
    v56 = v152;
    sub_274639DDC();
    sub_2744626F0(v56, v154, &qword_28094F5D0);
    OUTLINED_FUNCTION_24_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_20();
    sub_2744FAF40(v57, &qword_28094F5D0, &unk_274654A58, v58);
    OUTLINED_FUNCTION_1_20();
    sub_2744FAF40(v59, v60, v61, v62);
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_6_12();
    sub_274639DDC();

    sub_27440CB1C(v56, &qword_28094F5D0);
    return (*(v53 + 8))(v41, v36);
  }

  v143 = v31;
  v144 = v11;
  v145 = v36;
  v64 = v155;
  if (sub_2744497AC() == 2)
  {
    v65 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v65 scaledValueForValue_];

    sub_274638B5C();
    v66 = sub_27463AC2C();
    sub_27463A43C();
    sub_27463A3FC();
    v67 = sub_27463A42C();

    KeyPath = swift_getKeyPath();
    if (qword_280949280 != -1)
    {
      swift_once();
    }

    v69 = qword_280965DC8;
    v70 = sub_27463ABDC();
    v71 = swift_getKeyPath();
    sub_27463B0CC();
    sub_2746392FC();
    *__src = v66;
    *&__src[8] = KeyPath;
    *&__src[16] = v67;
    *&__src[24] = v71;
    *&__src[32] = v70;
    memcpy(v150, __src, 0x58uLL);
    swift_storeEnumTagMultiPayload();
    sub_2744626F0(__src, v156, &qword_28094F3F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8);
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v72, v73);
    sub_2744F2B70();
    OUTLINED_FUNCTION_13_10();
    sub_274639DDC();
    OUTLINED_FUNCTION_13_10();
    sub_2744626F0(v74, v75, v76);
    OUTLINED_FUNCTION_24_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_18_7();
    sub_2744FAF40(v77, v78, v79, v80);
    OUTLINED_FUNCTION_1_20();
    sub_2744FAF40(v81, v82, v83, v84);
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_6_12();
    sub_274639DDC();
    sub_27440CB1C(__src, &qword_28094F3F8);

    OUTLINED_FUNCTION_18_7();
  }

  else
  {
    v87 = [*&v64[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] icon];
    if (v87)
    {
      v88 = v87;
      v142 = v28;
      sub_2744F8D0C(v64, v28);
      v89 = *MEMORY[0x277D76918];
      v90 = objc_allocWithZone(MEMORY[0x277D75520]);
      v91 = v88;
      v92 = [v90 initForTextStyle_];
      [v92 scaledValueForValue_];
      v94 = v93;

      *v35 = v94;
      v35[1] = v94;
      (*(v143 + 104))(v35, *MEMORY[0x277D7D690], v29);
      (*(v22 + 16))(v25, v28, v151);
      sub_274638B9C();
      v95 = v149;
      v96 = v145;
      (*(v149 + 16))(v147, v41, v145);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_30();
      sub_2744FAEF8(v97, v98);
      sub_2744F2D70();
      v99 = v144;
      sub_274639DDC();
      sub_2744626F0(v99, v154, &qword_28094F418);
      OUTLINED_FUNCTION_24_6();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_20();
      sub_2744FAF40(v100, v101, v102, v103);
      OUTLINED_FUNCTION_1_20();
      OUTLINED_FUNCTION_11_11();
      sub_2744FAF40(v104, v105, v106, v107);
      OUTLINED_FUNCTION_9_12();
      OUTLINED_FUNCTION_6_12();
      sub_274639DDC();

      OUTLINED_FUNCTION_11_11();
      sub_27440CB1C(v108, v109);
      (*(v95 + 8))(v41, v96);
      return (*(v22 + 8))(v142, v151);
    }

    v110 = *(sub_27463970C() + 20);
    v111 = *MEMORY[0x277CE0118];
    sub_274639BFC();
    OUTLINED_FUNCTION_7();
    v113 = v146;
    (*(v112 + 104))(v146 + v110, v111);
    __asm { FMOV            V0.2D, #6.0 }

    *v113 = _Q0;
    v119 = [objc_opt_self() wf_systemGray3Color];
    v120 = sub_27463AB0C();
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400);
    *(v113 + *(v121 + 52)) = v120;
    *(v113 + *(v121 + 56)) = 256;
    v122 = *MEMORY[0x277D76918];
    v123 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v123 scaledValueForValue_];

    v124 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v124 scaledValueForValue_];

    sub_27463B0CC();
    sub_2746392FC();
    v125 = (v113 + *(v148 + 36));
    v126 = *&__src[16];
    *v125 = *__src;
    v125[1] = v126;
    v125[2] = *&__src[32];
    sub_2744626F0(v113, v147, &qword_28094F428);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v127, v128);
    sub_2744F2D70();
    sub_274639DDC();
    OUTLINED_FUNCTION_13_10();
    sub_2744626F0(v129, v130, v131);
    OUTLINED_FUNCTION_24_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_20();
    sub_2744FAF40(v132, v133, v134, v135);
    OUTLINED_FUNCTION_1_20();
    OUTLINED_FUNCTION_18_7();
    sub_2744FAF40(v136, v137, v138, v139);
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_6_12();
    sub_274639DDC();

    OUTLINED_FUNCTION_18_7();
    sub_27440CB1C(v140, v141);
    v85 = v113;
    v86 = &qword_28094F428;
  }

  return sub_27440CB1C(v85, v86);
}

uint64_t sub_2744F8D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) iconColor];
  if (v3)
  {
    *a2 = v3;
    *(a2 + 8) = 1;
    v4 = *MEMORY[0x277D7D6C0];
  }

  else
  {
    v4 = *MEMORY[0x277D7D6D0];
  }

  v5 = sub_274638B7C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_2744F8DC4()
{
  v1 = v0;
  sub_274412734(0, &qword_28094A4D8);
  type metadata accessor for CGRect(0);
  sub_2744FAE90();
  v2 = sub_27463B4DC();
  v3 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v3 scaledValueForValue_];

  v4 = sub_2744F6218();
  v5 = CGSizeMake(v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_isUniquelyReferenced_nonNull_native();
  v52[0] = v2;
  sub_2745FC6F8(v4, v5, v7, v9, v11);

  v12 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost];
  sub_27452F448(v2, v52);
  v13 = *v52;
  v14 = *&v52[1];
  v15 = *&v52[2];
  v16 = *&v52[3];

  v17 = 0.0;
  if (v53)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v13;
  }

  if (v53)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v14;
  }

  if (v53)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v15;
  }

  if ((v53 & 1) == 0)
  {
    v17 = v16;
  }

  CGRectGetMidY(*(&v17 - 3));
  v21 = sub_2744F62F0();
  [v21 intrinsicContentSize];
  v23 = v22;
  v25 = v24;

  v26 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton];
  [v1 bounds];
  CGRectGetWidth(v54);
  v27 = [v1 traitCollection];
  [v27 displayScale];

  BSFloatRoundForScale();
  v29 = v28;
  v30 = [v1 traitCollection];
  [v30 displayScale];

  BSFloatRoundForScale();
  v32 = v31;
  swift_isUniquelyReferenced_nonNull_native();
  sub_2745FC6F8(v26, v29, v32, v23, v25);

  v33 = sub_2744F61E4();
  v34 = sub_274458F80();

  [v34 singleLineHeight];
  v35 = [v1 traitCollection];
  [v35 displayScale];

  v36 = BSFloatRoundForScale();
  v37 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView;
  v38 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView];
  v39 = CGSizeMake(v36);
  v40 = v38;
  [v40 sizeThatFits_];

  v41 = *&v1[v37];
  v43 = CGSizeMake(v42);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v41;
  swift_isUniquelyReferenced_nonNull_native();
  sub_2745FC6F8(v50, v43, v45, v47, v49);

  return v2;
}

uint64_t sub_2744F9190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_27463C6BC(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_27463C6BC();
    }
  }

  return result;
}

uint64_t sub_2744F9230()
{
  sub_27463B71C();

  return sub_27463B71C();
}

uint64_t sub_2744F9280()
{
  sub_27463C74C();
  sub_27463B71C();
  sub_27463B71C();
  return sub_27463C7AC();
}

uint64_t sub_2744F92F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v77 = *(a1 + 40);
  v78 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a1 + 24);
  if (!v13)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v25 = *(a2 + 16);
    v75 = *a2;
    v76 = *(a2 + 8);
    sub_27448287C(*a2, v76, v9, v10, v12, v11);
    sub_27448287C(v4, v5, v6, v13, v78, v77);
    sub_2744FAD34(v4, v5, v6, v13, v78, v77);
    v26 = v75;
    v27 = v76;
    v28 = v25;
    v29 = v10;
    v30 = v12;
    v31 = v11;
LABEL_46:
    sub_2744FAD34(v26, v27, v28, v29, v30, v31);
    goto LABEL_47;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    if (!v7)
    {
      v22 = *a1;
      v20 = *(a2 + 40);
      v21 = *(a1 + 8);
      sub_27448287C(*a2, 0, v9, v10, *(a2 + 32), v20);
      v32 = v6;
      v53 = v6;
      v34 = v13;
      v36 = v77;
      v35 = v78;
      sub_27448287C(v4, v5, v53, v13, v78, v77);
      goto LABEL_45;
    }

    v74 = *a1;
    v14 = v4 == v8 && v5 == v7;
    if (!v14)
    {
      v15 = *(a1 + 8);
      v71 = *(a2 + 16);
      v16 = *(a2 + 8);
      v17 = *a2;
      v18 = sub_27463C6BC();
      v8 = v17;
      v9 = v71;
      v7 = v16;
      v5 = v15;
      if ((v18 & 1) == 0)
      {
        v19 = v12;
        v20 = v11;
        v21 = v15;
        sub_27448287C(v17, v7, v71, v10, v19, v20);
        v22 = v74;
        v23 = v74;
        v24 = v15;
LABEL_15:
        v32 = v6;
        v33 = v6;
        v34 = v13;
        v36 = v77;
        v35 = v78;
        sub_27448287C(v23, v24, v33, v13, v78, v77);

LABEL_45:

        v26 = v22;
        v27 = v21;
        v28 = v32;
        v29 = v34;
        v30 = v35;
        v31 = v36;
        goto LABEL_46;
      }
    }
  }

  else
  {
    v74 = *a1;
    if (v7)
    {
      v20 = *(a2 + 40);
      v21 = 0;
      sub_27448287C(v8, v7, v9, v10, *(a2 + 32), v20);
      v22 = v4;
      v23 = v4;
      v24 = 0;
      goto LABEL_15;
    }
  }

  v73 = v5;
  v37 = v6;
  v14 = v6 == v9;
  v34 = v13;
  if (!v14 || v13 != v10)
  {
    v39 = v9;
    v40 = v10;
    v41 = v7;
    v42 = v8;
    v43 = sub_27463C6BC();
    v8 = v42;
    v9 = v39;
    v7 = v41;
    v10 = v40;
    if ((v43 & 1) == 0)
    {
      v64 = v12;
      v20 = v11;
      sub_27448287C(v42, v7, v39, v40, v64, v11);
      v21 = v73;
      v22 = v74;
      v65 = v37;
      v35 = v78;
      v66 = v37;
      v36 = v77;
      sub_27448287C(v74, v73, v65, v34, v78, v77);

      v32 = v66;
      goto LABEL_45;
    }
  }

  v44 = v12;
  v20 = v11;
  sub_27448287C(v8, v7, v9, v10, v44, v11);
  v21 = v73;
  v72 = v37;
  v45 = v37;
  v36 = v77;
  v35 = v78;
  sub_27448287C(v74, v73, v45, v34, v78, v77);
  sub_2744F5B1C();
  if ((v46 & 1) == 0)
  {

    v32 = v72;
    v22 = v74;
    goto LABEL_45;
  }

  sub_274412734(0, &qword_28094C5E0);
  v47 = sub_27463BF7C();

  sub_2744FAD34(v74, v73, v72, v34, v78, v77);
  if (v47)
  {
LABEL_23:
    v48 = *(a1 + 48);
    v49 = *(a2 + 48);
    if (v48)
    {
      if (!v49)
      {
        goto LABEL_47;
      }

      sub_274412734(0, &qword_28094F5B0);
      v50 = v49;
      v51 = v48;
      v52 = sub_27463BF7C();

      if ((v52 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v49)
    {
      goto LABEL_47;
    }

    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      goto LABEL_47;
    }

    v55 = *(a1 + 64);
    v54 = *(a1 + 72);
    v57 = *(a1 + 80);
    v56 = *(a1 + 88);
    v59 = *(a2 + 64);
    v58 = *(a2 + 72);
    v61 = *(a2 + 80);
    v60 = *(a2 + 88);
    if (v54)
    {
      if (v58)
      {
        v62 = v55 == v59 && v54 == v58;
        if (v62 || (sub_27463C6BC() & 1) != 0)
        {
          if (v57 == v61 && v56 == v60)
          {
            sub_2744FAD94(v59, v58);
            sub_2744FAD94(v55, v54);

            sub_2744FADD8(v55, v54);
          }

          else
          {
            v79 = sub_27463C6BC();
            sub_2744FAD94(v59, v58);
            sub_2744FAD94(v55, v54);

            sub_2744FADD8(v55, v54);
            if ((v79 & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_53;
        }

        sub_2744FAD94(v59, v58);
        sub_2744FAD94(v55, v54);

        v69 = v55;
        v70 = v54;
LABEL_51:
        sub_2744FADD8(v69, v70);
        goto LABEL_47;
      }
    }

    else if (!v58)
    {
LABEL_53:
      if (((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && ((*(a1 + 97) ^ *(a2 + 97)) & 1) == 0)
      {
        v67 = *(a1 + 98) ^ *(a2 + 98) ^ 1;
        return v67 & 1;
      }

      goto LABEL_47;
    }

    sub_2744FAD94(*(a2 + 64), *(a2 + 72));
    sub_2744FAD94(v55, v54);
    sub_2744FADD8(v55, v54);
    v69 = v59;
    v70 = v58;
    goto LABEL_51;
  }

LABEL_47:
  v67 = 0;
  return v67 & 1;
}

uint64_t sub_2744F9960(uint64_t a1)
{
  v2 = v1;
  if (v1[3])
  {
    v4 = v1[1];
    v5 = v1[4];
    sub_27463C76C();
    if (v4)
    {
      sub_27463B71C();
    }

    sub_27463B71C();
    sub_2744FAC90(a1, v5);
  }

  else
  {
    sub_27463C76C();
  }

  v6 = v1[6];
  sub_27463C76C();
  if (v6)
  {
    v7 = v6;
    sub_27463BF8C();
  }

  sub_27463C76C();
  if (v2[9])
  {
    sub_27463C76C();
    sub_27463B71C();
    sub_27463B71C();
  }

  else
  {
    sub_27463C76C();
  }

  sub_27463C76C();
  sub_27463C76C();
  return sub_27463C76C();
}

uint64_t sub_2744F9AB8()
{
  sub_27463C74C();
  sub_2744F9960(v1);
  return sub_27463C7AC();
}

uint64_t sub_2744F9AF8(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 3);
  if (v3 == 1)
  {
    v4 = *(a2 + 3) == 1;
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 2);
    v13 = v3;
    memcpy(v14, a1 + 2, sizeof(v14));
    v5 = *(a2 + 3);
    if (v5 == 1)
    {
      v4 = 0;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 2);
      v9 = v5;
      memcpy(v10, a2 + 2, sizeof(v10));
      v4 = sub_2744F92F0(&v11, &v7);
    }
  }

  return v4 & 1;
}

uint64_t sub_2744F9BAC(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    return MEMORY[0x277C58EA0](0);
  }

  memcpy(v4, (v1 + 32), sizeof(v4));
  MEMORY[0x277C58EA0](1);
  return sub_2744F9960(a1);
}

uint64_t sub_2744F9C2C()
{
  sub_27463C74C();
  v1 = *(v0 + 3);
  if (v1 == 1)
  {
    MEMORY[0x277C58EA0](0);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 2);
    v6 = v1;
    memcpy(v7, v0 + 2, sizeof(v7));
    MEMORY[0x277C58EA0](1);
    sub_2744F9960(v3);
  }

  return sub_27463C7AC();
}

uint64_t sub_2744F9CD4()
{
  sub_27463C74C();
  sub_27463B71C();
  sub_27463B71C();
  return sub_27463C7AC();
}

uint64_t sub_2744F9DD4()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_27463C74C();
  sub_2744F9960(&v2);
  return sub_27463C7AC();
}

uint64_t sub_2744F9E2C(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x63uLL);
  memcpy(__dst, a2, 0x63uLL);
  return sub_2744F92F0(v4, __dst) & 1;
}

uint64_t sub_2744F9F04()
{
  v1 = *(v0 + 3);
  sub_27463C74C();
  if (v1 == 1)
  {
    MEMORY[0x277C58EA0](0);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 2);
    v6 = v1;
    memcpy(v7, v0 + 2, sizeof(v7));
    MEMORY[0x277C58EA0](1);
    sub_2744F9960(v3);
  }

  return sub_27463C7AC();
}

uint64_t sub_2744F9F90(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x63uLL);
  memcpy(__dst, a2, 0x63uLL);
  return sub_2744F9AF8(v4, __dst) & 1;
}

double sub_2744F9FE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2744F7DA4(v25);
  v24 = v25[1];
  v21 = v25[0];
  v22 = v27;
  v23 = v26;
  swift_getObjectType();
  v4 = *(a1 + 32);
  v5 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v6 = [*(v4 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) icon];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, OUTLINED_FUNCTION_11_11(), AssociatedTypeWitness = swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v11 = sub_274443980(AssociatedTypeWitness, AssociatedConformanceWitness), v8, (v11 & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(v4 + v5) isDeletable] ^ 1;
  }

  v13 = *(v4 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isExpanded);
  v14 = sub_2744F55B4();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    OUTLINED_FUNCTION_11_11();
    v17 = swift_getAssociatedTypeWitness();
    v18 = swift_getAssociatedConformanceWitness();
    v19 = sub_274443980(v17, v18);
  }

  else
  {
    v19 = 0;
  }

  *a2 = v21;
  *(a2 + 16) = v24;
  *(a2 + 32) = v23;
  *(a2 + 40) = v22;
  *(a2 + 48) = v6;
  *(a2 + 56) = v12;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = v13;
  *(a2 + 97) = v14 & 1;
  *(a2 + 98) = v19 & 1;
  return result;
}

uint64_t sub_2744FA210()
{
  swift_unknownObjectRelease();

  return OUTLINED_FUNCTION_8_16(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state);
}

id sub_2744FA330()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView);
  }

  else
  {
    v4 = v0;
    sub_27463AE9C();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809505F0));
    v6 = sub_27463959C();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2744FA3D4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView] = 0;
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView_item];
  *v3 = a1;
  *(v3 + 1) = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MenuPresentingIconView();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setShowsMenuAsPrimaryAction_];
  [v4 setContextMenuInteractionEnabled_];
  v5 = sub_2744FA330();
  [v4 addSubview_];

  swift_unknownObjectRelease();
  return v4;
}

void sub_2744FA4B8()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_2744FA558()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenuPresentingIconView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_2744FA330();
  [v0 bounds];
  [v1 setFrame_];
}

double sub_2744FA650()
{
  v0 = sub_2744FA330();
  [v0 systemLayoutSizeFittingSize_];
  v2 = v1;

  return v2;
}

id sub_2744FA6B4()
{
  sub_274412734(0, &qword_28094F5B8);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_27453BE24(0, 0, 0, sub_2744FAE1C, v0);
}

id sub_2744FA744()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView_item + 8);
  swift_getObjectType();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_unknownObjectRetain();
    v7 = sub_274443B78(v6, v2, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();

    if (v7)
    {
      v3 = [v7 platformMenu];

      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:

  return v3;
}

id sub_2744FA964(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ActionSummarySectionVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ActionCellHeaderViewC5State33_693D947299EE9BD7659EA54C1A8BF268LLO13ConfigurationV15AuxiliaryButtonVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ActionCellHeaderViewC5State33_693D947299EE9BD7659EA54C1A8BF268LLO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744FAA68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 99))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2744FAAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 95) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_2744FAB30(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 98) = 0;
    *(a1 + 96) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

unint64_t sub_2744FAB94()
{
  result = qword_28094F5A8;
  if (!qword_28094F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F5A8);
  }

  return result;
}

uint64_t sub_2744FABE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_274453594(a2);
  MEMORY[0x277C58EA0](v3);
  result = sub_274453594(a2);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x277C58B20](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        MEMORY[0x277C58EA0](v7);
      }
    }
  }

  return result;
}

void sub_2744FAC90(uint64_t a1, uint64_t a2)
{
  v3 = sub_274453594(a2);
  MEMORY[0x277C58EA0](v3);
  v4 = sub_274453594(a2);
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x277C58B20](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        sub_27463BF8C();
      }
    }
  }
}

uint64_t sub_2744FAD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2744FAD94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2744FADD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2744FAE24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4 != 1)
  {
    sub_2744FAD34(result, a2, a3, a4, a5, a6);

    return sub_2744FADD8(a9, a10);
  }

  return result;
}

unint64_t sub_2744FAE90()
{
  result = qword_280950540;
  if (!qword_280950540)
  {
    sub_274412734(255, &qword_28094A4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950540);
  }

  return result;
}

uint64_t sub_2744FAEF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2744FAF40(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744FB04C()
{
  result = qword_28094F5F0;
  if (!qword_28094F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F5E8);
    sub_2744FAF40(&qword_28094F5D8, &qword_28094F5D0, &unk_274654A58, sub_2744F2B70);
    sub_2744FAF40(&qword_28094F410, &qword_28094F418, &unk_274654A40, sub_2744F2D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F5F0);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2744FB228(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 99))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_2744FB27C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_2744FB304()
{
  result = qword_28094F608;
  if (!qword_28094F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F608);
  }

  return result;
}

uint64_t sub_2744FB358(uint64_t a1, int a2)
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

uint64_t sub_2744FB398(uint64_t result, int a2, int a3)
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

unint64_t sub_2744FB3EC()
{
  result = qword_28094F610;
  if (!qword_28094F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_16@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);

  return sub_2744FAE24(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1));
}

id OUTLINED_FUNCTION_20_9()
{

  return [v0 (v2 + 2040)];
}

id OUTLINED_FUNCTION_25_8(void *a1)
{

  return [a1 (v1 + 2333)];
}

id OUTLINED_FUNCTION_26_7(void *a1)
{

  return [a1 (v2 + 1055)];
}

id sub_2744FB650@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_274638B1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D7D450], v4, v6);
  v24 = sub_274639C6C();
  LOBYTE(v30) = 0;
  sub_2744FE694(v2, v26);
  memcpy(v28, v26, 0x8AuLL);
  memcpy(__dst, v26, 0x8AuLL);
  sub_27445EAD4(v28, v25, &qword_28094F618);
  sub_27440CB1C(__dst, &qword_28094F618);
  memcpy(&v27[7], v28, 0x8AuLL);
  v9 = v30;
  v21 = sub_27463ABCC();
  KeyPath = swift_getKeyPath();
  v11 = *(v2 + 16);
  v12 = *(v2 + 32);
  v22 = *(v2 + 24);
  v23 = v12;
  v26[0] = v11;
  v13 = swift_allocObject();
  v14 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v2 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F620);
  v16 = *(v15 + 56);
  (*(v5 + 32))(a1 + v16, v8, v4);
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v4);
  *(a1 + 16) = v24;
  *(a1 + 24) = 0x4028000000000000;
  *(a1 + 32) = v9;
  memcpy((a1 + 33), v27, 0x91uLL);
  *(a1 + 178) = v30;
  *(a1 + 182) = v31;
  v17 = v21;
  *(a1 + 184) = KeyPath;
  *(a1 + 192) = v17;
  *(a1 + *(v15 + 60)) = 1;
  *a1 = sub_2744FFBCC;
  *(a1 + 8) = v13;
  sub_27445E9E4(v26, v25);

  v18 = v23;

  return v18;
}

uint64_t sub_2744FB8E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E8);
  v149 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v150 = &v149 - v3;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F628);
  MEMORY[0x28223BE20](v161);
  v163 = (&v149 - v4);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F630);
  MEMORY[0x28223BE20](v155);
  v156 = &v149 - v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F638);
  MEMORY[0x28223BE20](v162);
  v158 = &v149 - v6;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F640);
  v152 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v151 = &v149 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F648);
  MEMORY[0x28223BE20](v8 - 8);
  v167 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v169 = &v149 - v11;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F650);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v149 - v14;
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(a1 + 32);
  v181 = v17;
  v19 = sub_27463B9CC();

  v20 = v18;
  sub_27445E9E4(&v181, &v175);
  v21 = sub_27463B9BC();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = *(a1 + 16);
  *(v22 + 32) = *a1;
  *(v22 + 48) = v24;
  *(v22 + 64) = *(a1 + 32);

  v25 = v20;
  sub_27445E9E4(&v181, &v175);
  v160 = v19;
  v26 = sub_27463B9BC();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v23;
  v28 = *(a1 + 16);
  *(v27 + 32) = *a1;
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F658);
  sub_27463AF0C();
  *v178 = v172[0];
  *&v178[16] = *&v172[1];
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v29 = qword_28094BB00;
  v30 = sub_27463B66C();
  v31 = sub_27463B66C();

  v153 = v29;
  v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

  v33 = sub_27463B6AC();
  v35 = v34;

  *&v175 = v33;
  *(&v175 + 1) = v35;
  v154 = sub_274412BBC();
  *&v175 = sub_27463A53C();
  *(&v175 + 1) = v36;
  LOBYTE(v176) = v37 & 1;
  *(&v176 + 1) = v38;
  MEMORY[0x28223BE20](v175);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F660);
  sub_2744FFBF4();
  sub_2744FFCD0();
  v170 = v15;
  sub_27463AE0C();
  *&v175 = v17;
  *(&v175 + 1) = v16;
  *&v176 = v25;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](v172, v39);
  v40 = *&v172[0];
  v41 = [*&v172[0] dateStyle];

  if (!v41)
  {
    goto LABEL_41;
  }

  v42 = sub_27463B6AC();
  v44 = v43;
  if (v42 == sub_27463B6AC() && v44 == v45)
  {
    goto LABEL_42;
  }

  v47 = sub_27463C6BC();

  if (v47)
  {
LABEL_9:

LABEL_43:

    v87 = v25;
    sub_27445E9E4(&v181, &v175);
    v88 = sub_27463B9BC();
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    v90 = MEMORY[0x277D85700];
    *(v89 + 24) = MEMORY[0x277D85700];
    v91 = *(a1 + 16);
    *(v89 + 32) = *a1;
    *(v89 + 48) = v91;
    *(v89 + 64) = *(a1 + 32);

    v92 = v87;
    sub_27445E9E4(&v181, &v175);
    v93 = sub_27463B9BC();
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v90;
    v95 = *(a1 + 16);
    *(v94 + 32) = *a1;
    *(v94 + 48) = v95;
    *(v94 + 64) = *(a1 + 32);
    type metadata accessor for WFDateFormattingStyle(0);
    sub_27463AF0C();
    *v178 = *&v172[0];
    *&v178[8] = *(v172 + 8);
    sub_27463B70C();
    v96 = sub_27463B66C();
    v97 = sub_27463B66C();

    v98 = [v153 localizedStringForKey:v96 value:v97 table:0];

    v99 = sub_27463B6AC();
    v101 = v100;

    *&v175 = v99;
    *(&v175 + 1) = v101;
    *&v175 = sub_27463A53C();
    *(&v175 + 1) = v102;
    LOBYTE(v176) = v103 & 1;
    *(&v176 + 1) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6B0);
    sub_2744FFC78();
    sub_27440CA78(&qword_28094F6B8, &qword_28094F6B0);
    v105 = v151;
    sub_27463AE0C();
    v106 = v152;
    v107 = v157;
    (*(v152 + 16))(v156, v105, v157);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_28094F698, &qword_28094F640);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8);
    v108 = v158;
    sub_274639DDC();
    sub_27445EAD4(v108, v163, &qword_28094F638);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688);
    sub_2744FFDA0();
    sub_2744FFE84();
    sub_274639DDC();
    sub_27440CB1C(v108, &qword_28094F638);
    (*(v106 + 8))(v105, v107);
    goto LABEL_44;
  }

  v48 = sub_27463B6AC();
  v50 = v49;
  if (v48 == sub_27463B6AC() && v50 == v51)
  {
    goto LABEL_42;
  }

  v53 = sub_27463C6BC();

  if (v53)
  {
    goto LABEL_9;
  }

  v54 = sub_27463B6AC();
  v56 = v55;
  if (v54 == sub_27463B6AC() && v56 == v57)
  {
    goto LABEL_42;
  }

  v59 = sub_27463C6BC();

  if (v59)
  {
    goto LABEL_9;
  }

  v60 = sub_27463B6AC();
  v62 = v61;
  if (v60 == sub_27463B6AC() && v62 == v63)
  {
    goto LABEL_42;
  }

  v65 = sub_27463C6BC();

  if (v65)
  {
    goto LABEL_9;
  }

  v66 = sub_27463B6AC();
  v68 = v67;
  if (v66 == sub_27463B6AC() && v68 == v69)
  {
LABEL_42:

    goto LABEL_43;
  }

  v71 = sub_27463C6BC();

  if (v71)
  {
    goto LABEL_9;
  }

  v72 = sub_27463B6AC();
  v74 = v73;
  v76 = v72 == sub_27463B6AC() && v74 == v75;
  v77 = v170;
  if (v76)
  {

    goto LABEL_47;
  }

  v78 = sub_27463C6BC();

  if (v78)
  {
LABEL_47:
    sub_27463B70C();
    v119 = sub_27463B66C();
    v120 = sub_27463B66C();

    v121 = [v153 localizedStringForKey:v119 value:v120 table:0];

    v122 = sub_27463B6AC();
    v124 = v123;

    *&v172[0] = v122;
    *(&v172[0] + 1) = v124;

    v125 = v25;
    sub_27445E9E4(&v181, &v175);
    v126 = sub_27463B9BC();
    v127 = swift_allocObject();
    *(v127 + 16) = v126;
    v128 = MEMORY[0x277D85700];
    *(v127 + 24) = MEMORY[0x277D85700];
    v129 = *(a1 + 16);
    *(v127 + 32) = *a1;
    *(v127 + 48) = v129;
    *(v127 + 64) = *(a1 + 32);

    v130 = v125;
    sub_27445E9E4(&v181, &v175);
    v131 = sub_27463B9BC();
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v128;
    v133 = *(a1 + 16);
    *(v132 + 32) = *a1;
    *(v132 + 48) = v133;
    *(v132 + 64) = *(a1 + 32);
    sub_27463AF0C();
    v134 = v150;
    sub_27463AE4C();
    v135 = v149;
    v136 = v159;
    (*(v149 + 16))(v156, v134, v159);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_28094F698, &qword_28094F640);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8);
    v137 = v158;
    sub_274639DDC();
    sub_27445EAD4(v137, v163, &qword_28094F638);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688);
    sub_2744FFDA0();
    sub_2744FFE84();
    sub_274639DDC();

    sub_27440CB1C(v137, &qword_28094F638);
    (*(v135 + 8))(v150, v136);
    goto LABEL_45;
  }

  v79 = sub_27463B6AC();
  v81 = v80;
  if (v79 == sub_27463B6AC() && v81 == v82)
  {

    goto LABEL_49;
  }

  v84 = sub_27463C6BC();

  if (v84)
  {
LABEL_49:

    v138 = v25;
    sub_27445E9E4(&v181, &v175);
    v139 = sub_27463B9BC();
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    v141 = MEMORY[0x277D85700];
    *(v140 + 24) = MEMORY[0x277D85700];
    v142 = *(a1 + 16);
    *(v140 + 32) = *a1;
    *(v140 + 48) = v142;
    *(v140 + 64) = *(a1 + 32);

    v143 = v138;
    sub_27445E9E4(&v181, &v175);
    v144 = sub_27463B9BC();
    v145 = swift_allocObject();
    *(v145 + 16) = v144;
    *(v145 + 24) = v141;
    v146 = *(a1 + 16);
    *(v145 + 32) = *a1;
    *(v145 + 48) = v146;
    *(v145 + 64) = *(a1 + 32);
    sub_27463AF0C();
    sub_2744FDD14(v175, *(&v175 + 1), v176, *(&v176 + 1), v178);
    v171 = 0;
    v172[0] = *v178;
    v172[1] = *&v178[16];
    v172[2] = v179;
    v173 = v180;
    v174 = 0;
    sub_2744FFF28(v178, &v175);
    sub_2744FFF28(v178, &v175);
    sub_2744FFD4C();
    sub_274639DDC();
    v147 = v176;
    v148 = v163;
    *v163 = v175;
    v148[1] = v147;
    v148[2] = *v177;
    *(v148 + 41) = *&v177[9];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688);
    sub_2744FFDA0();
    sub_2744FFE84();
    sub_274639DDC();

    sub_2744FFF60(v178);
    sub_2744FFF60(v178);
    goto LABEL_45;
  }

LABEL_41:
  v178[0] = 1;
  v174 = 1;
  sub_2744FFD4C();
  sub_274639DDC();
  v85 = v176;
  v86 = v163;
  *v163 = v175;
  v86[1] = v85;
  v86[2] = *v177;
  *(v86 + 41) = *&v177[9];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688);
  sub_2744FFDA0();
  sub_2744FFE84();
  sub_274639DDC();
LABEL_44:
  v77 = v170;
LABEL_45:
  v109 = v165;
  v110 = *(v165 + 16);
  v111 = v164;
  v112 = v166;
  v110(v164, v77, v166);
  v113 = v169;
  v114 = v167;
  sub_27445EAD4(v169, v167, &qword_28094F648);
  v115 = v168;
  v110(v168, v111, v112);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6A8);
  sub_27445EAD4(v114, &v115[*(v116 + 48)], &qword_28094F648);
  sub_27440CB1C(v113, &qword_28094F648);
  v117 = *(v109 + 8);
  v117(v170, v112);
  sub_27440CB1C(v114, &qword_28094F648);
  return (v117)(v111, v112);
}

void sub_2744FCDB4(uint64_t a1@<X2>, void *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](&v6, v3);
  v4 = v6;
  v5 = [v6 dateStyle];

  *a2 = v5;
}

uint64_t sub_2744FCE3C(void **a1)
{
  sub_2744FCEA4(*a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  return sub_27463AEBC();
}

id sub_2744FCEA4(void *a1)
{
  if (!a1)
  {
    v32 = objc_allocWithZone(MEMORY[0x277D7C318]);
    v33 = sel_initWithRelativeTimeStyle;
LABEL_24:

    return [v32 v33];
  }

  v3 = sub_27463B6AC();
  v5 = v4;
  if (v3 == sub_27463B6AC() && v5 == v6)
  {

    goto LABEL_28;
  }

  v8 = sub_27463C6BC();

  if (v8)
  {
LABEL_28:
    sub_2745000D0();
    v34 = *MEMORY[0x277CFC698];
    v48 = *(v1 + 16);
    v49 = *(v1 + 32);
    v35 = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
    MEMORY[0x277C575F0](&v47, v36);
    v37 = v47;
    v38 = [v47 timeStyle];

    return sub_2744FF578(v34, v38);
  }

  v9 = sub_27463B6AC();
  v11 = v10;
  if (v9 == sub_27463B6AC() && v11 == v12)
  {

    goto LABEL_31;
  }

  v14 = sub_27463C6BC();

  if (v14)
  {
LABEL_31:
    v48 = *(v1 + 16);
    v49 = *(v1 + 32);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
    MEMORY[0x277C575F0](&v47, v39);
    v40 = v47;
    v41 = [v47 includesTimeForISO8601];

    return [objc_allocWithZone(MEMORY[0x277D7C318]) initWithISO8601DateStyleAndTime_];
  }

  v15 = sub_27463B6AC();
  v17 = v16;
  if (v15 == sub_27463B6AC() && v17 == v18)
  {

    goto LABEL_33;
  }

  v20 = sub_27463C6BC();

  if (v20)
  {
LABEL_33:
    v32 = objc_allocWithZone(MEMORY[0x277D7C318]);
    v33 = sel_initWithRFC2822DateStyle;
    goto LABEL_24;
  }

  v21 = sub_27463B6AC();
  v23 = v22;
  if (v21 == sub_27463B6AC() && v23 == v24)
  {
  }

  else
  {
    v26 = sub_27463C6BC();

    if ((v26 & 1) == 0)
    {
      sub_2745000D0();
      v48 = *(v1 + 16);
      v49 = *(v1 + 32);
      v27 = a1;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
      MEMORY[0x277C575F0](&v47, v28);
      v29 = v47;
      v30 = [v47 timeStyle];

      return sub_2744EBB30(a1, v30, 0);
    }
  }

  v48 = *(v1 + 16);
  v49 = *(v1 + 32);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](&v47, v42);
  sub_274500010(v47);
  v43 = sub_2744FDBE4();
  v45 = v44;

  v46 = objc_allocWithZone(MEMORY[0x277D7C318]);
  return sub_2744FFABC(v43, v45);
}

uint64_t sub_2744FD2D8(uint64_t a1)
{
  v8 = sub_2744FD414();
  swift_getKeyPath();
  v2 = *(a1 + 32);
  v9 = *(a1 + 16);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  sub_27445E9E4(&v9, v7);

  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6D0);
  sub_27440CA78(&qword_28094F6D8, &qword_28094F6D0);
  sub_2744FFBF4();
  return sub_27463AF7C();
}

uint64_t sub_2744FD414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274654CF0;
  v1 = *MEMORY[0x277CFC680];
  v2 = *MEMORY[0x277CFC698];
  v3 = MEMORY[0x277CFC678];
  *(v0 + 32) = *MEMORY[0x277CFC680];
  *(v0 + 40) = v2;
  v4 = *v3;
  v5 = *MEMORY[0x277CFC670];
  *(v0 + 48) = *v3;
  *(v0 + 56) = v5;
  v6 = *MEMORY[0x277CFC688];
  v7 = *MEMORY[0x277CFC668];
  *(v0 + 64) = *MEMORY[0x277CFC688];
  *(v0 + 72) = v7;
  v8 = *MEMORY[0x277CFC690];
  *(v0 + 80) = *MEMORY[0x277CFC690];
  *(v0 + 88) = 0;
  v9 = *MEMORY[0x277CFC660];
  *(v0 + 96) = *MEMORY[0x277CFC660];
  v10 = v1;
  v11 = v2;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  return v0;
}

uint64_t sub_2744FD510@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2744FD570(*a1);
  sub_274412BBC();
  result = sub_27463A53C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2744FD570(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_27463B6AC();
    v3 = v2;
    if (v1 == sub_27463B6AC() && v3 == v4)
    {
    }

    else
    {
      v6 = sub_27463C6BC();

      if ((v6 & 1) == 0)
      {
        v7 = sub_27463B6AC();
        v9 = v8;
        if (v7 == sub_27463B6AC() && v9 == v10)
        {
        }

        else
        {
          v12 = sub_27463C6BC();

          if ((v12 & 1) == 0)
          {
            v13 = sub_27463B6AC();
            v15 = v14;
            if (v13 == sub_27463B6AC() && v15 == v16)
            {
            }

            else
            {
              v18 = sub_27463C6BC();

              if ((v18 & 1) == 0)
              {
                v19 = sub_27463B6AC();
                v21 = v20;
                if (v19 == sub_27463B6AC() && v21 == v22)
                {
                }

                else
                {
                  v24 = sub_27463C6BC();

                  if ((v24 & 1) == 0)
                  {
                    v25 = sub_27463B6AC();
                    v27 = v26;
                    if (v25 == sub_27463B6AC() && v27 == v28)
                    {
                    }

                    else
                    {
                      v30 = sub_27463C6BC();

                      if ((v30 & 1) == 0)
                      {
                        v31 = sub_27463B6AC();
                        v33 = v32;
                        if (v31 == sub_27463B6AC() && v33 == v34)
                        {
                        }

                        else
                        {
                          v36 = sub_27463C6BC();

                          if ((v36 & 1) == 0)
                          {
                            v37 = sub_27463B6AC();
                            v39 = v38;
                            if (v37 == sub_27463B6AC() && v39 == v40)
                            {
                            }

                            else
                            {
                              v42 = sub_27463C6BC();

                              if ((v42 & 1) == 0)
                              {
                                v43 = sub_27463B6AC();
                                v45 = v44;
                                if (v43 == sub_27463B6AC() && v45 == v46)
                                {
                                }

                                else
                                {
                                  v48 = sub_27463C6BC();

                                  if ((v48 & 1) == 0)
                                  {
                                    return 0;
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
          }
        }
      }
    }
  }

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v50 = qword_28094BB00;
  v51 = sub_27463B66C();
  v52 = sub_27463B66C();

  v53 = [v50 localizedStringForKey:v51 value:v52 table:0];

  v49 = sub_27463B6AC();
  return v49;
}

void sub_2744FDA58(uint64_t a1@<X2>, unsigned __int8 *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](&v6, v3);
  v4 = v6;
  v5 = [v6 includesTimeForISO8601];

  *a2 = v5;
}

uint64_t sub_2744FDAD8(unsigned __int8 *a1)
{
  [objc_allocWithZone(MEMORY[0x277D7C318]) initWithISO8601DateStyleAndTime_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  return sub_27463AEBC();
}

uint64_t sub_2744FDB58@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](&v8, v3);
  sub_274500010(v8);
  v4 = sub_2744FDBE4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_2744FDBE4()
{
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](&v7, v1);
  v2 = sub_274500010(v7);
  if (v3)
  {
    return v2;
  }

  v5 = WFDateFormattingGetLocalizedDefaultCustomDateFormat();
  v4 = sub_27463B6AC();

  return v4;
}

uint64_t sub_2744FDC80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  objc_allocWithZone(MEMORY[0x277D7C318]);

  sub_2744FFABC(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  return sub_27463AEBC();
}

void *sub_2744FDD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808);
  result = MEMORY[0x277C575F0](v14, v10);
  v12 = v14[0];
  v13 = v14[1];
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v12;
  a5[5] = v13;
  a5[6] = 0;
  return result;
}

void sub_2744FDD98(uint64_t a1@<X2>, void *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](&v6, v3);
  v4 = v6;
  v5 = [v6 timeStyle];

  if (!v5)
  {
    v5 = *MEMORY[0x277CFC680];
  }

  *a2 = v5;
}

uint64_t sub_2744FDE38(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](&v20);
  v7 = v20;
  v8 = [v20 dateStyle];

  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  v9 = v5;
  MEMORY[0x277C575F0](&v20, v6);
  v10 = v20;
  v11 = [v20 relativeDateStyle];

  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  MEMORY[0x277C575F0](&v20, v6);
  v12 = sub_274500010(v20);
  v14 = v13;
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  MEMORY[0x277C575F0](&v20, v6);
  v15 = v20;
  v16 = [v20 includesTimeForISO8601];

  v17 = objc_allocWithZone(MEMORY[0x277D7C318]);
  v18 = sub_2744FFB20(v8, v5, v11, v12, v14, v16);
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  v20 = v18;
  return sub_27463AEBC();
}

uint64_t sub_2744FDFE0@<X0>(char *a1@<X8>)
{
  v89 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6C0);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v90 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v93 = &v82 - v3;
  MEMORY[0x28223BE20](v4);
  v92 = &v82 - v5;
  MEMORY[0x28223BE20](v6);
  v91 = &v82 - v7;
  MEMORY[0x28223BE20](v8);
  v87 = (&v82 - v9);
  MEMORY[0x28223BE20](v10);
  v85 = (&v82 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v82 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v18 = qword_28094BB00;
  v19 = sub_27463B66C();
  v20 = sub_27463B66C();

  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = sub_27463B6AC();
  v24 = v23;

  v94 = v22;
  v95 = v24;
  sub_274412BBC();
  v25 = sub_27463A53C();
  v26 = *MEMORY[0x277CFC680];
  *v17 = v25;
  *(v17 + 1) = v27;
  v17[16] = v28 & 1;
  *(v17 + 3) = v29;
  *(v17 + 4) = v26;
  v17[40] = 1;
  v30 = v26;
  sub_27463B70C();
  v31 = sub_27463B66C();
  v84 = v17;
  v32 = v31;
  v33 = sub_27463B66C();

  v34 = [v18 localizedStringForKey:v32 value:v33 table:0];

  v35 = sub_27463B6AC();
  v37 = v36;

  v94 = v35;
  v95 = v37;
  v38 = sub_27463A53C();
  v39 = *MEMORY[0x277CFC698];
  *v14 = v38;
  *(v14 + 1) = v40;
  v14[16] = v41 & 1;
  *(v14 + 3) = v42;
  *(v14 + 4) = v39;
  v14[40] = 1;
  v43 = v14;
  v83 = v14;
  v44 = v39;
  sub_27463B70C();
  v45 = sub_27463B66C();
  v46 = sub_27463B66C();

  v47 = [v18 localizedStringForKey:v45 value:v46 table:0];

  v48 = sub_27463B6AC();
  v50 = v49;

  v94 = v48;
  v95 = v50;
  v51 = sub_27463A53C();
  v52 = *MEMORY[0x277CFC678];
  v53 = v85;
  *v85 = v51;
  v53[1] = v54;
  *(v53 + 16) = v55 & 1;
  v53[3] = v56;
  v53[4] = v52;
  *(v53 + 40) = 1;
  v57 = v52;
  sub_27463B70C();
  v58 = sub_27463B66C();
  v59 = sub_27463B66C();

  v60 = [v18 localizedStringForKey:v58 value:v59 table:0];

  v61 = sub_27463B6AC();
  v63 = v62;

  v94 = v61;
  v95 = v63;
  v64 = sub_27463A53C();
  v82 = *MEMORY[0x277CFC670];
  v65 = v82;
  v67 = v86;
  v66 = v87;
  *v87 = v64;
  v66[1] = v68;
  *(v66 + 16) = v69 & 1;
  v66[3] = v70;
  v66[4] = v65;
  *(v66 + 40) = 1;
  v71 = *(v67 + 16);
  v72 = v91;
  v73 = v88;
  v71(v91, v17, v88);
  v74 = v92;
  v71(v92, v43, v73);
  v71(v93, v53, v73);
  v75 = v90;
  v71(v90, v66, v73);
  v76 = v89;
  v71(v89, v72, v73);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6C8);
  v71(&v76[v77[12]], v74, v73);
  v78 = v93;
  v71(&v76[v77[16]], v93, v73);
  v71(&v76[v77[20]], v75, v73);
  v79 = *(v67 + 8);
  v80 = v82;
  v79(v66, v73);
  v79(v53, v73);
  v79(v83, v73);
  v79(v84, v73);
  v79(v75, v73);
  v79(v78, v73);
  v79(v92, v73);
  return (v79)(v91, v73);
}

uint64_t sub_2744FE694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = sub_274637F2C();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_27463803C();
  v6 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2744FEF84();
  v82 = *(a1 + 16);
  v83 = *(a1 + 32);
  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678);
  MEMORY[0x277C575F0](v77);
  v10 = v77[0];
  v66 = [v77[0] dateStyle];

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v77, v9);
  v11 = v77[0];
  v65 = [v77[0] timeStyle];

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v77, v9);
  v12 = v77[0];
  v13 = [v77[0] relativeDateStyle];

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v77, v9);
  sub_274500010(v77[0]);
  if (v14)
  {
    v15 = sub_27463B66C();
  }

  else
  {
    v15 = 0;
  }

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v77, v9);
  v16 = v77[0];
  v17 = [v77[0] includesTimeForISO8601];

  v18 = [objc_opt_self() systemTimeZone];
  sub_27463802C();

  v19 = sub_27463801C();
  (*(v6 + 8))(v8, v67);
  sub_274637F1C();
  v20 = sub_274637EFC();
  (v68)[1](v5, v69);
  v22 = v65;
  v21 = v66;
  v23 = [v71 wf:v66 formattedStringWithDateStyle:v65 timeStyle:v13 relativeDateStyle:v15 customDateFormat:v17 includeTimeForISO8601:v19 timeZone:v20 locale:?];

  v24 = sub_27463B6AC();
  v26 = v25;

  v69 = sub_274639B2C();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v27 = qword_28094BB00;
  v28 = sub_27463B66C();
  v29 = sub_27463B66C();

  v68 = v27;
  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_274648570;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = sub_27440F250();
  *(v31 + 32) = v24;
  *(v31 + 40) = v26;

  v32 = sub_27463B67C();
  v34 = v33;

  *__src = v32;
  *&__src[8] = v34;
  sub_274412BBC();
  v35 = sub_27463A53C();
  v37 = v36;
  LOBYTE(v32) = v38;
  v40 = v39;

  v41 = v32 & 1;
  sub_27440B094(v35, v37, v32 & 1);
  sub_274412C10(v35, v37, v32 & 1);

  v81 = 1;
  v80 = v32 & 1;
  v79 = 1;
  *__src = v82;
  *&__src[16] = v83;
  MEMORY[0x277C575F0](v77, v9);
  v42 = v77[0];
  v43 = [v77[0] dateStyle];

  if (!v43)
  {
    goto LABEL_12;
  }

  v44 = sub_27463B6AC();
  v46 = v45;
  if (v44 == sub_27463B6AC() && v46 == v47)
  {

    goto LABEL_14;
  }

  v49 = sub_27463C6BC();

  if (v49)
  {
LABEL_14:
    v50 = sub_274639B2C();
    sub_27463B70C();
    v51 = sub_27463B66C();
    v52 = sub_27463B66C();

    v53 = [v68 localizedStringForKey:v51 value:v52 table:0];

    v54 = sub_27463B6AC();
    v56 = v55;

    *__src = v54;
    *&__src[8] = v56;
    v57 = sub_27463A53C();
    v59 = v58;
    v61 = v60;
    LOBYTE(v56) = v62 & 1;
    sub_27440B094(v57, v58, v62 & 1);

    sub_274412C10(v57, v59, v56);

    v75[0] = 1;
    v73 = v56;
    v72 = 1;
    v76[0] = 0;
    v77[0] = v50;
    v77[1] = 0;
    LOBYTE(v77[2]) = 1;
    v77[3] = v57;
    v77[4] = v59;
    LOBYTE(v77[5]) = v56;
    v77[6] = v61;
    v77[7] = 0;
    LOWORD(v77[8]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6E8);
    sub_27440CA78(&qword_28094F6F0, &qword_28094F6E8);
    sub_274639DDC();
    goto LABEL_15;
  }

LABEL_12:
  v76[0] = 1;
  BYTE1(v77[8]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6E8);
  sub_27440CA78(&qword_28094F6F0, &qword_28094F6E8);
  sub_274639DDC();
LABEL_15:
  memcpy(v75, __src, sizeof(v75));
  memcpy(v76, __src, 0x42uLL);
  sub_27440B094(v35, v37, v41);

  sub_27445EAD4(v76, v77, &qword_28094F6F8);

  memcpy(&v74[7], v76, 0x42uLL);
  v63 = v70;
  *v70 = v69;
  v63[1] = 0;
  *(v63 + 16) = 1;
  v63[3] = v35;
  v63[4] = v37;
  *(v63 + 40) = v41;
  v63[6] = v40;
  v63[7] = 0;
  *(v63 + 64) = 1;
  memcpy(v63 + 65, v74, 0x49uLL);
  memcpy(v77, v75, 0x42uLL);
  sub_27440CB1C(v77, &qword_28094F700);
  sub_274412C10(v35, v37, v41);
}

uint64_t sub_2744FEF84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E30);
  MEMORY[0x28223BE20](v0 - 8);
  v47 = &v36 - v1;
  v44 = sub_274637E8C();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v43 = sub_274637F6C();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274637F8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F708);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F710);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v36 - v19;
  v21 = sub_274637D2C();
  v45 = *(v21 - 8);
  v46 = v21;
  MEMORY[0x28223BE20](v21);
  v40 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637F4C();
  v37 = v8;
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
  sub_274637F4C();
  v39 = v17;
  sub_274637F5C();
  v23 = *(v9 + 8);
  v36 = v9 + 8;
  v38 = v23;
  v23(v14, v8);
  v24 = sub_27463803C();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  sub_274637F4C();
  v25 = v42;
  v26 = v43;
  (*(v6 + 104))(v42, *MEMORY[0x277CC9988], v43);
  sub_274637E7C();
  sub_274637F7C();
  v27 = v44;
  v41 = *(v49 + 8);
  v41(v5, v44);
  (*(v6 + 8))(v25, v26);
  v28 = v11;
  v30 = v37;
  v29 = v38;
  v38(v28, v37);
  v31 = v47;
  v32 = v40;
  sub_274637D1C();
  sub_274637F4C();
  sub_274637F3C();
  v29(v14, v30);
  if (__swift_getEnumTagSinglePayload(v31, 1, v27) == 1)
  {
    v33 = v48;
    sub_274637E7C();
    if (__swift_getEnumTagSinglePayload(v31, 1, v27) != 1)
    {
      sub_27440CB1C(v31, &unk_280952E30);
    }
  }

  else
  {
    v33 = v48;
    (*(v49 + 32))(v48, v31, v27);
  }

  v34 = sub_274637E5C();
  v41(v33, v27);
  (*(v45 + 8))(v32, v46);
  return v34;
}

id sub_2744FF578(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRelativeDateStyle:a1 timeStyle:a2];

  return v4;
}

uint64_t sub_2744FF5D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D688);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F720);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v9 = qword_28094BB00;
  v10 = sub_27463B66C();
  v11 = sub_27463B66C();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = sub_27463B6AC();
  v15 = v14;

  v31 = v13;
  v32 = v15;
  v29 = *(v2 + 32);
  v30 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463AD0C();
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v2 + 32);
  *(v16 + 64) = *(v2 + 48);
  v18 = swift_allocObject();
  v19 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v2 + 32);
  *(v18 + 64) = *(v2 + 48);
  sub_2744FFF28(v2, v28);
  sub_2744FFF28(v2, v28);
  sub_274412BBC();
  sub_27463B17C();
  v20 = sub_27440CA78(&qword_280952FC0, &qword_28094D688);
  MEMORY[0x277C56F80](1, v3, v20);
  (*(v24 + 8))(v5, v3);
  v28[0] = v3;
  v28[1] = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v26;
  sub_27463A7DC();
  return (*(v25 + 8))(v8, v21);
}

uint64_t sub_2744FF9B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808);
  return sub_27463AEBC();
}

id sub_2744FFABC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_27463B66C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCustomDateFormat_];

  return v4;
}

id sub_2744FFB20(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  if (a5)
  {
    v12 = sub_27463B66C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithDateStyle:a1 timeStyle:a2 relativeDateStyle:a3 customDateFormat:v12 includesTimeForISO8601:a6 & 1];

  return v13;
}

unint64_t sub_2744FFBF4()
{
  result = qword_28094F668;
  if (!qword_28094F668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F658);
    sub_2744FFC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F668);
  }

  return result;
}

unint64_t sub_2744FFC78()
{
  result = qword_280949BA0;
  if (!qword_280949BA0)
  {
    type metadata accessor for WFDateFormattingStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949BA0);
  }

  return result;
}

unint64_t sub_2744FFCD0()
{
  result = qword_28094F670;
  if (!qword_28094F670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F670);
  }

  return result;
}

unint64_t sub_2744FFD4C()
{
  result = qword_28094F680;
  if (!qword_28094F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F680);
  }

  return result;
}

unint64_t sub_2744FFDA0()
{
  result = qword_28094F690;
  if (!qword_28094F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F638);
    sub_27440CA78(&qword_28094F698, &qword_28094F640);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F690);
  }

  return result;
}

unint64_t sub_2744FFE84()
{
  result = qword_28094F6A0;
  if (!qword_28094F6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F688);
    sub_2744FFD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F6A0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274500010(void *a1)
{
  v2 = [a1 customDateFormat];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B6AC();

  return v3;
}

uint64_t objectdestroyTm_8()
{

  return swift_deallocObject();
}

unint64_t sub_2745000D0()
{
  result = qword_28094F1F0;
  if (!qword_28094F1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094F1F0);
  }

  return result;
}

uint64_t sub_274500140(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return sub_2744FF9B0();
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{

  return swift_deallocObject();
}

uint64_t sub_274500210()
{
  v9[4] = sub_274500400();
  swift_getKeyPath();
  v1 = *v0;
  v10 = v0[2];
  v11 = v1;
  v2 = swift_allocObject();
  v3 = *(v0 + 1);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = v0[4];
  sub_27445E9E4(&v11, v9);

  sub_274439BF0(&v10, v9, &qword_28094F200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F730);
  sub_27440CA78(&qword_28094F738, &qword_28094F728);
  sub_274501860();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F748);
  v5 = sub_2746396BC();
  v6 = sub_27440CA78(&qword_28094F750, &qword_28094F748);
  v7 = sub_2745018B4();
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  return sub_27463AF7C();
}

uint64_t sub_274500400()
{
  v0 = sub_2745014E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274648570;
  *(v7 + 32) = v0;
  *(v7 + 40) = v2;
  *(v7 + 48) = v4;
  *(v7 + 56) = v6 & 1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = v4;
  v35 = v4;

  v9 = [ObjCClassFromMetadata allProperties];
  sub_274501B64();
  v10 = sub_27463B81C();

  v38 = v10;
  result = sub_274453594(v10);
  if (!result)
  {
LABEL_21:

    return v7;
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = 0;
    v36 = v10 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v14 = MEMORY[0x277C58B20](v13, v38);
      }

      else
      {
        v14 = *(v38 + 8 * v13 + 32);
      }

      v15 = v14;
      if (v37 && [v14 isEquivalentToProperty_])
      {
      }

      else
      {
        v16 = v15;
        v17 = [v16 localizedName];
        v18 = sub_27463B6AC();
        v20 = v19;

        v21 = *(v7 + 16);
        v22 = *(v7 + 24);
        v23 = v16;
        if (v21 >= v22 >> 1)
        {
          sub_274450908();
          v7 = v33;
        }

        *(v7 + 16) = v21 + 1;
        v24 = v7 + 32 * v21;
        *(v24 + 32) = v18;
        *(v24 + 40) = v20;
        *(v24 + 48) = v16;
        *(v24 + 56) = 0;
        if ([v23 hasNegative])
        {
          v25 = sub_2744A4C3C(v23, &selRef_localizedNegativeName);
          if (v26)
          {
            v27 = v25;
            v28 = v26;
          }

          else
          {
            v29 = [v23 localizedName];

            v27 = sub_27463B6AC();
            v28 = v30;
          }

          v31 = *(v7 + 16);
          if (v31 >= *(v7 + 24) >> 1)
          {
            sub_274450908();
            v7 = v34;
          }

          *(v7 + 16) = v31 + 1;
          v32 = v7 + 32 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v28;
          *(v32 + 48) = v16;
          *(v32 + 56) = 1;
        }

        else
        {
        }
      }

      ++v13;
    }

    while (v12 != v13);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745006E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_2746396BC();
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F748);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(a1 + 24);
  v16 = *a2;
  v33 = a2[2];
  v34 = v16;
  v17 = swift_allocObject();
  v18 = *(a2 + 1);
  *(v17 + 16) = *a2;
  *(v17 + 32) = v18;
  *(v17 + 48) = a2[4];
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  *(v17 + 72) = v14;
  *(v17 + 80) = v15;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = a2;
  sub_27445E9E4(&v34, v32);

  sub_274439BF0(&v33, v32, &qword_28094F200);
  v19 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F758);
  sub_274501934();
  sub_27463AD5C();
  sub_2746396AC();
  sub_27440CA78(&qword_28094F750, &qword_28094F748);
  sub_2745018B4();
  v21 = v23;
  v20 = v24;
  sub_27463A69C();
  (*(v25 + 8))(v8, v20);
  return (*(v9 + 8))(v11, v21);
}

uint64_t sub_2745009B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_274500A88(&v7);
  v10[0] = v8[0];
  *(v10 + 9) = *(v8 + 9);
  v9 = v7.n128_u64[0];
  v5 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F780);
  sub_27463AEBC();
  sub_274501A18(&v9);

  return sub_274415174(v10, &qword_28094F788);
}

__n128 sub_274500A88@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v20 = v1[2];
  v21 = v4;
  sub_27463B9CC();
  sub_27445E9E4(&v21, v16);

  sub_274439BF0(&v20, v16, &qword_28094F200);
  v5 = sub_27463B9BC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(v1 + 1);
  *(v6 + 32) = *v1;
  *(v6 + 48) = v8;
  *(v6 + 64) = v1[4];
  sub_27445E9E4(&v21, v16);

  sub_274439BF0(&v20, v16, &qword_28094F200);
  v9 = sub_27463B9BC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = *(v2 + 1);
  *(v10 + 32) = *v2;
  *(v10 + 48) = v11;
  *(v10 + 64) = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F788);
  sub_27463AF0C();
  v12 = v16[1];
  v13 = v18;
  v14 = v19;
  result = v17;
  a1->n128_u64[0] = v16[0];
  a1->n128_u64[1] = v12;
  a1[1] = result;
  a1[2].n128_u64[0] = v13;
  a1[2].n128_u8[8] = v14;
  return result;
}

void *sub_274500C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_274639B2C();
  v16 = 1;
  sub_274500D34(a1, a2, a3, a4, __src);
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v18, __src, 0x81uLL);
  sub_274439BF0(__dst, &v13, &qword_28094F778);
  sub_274415174(v18, &qword_28094F778);
  memcpy(&v15[7], __dst, 0x81uLL);
  v11 = v16;
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = v11;
  result = memcpy((a5 + 17), v15, 0x88uLL);
  *(a5 + 153) = 0;
  return result;
}

uint64_t sub_274500D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v43 = a2;
  sub_274412BBC();

  v9 = sub_27463A53C();
  v36 = v10;
  v37 = v9;
  v35 = v11;
  v38 = v12;
  v13 = a3;

  sub_274500A88(&v57);
  v55 = v57;
  v56[0] = v58[0];
  *(v56 + 9) = *(v58 + 9);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F780);
  MEMORY[0x277C575F0](v53, v14);
  v15 = v53[0];
  v16 = v53[1];
  v17 = v53[2];
  v18 = v54;
  v60[0] = v57.n128_u64[0];
  sub_274501A18(v60);

  v59[0] = v58[0];
  *(v59 + 9) = *(v58 + 9);
  sub_274415174(v59, &qword_28094F788);
  if (!v16)
  {
    sub_274501A6C(a1, a2, a3);
    sub_274501A6C(v15, 0, v17);
LABEL_6:
    KeyPath = 0;
    v20 = 0;
    v23 = 0;
    v22 = 0;
    v32 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
    v31 = 0;
    goto LABEL_7;
  }

  v19 = sub_274501094(a1, a2, a3, a4 & 1, v15, v16, v17, v18 & 1);

  if ((v19 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_6;
  }

  v16 = sub_27463AC2C();
  sub_27463A3AC();
  sub_27463A3FC();
  v20 = sub_27463A42C();

  KeyPath = swift_getKeyPath();
  v22 = sub_27463AB1C();
  v23 = swift_getKeyPath();
  LOBYTE(v32) = sub_27463A37C();
  sub_2746390AC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v42) = 0;
  v32 = v32;
LABEL_7:
  v40[96] = v35 & 1;
  v40[88] = 1;
  __src[0] = v16;
  __src[1] = KeyPath;
  __src[2] = v20;
  __src[3] = v23;
  __src[4] = v22;
  __src[5] = v32;
  __src[6] = v25;
  __src[7] = v27;
  __src[8] = v29;
  __src[9] = v31;
  LOBYTE(__src[10]) = 0;
  memcpy(&v40[7], __src, 0x51uLL);
  *a5 = v37;
  *(a5 + 8) = v36;
  *(a5 + 16) = v35 & 1;
  *(a5 + 24) = v38;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  memcpy((a5 + 41), v40, 0x58uLL);
  v42 = v16;
  v43 = KeyPath;
  v44 = v20;
  v45 = v23;
  v46 = v22;
  v47 = v32;
  v48 = v25;
  v49 = v27;
  v50 = v29;
  v51 = v31;
  v52 = 0;
  sub_27440B094(v37, v36, v35 & 1);

  sub_274439BF0(__src, v39, &qword_28094F790);
  sub_274415174(&v42, &qword_28094F790);
  sub_274412C10(v37, v36, v35 & 1);
}

uint64_t sub_274501094(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (!v12 && (sub_27463C6BC() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    if (a7)
    {
      sub_274501B64();
      v13 = a7;
      v14 = a3;
      v15 = sub_27463BF7C();

      if (v15)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (a7)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = a4 ^ a8 ^ 1;
  return v16 & 1;
}

uint64_t sub_274501148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_27463B71C();
  sub_27463C76C();
  if (a4)
  {
    v5 = a4;
    sub_27463BF8C();
  }

  return sub_27463C76C();
}

uint64_t sub_2745011BC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_27463C74C();
  sub_274501148(v7, a1, a2, a3);
  return sub_27463C7AC();
}

uint64_t sub_274501244()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_27463C74C();
  sub_274501148(v5, v1, v2, v3);
  return sub_27463C7AC();
}

void sub_2745012C8()
{
  v22 = *v0;
  v23 = *(v0 + 2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F798);
  MEMORY[0x277C575F0](&v21, v1);
  v20 = v21;
  if (!v21)
  {
LABEL_20:
    sub_2745014E8();
    return;
  }

  v17 = v0;
  v2 = sub_274500400();
  v3 = 0;
  v18 = *(v2 + 16);
  v19 = v2;
  for (i = (v2 + 56); ; i += 32)
  {
    if (v18 == v3)
    {

      goto LABEL_20;
    }

    if (v3 >= *(v19 + 16))
    {
      break;
    }

    v5 = *(i - 1);
    v6 = *i;

    if (v5)
    {
      v7 = [v5 name];
      v8 = sub_27463B6AC();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = [v20 propertyName];
    v12 = sub_27463B6AC();
    v14 = v13;

    if (!v10)
    {

      goto LABEL_18;
    }

    if (v8 == v12 && v10 == v14)
    {
    }

    else
    {
      v16 = sub_27463C6BC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v6 == [v20 negativeProperty])
    {

      return;
    }

LABEL_18:

    ++v3;
  }

  __break(1u);
}

uint64_t sub_2745014E8()
{
  v1 = *(v0 + 24);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v1)
  {
    v3 = [ObjCClassFromMetadata stringConversionBehavior];
    v4 = [v3 property];
    if (v4)
    {
      v5 = [v4 localizedName];
      v6 = sub_27463B6AC();
    }

    else
    {
      v7 = [v3 behaviorDescription];
      v6 = sub_27463B6AC();
    }
  }

  else
  {
    v3 = [ObjCClassFromMetadata localizedTypeDescription];
    v6 = sub_27463B6AC();
  }

  return v6;
}

void sub_2745015EC(uint64_t a1@<X8>)
{
  sub_2745012C8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 & 1;
}

uint64_t sub_274501624(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = *a1;
    v5 = v2;

    v6 = sub_2745014E8();
    v8 = v7;
    LOBYTE(v4) = sub_274501094(v4, v1, v2, v3 & 1, v6, v10, v7, v9 & 1);

    if ((v4 & 1) == 0)
    {
      if (v2)
      {
        v12 = v5;
        v13 = [v12 name];
        v14 = sub_27463B6AC();
        v16 = v15;

        v17 = [v12 userInfo];
        v18 = sub_2744A4C3C(v12, &selRef_negativeName);
        v20 = v19;
        v21 = objc_allocWithZone(MEMORY[0x277D7C778]);
        sub_274501AB0(v14, v16, v17, v3 & 1, v18, v20);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F798);
    sub_27463AEBC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F798);
    return sub_27463AEBC();
  }
}

unint64_t sub_274501860()
{
  result = qword_28094F740;
  if (!qword_28094F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F740);
  }

  return result;
}

unint64_t sub_2745018B4()
{
  result = qword_280949470;
  if (!qword_280949470)
  {
    sub_2746396BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949470);
  }

  return result;
}

unint64_t sub_274501934()
{
  result = qword_28094F760;
  if (!qword_28094F760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F758);
    sub_27440CA78(&qword_28094F768, &qword_28094F770);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F760);
  }

  return result;
}

void sub_274501A6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

id sub_274501AB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_27463B66C();

  if (a6)
  {
    v11 = sub_27463B66C();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithPropertyName:v10 propertyUserInfo:a3 negativeProperty:a4 & 1 negativePropertyName:v11];

  swift_unknownObjectRelease();
  return v12;
}

unint64_t sub_274501B64()
{
  result = qword_28094F1F8;
  if (!qword_28094F1F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094F1F8);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274501C10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_274501C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274501CA4()
{
  result = qword_28094F7A0;
  if (!qword_28094F7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F748);
    sub_2746396BC();
    sub_27440CA78(&qword_28094F750, &qword_28094F748);
    sub_2745018B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F7A0);
  }

  return result;
}

unint64_t sub_274501DBC()
{
  result = qword_28094F7B0;
  if (!qword_28094F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F7B0);
  }

  return result;
}

uint64_t sub_274501E10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_274639E5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27463AB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_274648570;
  v21[0] = a1;
  v21[1] = a2;
  sub_27463A04C();
  sub_2746393CC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = (*(v7 + 8))(v9, v6);
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  *(v11 + 48) = v17;
  *(v11 + 56) = v19;
  *a3 = v10;
  a3[1] = v11;
  return result;
}

double sub_27450204C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E90);
  v0 = swift_allocObject();
  *&result = 1;
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 16);
  v0[1] = xmmword_274648570;
  v0[2] = v2;
  v0[3] = v3;
  qword_28094F7B8 = v0;
  return result;
}

uint64_t sub_2745020E8@<X0>(void *a1@<X8>)
{
  if (qword_280949310 != -1)
  {
    swift_once();
  }

  *a1 = qword_28094F7B8;
}

id WFInputSurfaceParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      swift_unknownObjectRetain();
      v14 = [v13 value];
      [v11 populateWithIcon:0 string:v14];
      swift_unknownObjectRelease();
    }
  }

  return v11;
}

id sub_274502288(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFInputSurfaceParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745022F4()
{
  static WFInputSurfaceParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_27450231C()
{
  v1 = v0;
  v2 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v28 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v26 = v8;
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_27463B22C();
  sub_27463B28C();
  v25 = *(v13 + 8);
  v25(v16, v11);
  sub_274412734(0, &qword_28094AF90);
  v20 = sub_27463BCEC();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_274502854;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27443E0E8;
  aBlock[3] = &block_descriptor_19;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  sub_27463B20C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27446E608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  sub_274454390();
  sub_27463C1EC();
  MEMORY[0x277C58400](v19, v10, v6, v22);
  _Block_release(v22);

  (*(v28 + 8))(v6, v2);
  (*(v26 + 8))(v10, v27);
  return (v25)(v19, v11);
}

id sub_274502674(void *a1)
{
  v2 = [a1 auxiliaryViewPresenter];
  if (v2)
  {
    [v2 presentShortcutDetailsAsAuxiliaryViewPresenter];
    swift_unknownObjectRelease();
  }

  return [a1 completeEditing];
}

id sub_274502750(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for InputSurfaceParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745027FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InputSurfaceParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id WFAddButtonParameter.moduleSummaryShowsAddButton(for:)()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 showsAddButtonForParameter_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2745028D8(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  v3 = WFAddButtonParameter.moduleSummaryShowsAddButton(for:)();
  swift_unknownObjectRelease();

  return v3 & 1;
}

id sub_274502938()
{
  sub_274466DA4();
  v0 = sub_27463B7FC();

  return v0;
}

uint64_t sub_2745029BC()
{
  static WFAddButtonParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745029E4()
{
  v1 = [v0 parameter];
  v2 = [v1 delegate];

  if (v2)
  {
    v3 = [v0 parameter];
    v4 = [v2 parameterStateUpdateForPlusButtonForParameter_];
    swift_unknownObjectRelease();

    if (v4)
    {
      v5 = [v4 parameterState];
      v6 = [v4 parameterKey];
      if (!v6)
      {
        sub_27463B6AC();
        v7 = sub_27463B66C();

        v6 = v7;
      }

      v8 = v6;
      [v0 commitAuxiliaryState:v5 forKey:?];

      swift_unknownObjectRelease();
    }
  }
}

id sub_274502BDC(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for WFAddButtonModuleSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_274502C8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAddButtonModuleSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274502CC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v7 = a1;
}

char *sub_274502D30()
{
  v1 = *v0;
  swift_getObjectType();
  v2 = v1;
  v3 = sub_2746385AC();
  v4 = objc_allocWithZone(type metadata accessor for ParameterEditingSessionViewController());
  v5 = sub_274503590(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F860);
  sub_27463A2EC();
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_delegate + 8] = &off_28836A4C8;
  swift_unknownObjectWeakAssign();

  return v5;
}

uint64_t sub_274502E08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F860);
  sub_27463A2EC();
  v2 = v15;
  v3 = *v1;
  v17 = *(v1 + 48);
  v4 = v17;
  v5 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v16[1] = v5;
  v6 = *(v15 + 16);
  v7 = *(v15 + 32);
  v8 = *(v15 + 40);
  v9 = *(v15 + 48);
  v10 = *(v15 + 56);
  v11 = *(v15 + 64);
  *(v15 + 32) = v16[0];
  *(v2 + 48) = v5;
  *(v2 + 64) = v4;
  *(v2 + 16) = *v1;
  v12 = v3;

  sub_27450412C(v16, &v14);

  sub_2744627C0(v7, v8, v9, v10, v11);
}

uint64_t sub_274502EEC()
{
  type metadata accessor for ParameterEditingControllerHostingView.Coordinator();
  v1 = swift_allocObject();
  v2 = *v0;
  v4 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v3 = v9[0];
  v9[1] = v4;
  v10 = *(v0 + 48);
  v5 = v10;
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  v6 = v2;

  sub_27450412C(v9, v8);
  return v1;
}

uint64_t sub_274502F70()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();

  swift_unknownObjectRetain();
  sub_2746385BC();

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  if (*(v1 + 64) != 1)
  {
    swift_retain_n();
    sub_27463BC0C();
    v11 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744627C0(v7, v6, v9, v8, 0);
    (*(v3 + 8))(v5, v2);
    result = sub_2744627C0(v7, v6, v9, v8, 0);
    v7 = v13;
    if (!v13)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_27440CBD8(*(v1 + 32));
  if (v7)
  {
LABEL_5:

    v7(v12);
  }

  return result;
}

uint64_t sub_27450316C()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (*(v0 + 64) != 1)
  {
    swift_retain_n();
    sub_27463BC0C();
    v10 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744627C0(v6, v5, v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    result = sub_2744627C0(v6, v5, v7, v8, 0);
    v7 = v12[2];
    if (!v12[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_27440CBD8(*(v0 + 32));
  if (v6)
  {
LABEL_5:

    v7(v11);
  }

  return result;
}

uint64_t sub_274503328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  sub_2744627C0(v2, v3, v4, v5, v6);

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t sub_274503454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274502EEC();
  *a1 = result;
  return result;
}

uint64_t sub_2745034A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27450419C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274503504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27450419C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274503568()
{
  sub_27450419C();
  sub_27463A26C();
  __break(1u);
}

id sub_274503590(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController] = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_parameter] = a1;
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentState] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ParameterEditingSessionViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_274503624()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_2745036DC()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ParameterEditingSessionViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  if ([swift_getObjCClassFromObject() uikitEditingControllerClass] && (swift_getObjCClassMetadata(), sub_274412734(0, &qword_28094F870), swift_dynamicCastMetatype()))
  {
    v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v1 setDelegate_];
    v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentState];
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v7[4] = sub_2745041F0;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_274486F8C;
    v7[3] = &block_descriptor_20;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 createViewControllerWithInitialState:v2 completionHandler:v4];
    _Block_release(v4);
    v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController];
    *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController] = v1;
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_27450316C();
    swift_unknownObjectRelease();
  }
}

void sub_2745038A4(void *a1, void *a2)
{
  if (!a1)
  {
    return;
  }

  v40 = a1;
  [v40 willMoveToParentViewController_];
  v3 = [v40 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [v40 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  [v6 addSubview_];

  [a2 addChildViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_274653790;
  v10 = [v40 view];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [a2 view];
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v16;
  v17 = [v40 view];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [a2 view];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v9 + 40) = v23;
  v24 = [v40 view];
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [a2 view];
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v9 + 48) = v30;
  v31 = [v40 view];
  if (!v31)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [a2 view];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [v33 constraintEqualToAnchor_];
  *(v9 + 56) = v38;
  sub_274412734(0, &qword_28094E990);
  v39 = sub_27463B7FC();

  [v36 activateConstraints_];

  [v40 didMoveToParentViewController_];
}

uint64_t sub_274503D34()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_27450316C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274503DDC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_274502F70();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_274503F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterEditingSessionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor28SummaryModalPresentationModeVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274504034(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274504074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2745040D8()
{
  result = qword_28094F850;
  if (!qword_28094F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F850);
  }

  return result;
}

uint64_t sub_27450412C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27450419C()
{
  result = qword_28094F868;
  if (!qword_28094F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F868);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_27450423C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_27463C23C();
    sub_274412734(0, &unk_28094C200);
    sub_27446839C();
    sub_27463BA7C();
    v1 = v20;
    v2 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
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

    v4 = 0;
  }

  v19 = v3;
  v9 = MEMORY[0x277D84F90];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_274406A24();
      return;
    }

    while (1)
    {
      v15 = [v14 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450AB4();
        v9 = v17;
      }

      v16 = *(v9 + 16);
      if (v16 >= *(v9 + 24) >> 1)
      {
        sub_274450AB4();
        v9 = v18;
      }

      *(v9 + 16) = v16 + 1;
      *(v9 + 8 * v16 + 32) = v15;
      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_27463C2BC())
      {
        sub_274412734(0, &unk_28094C200);
        swift_dynamicCast();
        v14 = v25;
        v12 = v4;
        v13 = v5;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2745044A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2745066D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t WFDictionaryParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_274506280(&qword_28094B550, type metadata accessor for ParameterStateStore);

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_274505F70;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B600));
  swift_retain_n();
  sub_27444A618(v1);
  sub_27440CA78(&qword_28094F878, &qword_28094B600);
  sub_27463950C();
  sub_274506164();
  return sub_27463AE9C();
}

uint64_t sub_2745046D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2746380BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = v1[1];
  v26 = *v1;
  v27 = v4;
  v5 = v1[3];
  v28 = v1[2];
  v29 = v5;
  v6 = *(&v26 + 1);
  v33[0] = v4;
  v33[1] = v28;
  v33[2] = v5;
  v30 = v4;
  v31 = v28;
  v32 = v5;
  sub_274439BF0(v33, v25, &qword_28094F888);
  sub_274505384();
  sub_274415174(v33, &qword_28094F888);
  v7 = qword_28094A100;
  [*(v6 + qword_28094A100) stateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_28094F890);
  swift_dynamicCastMetatypeUnconditional();
  v8 = sub_274506070(*(v6 + v7));
  if (v8)
  {
    sub_27450423C(v8);
  }

  sub_2746380AC();
  v9 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent());
  sub_274507808();
  v11 = v10;
  v12 = sub_274506070(*(v6 + v7));
  if (v12)
  {
    sub_27450423C(v12);
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_2745060F4(*(v6 + v7));
  v17 = v16;
  v18 = swift_allocObject();
  v19 = v27;
  v18[1] = v26;
  v18[2] = v19;
  v20 = v29;
  v18[3] = v28;
  v18[4] = v20;
  v21 = swift_allocObject();
  v22 = v27;
  v21[1] = v26;
  v21[2] = v22;
  v23 = v29;
  v21[3] = v28;
  v21[4] = v23;
  *a1 = v11;
  *(a1 + 8) = sub_274446ACC;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = sub_2745061E4;
  *(a1 + 64) = v18;
  *(a1 + 72) = sub_27450623C;
  *(a1 + 80) = v21;
  sub_274506248(&v26, v25);
  return sub_274506248(&v26, v25);
}

double sub_274504988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_2745049D8(a1, a2, a3, a4 & 1, a5, a6, a7, v11);
  v9 = v11[1];
  *a8 = v11[0];
  *(a8 + 16) = v9;
  result = *&v12;
  *(a8 + 32) = v12;
  *(a8 + 48) = v13;
  return result;
}

double sub_2745049D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v64 = a1;
  *(&v64 + 1) = a2;
  *&v65 = a3;
  v15 = a4 & 1;
  BYTE8(v65) = a4 & 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60);
  MEMORY[0x277C575F0](&v57, v16);
  v17 = v57;
  v54 = a8;
  if (BYTE8(v57) != 1)
  {

    if (__OFADD__(a6, 1))
    {
      __break(1u);
    }

    else
    {
      sub_27463B70C();
      sub_27463B70C();
      if (qword_2809492C0 == -1)
      {
LABEL_8:
        v31 = qword_28094BB00;
        v32 = sub_27463B66C();

        v33 = sub_27463B66C();

        v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

        sub_27463B6AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D83B88];
        *(v35 + 16) = xmmword_274648570;
        v37 = MEMORY[0x277D83C10];
        *(v35 + 56) = v36;
        *(v35 + 64) = v37;
        *(v35 + 32) = a6 + 1;
        v38 = sub_27463B67C();
        v40 = v39;

        *&v64 = v38;
        *(&v64 + 1) = v40;
        sub_274412BBC();
        v41 = sub_27463A53C();
        v43 = v42;
        LOBYTE(v32) = v44;
        sub_27463ABCC();
        v45 = sub_27463A4DC();
        v47 = v46;
        v49 = v48;
        v51 = v50;

        sub_274412C10(v41, v43, v32 & 1);

        v63 = v49 & 1;
        v61 = 1;
        *&v57 = v45;
        *(&v57 + 1) = v47;
        LOBYTE(v58) = v49 & 1;
        *(&v58 + 1) = v62[0];
        DWORD1(v58) = *(v62 + 3);
        *(&v58 + 1) = v51;
        v59 = v55;
        LOBYTE(v60) = v56;
        HIBYTE(v60) = 1;
        sub_2745062C8();
        sub_274639DDC();
        goto LABEL_9;
      }
    }

    swift_once();
    goto LABEL_8;
  }

  sub_27463B9CC();
  v18 = v17;
  v19 = sub_27463B9BC();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v22 = a3;
  v23 = v18;

  v24 = a5;

  v25 = sub_27463B9BC();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = MEMORY[0x277D85700];
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *(v26 + 48) = a3;
  *(v26 + 56) = v15;
  *(v26 + 64) = v24;
  *(v26 + 72) = a6;
  *(v26 + 80) = v23;
  sub_274412734(0, &unk_28094F530);
  sub_27463AF0C();
  v27 = sub_274505FCC(*(*(a7 + 8) + qword_28094A100));
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v55;
  *(v29 + 32) = v56;
  LOBYTE(v62[0]) = 0;
  v63 = 0;
  v64 = v55;
  *&v65 = v56;
  *(&v65 + 1) = v28;
  *&v66 = sub_274506364;
  *(&v66 + 1) = v29;
  v67 = 0;
  sub_2745062C8();
  swift_retain_n();
  swift_retain_n();
  v30 = v56;

  sub_274639DDC();

  v64 = v57;
  v65 = v58;
  v66 = v59;
  v67 = v60;
LABEL_9:
  v52 = v65;
  *v54 = v64;
  *(v54 + 16) = v52;
  result = *&v66;
  *(v54 + 32) = v66;
  *(v54 + 48) = v67;
  return result;
}

uint64_t sub_274504F04@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2746382DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &unk_28094F530);
  sub_27463BEBC();
  v6 = sub_27463BE9C();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_274505004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v34 = a7;
  v32 = a5;
  v33 = a6;
  v30 = a10;
  v31 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v29 - v11;
  v13 = sub_2746382DC();
  MEMORY[0x28223BE20](v13 - 8);
  v29[1] = sub_274412734(0, &unk_28094B310);
  sub_27463BE7C();
  v14 = sub_274505E98();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_getKeyPath();
  v39 = v14;
  v40 = v16;
  v41 = v18;
  v42 = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60);
  sub_27463AECC();

  v21 = v36;
  v22 = v37;
  v23 = v38;

  v35[1] = v21;
  v35[2] = v22;
  v35[3] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40);
  MEMORY[0x277C575F0](v35, v24);

  v25 = [v30 identity];
  sub_274637ECC();

  v26 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v26);
  v27 = sub_27463BEAC();
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v42 = v34 & 1;
  v36 = v27;
  LOBYTE(v37) = 1;
  return sub_27463AEBC();
}

__n128 sub_274505274@<Q0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60);
  sub_27463AEEC();
  swift_getKeyPath();
  sub_27463AECC();

  v4 = sub_274505FCC(*(*(a1 + 8) + qword_28094A100));
  v5 = MEMORY[0x277D84FA0];
  *a2 = v7;
  if (v4)
  {
    v5 = v4;
  }

  result = v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_274505384()
{
  v1 = v0;
  sub_27463B9CC();
  sub_274439BF0(v0, &v10, &qword_28094F888);
  v2 = sub_27463B9BC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v0[1];
  *(v3 + 32) = *v0;
  *(v3 + 48) = v5;
  *(v3 + 64) = v0[2];
  sub_274439BF0(v0, &v10, &qword_28094F888);
  v6 = sub_27463B9BC();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = v1[1];
  *(v7 + 32) = *v1;
  *(v7 + 48) = v8;
  *(v7 + 64) = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8C0);
  sub_27463AF0C();
  return v10;
}

uint64_t sub_2745054D0()
{
  v0 = sub_27463B9CC();
  OUTLINED_FUNCTION_1_9(v0, v1, v2, v3, v4, v5, v6, v7, v22);
  v8 = sub_27463B9BC();
  OUTLINED_FUNCTION_4_11();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  OUTLINED_FUNCTION_0_16(v9);
  OUTLINED_FUNCTION_1_9(v11, v12, v13, v14, v15, v16, v17, v18, v23);
  v19 = sub_27463B9BC();
  OUTLINED_FUNCTION_4_11();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v10;
  OUTLINED_FUNCTION_0_16(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8D0);
  sub_27463AF0C();
  return v24;
}

uint64_t sub_2745055E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2746382DC();
  MEMORY[0x28223BE20](v6 - 8);
  v10[1] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A0);
  MEMORY[0x277C575F0](v10, v7);
  v8 = v10[0];
  sub_27463BE7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_2745056C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8E8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - v3;
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v41 = v5;
  v43 = v4;
  v42 = v6;
  v37 = sub_27463920C();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v7 = qword_28094BB00;
  v8 = sub_27463B66C();
  v9 = sub_27463B66C();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_27463B6AC();
  v35 = v12;
  v36 = v11;

  v14 = v2[2];
  v13 = v2[3];
  v15 = v2[1];
  v45 = *v2;
  v16 = v45;
  v46 = v13;
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 2);
  *(v17 + 64) = *(v2 + 48);
  v19 = *MEMORY[0x277D7A628];
  v20 = *MEMORY[0x277D7A5C0];

  sub_274439BF0(&v46, v47, &unk_280953A00);
  sub_27445E9E4(&v45, v47);

  v21 = v14;
  sub_274506470();
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274506280(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v34 = v19;
  v33 = v20;
  v22 = sub_27463979C();
  v24 = v23;
  v25 = v46;
  v47[0] = v16;
  v47[1] = v15;
  v47[2] = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A0);
  MEMORY[0x277C575F0](&v44[160], v26);
  v27 = swift_allocObject();
  v28 = *(v2 + 1);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v2 + 2);
  *(v27 + 64) = *(v2 + 48);
  *v44 = v37;
  v44[8] = 2;
  *&v44[16] = 0;
  *&v44[24] = 0;
  *&v44[32] = v36;
  *&v44[40] = v35;
  *&v44[48] = 256;
  v44[50] = 0;
  *&v44[56] = 0;
  v44[64] = 0;
  *&v44[72] = v25;
  *&v44[80] = xmmword_274653F30;
  *&v44[96] = sub_274506468;
  *&v44[104] = v17;
  *&v44[112] = v34;
  *&v44[120] = v33;
  *&v44[128] = xmmword_27464F170;
  *&v44[144] = v22;
  *&v44[152] = v24;
  *&v44[168] = sub_2745064D4;
  *&v44[176] = v27;
  sub_274439BF0(&v46, v47, &unk_280953A00);
  sub_27445E9E4(&v45, v47);

  v29 = v21;
  sub_274506470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8F0);
  sub_2745064DC();
  v30 = v38;
  sub_27463A86C();
  memcpy(v47, v44, 0xB8uLL);
  sub_274415174(v47, &qword_28094F8F0);
  v31 = sub_2745065E8();
  MEMORY[0x277C56F80](1, v39, v31);
  return sub_274415174(v30, &qword_28094F8E8);
}

uint64_t sub_274505B74()
{
  v0 = sub_2746382DC();
  MEMORY[0x28223BE20](v0 - 8);
  sub_274412734(0, &unk_28094F530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  sub_27463896C();

  sub_27463BE8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A0);
  return sub_27463AEBC();
}

uint64_t sub_274505CDC()
{
  v0 = sub_2746382DC();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  sub_27463BE7C();
  sub_27463897C();
}

uint64_t sub_274505E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A8);
  sub_27463AEEC();
  return v1;
}

uint64_t sub_274505E98()
{
  sub_274505E30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A8);
  sub_27440CA78(&qword_28094F8B0, &qword_28094F8B8);
  sub_27463AF2C();

  return v1;
}

void sub_274505F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v4 = *(a4 + 32);
  v5 = a1;
  v4(&v6);
}

uint64_t sub_274505FCC(void *a1)
{
  v2 = [a1 supportedVariableTypes];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for WFVariableType(0);
  sub_274506280(&qword_28094BAE0, type metadata accessor for WFVariableType);
  v3 = sub_27463BA4C();

  return v3;
}

uint64_t sub_274506070(void *a1)
{
  v2 = [a1 allowedValueTypes];

  if (!v2)
  {
    return 0;
  }

  sub_274412734(0, &unk_28094C200);
  sub_27446839C();
  v3 = sub_27463BA4C();

  return v3;
}

uint64_t sub_2745060F4(void *a1)
{
  v2 = [a1 localizedNewItemTypeName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B6AC();

  return v3;
}

unint64_t sub_274506164()
{
  result = qword_28094F880;
  if (!qword_28094F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F880);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{

  OUTLINED_FUNCTION_4_11();

  return swift_deallocObject();
}

uint64_t sub_274506280(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2745062C8()
{
  result = qword_28094F898;
  if (!qword_28094F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F898);
  }

  return result;
}

uint64_t sub_274506370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2743FE3EC(*(v1 + 16), *(v1 + 24), v1 + 32);
  *a1 = result;
  return result;
}

uint64_t sub_2745063AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2745063EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{

  sub_2743F459C();

  return swift_deallocObject();
}

unint64_t sub_2745064DC()
{
  result = qword_28094F8F8;
  if (!qword_28094F8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F8F0);
    sub_274506594();
    sub_27440CA78(&qword_28094F908, &qword_28094F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F8F8);
  }

  return result;
}

unint64_t sub_274506594()
{
  result = qword_28094F900;
  if (!qword_28094F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F900);
  }

  return result;
}

unint64_t sub_2745065E8()
{
  result = qword_28094F918;
  if (!qword_28094F918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F8E8);
    sub_2745064DC();
    sub_274506280(&qword_28094A6C0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F918);
  }

  return result;
}

id sub_2745066D8(void *a1, char a2)
{
  if (a2)
  {
    v3 = [a1 value];

    return v3;
  }

  else
  {

    return a1;
  }
}

void sub_274506720(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  v5 = OUTLINED_FUNCTION_53_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_2746382DC();
  v9 = OUTLINED_FUNCTION_53_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v10 = *v1;
  v11 = *(v1 + 8);
  if (v11 == 1)
  {
    sub_274412734(0, &unk_28094B310);
    sub_27463BEBC();
    v12 = [v10 identity];
    sub_274637ECC();

    v13 = sub_274637EEC();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
    a1 = sub_27463BEAC();
  }

  *v2 = a1;
  *(v2 + 8) = v11;
}

void sub_274506880(void *a1@<X2>, void *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40);
  MEMORY[0x277C575F0](v8, v5);
  v6 = v8[0];
  v7 = [v8[0] state];

  *a4 = v7;
}

void sub_274506900()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_274637EEC();
  v9 = OUTLINED_FUNCTION_53_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = *v7;
  v20 = v5;
  v21 = v3;
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40);
  MEMORY[0x277C575F0](&v19);
  v14 = v19;
  v20 = v5;
  v21 = v3;
  v22 = v1;

  v15 = v1;
  v16 = [v14 valueType];
  swift_unknownObjectRetain();
  v17 = [v14 identity];
  sub_274637ECC();

  v18 = objc_allocWithZone(MEMORY[0x277D7C770]);
  v19 = sub_27450A0B4(v16, v13, v12);
  sub_27463AEBC();

  OUTLINED_FUNCTION_23();
}

void sub_274506A64(void *a1)
{
  v1 = [a1 identity];
  sub_274637ECC();
}

uint64_t sub_274506AC0(void *a1, char a2)
{
  v4 = sub_2746382DC();
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = a1;
  if ((a2 & 1) == 0)
  {
LABEL_6:
    v16 = [v11 valueType];

    if (v16 != 1 && v16 != 2)
    {
      return 0;
    }

    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v17 = qword_28094BB00;
    v18 = sub_27463B66C();
    v19 = sub_27463B66C();

    v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

    v12 = sub_27463B6AC();
    return v12;
  }

  sub_27463BEBC();
  v12 = sub_27463826C();
  v14 = v13;

  (*(v6 + 8))(v10, v4);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    v11 = [v11 value];
    goto LABEL_6;
  }

  return v12;
}

BOOL sub_274506CE0(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 value];
  }

  else
  {
    v2 = a1;
  }

  v3 = v2;
  v4 = [v2 valueType];

  return v4 == 6;
}

uint64_t sub_274506D3C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094C5E0);
  return sub_27463BF7C() & 1;
}

uint64_t sub_274506DDC(uint64_t a1, char a2)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a2 & 1);
  sub_27463BF8C();
  return sub_27463C7AC();
}

uint64_t sub_274506E74(char a1)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a1 & 1);
  return sub_27463C7AC();
}

uint64_t sub_274506EEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_27463C74C();
  sub_274506DA4(v4, v1, v2);
  return sub_27463C7AC();
}

void sub_274506F78()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v2;
  sub_2746380BC();
  OUTLINED_FUNCTION_14_11();
  v34 = v15;
  OUTLINED_FUNCTION_4_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  *(v1 + qword_280965EB8) = 0;
  *(v1 + qword_280965EC0) = v6;
  *(v1 + qword_280965EC8) = v4;
  (*(v17 + 16))(v20 - v19, v14);
  sub_27463B9CC();
  v22 = v9;
  v32 = v4;

  v23 = sub_27463B9BC();
  v24 = OUTLINED_FUNCTION_10_14();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v13;
  v24[5] = v11;
  v24[6] = v9;

  v26 = v22;
  v27 = sub_27463B9BC();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = MEMORY[0x277D85700];
  v28[4] = v13;
  v28[5] = v11;
  v28[6] = v9;
  v28[7] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v21, v29, v30, v31, &qword_28094F970);

  swift_unknownObjectRelease();
  (*(v17 + 8))(v35, v34);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_2745071D0(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F980);
  MEMORY[0x277C575F0](&v15, v2);
  v3 = v15;
  if (!v15)
  {
    goto LABEL_13;
  }

  v4 = [v15 values];

  sub_274412734(0, &qword_28094F988);
  v5 = sub_27463B81C();

  v6 = sub_274453594(v5);
  if (!v6)
  {

LABEL_13:
    v9 = MEMORY[0x277D84F90];
LABEL_14:
    *a1 = v9;
    return;
  }

  v7 = v6;
  v14 = MEMORY[0x277D84F90];
  sub_27445143C();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v14;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = *(v14 + 16);
      if (v12 >= *(v14 + 24) >> 1)
      {
        sub_27445143C();
      }

      ++v8;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v11;
      *(v13 + 40) = 0;
    }

    while (v7 != v8);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_274507370(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v37 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_274637EEC();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = *a1;
  v42[1] = a4;
  v42[2] = a5;
  v42[3] = a6;
  v21 = *(v20 + 16);
  v38 = a5;
  if (v21)
  {
    v39 = MEMORY[0x277D84F90];
    v35 = a6;
    v22 = a6;
    v34 = a4;

    sub_27463C44C();
    v23 = (v20 + 40);
    do
    {
      v24 = *(v23 - 1);
      if (*v23)
      {
        v25 = [v24 value];
      }

      else
      {
        v26 = v24;
      }

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v23 += 16;
      --v21;
    }

    while (v21);
    v27 = v38;
    v28 = v39;
    a4 = v34;
    a6 = v35;
  }

  else
  {
    v29 = a6;

    v27 = a5;
    v28 = MEMORY[0x277D84F90];
  }

  v39 = a4;
  v40 = v27;
  v41 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F980);
  MEMORY[0x277C575F0](v42);
  v30 = v42[0];
  if (v42[0])
  {
    v31 = [v42[0] identity];

    sub_274637ECC();
    v32 = *(v36 + 32);
    v32(v13, v16, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    v32(v19, v13, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_274637EDC();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_27450A21C(v13);
    }
  }

  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v39 = sub_27450A160(v28, v19, &qword_28094F988, 0x277D7C770, &selRef_initWithValues_identity_);
  sub_27463AEBC();
}

id sub_2745076E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = qword_280965F70;
  v12 = sub_2746380BC();
  OUTLINED_FUNCTION_4_0();
  v14 = v13;
  (*(v15 + 16))(&v5[v11], a1, v12);
  v16 = &v5[qword_280954408];
  *v16 = a2;
  *(v16 + 1) = a3;
  *(v16 + 2) = a4;
  v19.receiver = v5;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v12);
  return v17;
}

void sub_274507808()
{
  OUTLINED_FUNCTION_24();
  v3 = v0;
  v5 = v4;
  v29 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_4_21(v9);
  OUTLINED_FUNCTION_14_11();
  v30 = v10;
  OUTLINED_FUNCTION_4_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  *(v3 + qword_280965EB8) = 1;
  *(v3 + qword_280965EC0) = v5;
  v17 = OUTLINED_FUNCTION_2_21(qword_280965EC8);
  v18(v17);
  sub_27463B9CC();
  v19 = v8;

  v20 = sub_27463B9BC();
  v21 = OUTLINED_FUNCTION_10_14();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v1;
  v21[5] = v2;
  v21[6] = v8;

  v23 = v19;
  v24 = sub_27463B9BC();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = MEMORY[0x277D85700];
  v25[4] = v1;
  v25[5] = v2;
  v25[6] = v8;
  v25[7] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v16, v26, v27, v28, &qword_28094F970);

  (*(v12 + 8))(v31, v30);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_274507A24(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F978);
  MEMORY[0x277C575F0](&v15, v2);
  v3 = v15;
  if (!v15)
  {
    goto LABEL_13;
  }

  v4 = [v15 keyValuePairs];

  sub_274412734(0, &unk_28094B310);
  v5 = sub_27463B81C();

  v6 = sub_274453594(v5);
  if (!v6)
  {

LABEL_13:
    v9 = MEMORY[0x277D84F90];
LABEL_14:
    *a1 = v9;
    return;
  }

  v7 = v6;
  v14 = MEMORY[0x277D84F90];
  sub_27445143C();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v14;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = *(v14 + 16);
      if (v12 >= *(v14 + 24) >> 1)
      {
        sub_27445143C();
      }

      ++v8;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v11;
      *(v13 + 40) = 1;
    }

    while (v7 != v8);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_274507BC8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v39 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_274637EEC();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v38 = &v35 - v17;
  v18 = *a1;
  v45[1] = a4;
  v45[2] = a5;
  v45[3] = a6;
  v19 = MEMORY[0x277D84F90];
  v41 = a4;
  v42 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);

  v40 = a5;

  result = a6;
  v37 = result;
  v22 = 0;
LABEL_2:
  v23 = (v18 + 40 + 16 * v22);
  while (v20 != v22)
  {
    if (v22 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    v24 = v23 + 16;
    ++v22;
    v25 = *v23;
    v23 += 16;
    if (v25 == 1)
    {
      v26 = *(v24 - 3);
      MEMORY[0x277C57F30]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      result = sub_27463B8AC();
      v19 = v42;
      goto LABEL_2;
    }
  }

  v42 = v41;
  v43 = v40;
  v44 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F978);
  MEMORY[0x277C575F0](v45);
  v27 = v45[0];
  if (v45[0])
  {
    v28 = [v45[0] identity];

    v29 = v35;
    sub_274637ECC();

    v30 = *(v36 + 32);
    v30(v13, v29, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    v31 = v38;
    v30(v38, v13, v14);
    v32 = v37;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    v31 = v38;
    sub_274637EDC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
    v32 = v37;
    if (EnumTagSinglePayload != 1)
    {
      sub_27450A21C(v13);
    }
  }

  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v42 = sub_27450A160(v19, v31, &unk_28094B310, 0x277D7C368, &selRef_initWithKeyValuePairs_identity_);
  sub_27463AEBC();
}

void sub_274507F40()
{
  OUTLINED_FUNCTION_24();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_21(v8);
  OUTLINED_FUNCTION_14_11();
  v26 = v9;
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  *(v3 + qword_280965EB8) = 0;
  *(v3 + qword_280965EC0) = v5;
  v16 = OUTLINED_FUNCTION_2_21(qword_280965EC8);
  v17(v16);
  sub_27463B9CC();
  v18 = v7;

  sub_27463B9BC();
  v19 = OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_16_11(v19, MEMORY[0x277D85700]);

  v20 = v18;
  v21 = sub_27463B9BC();
  v22 = OUTLINED_FUNCTION_10_14();
  v22[2] = v21;
  v22[3] = MEMORY[0x277D85700];
  v22[4] = v1;
  v22[5] = v2;
  v22[6] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v15, v23, v24, v25, &qword_28094F970);

  (*(v11 + 8))(v27, v26);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_274508134(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9B8);
  MEMORY[0x277C575F0](&v21, v5);
  v6 = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v7 = [v21 values];

  sub_274412734(0, &qword_28094F988);
  v8 = sub_27463B81C();

  v9 = sub_274453594(v8);
  if (!v9)
  {

LABEL_13:
    v12 = MEMORY[0x277D84F90];
LABEL_14:
    *a4 = v12;
    return;
  }

  v10 = v9;
  v18 = MEMORY[0x277D84F90];
  sub_27445143C();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v18;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C58B20](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = *(v18 + 16);
      if (v15 >= *(v18 + 24) >> 1)
      {
        sub_27445143C();
      }

      ++v11;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v14;
      *(v16 + 40) = 0;
    }

    while (v10 != v11);

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2745082D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    v8 = a6;

    sub_27463C44C();
    v9 = (v6 + 40);
    do
    {
      v10 = *(v9 - 1);
      if (*v9)
      {
        v11 = [v10 value];
      }

      else
      {
        v12 = v10;
      }

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v9 += 16;
      --v7;
    }

    while (v7);
    v13 = v15;
  }

  else
  {
    v8 = a6;

    v13 = MEMORY[0x277D84F90];
  }

  sub_274412734(0, &qword_28094F9B0);
  sub_2745089AC(v13, &qword_28094F988, 0x277D7C770, &selRef_initWithValues_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9B8);
  sub_27463AEBC();
}

void sub_274508478()
{
  OUTLINED_FUNCTION_24();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_21(v8);
  OUTLINED_FUNCTION_14_11();
  v26 = v9;
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  *(v3 + qword_280965EB8) = 1;
  *(v3 + qword_280965EC0) = v5;
  v16 = OUTLINED_FUNCTION_2_21(qword_280965EC8);
  v17(v16);
  sub_27463B9CC();
  v18 = v7;

  sub_27463B9BC();
  v19 = OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_16_11(v19, MEMORY[0x277D85700]);

  v20 = v18;
  v21 = sub_27463B9BC();
  v22 = OUTLINED_FUNCTION_10_14();
  v22[2] = v21;
  v22[3] = MEMORY[0x277D85700];
  v22[4] = v1;
  v22[5] = v2;
  v22[6] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v15, v23, v24, v25, &qword_28094F970);

  (*(v11 + 8))(v27, v26);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_274508670(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9C8);
  MEMORY[0x277C575F0](&v21, v5);
  v6 = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v7 = [v21 keyValuePairs];

  sub_274412734(0, &unk_28094B310);
  v8 = sub_27463B81C();

  v9 = sub_274453594(v8);
  if (!v9)
  {

LABEL_13:
    v12 = MEMORY[0x277D84F90];
LABEL_14:
    *a4 = v12;
    return;
  }

  v10 = v9;
  v18 = MEMORY[0x277D84F90];
  sub_27445143C();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v18;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C58B20](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = *(v18 + 16);
      if (v15 >= *(v18 + 24) >> 1)
      {
        sub_27445143C();
      }

      ++v11;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v14;
      *(v16 + 40) = 1;
    }

    while (v10 != v11);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_274508814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  v8 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v9 = *(*a1 + 16);

  result = a6;
  v11 = result;
  v12 = 0;
LABEL_2:
  v13 = (v7 + 40 + 16 * v12);
  while (1)
  {
    if (v9 == v12)
    {
      sub_274412734(0, &qword_28094F9C0);
      sub_2745089AC(v8, &unk_28094B310, 0x277D7C368, &selRef_initWithKeyValuePairs_);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9C8);
      sub_27463AEBC();
    }

    if (v12 >= *(v7 + 16))
    {
      break;
    }

    v14 = v13 + 16;
    ++v12;
    v15 = *v13;
    v13 += 16;
    if (v15 == 1)
    {
      v16 = *(v14 - 3);
      MEMORY[0x277C57F30]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      result = sub_27463B8AC();
      v8 = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_2745089AC(uint64_t a1, unint64_t *a2, uint64_t a3, SEL *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_274412734(0, a2);
  v7 = sub_27463B7FC();

  v8 = [v6 *a4];

  return v8;
}

uint64_t sub_274508A3C()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = sub_27463B9CC();
  v1[5] = sub_27463B9BC();
  v4 = sub_27463B96C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_274508AD4, v4, v3);
}

uint64_t sub_274508AD4()
{
  v1 = *(v0[3] + qword_280965EC8);
  v0[8] = v1;
  if (v1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = v0[2];
    v3 = v1;
    v4 = sub_27463B9BC();
    v0[9] = v4;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_274508C88;
    v7 = MEMORY[0x277D85700];
    v8 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 13, v4, v7, 0x612865766F6D6572, 0xEB00000000293A74, sub_27450A48C, v5, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_3_25(v9);

    return sub_27450945C(v10);
  }
}

uint64_t sub_274508C88()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274508DE8, v3, v2);
}

uint64_t sub_274508DE8()
{
  OUTLINED_FUNCTION_79();

  if (*(v0 + 104))
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_3_25(v1);

    return sub_27450945C(v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_274508EB4()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  *(*v0 + 105) = v2;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274508FD8, v4, v3);
}

uint64_t sub_274508FD8()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 105);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_274509038(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = *(v6 + 16);
  v12(&v28 - v10, a1, v5, v9);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v12)(v32, v11, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v33 = v6;
  v34 = v5;
  v15 = *(v6 + 32);
  v31 = v14;
  v15(v14 + v13, v11, v5);
  v29 = a2;
  v16 = [a2 eventObservers];
  v17 = [v16 allObjects];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D8);
  v18 = sub_27463B81C();

  result = sub_274453594(v18);
  if (result)
  {
    v20 = result;
    v21 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x277C58B20](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        result = swift_unknownObjectRetain();
      }

      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      aBlock[6] = &unk_2883EEE98;
      v23 = swift_dynamicCastObjCProtocolConditional();
      if (v23)
      {
        v24 = v23;
        if ([v23 respondsToSelector_])
        {
          break;
        }
      }

      result = swift_unknownObjectRelease();
      ++v21;
      if (v22 == v20)
      {
        goto LABEL_11;
      }
    }

    if ([v24 respondsToSelector_])
    {
      aBlock[4] = sub_27450A494;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2745AA044;
      aBlock[3] = &block_descriptor_21;
      v27 = _Block_copy(aBlock);

      [v24 &selRef:v29 setExclusionRects:{v30, v27} + 5];
      _Block_release(v27);

      swift_unknownObjectRelease();
      (*(v33 + 8))(v32, v34);
    }

    else
    {

      swift_unknownObjectRelease();
      return (*(v33 + 8))(v32, v34);
    }
  }

  else
  {
LABEL_11:

    LOBYTE(aBlock[0]) = 1;
    v25 = v34;
    v26 = v32;
    sub_27463B98C();

    return (*(v33 + 8))(v26, v25);
  }
}

uint64_t sub_27450945C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745094F4, v4, v3);
}

void sub_2745094F4()
{
  v1 = *(v0 + 16);

  v2 = *(sub_2745420FC() + 16);

  v4 = v1 >= 0 && v2 > v1;
  if (v4)
  {
    v5 = sub_2745420FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_27453AD1C();
      v5 = v12;
    }

    v6 = *(v0 + 16);
    v7 = *(v5 + 16);
    if (v7 <= v6)
    {
      __break(1u);
      return;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v6;
    v10 = *(v9 + 32);
    sub_274451080((v9 + 48), v7 - 1 - v6, (v9 + 32));
    *(v5 + 16) = v8;

    sub_274542164();
  }

  v11 = *(v0 + 8);

  v11(v4);
}

void sub_2745095F0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2746380BC();
  v5 = OUTLINED_FUNCTION_53_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v6 = *(sub_2745420FC() + 16);

  if ((a1 & 0x8000000000000000) == 0 && v6 > a1)
  {
    v7 = sub_2745420FC();
    if (*(v7 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      v8 = v7 + 16 * a1;
      v9 = *(v8 + 40);
      v10 = *(v8 + 32);

      if (v9)
      {
        v11 = [v10 value];
      }

      else
      {
        v11 = v10;
      }

      v12 = v11;
      v13 = [v11 valueType];

      if (v13 == 1)
      {
        sub_27463809C();
        sub_27463B9CC();
        v22 = v2;
        v23 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v24 = swift_allocObject();
        v25 = MEMORY[0x277D85700];
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = a1;
        v24[5] = v22;
        v26 = v22;
        v27 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = v25;
        v28[4] = a1;
        v28[5] = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9A0);
        sub_27463AF0C();
        v29 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent());

        OUTLINED_FUNCTION_5_23();
        sub_274508478();
      }

      else if (v13 == 2)
      {
        sub_27463809C();
        sub_27463B9CC();
        v14 = v2;
        v15 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v16 = swift_allocObject();
        v17 = MEMORY[0x277D85700];
        v16[2] = v15;
        v16[3] = v17;
        v16[4] = a1;
        v16[5] = v14;
        v18 = v14;
        v19 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v20 = swift_allocObject();
        v20[2] = v19;
        v20[3] = v17;
        v20[4] = a1;
        v20[5] = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9A8);
        sub_27463AF0C();
        v21 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent());

        OUTLINED_FUNCTION_5_23();
        sub_274507F40();
      }
    }
  }
}