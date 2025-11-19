void sub_274509934(unint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_2745420FC();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v4 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = v4 + 16 * a1;
  v6 = *(v5 + 40);
  v7 = *(v5 + 32);

  if (v6 == 1)
  {
    v8 = [v7 value];

    v7 = v8;
  }

  v9 = [v7 state];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      *a2 = v10;
      return;
    }

    swift_unknownObjectRelease();
  }

  *a2 = 0;
}

void sub_274509A28()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_274637EEC();
  v7 = OUTLINED_FUNCTION_53_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = *v5;
  if (!*v5)
  {
    v21 = sub_2745420FC();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v12 = v11;
  v13 = sub_2745420FC();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v13 + 16) > v3)
  {
    v14 = v13 + 16 * v3;
    v15 = *(v14 + 40);
    v16 = *(v14 + 32);

    if (v15 == 1)
    {
      v17 = [v16 value];

      v16 = v17;
    }

    v18 = [v16 identity];

    sub_274637ECC();
    v19 = objc_allocWithZone(MEMORY[0x277D7C770]);
    v12 = v12;
    v1 = sub_27450A0B4(v1, v11, v10);
    v20 = sub_2745420FC();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_15:
  sub_27453AD1C();
  v20 = v27;
LABEL_7:
  if (*(v20 + 16) > v3)
  {
    sub_274506720(v1);
    sub_274542164();

LABEL_12:
    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
LABEL_17:
  sub_27453AD1C();
  v21 = v28;
LABEL_10:
  v22 = *(v21 + 16);
  if (v22 > v3)
  {
    v23 = v22 - 1;
    v24 = v22 - 1 - v3;
    v25 = v21 + 16 * v3;
    v26 = *(v25 + 32);
    sub_274451080((v25 + 48), v24, (v25 + 32));
    *(v21 + 16) = v23;

    sub_274542164();
    goto LABEL_12;
  }

  __break(1u);
}

void sub_274509C34()
{

  v1 = *(v0 + qword_280965EC8);
}

id sub_274509C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PropertyListOutlineContent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274509CAC(uint64_t a1)
{

  v2 = *(a1 + qword_280965EC8);
}

uint64_t type metadata accessor for PropertyListOutlineContent()
{
  result = qword_28094F928;
  if (!qword_28094F928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PropertyListOutlineContent.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_274509EA4()
{
  result = qword_28094F940;
  if (!qword_28094F940)
  {
    sub_274637EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F940);
  }

  return result;
}

unint64_t sub_274509F00()
{
  result = qword_28094F948;
  if (!qword_28094F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F948);
  }

  return result;
}

unint64_t sub_274509F54(uint64_t a1)
{
  *(a1 + 8) = sub_274509F84();
  result = sub_274509FD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_274509F84()
{
  result = qword_28094F950;
  if (!qword_28094F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F950);
  }

  return result;
}

unint64_t sub_274509FD8()
{
  result = qword_28094F958;
  if (!qword_28094F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F958);
  }

  return result;
}

unint64_t sub_27450A030()
{
  result = qword_28094F960;
  if (!qword_28094F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F960);
  }

  return result;
}

id sub_27450A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_274637EAC();
  v9 = [v4 initWithType:a1 state:a2 identity:v8];
  swift_unknownObjectRelease();

  v10 = sub_274637EEC();
  (*(*(v10 - 8) + 8))(a3, v10);
  return v9;
}

id sub_27450A160(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v5;
  sub_274412734(0, a3);
  v9 = sub_27463B7FC();

  v10 = sub_274637EAC();
  v11 = [v7 *a5];

  sub_274637EEC();
  OUTLINED_FUNCTION_4_2();
  (*(v12 + 8))(a2);
  return v11;
}

uint64_t sub_27450A21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_27Tm_1()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_27450A494()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D0);
  OUTLINED_FUNCTION_53_0(v0);

  return sub_274509410();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1)
{
  *(v1 - 112) = a1;

  return sub_2746380BC();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_11@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = v5;
  a1[3] = a2;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
}

uint64_t WFArrayParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_27450A7C0();

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_27450AD00;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5F8));
  swift_retain_n();
  sub_27444A62C(v1);
  sub_27440CA78(&qword_28094FA50, &qword_28094B5F8);
  sub_27463950C();
  swift_getKeyPath();
  sub_27450AD08();
  return sub_27463AE9C();
}

unint64_t sub_27450A7C0()
{
  result = qword_28094B550;
  if (!qword_28094B550)
  {
    type metadata accessor for ParameterStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B550);
  }

  return result;
}

uint64_t sub_27450A81C@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x49uLL);
  memcpy(v11, v1, sizeof(v11));
  sub_27450A940();
  v4 = v3;
  v5 = sub_274506070(*(__dst[1] + qword_28094A100));
  if (v5)
  {
    sub_27450423C(v5);
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = swift_allocObject();
  memcpy((v8 + 16), __dst, 0x49uLL);
  *a1 = v4;
  *(a1 + 8) = sub_274446ACC;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = v7;
  *(a1 + 56) = sub_27450A604;
  *(a1 + 64) = 0;
  *(a1 + 72) = sub_27450AE2C;
  *(a1 + 80) = v8;
  return sub_27450AE38(__dst, v10);
}

void sub_27450A940()
{
  v1 = sub_2746380BC();
  MEMORY[0x28223BE20](v1 - 8);
  v18 = sub_274639ABC();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 32);
  v23[0] = *(v0 + 16);
  v23[1] = v6;
  v23[2] = *(v0 + 48);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  sub_27450AE70(v23, v22);
  v9 = sub_2745054D0();
  v20 = v10;
  v21 = v9;
  v19 = v11;
  sub_27450AEE0(v23);
  v12 = qword_28094A100;
  [*(v5 + qword_28094A100) stateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_28094FA70);
  swift_dynamicCastMetatypeUnconditional();
  v13 = sub_274506070(*(v5 + v12));
  if (v13)
  {
    sub_27450423C(v13);
  }

  v14 = *(v5 + v12);
  if (v8)
  {
    sub_27450AF48(v7, 1);
  }

  else
  {
    sub_27450AF48(v7, 0);
    sub_27463BC0C();
    v15 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v7, 0);
    (*(v2 + 8))(v4, v18);
  }

  sub_2746380AC();
  v16 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent());
  sub_274506F78();
}

__n128 sub_27450ABEC@<Q0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
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

unint64_t sub_27450AD08()
{
  result = qword_28094FA58;
  if (!qword_28094FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FA58);
  }

  return result;
}

uint64_t sub_27450AD6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_27450ADAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27450AE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27450AEE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27450AF48(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

id sub_27450AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v35 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for ChooseFromMenuItemDetailView();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v17 = (v16 - v15);
  v18 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  sub_27445EAD4(v12, v9, &unk_280953870);
  sub_27463ACDC();
  v19 = v33;
  sub_27440CB1C(v12, &unk_280953870);
  v20 = v13[10];
  *(v17 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8);
  swift_storeEnumTagMultiPayload();
  *v17 = a1;
  v17[1] = a2;
  v21 = v34;
  v17[2] = v19;
  v17[3] = v21;
  v36 = a1;
  v37 = a2;
  v38 = v19;
  v34 = v19;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90);
  MEMORY[0x277C575F0](&v39, v22);
  v23 = v39;
  if (v39)
  {
    v24 = [v39 synonyms];

    sub_274412734(0, &qword_28094FA98);
    v25 = sub_27463B81C();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v17[4] = v25;
  v17[5] = 0;
  OUTLINED_FUNCTION_68_0();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = v19;
  v27 = v17 + v13[8];
  *v27 = sub_274511A60;
  *(v27 + 1) = v26;
  v27[16] = 0;
  OUTLINED_FUNCTION_68_0();
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = v19;
  v29 = v17 + v13[9];
  *v29 = sub_2745103E8;
  *(v29 + 1) = v28;
  v29[16] = 0;
  sub_27451041C(v17, v35);

  v30 = v34;

  return v30;
}

void sub_27450B23C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a1;
  v36 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  OUTLINED_FUNCTION_53_0(v12);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_68_0();
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v42 = 0;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v24 = a6;
  v37 = a3;

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90);
  MEMORY[0x277C575F0](&v41, v25);
  v26 = v41;
  if (v41)
  {
    sub_27463BEDC();

    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    (*(v18 + 32))(v22, v15, v16);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_27440CB1C(v15, &unk_2809530C0);
    }
  }

  v27 = [objc_opt_self() preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  swift_allocObject();
  v28 = sub_2746388DC();
  v29 = [objc_opt_self() secondaryLabelColor];
  sub_2746389AC();
  LOBYTE(v41) = 0;
  v30 = v37;
  v38 = v37;

  v31 = sub_2745FEC80();

  v32 = v38;
  v33 = v42;
  v34 = v41;
  *a7 = v35;
  *(a7 + 8) = v36;
  *(a7 + 16) = v30;
  *(a7 + 24) = v32;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = sub_27450F4D4;
  *(a7 + 64) = v23;
  *(a7 + 72) = v33;
  *(a7 + 80) = sub_27450F508;
  *(a7 + 88) = v28;
  *(a7 + 96) = v34;
}

uint64_t sub_27450B55C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_274638C1C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v38 = sub_274639C6C();
  v42 = 0;
  sub_27450B864(v2, v40);
  memcpy(v45, v40, sizeof(v45));
  memcpy(v46, v40, 0x140uLL);
  sub_27445EAD4(v45, v39, &qword_28094FAE0);
  sub_27440CB1C(v46, &qword_28094FAE0);
  memcpy(&v41[7], v45, 0x140uLL);
  v36 = v42;
  v37 = sub_27463A33C();
  v11 = *MEMORY[0x277D79BD8];
  v12 = *(v6 + 104);
  v12(v10, v11, v4);
  sub_274638C0C();
  v13 = *(v6 + 8);
  v13(v10, v4);
  sub_2746390AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v43 = 0;
  v22 = sub_27463A34C();
  v12(v10, v11, v4);
  sub_274638C0C();
  v13(v10, v4);
  sub_2746390AC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v44 = 0;
  v40[0] = *(v35 + 32);
  *&v40[1] = *(v35 + 48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90);
  MEMORY[0x277C575F0](v39, v31);
  v32 = v39[0];
  v33 = swift_allocObject();
  memcpy((v33 + 16), v35, 0x61uLL);
  *a1 = v38;
  *(a1 + 8) = 0xC010000000000000;
  *(a1 + 16) = v36;
  memcpy((a1 + 17), v41, 0x147uLL);
  *(a1 + 344) = v37;
  *(a1 + 352) = v15;
  *(a1 + 360) = v17;
  *(a1 + 368) = v19;
  *(a1 + 376) = v21;
  *(a1 + 384) = 0;
  *(a1 + 392) = v22;
  *(a1 + 400) = v24;
  *(a1 + 408) = v26;
  *(a1 + 416) = v28;
  *(a1 + 424) = v30;
  *(a1 + 432) = 0;
  *(a1 + 440) = v32;
  *(a1 + 448) = sub_2745108E0;
  *(a1 + 456) = v33;
  return sub_2745108E8(v35, v40);
}

uint64_t sub_27450B864@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  *&v36 = sub_274638C1C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v34[1] = v6;
  v43 = sub_27463920C();
  v54 = *a1;
  v53 = a1[2];
  v41 = swift_allocObject();
  memcpy((v41 + 16), a1, 0x61uLL);
  v7 = *MEMORY[0x277D7A628];
  v8 = *MEMORY[0x277D7A5C0];

  sub_27445EAD4(&v53, v55, &unk_280953A00);
  sub_27448E448(&v54, v55);
  sub_2745108E8(a1, v55);
  v9 = type metadata accessor for WorkflowEditorOptions(0);
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v10 = v7;
  *&v40 = v8;
  v34[2] = v9;
  v11 = sub_27463979C();
  v38 = v12;
  v39 = v11;
  v56 = v54;
  v37 = v53;
  v13 = v36;
  (*(v3 + 104))(v5, *MEMORY[0x277D79BD8], v36);
  LOBYTE(v8) = sub_274638C0C();
  (*(v3 + 8))(v5, v13);
  if (v8)
  {
    v14 = sub_27463920C();
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v15 = qword_28094BB00;
    v16 = sub_27463B66C();
    v17 = sub_27463B66C();

    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    v19 = sub_27463B6AC();
    v21 = v20;

    v22 = swift_allocObject();
    memcpy((v22 + 16), a1, 0x61uLL);
    sub_2745108E8(a1, v55);
    v23 = v10;
    v24 = v40;
    v25 = v40;
    v26 = sub_27463979C();
    *&v48[0] = v14;
    BYTE8(v48[0]) = 2;
    v48[1] = 0uLL;
    *&v48[2] = v19;
    *(&v48[2] + 1) = v21;
    LOWORD(v48[3]) = 256;
    BYTE2(v48[3]) = 0;
    *(&v48[3] + 1) = 0;
    LOBYTE(v48[4]) = 0;
    *(&v48[4] + 1) = v53;
    v48[5] = xmmword_274653F30;
    *&v48[6] = sub_274510A50;
    *(&v48[6] + 1) = v22;
    *&v48[7] = v23;
    *(&v48[7] + 1) = v25;
    v48[8] = xmmword_27464F170;
    *&v48[9] = v26;
    *(&v48[9] + 1) = v27;
    CGSizeMake(v48);
    memcpy(v55, v48, sizeof(v55));
  }

  else
  {
    sub_27440CB1C(&v53, &unk_280953A00);
    sub_274510920(v55);
    v24 = v40;
  }

  v35 = v10;
  memcpy(v47, v55, sizeof(v47));
  *&v45[0] = v43;
  BYTE8(v45[0]) = 2;
  *(v45 + 9) = *v52;
  HIDWORD(v45[0]) = *&v52[3];
  v45[1] = 0uLL;
  v45[2] = v56;
  LOWORD(v45[3]) = 256;
  BYTE2(v45[3]) = 0;
  *(&v45[3] + 3) = v50;
  BYTE7(v45[3]) = v51;
  *(&v45[3] + 1) = 0;
  LOBYTE(v45[4]) = 0;
  DWORD1(v45[4]) = *(v49 + 3);
  *(&v45[4] + 1) = v49[0];
  *(&v45[4] + 1) = v37;
  v40 = xmmword_274653F30;
  v45[5] = xmmword_274653F30;
  *&v45[6] = sub_274511A58;
  v28 = v41;
  *(&v45[6] + 1) = v41;
  *&v45[7] = v10;
  v29 = v24;
  *(&v45[7] + 1) = v24;
  v36 = xmmword_27464F170;
  v45[8] = xmmword_27464F170;
  v30 = v38;
  v31 = v39;
  *&v45[9] = v39;
  v32 = v37;
  *(&v45[9] + 1) = v38;
  memcpy(v44, v45, 0xA0uLL);
  memcpy(v46, v55, sizeof(v46));
  memcpy(&v44[160], v55, 0xA0uLL);
  memcpy(v42, v44, 0x140uLL);
  sub_274510928(v45, v48);
  sub_27445EAD4(v46, v48, &qword_28094FAE8);
  sub_27440CB1C(v47, &qword_28094FAE8);
  *&v48[0] = v43;
  BYTE8(v48[0]) = 2;
  *(v48 + 9) = *v52;
  HIDWORD(v48[0]) = *&v52[3];
  v48[1] = 0uLL;
  v48[2] = v56;
  LOWORD(v48[3]) = 256;
  BYTE2(v48[3]) = 0;
  *(&v48[3] + 3) = v50;
  BYTE7(v48[3]) = v51;
  *(&v48[3] + 1) = 0;
  LOBYTE(v48[4]) = 0;
  DWORD1(v48[4]) = *(v49 + 3);
  *(&v48[4] + 1) = v49[0];
  *(&v48[4] + 1) = v32;
  v48[5] = v40;
  *&v48[6] = sub_274511A58;
  *(&v48[6] + 1) = v28;
  *&v48[7] = v35;
  *(&v48[7] + 1) = v29;
  v48[8] = v36;
  *&v48[9] = v31;
  *(&v48[9] + 1) = v30;
  return sub_274510984(v48);
}

uint64_t sub_27450BED8()
{
  v1 = sub_2746382DC();
  MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  sub_27463896C();

  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90);
  MEMORY[0x277C575F0](&v7);
  v3 = v7;
  if (v7)
  {
    v4 = [v7 synonyms];

    sub_274412734(0, &qword_28094FA98);
    sub_27463B81C();
  }

  sub_274412734(0, &qword_280953EA0);
  sub_27463920C();
  sub_27463896C();

  v5 = sub_27463BECC();
  v8 = v10;
  v9 = v11;
  v7 = v5;
  return sub_27463AEBC();
}

uint64_t sub_27450C128(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v19 = &v19 - v5;
  v6 = sub_2746382DC();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v12 = v11;
  sub_27463920C();
  if (v11)
  {
    v13 = v19;
    sub_27463BE7C();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v6);
    v14 = v20;
    (*(v20 + 32))(v10, v13, v6);
  }

  else
  {
    v15 = v19;
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v6);
    sub_2746382CC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v6);
    v14 = v20;
    if (EnumTagSinglePayload != 1)
    {
      sub_27440CB1C(v15, &unk_2809530C0);
    }
  }

  sub_27463897C();

  sub_27463920C();
  v17 = v22;
  if (v12)
  {
    sub_27463BEDC();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v6);
    (*(v14 + 32))(v21, v17, v6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v6);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v17, 1, v6) != 1)
    {
      sub_27440CB1C(v17, &unk_2809530C0);
    }
  }

  sub_27463897C();
}

uint64_t sub_27450C4C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90);
  v20 = MEMORY[0x277C575F0](&v24, v19);
  v21 = v24;
  if (v24)
  {
    a4(v20);

    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    (*(v14 + 32))(v18, v11, v12);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_27440CB1C(v11, &unk_2809530C0);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_27450C6A8()
{
  v0 = sub_2746382DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_274637EEC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_274412734(0, &qword_28094FA98);
  sub_274637EDC();
  sub_27463828C();
  sub_27463BE6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28);
  v2 = sub_27463ACEC();
  MEMORY[0x277C57F30](v2);
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_27463B85C();
  }

  sub_27463B8AC();
  sub_27463ACFC();
}

void WFChooseFromMenuItemSynonym.id.getter()
{
  v1 = [v0 identity];
  sub_274637ECC();
}

uint64_t sub_27450C900@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for ChooseFromMenuItemDetailView();
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_27463B06C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAF0) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAF8) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  v38 = &v37 - v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB00);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  v39 = &v37 - v19;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB08);
  sub_27440CA78(&qword_28094FB10, &qword_28094FB08);
  sub_27463A48C();
  KeyPath = swift_getKeyPath();
  v21 = &v14[*(v11 + 44)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB18) + 28);
  (*(v6 + 104))(v10, *MEMORY[0x277CDF0D0], v4);
  sub_27463AF1C();
  (*(v6 + 8))(v10, v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB20);
  __swift_storeEnumTagSinglePayload(v21 + v22, 0, 1, v23);
  *v21 = KeyPath;
  sub_27463B0CC();
  sub_27463973C();
  v24 = v38;
  sub_27445EA84(v14, v38, &qword_28094FAF0);
  memcpy((v24 + *(v15 + 44)), __src, 0x70uLL);
  v25 = v37;
  v26 = *(v37 + 40);
  v48 = *(v37 + 32);
  v49 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28);
  sub_27463ACEC();
  v27 = v47;
  v28 = v41;
  sub_274449120(v25, v41);
  v29 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v30 = swift_allocObject();
  sub_27451041C(v28, v30 + v29);
  v31 = v39;
  sub_27445EA84(v24, v39, &qword_28094FAF8);
  v32 = (v31 + *(v40 + 36));
  *v32 = v27;
  v32[1] = sub_274510A7C;
  v32[2] = v30;
  v45 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A6F0);
  sub_274510AEC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100);
  OUTLINED_FUNCTION_44_0();
  v35 = sub_27440CA78(v34, &unk_28094D100);
  v48 = v33;
  v49 = v35;
  OUTLINED_FUNCTION_43_0();
  swift_getOpaqueTypeConformance2();
  sub_27463AA0C();
  return sub_27440CB1C(v31, &qword_28094FB00);
}

uint64_t sub_27450CE78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB78);
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v68 - v5;
  v6 = sub_274638C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB80);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v15);
  v75 = &v68 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB88);
  v68 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v21 = qword_28094BB00;
  v22 = sub_27463B66C();
  v23 = sub_27463B66C();

  v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

  v25 = sub_27463B6AC();
  v27 = v26;

  v80 = v25;
  v81 = v27;
  v82 = 0;
  v83 = 0;
  MEMORY[0x28223BE20](v28);
  *(&v68 - 2) = v72;
  sub_274510D7C();
  sub_274506594();
  v73 = v20;
  sub_27463AFAC();
  (*(v7 + 104))(v9, *MEMORY[0x277D79BD8], v6);
  LOBYTE(v27) = sub_274638C0C();
  (*(v7 + 8))(v9, v6);
  if (v27)
  {
    sub_27463B70C();
    v29 = sub_27463B66C();
    v30 = sub_27463B66C();

    v31 = [v21 localizedStringForKey:v29 value:v30 table:0];

    v32 = sub_27463B6AC();
    v34 = v33;

    v80 = v32;
    v81 = v34;
    v82 = 0;
    v83 = 0;
    MEMORY[0x28223BE20](v35);
    v36 = v72;
    *(&v68 - 2) = v72;
    sub_27463AFAC();
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v72;
  }

  __swift_storeEnumTagSinglePayload(v14, v37, 1, v79);
  v38 = v75;
  sub_27445EA84(v14, v75, &qword_28094FB80);
  sub_27463B70C();
  v39 = sub_27463B66C();
  v40 = sub_27463B66C();

  v41 = [v21 localizedStringForKey:v39 value:v40 table:0];

  v42 = sub_27463B6AC();
  v44 = v43;

  sub_27463B70C();
  v45 = sub_27463B66C();
  v46 = sub_27463B66C();

  v47 = [v21 localizedStringForKey:v45 value:v46 table:0];

  v48 = sub_27463B6AC();
  v50 = v49;

  v80 = v42;
  v81 = v44;
  v82 = v48;
  v83 = v50;
  MEMORY[0x28223BE20](v51);
  *(&v68 - 2) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB98);
  sub_274510DD8();
  v52 = v77;
  sub_27463AFAC();
  v53 = v68;
  v54 = *(v68 + 16);
  v55 = v74;
  v56 = v79;
  v54(v74, v73, v79);
  sub_27445EAD4(v38, v76, &qword_28094FB80);
  v58 = v70;
  v57 = v71;
  v59 = *(v70 + 16);
  v59(v78, v52, v71);
  v60 = v69;
  v54(v69, v55, v56);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBC8);
  v62 = v76;
  sub_27445EAD4(v76, &v60[*(v61 + 48)], &qword_28094FB80);
  v63 = v78;
  v59(&v60[*(v61 + 64)], v78, v57);
  v64 = *(v58 + 8);
  v64(v77, v57);
  sub_27440CB1C(v75, &qword_28094FB80);
  v65 = *(v53 + 8);
  v66 = v79;
  v65(v73, v79);
  v64(v63, v57);
  sub_27440CB1C(v62, &qword_28094FB80);
  return (v65)(v74, v66);
}

uint64_t sub_27450D6D4(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = sub_2746382DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v24[0] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  v24[1] = *a1;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v26 = *a2;
  v27 = v17;
  v28 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90);
  MEMORY[0x277C575F0](&v25);
  v20 = v25;
  if (v25)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    (*(v11 + 32))(v15, v9, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_27440CB1C(v9, &unk_2809530C0);
    }
  }

  v26 = v16;
  v27 = v17;
  v28 = v18;

  MEMORY[0x277C575F0](&v25, v19);
  v21 = v25;
  if (v25)
  {
    sub_27463BEDC();

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    (*(v11 + 32))(v24[0], v6, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
    {
      sub_27440CB1C(v6, &unk_2809530C0);
    }
  }

  sub_274412734(0, &qword_280953EA0);
  v22 = sub_27463BECC();
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v25 = v22;
  return sub_27463AEBC();
}

uint64_t sub_27450DA04(uint64_t a1)
{
  v2 = sub_274639EBC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_274639EAC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0);
  sub_27463925C();
  v7 = sub_27440CA78(&qword_28094A700, &unk_28094D100);
  MEMORY[0x277C56680](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_27450DBF0(uint64_t a1)
{
  v2 = type metadata accessor for ChooseFromMenuItemDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v5 = qword_28094BB00;
  v6 = sub_27463B66C();
  v7 = sub_27463B66C();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_27463B6AC();
  v11 = v10;

  v15[0] = v9;
  v15[1] = v11;
  sub_274449120(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_27451041C(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_274412BBC();
  return sub_27463AD7C();
}

uint64_t sub_27450DDDC(uint64_t a1)
{
  v16 = sub_274639ABC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_27463936C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChooseFromMenuItemDetailView();
  sub_27445EAD4(a1 + *(v12 + 40), v7, &qword_28094BAE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_27463935C();
  return (*(v9 + 8))(v11, v8);
}

double sub_27450E064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChooseFromMenuItemDetailView();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v6 = sub_27463920C();
  sub_27463B70C();
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
  v13 = v12;

  v14 = *(a1 + 24);
  sub_274449120(a1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v16 = swift_allocObject();
  sub_27451041C(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = *MEMORY[0x277D7A628];
  v18 = *MEMORY[0x277D7A5C0];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);

  v19 = v17;
  v20 = v18;
  v21 = sub_27463979C();
  *a2 = v6;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v14;
  *(a2 + 80) = xmmword_274653F30;
  *(a2 + 96) = sub_2745114EC;
  *(a2 + 104) = v16;
  *(a2 + 112) = v19;
  *(a2 + 120) = v20;
  result = 40.0;
  *(a2 + 128) = xmmword_27464F170;
  *(a2 + 144) = v21;
  *(a2 + 152) = v23;
  return result;
}

uint64_t sub_27450E390()
{
  v1 = sub_2746382DC();
  MEMORY[0x28223BE20](v1 - 8);
  v12[3] = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v12[2] = type metadata accessor for ChooseFromMenuItemDetailView();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v12[1] = v4;
  sub_27463920C();
  sub_27463896C();

  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v14 = *v0;
  v15 = v6;
  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90);
  MEMORY[0x277C575F0](&v13);
  v8 = v13;
  if (v13)
  {
    v9 = [v13 synonyms];

    sub_274412734(0, &qword_28094FA98);
    sub_27463B81C();
  }

  sub_274412734(0, &qword_280953EA0);
  sub_27463920C();
  sub_27463896C();

  v10 = sub_27463BECC();
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v13 = v10;
  return sub_27463AEBC();
}

double sub_27450E5EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChooseFromMenuItemDetailView();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v6 = sub_27463920C();
  sub_27463B70C();
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
  v13 = v12;

  v14 = *(a1 + 24);
  sub_274449120(a1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v16 = swift_allocObject();
  sub_27451041C(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = *MEMORY[0x277D7A628];
  v18 = *MEMORY[0x277D7A5C0];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);

  v19 = v17;
  v20 = v18;
  v21 = sub_27463979C();
  *a2 = v6;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v14;
  *(a2 + 80) = xmmword_274653F30;
  *(a2 + 96) = sub_274511A5C;
  *(a2 + 104) = v16;
  *(a2 + 112) = v19;
  *(a2 + 120) = v20;
  result = 40.0;
  *(a2 + 128) = xmmword_27464F170;
  *(a2 + 144) = v21;
  *(a2 + 152) = v23;
  return result;
}

uint64_t sub_27450E918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ChooseFromMenuItemDetailView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0);
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  sub_27450EC74(&v26 - v16);
  sub_274449120(a1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_27451041C(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_27463AD5C();
  v27 = v14;
  sub_27445EAD4(v17, v14, &qword_28094FBD0);
  v20 = *(v6 + 16);
  v21 = v28;
  v20(v8, v11, v28);
  v22 = v29;
  sub_27445EAD4(v14, v29, &qword_28094FBD0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBD8);
  v20((v22 + *(v23 + 48)), v8, v21);
  v24 = *(v6 + 8);
  v24(v11, v21);
  sub_27440CB1C(v17, &qword_28094FBD0);
  v24(v8, v21);
  return sub_27440CB1C(v27, &qword_28094FBD0);
}

uint64_t sub_27450EC74@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for ChooseFromMenuItemDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBE0) - 8;
  MEMORY[0x28223BE20](v21);
  v6 = &v20 - v5;
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v20 = v1;
  v23 = v7;
  v24 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28);
  sub_27463AD0C();
  sub_274449120(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_27451041C(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBE8);
  sub_274637EEC();
  sub_274510FA4();
  sub_274511090();
  sub_2745110E4();
  sub_27463AF8C();
  v11 = v20;
  sub_274449120(v20, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_27451041C(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v9);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2745111D0;
  *(v13 + 24) = v12;
  v14 = &v6[*(v21 + 44)];
  *v14 = sub_274511248;
  *(v14 + 1) = v13;
  sub_274449120(v11, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_27451041C(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v9);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_274511274;
  *(v16 + 24) = v15;
  v17 = v22;
  sub_27445EAD4(v6, v22, &qword_28094FBE0);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBD0) + 36));
  *v18 = sub_2745112DC;
  v18[1] = v16;
  return sub_27440CB1C(v6, &qword_28094FBE0);
}

uint64_t sub_27450EFB8@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_27450F0D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC18);
  sub_27463AEEC();
  v4 = *(a1 + 24);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = sub_27450F510;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
}

uint64_t sub_27450F170()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAD0);
  sub_27440CA78(&qword_28094FBF8, &qword_28094FAD0);
  sub_27463B5AC();
  sub_27463ACFC();
}

uint64_t sub_27450F27C(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v10 = *(a2 + 40);
  v14 = *(a2 + 32);
  v9 = v14;
  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAD0);
  sub_27440CA78(&qword_28094FBF8, &qword_28094FAD0);
  sub_27440CA78(&qword_28094FC28, &qword_28094FAD0);
  sub_27463BB4C();
  v13[3] = v9;
  v13[4] = v10;
  v13[2] = v16;
  sub_27463ACFC();

  v11 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  type metadata accessor for ChooseFromMenuItemDetailView();
  sub_27445EAD4(v8, v5, &unk_280953870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0);
  sub_27463ACFC();
  return sub_27440CB1C(v8, &unk_280953870);
}

uint64_t sub_27450F510()
{
  v0 = sub_2746382DC();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2746382CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_27450F5AC@<X0>(uint64_t a1@<X8>)
{
  v30 = sub_274639B2C();
  v33 = 1;
  v29 = sub_274639C6C();
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v28 = sub_27463920C();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v3 = qword_28094BB00;
  v4 = sub_27463B66C();
  v5 = sub_27463B66C();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_27463B6AC();
  v26 = v8;
  v27 = v7;

  v9 = v1[2];
  v10 = v1[3];
  v34 = *v1;
  v35 = v10;
  v11 = swift_allocObject();
  v12 = *(v1 + 1);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v1 + 2);
  *(v11 + 64) = *(v1 + 48);
  v13 = *MEMORY[0x277D7A628];
  v14 = *MEMORY[0x277D7A5C0];

  sub_27445EAD4(&v35, v31, &unk_280953A00);
  sub_27445E9E4(&v34, v31);

  v25 = v9;
  sub_274506470();
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v15 = v13;
  v16 = v14;
  v17 = sub_27463979C();
  v19 = v18;
  v20 = v35;
  LOBYTE(v3) = v32;
  LOBYTE(v4) = v33;
  v21 = swift_allocObject();
  v22 = *(v1 + 1);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v1 + 2);
  *(v21 + 64) = *(v1 + 48);
  *a1 = v30;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = v29;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v28;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v27;
  *(a1 + 88) = v26;
  *(a1 + 96) = 256;
  *(a1 + 98) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = v20;
  *(a1 + 128) = xmmword_274653F30;
  *(a1 + 144) = sub_2745117F8;
  *(a1 + 152) = v11;
  *(a1 + 160) = v15;
  *(a1 + 168) = v16;
  *(a1 + 176) = xmmword_27464F170;
  *(a1 + 192) = v17;
  *(a1 + 200) = v19;
  *(a1 + 208) = sub_274511800;
  *(a1 + 216) = v21;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_27445EAD4(&v35, v31, &unk_280953A00);
  sub_27445E9E4(&v34, v31);

  v23 = v25;
  return sub_274506470();
}

uint64_t sub_27450F964(__int128 *a1)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_274637EEC();
  MEMORY[0x28223BE20](v3 - 8);
  sub_274412734(0, &qword_28094FA98);
  v11 = *a1;
  v12 = *(a1 + 2);
  v9 = *a1;
  v10 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC18);
  MEMORY[0x277C575F0](&v8);
  v4 = v8;
  v5 = [v8 identity];

  sub_274637ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  sub_27463896C();

  v6 = sub_27463BE6C();
  v9 = v11;
  v10 = v12;
  v8 = v6;
  return sub_27463AEBC();
}

uint64_t sub_27450FB78(__int128 *a1)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  v7 = *a1;
  v8 = *(a1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC18);
  MEMORY[0x277C575F0](&v6, v3);
  v4 = v6;
  sub_27463BE5C();

  sub_27463897C();
}

uint64_t sub_27450FD00@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC88);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = sub_274639C6C();
  v41 = 0;
  sub_27451001C(a1, v39);
  memcpy(v42, v39, 0x51uLL);
  memcpy(__dst, v39, 0x51uLL);
  sub_27445EAD4(v42, &v38, &qword_28094FC90);
  sub_27440CB1C(__dst, &qword_28094FC90);
  memcpy(&v40[7], v42, 0x51uLL);
  v12 = v41;
  v13 = &v6[*(v4 + 44)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC98) + 28);
  v15 = sub_27463A4EC();
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, v15);
  *v13 = swift_getKeyPath();
  *v6 = v11;
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = v12;
  memcpy(v6 + 17, v40, 0x58uLL);
  LOBYTE(v13) = sub_27463A31C();
  v16 = [objc_opt_self() mainScreen];
  [v16 bounds];

  sub_2746390AC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_27445EA84(v6, v10, &qword_28094FC80);
  v25 = &v10[*(v8 + 44)];
  *v25 = v13;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  LOBYTE(v16) = sub_27463A34C();
  sub_2746390AC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v37;
  sub_27445EA84(v10, v37, &qword_28094FC88);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FCA0);
  v36 = v34 + *(result + 36);
  *v36 = v16;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_27451001C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_274412BBC();

  v3 = sub_27463A53C();
  v5 = v4;
  v7 = v6;
  sub_27463A41C();
  sub_27463A3FC();
  sub_27463A42C();

  v8 = sub_27463A50C();
  v10 = v9;
  v12 = v11;

  sub_274412C10(v3, v5, v7 & 1);

  sub_27463ABBC();
  v13 = sub_27463A4DC();
  v42 = v14;
  v43 = v15;
  v17 = v16;

  sub_274412C10(v8, v10, v12 & 1);

  if (a1)
  {

    v18 = sub_27463A53C();
    v20 = v19;
    v22 = v21;
    sub_27463A39C();
    v23 = sub_27463A50C();
    v40 = v17;
    v25 = v24;
    v27 = v26;

    sub_274412C10(v18, v20, v22 & 1);

    sub_27463ABCC();
    v28 = sub_27463A4DC();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = v25;
    v17 = v40;
    sub_274412C10(v23, v35, v27 & 1);

    KeyPath = swift_getKeyPath();
    v37 = v32 & 1;
    a1 = v28;
    sub_27440B094(v28, v30, v37);

    v38 = 1;
  }

  else
  {
    v30 = 0;
    v37 = 0;
    v34 = 0;
    KeyPath = 0;
    v38 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = v42;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v43;
  *(a2 + 32) = a1;
  *(a2 + 40) = v30;
  *(a2 + 48) = v37;
  *(a2 + 56) = v34;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  *(a2 + 80) = v38;
  sub_27440B094(v13, v42, v17 & 1);

  sub_2744C8580(a1, v30, v37, v34);
  sub_2744A1F64(a1, v30, v37, v34);
  sub_2744A1F64(a1, v30, v37, v34);
  sub_274412C10(v13, v42, v17 & 1);
}

uint64_t type metadata accessor for ChooseFromMenuItemDetailView()
{
  result = qword_28094FAA8;
  if (!qword_28094FAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_27451041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChooseFromMenuItemDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274510488(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_2745104C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27451055C()
{
  sub_2745107A0(319, &qword_28094FAB8, &qword_28094FAC0, &unk_274655ED0, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2745106C4();
    if (v1 <= 0x3F)
    {
      sub_2745107A0(319, &qword_28094FAC8, &qword_28094FAD0, &unk_274655ED8, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2745107A0(319, &qword_28094FAD8, &unk_280953870, &unk_27464B0D0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_274510804();
          if (v4 <= 0x3F)
          {
            sub_27449859C();
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

void sub_2745106C4()
{
  if (!qword_280953280)
  {
    type metadata accessor for WFVariableType(255);
    sub_274510758(&qword_28094BAE0, type metadata accessor for WFVariableType);
    v0 = sub_27463BA9C();
    if (!v1)
    {
      atomic_store(v0, &qword_280953280);
    }
  }
}

uint64_t sub_274510758(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2745107A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_274510804()
{
  if (!qword_280953A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809532C0);
    sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
    v0 = sub_27463922C();
    if (!v1)
    {
      atomic_store(v0, &qword_280953A30);
    }
  }
}

uint64_t objectdestroy_14Tm()
{

  sub_2743F459C();
  sub_2743F459C();

  return swift_deallocObject();
}

uint64_t sub_274510A7C(void *a1)
{
  v3 = type metadata accessor for ChooseFromMenuItemDetailView();
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return sub_27450D6D4(a1, (v1 + v4));
}

unint64_t sub_274510AEC()
{
  result = qword_28094FB30;
  if (!qword_28094FB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FB00);
    sub_274510BA4();
    sub_27440CA78(&qword_28094FB60, &qword_28094FB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB30);
  }

  return result;
}

unint64_t sub_274510BA4()
{
  result = qword_28094FB38;
  if (!qword_28094FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FAF8);
    sub_274510C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB38);
  }

  return result;
}

unint64_t sub_274510C30()
{
  result = qword_28094FB40;
  if (!qword_28094FB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FAF0);
    sub_27440CA78(&qword_28094FB48, &qword_28094FB50);
    sub_27440CA78(&qword_28094FB58, &qword_28094FB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB40);
  }

  return result;
}

uint64_t sub_274510D1C()
{
  v1 = type metadata accessor for ChooseFromMenuItemDetailView();
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();

  return sub_27450DDDC(v0 + v2);
}

unint64_t sub_274510D7C()
{
  result = qword_28094FB90;
  if (!qword_28094FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB90);
  }

  return result;
}

unint64_t sub_274510DD8()
{
  result = qword_28094FBA0;
  if (!qword_28094FBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FB98);
    sub_274510E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FBA0);
  }

  return result;
}

unint64_t sub_274510E5C()
{
  result = qword_28094FBA8;
  if (!qword_28094FBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FBB0);
    sub_27440CA78(&qword_28094FBB8, &qword_28094FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FBA8);
  }

  return result;
}

uint64_t sub_274510F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ChooseFromMenuItemDetailView();
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return sub_27450F0D8(v1 + v4, a1);
}

unint64_t sub_274510FA4()
{
  result = qword_28094FBF0;
  if (!qword_28094FBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FBE8);
    sub_27440CA78(&qword_28094FBF8, &qword_28094FAD0);
    sub_27440CA78(&qword_28094FC00, &qword_28094FAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FBF0);
  }

  return result;
}

unint64_t sub_274511090()
{
  result = qword_28094FC08;
  if (!qword_28094FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC08);
  }

  return result;
}

unint64_t sub_2745110E4()
{
  result = qword_28094FC10;
  if (!qword_28094FC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC18);
    sub_274511168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC10);
  }

  return result;
}

unint64_t sub_274511168()
{
  result = qword_28094FC20;
  if (!qword_28094FC20)
  {
    sub_274412734(255, &qword_28094FA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC20);
  }

  return result;
}

uint64_t sub_2745111D0()
{
  v0 = type metadata accessor for ChooseFromMenuItemDetailView();
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();

  return sub_27450F170();
}

uint64_t sub_274511274(uint64_t a1)
{
  v3 = type metadata accessor for ChooseFromMenuItemDetailView();
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return sub_27450F27C(a1, v1 + v4);
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for ChooseFromMenuItemDetailView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 28);
  v4 = sub_274637EEC();
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0);

  sub_2743F459C();
  sub_2743F459C();
  v5 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_7();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274511504(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for ChooseFromMenuItemDetailView();
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();
  return a1();
}

unint64_t sub_274511580()
{
  result = qword_28094FC30;
  if (!qword_28094FC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC38);
    sub_274511808(&qword_28094FC40, &qword_28094FC48, &unk_274656160, sub_274511664);
    sub_27440CA78(&qword_28094FC70, &qword_28094FC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC30);
  }

  return result;
}

unint64_t sub_274511664()
{
  result = qword_28094FC50;
  if (!qword_28094FC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC58);
    sub_27440CA78(&qword_28094FC60, &qword_28094FC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC50);
  }

  return result;
}

uint64_t sub_274511754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_53_0(v10);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20]();
  v12 = &v14 - v11;
  sub_27445EAD4(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_274511808(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2745118BC()
{
  result = qword_28094FCC0;
  if (!qword_28094FCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC80);
    sub_27440CA78(&qword_28094FCC8, &qword_28094FCD0);
    sub_27440CA78(&qword_28094FCD8, &qword_28094FC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FCC0);
  }

  return result;
}

unint64_t sub_2745119A0()
{
  result = qword_28094FCE0;
  if (!qword_28094FCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FCE8);
    sub_27440CA78(&qword_28094FCF0, &qword_28094FCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FCE0);
  }

  return result;
}

uint64_t WFMediaPickerParameter.view(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD00);
  MEMORY[0x28223BE20](v1);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v8 = *(v7 + 56);
  *(v3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v9 = v3 + v1[15];
  *v9 = swift_getKeyPath();
  *(v9 + 4) = 0;
  v10 = v3 + v1[16];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v3 + v1[17];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v12 = v0;
  sub_27444A564(v12);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *v3 = sub_27463950C();
  v3[1] = v13;
  v14 = [v12 localizedLabel];
  v15 = sub_27463B6AC();
  v17 = v16;

  v18 = [v12 localizedDescription];
  if (v18)
  {
    v19 = v18;
    v20 = sub_27463B6AC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v3[2] = v15;
  v3[3] = v17;
  v3[4] = v20;
  v3[5] = v22;
  v23 = v3 + v1[12];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = v1[11];
  v25 = v12;

  sub_27444ACC8(v25, 0, 4, 0, 0, v3 + v24);
  *(v3 + v1[13]) = 0;
  sub_274511F94(v3, v6);
  sub_27440CA78(&unk_28094FD10, &unk_28094FD00);
  return sub_27463AE9C();
}

uint64_t WFMediaPickerParameter.moduleSummarySlots(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (a1 && (objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) != 0))
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = [v14 variable];
    if (v15)
    {
      v16 = v15;
      [v12 populateWith_];
    }

    else
    {
      v18 = [v2 localizedLabelForState_];
      [v12 populateWithString_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_274648560;
    *(v17 + 32) = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_274648560;
    *(v17 + 32) = v12;
  }

  return v17;
}

id sub_274511F08(void *a1)
{
  v1 = a1;
  v2 = swift_unknownObjectRetain();
  v3 = WFMediaPickerParameter.moduleSummarySlots(for:)(v2);
  swift_unknownObjectRelease();

  if (v3)
  {
    sub_274466DA4();
    v4 = sub_27463B7FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_274511F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_274512004()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_43_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_53_0(v7);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_4(v9, v15);
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_64_1(v10);
  if (v6 == 1)
  {
    sub_27451C79C(v1);
  }

  else
  {
    sub_27463B9EC();
    OUTLINED_FUNCTION_60_2();
    (*(v11 + 8))(v1, v5);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_27451C79C(v3);
    OUTLINED_FUNCTION_39();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_27463B96C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_27463B6EC();
  OUTLINED_FUNCTION_39();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_71(v13);
  swift_task_create();

  sub_27451C79C(v3);

LABEL_9:
  OUTLINED_FUNCTION_23();
}

void sub_27451222C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_43_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_53_0(v7);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_4(v9, v15);
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_64_1(v10);
  if (v6 == 1)
  {
    sub_27451C79C(v1);
  }

  else
  {
    sub_27463B9EC();
    OUTLINED_FUNCTION_60_2();
    (*(v11 + 8))(v1, v5);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_27451C79C(v3);
    OUTLINED_FUNCTION_39();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_27463B96C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_27463B6EC();
  OUTLINED_FUNCTION_39();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_71(v13);
  swift_task_create();

  sub_27451C79C(v3);

LABEL_9:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_27451245C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList;
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
    type metadata accessor for ActionList(0);
    swift_allocObject();
    v5 = v4;
    ActionList.init(workflow:)();
    v2 = v6;
    *(v3 + v1) = v6;
  }

  return v2;
}

uint64_t sub_274512524()
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_274512570()
{
  OUTLINED_FUNCTION_32_5();
  v2 = v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
  OUTLINED_FUNCTION_72_1();
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2745125D0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_27451265C;
}

void sub_27451265C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

uint64_t sub_274512710()
{
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2745127A4()
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2745127E8()
{
  OUTLINED_FUNCTION_72_1();
  swift_unknownObjectWeakAssign();
  sub_274512710();
  return swift_unknownObjectRelease();
}

void (*sub_274512844(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_auxiliaryViewPresenter;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_2745128C8;
}

void sub_2745128C8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_274512710();
  }

  free(v3);
}

id EditorHostingViewController.__allocating_init(workflow:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_19_8();
  return EditorHostingViewController.init(workflow:)(v2);
}

id EditorHostingViewController.init(workflow:)(void *a1)
{
  sub_274637EEC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v4 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0)) init];
  v6 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0)) init];
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_observers) = MEMORY[0x277D84FA0];
  v7 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_coordinateSpaceName);
  sub_274637EDC();
  v8 = sub_274637E9C();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_63_2();
  v12(v11);
  *v7 = v8;
  v7[1] = v10;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) = a1;
  v13 = objc_allocWithZone(type metadata accessor for EditorShortcutRunner(0));
  v14 = a1;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner) = sub_27452FC3C(v14);
  v19 = type metadata accessor for EditorHostingViewController();
  OUTLINED_FUNCTION_16_12();
  v17 = objc_msgSendSuper2(v15, v16, v1, v19);
  sub_274512D50();

  return v17;
}

void sub_274512B70()
{
  v1 = v0;
  v2 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0)) init];
  v11 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0)) init];
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_observers) = MEMORY[0x277D84FA0];
  v12 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_coordinateSpaceName);
  sub_274637EDC();
  v13 = sub_274637E9C();
  v15 = v14;
  (*(v4 + 8))(v8, v2);
  *v12 = v13;
  v12[1] = v15;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_27463C56C();
  __break(1u);
}

void sub_274512D50()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FE90);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF40);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  sub_27443B240();
  v10 = v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  OUTLINED_FUNCTION_72_1();
  *(v10 + 8) = &protocol witness table for EditorHostingViewController;
  swift_unknownObjectWeakAssign();
  v11 = v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate;
  OUTLINED_FUNCTION_72_1();
  *(v11 + 8) = &protocol witness table for EditorHostingViewController;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_24_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEA0);
  sub_274638F7C();
  swift_endAccess();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&qword_2809526E0, &qword_28094AF40);
  sub_274638FFC();

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_24_7();
  sub_274638EAC();
  swift_endAccess();

  v12 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner);
  OUTLINED_FUNCTION_24_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0);
  sub_274638F7C();
  swift_endAccess();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952590, &unk_28094FE90);
  sub_274638FFC();

  v13 = OUTLINED_FUNCTION_42_4();
  v14(v13);
  OUTLINED_FUNCTION_24_7();
  sub_274638EAC();
  swift_endAccess();

  v15[1] = *(v12 + OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_onLifecycleEvent);
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEC0);
  sub_274458A14(&unk_280952580, &qword_28094FEC0);
  sub_274638FFC();

  OUTLINED_FUNCTION_24_7();
  sub_274638EAC();
  swift_endAccess();

  [*(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) setEditingDelegate_];
  OUTLINED_FUNCTION_23();
}

void sub_2745131CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
    if (v1)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(v5 + 24))(v3, 0, ObjectType, v5);
LABEL_7:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v4 + 8);
        v8 = swift_getObjectType();
        (*(v7 + 24))(v3, 1, v8, v7);
        goto LABEL_7;
      }
    }
  }
}

void sub_2745132D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v2 && (v6 = Strong + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v5, 1, (v3 >> 8) & 1, ObjectType, v7, v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2745133B8(uint64_t a1)
{
  v2 = sub_274638DAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_274638C2C();
    sub_27451CF6C(v6, v7, v8);
    v11 = sub_274638D9C();
    v12 = sub_27463BC1C();
    sub_27451CFCC(v6, v7, v8);
    v13 = os_log_type_enabled(v11, v12);
    v27 = v6;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v26 = v3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v28[0] = v16;
      v28[1] = v6;
      *v15 = 136315138;
      v28[2] = v7;
      v29 = v8;
      sub_27451CF6C(v6, v7, v8);
      v17 = sub_27463B6BC();
      v25 = v2;
      v19 = sub_2745E7980(v17, v18, v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2743F0000, v11, v12, "Running lifecycle event: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x277C5A270](v16, -1, -1);
      MEMORY[0x277C5A270](v15, -1, -1);

      (*(v26 + 8))(v5, v25);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v20 = &v10[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = v8 == 2 && (v7 | v27) == 0;
      v23 = *(v20 + 1);
      ObjectType = swift_getObjectType();
      (*(v23 + 16))(v10, v22, ObjectType, v23);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_274513688()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setView_];

  v3 = [objc_opt_self() systemShortcutsUserDefaults];
  v4 = sub_27463B66C();
  v5 = [v3 BOOLForKey_];

  if (v5)
  {
    v6 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    v7 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions];
    v8 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults];
    v9 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner];
    v10 = objc_allocWithZone(type metadata accessor for UIKitEditorViewController());
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = OUTLINED_FUNCTION_24_5();
    sub_274589124(v15, v16, v13, v17);
    v19 = v18;
    *&v18[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorDelegate + 8] = &protocol witness table for EditorHostingViewController;
    swift_unknownObjectWeakAssign();
    v20 = sub_27451CC94(&unk_28094FD70, type metadata accessor for UIKitEditorViewController);
  }

  else
  {
    v19 = sub_274513AA0();
    v20 = v21;
  }

  v22 = v19;
  [v1 addChildViewController_];
  v23 = OUTLINED_FUNCTION_73_1();
  if (!v23)
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v1 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  [v25 bounds];
  OUTLINED_FUNCTION_6_6();

  v27 = OUTLINED_FUNCTION_7_16();
  [v28 v29];

  v30 = OUTLINED_FUNCTION_73_1();
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = v30;
  v32 = objc_allocWithZone(MEMORY[0x277D75348]);
  v33 = sub_27451A6B0(sub_2745139EC, 0);
  [v31 setBackgroundColor_];

  v34 = OUTLINED_FUNCTION_73_1();
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  [v34 setAutoresizingMask_];

  v36 = [v1 view];
  if (!v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37 = v36;
  v38 = OUTLINED_FUNCTION_73_1();
  if (!v38)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v39 = v38;
  [v37 addSubview_];

  [v22 didMoveToParentViewController_];
  v40 = &v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController];
  v41 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController];
  *v40 = v22;
  *(v40 + 1) = v20;
}

id sub_2745139EC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_blackColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_274513AA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v1;
  sub_27451245C();
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults);
  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner);
  v2;
  sub_27463902C();
  swift_getKeyPath();
  WFUserInterfaceFromViewController();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_24_5();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(v4));
  OUTLINED_FUNCTION_19_8();

  sub_274639CDC();
  sub_274458A14(&qword_28094FE88, &qword_28094FE80);
  return OUTLINED_FUNCTION_0_10();
}

BOOL sub_274513C7C()
{
  sub_274530580();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t (*sub_274513D24(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(a1 + 8) = (sub_27443B4C4() & 1) == 0;
  return sub_274513D80;
}

uint64_t (*sub_274513E0C(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(a1 + 8) = sub_27443A95C() & 1;
  return sub_274513E64;
}

uint64_t (*sub_274513EE8(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(a1 + 8) = sub_27443AC4C() & 1;
  return sub_274513F40;
}

uint64_t (*sub_274513FC0(uint64_t *a1))()
{
  a1[1] = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *a1 = sub_27443AF38();
  return sub_274514014;
}

void (*sub_2745140C0(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *a1 = sub_27443B680();
  return sub_274514114;
}

void sub_274514114(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_27443B694();
  }

  else
  {
    sub_27443B694();
  }
}

BOOL sub_27451417C()
{
  v0 = sub_27443B680();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

double sub_2745141BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  v2 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_27451420C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  sub_274514AFC();
  v7 = sub_27451417C();
  v8 = *MEMORY[0x277D7A840];
  if (!v7)
  {
    v8 = a1;
  }

  v9 = v8;
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_49_2(v6, v11, v12, v10);
  v13 = v1;
  v14 = v9;
  v15 = sub_27463B9BC();
  OUTLINED_FUNCTION_2_6();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  OUTLINED_FUNCTION_36_3();
  sub_274512004();
}

uint64_t sub_274514324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_27463B9CC();
  v5[20] = sub_27463B9BC();
  v7 = sub_27463B96C();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_2745143BC, v7, v6);
}

uint64_t sub_2745143BC()
{
  v1 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80);
  sub_274458A14(&qword_28094FE70, &unk_28094AF80);
  sub_274638F5C();
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v0[2] = v0;
  v0[3] = sub_27451455C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE78);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2745EA490;
  v0[13] = &block_descriptor_103;
  v0[14] = v3;
  [v2 saveWithCompletionBlock_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27451455C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 184) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_2745146EC;
  }

  else
  {
    v7 = sub_274514680;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_274514680()
{
  OUTLINED_FUNCTION_79();

  sub_27452FDF0();
  OUTLINED_FUNCTION_92();

  return v0();
}

uint64_t sub_2745146EC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 184);

  swift_willThrow();

  sub_27452FDF0();
  OUTLINED_FUNCTION_92();

  return v2();
}

uint64_t sub_27451481C()
{
  sub_27443AC60();

  return sub_27443D214();
}

uint64_t sub_2745148D0(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  return sub_274439E10();
}

void sub_274514920()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  if (v1)
  {
    OUTLINED_FUNCTION_32_5();
    swift_getObjectType();
    v2 = v1;
    sub_27463B4DC();
    sub_2746391EC();
  }
}

id sub_2745149E4(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  if (result)
  {
    return [result contentScrollViewForEdge_];
  }

  return result;
}

uint64_t sub_274514A6C()
{
  sub_274514AFC();
  v1 = v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_274514AFC()
{
  sub_27443A580();
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_27463B81C();

  v3 = sub_274453594(v2);
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C58B20](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v5 setOutput_];
  }
}

uint64_t sub_274514C24()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_0_10();
  v2 = sub_27463B81C();

  v3 = sub_274453594(v2);

  return v3;
}

uint64_t sub_274514CA4()
{
  OUTLINED_FUNCTION_79();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_27463B9CC();
  v1[5] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v5 = sub_27463B96C();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_274514D38, v5, v4);
}

uint64_t sub_274514D38()
{
  OUTLINED_FUNCTION_42_1();
  v1 = [*(v0 + 16) actionsNestedInsideAction_];
  if (v1)
  {
    v2 = v1;
    sub_274412734(0, &qword_28094E040);
    OUTLINED_FUNCTION_0_10();
    v3 = sub_27463B81C();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_274514E28;

  return sub_2745196F4();
}

uint64_t sub_274514E28()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  *(v7 + 80) = v6;

  v8 = *(v1 + 56);
  v9 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274514F68, v9, v8);
}

uint64_t sub_274514F68()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 80);

  if (v1)
  {
    if (sub_274453594(*(v0 + 80)))
    {
      sub_274518740();
    }
  }

  OUTLINED_FUNCTION_31_5();

  return v2();
}

uint64_t sub_274515094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_27463B9CC();
  v4[6] = sub_27463B9BC();
  v6 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274515130, v6, v5);
}

uint64_t sub_274515130()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_2745151F8;

  return sub_274514CA4();
}

uint64_t sub_2745151F8(char a1)
{
  OUTLINED_FUNCTION_28_2();
  v4 = v3;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  v7 = v6[7];
  v8 = v6[5];
  v9 = v6[3];
  v10 = v6[2];
  v11 = *v1;
  OUTLINED_FUNCTION_13_4();
  *v12 = v11;

  if (v7)
  {
    v13 = *(v4 + 56);
    v13[2](v13, a1 & 1);
    _Block_release(v13);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_27451537C()
{
  sub_274514C24();
  v0 = OUTLINED_FUNCTION_0_10();

  return sub_2745153B8(v0);
}

uint64_t sub_2745153B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_274648560;
  *(v2 + 32) = a1;
  v3 = sub_27451B594(a1);
  if (v3)
  {
    sub_27445BC10(v3);
  }

  OUTLINED_FUNCTION_42_4();
  sub_274515460();
}

uint64_t sub_274515460()
{
  OUTLINED_FUNCTION_32_5();
  type metadata accessor for EditorHostingViewController.InsertDestination(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  *(v3 - v2) = v0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24_5();
  sub_2745172F8();
  return sub_27451B6F4();
}

uint64_t sub_274515500(uint64_t a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = *a2;
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_49_2(v8, v11, v12, v10);
  v13 = v2;

  v14 = sub_27463B9BC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = a1;
  *(v15 + 48) = v9;
  OUTLINED_FUNCTION_36_3();
  sub_27451222C();
}

uint64_t sub_274515600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = sub_27463B9CC();
  *(v6 + 32) = sub_27463B9BC();
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_2745156C8;

  return sub_27451585C();
}

uint64_t sub_2745156C8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v4 = v3;
  *(v6 + 49) = v5;

  v8 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745157F8, v8, v7);
}

uint64_t sub_2745157F8()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 49);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_27451585C()
{
  OUTLINED_FUNCTION_79();
  v1[3] = v2;
  v1[4] = v0;
  sub_27463B9CC();
  v1[5] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v4 = sub_27463B96C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_2745158EC, v4, v3);
}

void sub_2745158EC()
{
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {

    goto LABEL_4;
  }

  v4 = *(v1 + 24);

  sub_2745E1C9C(v5);
  v7 = v6;
  *(v1 + 16) = v6;
  v8 = sub_274453594(v4);
  *(v1 + 64) = v8;
  if (!v8)
  {

LABEL_44:
    v44 = *(v1 + 32);
    v45 = OUTLINED_FUNCTION_19_8();
    v46 = sub_2745E012C(v45);
    OUTLINED_FUNCTION_69_1(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    if (v0)
    {

      OUTLINED_FUNCTION_23_7();

      return;
    }

    sub_274518740();

    sub_274516284(v7);

LABEL_4:
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_23_7();

    __asm { BRAA            X2, X16 }
  }

  v9 = 0;
  v10 = 0x277D7C000uLL;
  *(v1 + 72) = *(*(v1 + 32) + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v11 = &qword_28094E040;
  v12 = &selRef_editingContext;
  v13 = &unk_279EDC000;
  v14 = &unk_279EDC000;
  while (1)
  {
    if ((*(v1 + 24) & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x277C58B20](v9);
    }

    else
    {
      OUTLINED_FUNCTION_61_3();
      if (v17)
      {
        goto LABEL_53;
      }

      v15 = *(v16 + 8 * v9 + 32);
    }

    v0 = v15;
    *(v1 + 80) = v15;
    *(v1 + 88) = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_52;
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v9 = v18;
      v19 = v0;
      if (![v9 *(v13 + 3984)] && objc_msgSend(*(v1 + 72), v14[497], v9))
      {
        v20 = OUTLINED_FUNCTION_21();
        sub_274412734(v20, &qword_28094E040);
        OUTLINED_FUNCTION_21_2();
        v21 = v0;
        v22 = sub_27463B81C();

        v9 = v1 + 16;
        v23 = v22;
        v0 = v21;
        v14 = &unk_279EDC000;
        sub_274588310(v23);
      }
    }

    if ([*(v1 + 72) v12[258]])
    {
      break;
    }

LABEL_36:
    v33 = *(v1 + 88);
    v34 = *(v1 + 64);

    if (v33 == v34)
    {

      v7 = *(v1 + 16);
      goto LABEL_44;
    }

    v9 = *(v1 + 88);
  }

  v24 = OUTLINED_FUNCTION_59_3();
  sub_274412734(v24, v25);
  v26 = sub_27463B81C();
  *(v1 + 96) = v26;

  sub_274453594(v26);
  OUTLINED_FUNCTION_10_15();
  while (1)
  {
    if (v13 == v10)
    {

      v10 = 0x277D7C000;
      v11 = &qword_28094E040;
      v12 = &selRef_editingContext;
      v13 = 0x279EDC000;
      v14 = &unk_279EDC000;
      goto LABEL_36;
    }

    if (v11)
    {
      v27 = MEMORY[0x277C58B20](v13);
    }

    else
    {
      if (v13 >= *(v63 + 16))
      {
        goto LABEL_51;
      }

      v27 = *(v26 + 8 * v13);
    }

    v0 = v27;
    if (__OFADD__(v13++, 1))
    {
      break;
    }

    if (v62)
    {

      v29 = v0;
      v0 = sub_27463C2CC();

      if ((v0 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (!v14[2])
      {
        goto LABEL_39;
      }

      sub_27463BF6C();
      OUTLINED_FUNCTION_57_2();
      do
      {
        OUTLINED_FUNCTION_40_4();
        if ((v30 & 1) == 0)
        {

LABEL_39:

LABEL_40:
          v35 = swift_task_alloc();
          *(v1 + 112) = v35;
          *v35 = v1;
          OUTLINED_FUNCTION_12_11(v35, v36, v37, v38, v39, v40, v41, v42, v55, v56, v57, v58, v59);
          OUTLINED_FUNCTION_23_7();

          sub_2745196F4();
          return;
        }

        v31 = *&v14[6][8 * v11];
        v32 = sub_27463BF7C();
      }

      while ((v32 & 1) == 0);

      v11 = v57;
      v10 = v58;
      v26 = v56;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_274515D30()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  *(v7 + 120) = v6;

  v8 = *(v1 + 56);
  v9 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274515E70, v9, v8);
}

void sub_274515E70()
{
  v56 = v1;
  v2 = *(v1 + 120);
  if (!v2)
  {
    v31 = *(v1 + 80);

    goto LABEL_37;
  }

  sub_274522144(v55, *(v1 + 80));

  sub_274588310(v2);
  v3 = 0x277D7C000uLL;
  v4 = &qword_28094E040;
  v5 = &selRef_editingContext;
  v6 = &unk_279EDC000;
  for (i = &unk_279EDC000; ; i = 0x279EDC000)
  {
    do
    {
      v8 = *(v1 + 88);
      v9 = *(v1 + 64);

      if (v8 == v9)
      {

        v34 = *(v1 + 16);
        v35 = *(v1 + 32);
        v36 = OUTLINED_FUNCTION_19_8();
        v37 = sub_2745E012C(v36);
        OUTLINED_FUNCTION_69_1(v37, v38, v39, v40, v41, v42, v43, v44, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0]);
        if (v0)
        {

          OUTLINED_FUNCTION_23_7();

          return;
        }

        sub_274518740();

        sub_274516284(v34);

LABEL_37:
        OUTLINED_FUNCTION_31_5();
        OUTLINED_FUNCTION_23_7();

        __asm { BRAA            X2, X16 }
      }

      v10 = *(v1 + 88);
      if ((*(v1 + 24) & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x277C58B20](*(v1 + 88));
      }

      else
      {
        OUTLINED_FUNCTION_61_3();
        if (v13)
        {
          goto LABEL_48;
        }

        v11 = *(v12 + 8 * v10 + 32);
      }

      v0 = v11;
      *(v1 + 80) = v11;
      *(v1 + 88) = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_47;
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v10 = v14;
        v15 = v0;
        if (![v10 v6[498]] && objc_msgSend(*(v1 + 72), *(i + 3976), v10))
        {
          v16 = OUTLINED_FUNCTION_21();
          sub_274412734(v16, &qword_28094E040);
          OUTLINED_FUNCTION_21_2();
          v17 = v0;
          v18 = sub_27463B81C();

          v10 = v1 + 16;
          v19 = v18;
          v0 = v17;
          i = 0x279EDC000;
          sub_274588310(v19);
        }
      }
    }

    while (![*(v1 + 72) v5[258]]);
    v20 = OUTLINED_FUNCTION_59_3();
    sub_274412734(v20, v21);
    v22 = sub_27463B81C();
    *(v1 + 96) = v22;

    sub_274453594(v22);
    OUTLINED_FUNCTION_10_15();
LABEL_16:
    if (i != v3)
    {
      break;
    }

    v3 = 0x277D7C000;
    v4 = &qword_28094E040;
    v5 = &selRef_editingContext;
    v6 = &unk_279EDC000;
  }

  if (v4)
  {
    v23 = MEMORY[0x277C58B20](i);
  }

  else
  {
    if (i >= *(v54 + 16))
    {
      goto LABEL_46;
    }

    v23 = *(v22 + 8 * i);
  }

  v0 = v23;
  if (!__OFADD__(i++, 1))
  {
    if (v53)
    {

      v25 = v0;
      v0 = sub_27463C2CC();

      if ((v0 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!MEMORY[0x277D7C0A8])
      {
        goto LABEL_32;
      }

      sub_27463BF6C();
      OUTLINED_FUNCTION_57_2();
      do
      {
        OUTLINED_FUNCTION_40_4();
        if ((v26 & 1) == 0)
        {

LABEL_32:

LABEL_33:
          v29 = swift_task_alloc();
          *(v1 + 112) = v29;
          *v29 = v1;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_23_7();

          sub_2745196F4();
          return;
        }

        v27 = *(MEMORY[0x277D7C0C8] + 8 * v4);
        v28 = sub_27463BF7C();
      }

      while ((v28 & 1) == 0);

      v4 = v48;
      v3 = v49;
      v22 = v47;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

BOOL sub_274516284(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_27463C27C();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_2745162C4()
{
  OUTLINED_FUNCTION_32_5();
  type metadata accessor for EditorHostingViewController.MoveActionMode(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FD80) + 48);
  sub_27463BDAC();
  OUTLINED_FUNCTION_7();
  (*(v7 + 16))(v5, v1);
  *(v5 + v6) = v0;
  swift_storeEnumTagMultiPayload();
  sub_2745164A4();
  OUTLINED_FUNCTION_5_24();
  return sub_27451B6F4();
}

void sub_2745163A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_32_5();
  type metadata accessor for EditorHostingViewController.MoveActionMode(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88) + 48);
  v7 = sub_27463800C();
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 16);
  v9(v5, v1, v7);
  v9(v5 + v6, v0, v7);
  swift_storeEnumTagMultiPayload();
  sub_2745164A4();
  OUTLINED_FUNCTION_5_24();
  sub_27451B6F4();
  OUTLINED_FUNCTION_23();
}

void sub_2745164A4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = sub_274637F9C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v156 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v154 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v138 - v17;
  MEMORY[0x28223BE20](v19);
  v147 = &v138 - v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v21);
  v148 = &v138 - v22;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v23);
  v155 = (&v138 - v24);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  v149 = &v138 - v26;
  OUTLINED_FUNCTION_51_3();
  sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v150 = v28;
  v151 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v152 = (v30 - v29);
  v31 = OUTLINED_FUNCTION_51_3();
  v153 = type metadata accessor for EditorHostingViewController.MoveActionMode(v31);
  OUTLINED_FUNCTION_1();
  v144 = v32;
  MEMORY[0x28223BE20](v33);
  v146 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v138 - v36;
  v145 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v138 - v40;
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_10();
  sub_27451CB14(v3, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v143 = v41;
  if (EnumCaseMultiPayload != 1)
  {
    v48 = MEMORY[0x277D84F90];
    v49 = *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FD80) + 48)];
    v50 = OUTLINED_FUNCTION_63_2();
    v51(v50);
    v52 = sub_27463BD8C();
    v53 = sub_27463BD8C();
    v54 = sub_274453594(v53);
    v142 = v0;
    v140 = v52;
    v141 = v49;
    if (v54)
    {
      v55 = v54;
      v158 = v48;
      OUTLINED_FUNCTION_68_2(v54);
      if (v55 < 0)
      {
        goto LABEL_64;
      }

      v56 = 0;
      v57 = v158;
      v58 = *&v0[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
      do
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v59 = OUTLINED_FUNCTION_42_4();
          v60 = MEMORY[0x277C58B20](v59);
        }

        else
        {
          v60 = *(v53 + 8 * v56 + 32);
        }

        v61 = v60;
        v62 = [v58 indexOfAction_];

        v158 = v57;
        v64 = v57[2];
        v63 = v57[3];
        if (v64 >= v63 >> 1)
        {
          v65 = OUTLINED_FUNCTION_0_8(v63);
          sub_27445126C(v65, v64 + 1, 1);
          v57 = v158;
        }

        ++v56;
        v57[2] = v64 + 1;
        v57[v64 + 4] = v62;
      }

      while (v55 != v56);

      v1 = v142;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_1_21();
    sub_27451CC94(v79, v80);
    v82 = v155;
    v81 = v156;
    sub_27463C1DC();
    v83 = v57[2];
    if (v83)
    {
      v84 = v57 + 4;
      do
      {
        v85 = *v84++;
        v157 = v85;
        sub_27463C1AC();
        --v83;
      }

      while (v83);
    }

    v86 = *(v154 + 32);
    v154 += 32;
    v139 = v86;
    v86(v149, v82, v81);
    v155 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    v87 = [v155 actionTree];
    v52 = v152;
    sub_27463BDBC();

    v18 = sub_27463BD8C();
    v88 = sub_274453594(v18);
    if (v88)
    {
      v89 = v88;
      v158 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_68_2(v88);
      if (v89 < 0)
      {
        goto LABEL_65;
      }

      v90 = 0;
      v91 = v158;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v92 = MEMORY[0x277C58B20](v90, v18);
        }

        else
        {
          v92 = *(v18 + 8 * v90 + 32);
        }

        v93 = v92;
        v94 = [v155 indexOfAction_];

        v158 = v91;
        v96 = v91[2];
        v95 = v91[3];
        if (v96 >= v95 >> 1)
        {
          v97 = OUTLINED_FUNCTION_0_8(v95);
          sub_27445126C(v97, v96 + 1, 1);
          v91 = v158;
        }

        ++v90;
        v91[2] = v96 + 1;
        v91[v96 + 4] = v94;
      }

      while (v89 != v90);

      v1 = v142;
    }

    else
    {

      v91 = MEMORY[0x277D84F90];
    }

    v98 = v147;
    v99 = v156;
    sub_27463C1DC();
    v100 = v91[2];
    v18 = v140;
    if (v100)
    {
      v101 = v91 + 4;
      do
      {
        v102 = *v101++;
        v157 = v102;
        sub_27463C1AC();
        --v100;
      }

      while (v100);
    }

    (*(v150 + 8))(v152, v151);

    v103 = v148;
    v104 = v139;
    v139(v148, v98, v99);
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88) + 48);
    v106 = v143;
    v104(v143, v103, v99);
    v104((v106 + v105), v149, v99);
    swift_storeEnumTagMultiPayload();

LABEL_47:
    v117 = sub_274453594(v18);
    if (v117)
    {
      v52 = v117;
      if (v117 < 1)
      {
        goto LABEL_63;
      }

      for (i = 0; i != v52; i = i + 1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v119 = MEMORY[0x277C58B20](i, v18);
        }

        else
        {
          v119 = *(v18 + 8 * i + 32);
        }

        v120 = v119;
        [v119 snapInputParameterIfNecessary];
      }
    }

    sub_274514A6C();
    v121 = [v1 undoManager];
    if (v121)
    {
      v52 = v121;
      v122 = sub_27463B70C();
      v124 = v123;
      OUTLINED_FUNCTION_17_9();
      if (v125)
      {
        OUTLINED_FUNCTION_70_2();

        v158 = v122;
        v159 = v124;
        OUTLINED_FUNCTION_46_4();
        OUTLINED_FUNCTION_16_12();
        v158 = OUTLINED_FUNCTION_45_4();
        v159 = v126;
        OUTLINED_FUNCTION_29_6();
        if (qword_2809492C0 != -1)
        {
          goto LABEL_66;
        }

        goto LABEL_57;
      }

LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
      v131 = OUTLINED_FUNCTION_48_3();
      *(v131 + 16) = xmmword_274648570;
      v132 = sub_274453594(v18);

      v133 = MEMORY[0x277D83C10];
      *(v131 + 56) = MEMORY[0x277D83B88];
      *(v131 + 64) = v133;
      *(v131 + 32) = v132;
      OUTLINED_FUNCTION_42_4();
      sub_27463B67C();

      v134 = sub_27463B66C();

      [v52 setActionName_];

      OUTLINED_FUNCTION_15_10();
      v135 = v146;
      sub_27451CB14(v143, v146);
      v136 = (*(v144 + 80) + 16) & ~*(v144 + 80);
      v137 = swift_allocObject();
      sub_27451C630(v135, v137 + v136);
      type metadata accessor for EditorHostingViewController();
      sub_27463BBDC();

      OUTLINED_FUNCTION_5_24();
      sub_27451B6F4();
    }

    else
    {
      sub_27451B6F4();
    }

    goto LABEL_60;
  }

  v151 = v6;
  v152 = v4;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88);
  v43 = v155[12];
  v44 = v154;
  v45 = *(v154 + 32);
  v46 = v156;
  v45(v18, v37, v156);
  v45(v15, &v37[v43], v46);
  if (MEMORY[0x277C54700](v18, v15))
  {
    v47 = *(v44 + 8);
    v47(v15, v46);
    v47(v18, v46);
LABEL_60:
    OUTLINED_FUNCTION_23();
    return;
  }

  OUTLINED_FUNCTION_1_21();
  sub_27451CC94(v66, v67);
  v68 = sub_27463BADC();
  if (!v68)
  {
    v107 = MEMORY[0x277D84F90];
LABEL_46:
    v108 = v154;
    v109 = v155[12];
    v110 = *(v154 + 16);
    v111 = v143;
    v112 = v156;
    v110(v143, v15, v156);
    v110((v111 + v109), v18, v112);
    swift_storeEnumTagMultiPayload();
    v113 = *&v0[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];

    v114 = sub_274637FAC();
    v115 = sub_274637FAC();
    [v113 moveActionsAtIndexes:v114 toIndexes:v115];

    v116 = *(v108 + 8);
    v116(v15, v112);
    v116(v18, v112);
    v18 = v107;
    goto LABEL_47;
  }

  v69 = v68;
  v157 = MEMORY[0x277D84F90];
  sub_27463C44C();
  sub_27463BACC();
  if ((v69 & 0x8000000000000000) == 0)
  {
    v70 = *&v0[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    v52 = v156;
    while (1)
    {
      sub_27463BB3C();
      v71 = OUTLINED_FUNCTION_53_3();
      v72(v71);
      v73 = [v70 actions];
      v74 = OUTLINED_FUNCTION_39_4();
      sub_274412734(v74, &qword_28094E040);
      OUTLINED_FUNCTION_0_10();
      v75 = sub_27463B81C();

      if ((v75 & 0xC000000000000001) != 0)
      {
        v78 = OUTLINED_FUNCTION_63_2();
        MEMORY[0x277C58B20](v78);
      }

      else
      {
        if (v18 < 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          OUTLINED_FUNCTION_2_22();
LABEL_57:
          v127 = qword_28094BB00;
          v128 = sub_27463B66C();

          OUTLINED_FUNCTION_42_4();
          v129 = sub_27463B66C();

          v130 = [v127 localizedStringForKey:v128 value:v129 table:0];

          sub_27463B6AC();
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_61_3();
        if (v76)
        {
          goto LABEL_62;
        }

        v77 = *(v75 + 8 * v18 + 32);
      }

      sub_27463C41C();
      sub_27463C46C();
      OUTLINED_FUNCTION_13_3();
      sub_27463C47C();
      sub_27463C42C();
      v52 = v156;
      sub_27463BB1C();
      if (!--v69)
      {
        (*(v151 + 8))(v10, v152);
        v107 = v157;
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2745171EC(uint64_t a1, uint64_t a2)
{
  sub_27463B9CC();
  v5[2] = a1;
  v5[3] = a2;
  return sub_274581604(sub_27451C6FC, v5);
}

uint64_t sub_274517268()
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v1 = OUTLINED_FUNCTION_62_3();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2745172F8()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  LODWORD(v119) = v3;
  v5 = v4;
  OUTLINED_FUNCTION_39_4();
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v117 = v7;
  v118 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v115 = v9 - v8;
  OUTLINED_FUNCTION_51_3();
  v116 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v114 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v113 = v13 - v12;
  OUTLINED_FUNCTION_51_3();
  sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v121 = v14;
  v122 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v112 = (v16 - v17);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  v120 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_53_0(v20);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v110 - v22;
  v24 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v30 = (v29 - v28);
  inserted = type metadata accessor for EditorHostingViewController.InsertDestination(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_0();
  v35 = (v34 - v33);
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {
    goto LABEL_46;
  }

  sub_27451CB14(v5, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v26 + 32))(v30, v35, v24);
    v36 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    sub_274412734(0, &qword_28094E040);
    OUTLINED_FUNCTION_0_10();
    v37 = sub_27463B7FC();
    v38 = sub_274637FAC();
    [v36 insertActions:v37 atIndexes:v38];

    v39 = *(v26 + 8);
    v26 += 8;
    v39(v30, v24);
  }

  else
  {
    v40 = *v35;
    v36 = *&v2[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    sub_274412734(0, &qword_28094E040);
    OUTLINED_FUNCTION_0_10();
    v41 = sub_27463B7FC();
    [v36 insertActions:v41 atIndex:v40];
  }

  v42 = sub_27463B9FC();
  OUTLINED_FUNCTION_49_2(v23, v43, v44, v42);
  v45 = v2;
  OUTLINED_FUNCTION_28_1();

  v46 = sub_27463B9BC();
  OUTLINED_FUNCTION_2_6();
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D85700];
  v47[2] = v46;
  v47[3] = v48;
  v111 = v26;
  v47[4] = v26;
  v47[5] = v0;
  OUTLINED_FUNCTION_36_3();
  sub_274512004();

  v49 = sub_274453594(v0);
  v50 = v49;
  if (v49)
  {
    if (v49 < 1)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v51 = 0;
    v26 = v0 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v52 = OUTLINED_FUNCTION_62_3();
        v53 = MEMORY[0x277C58B20](v52);
      }

      else
      {
        v53 = *(v0 + 8 * v51 + 32);
      }

      v54 = v53;
      ++v51;
      [v53 wasAddedToWorkflowByUser_];
    }

    while (v50 != v51);
  }

  v55 = [v36 actions];
  sub_274412734(0, &qword_28094E040);
  v56 = sub_27463B81C();

  v57 = sub_274453594(v56);
  if (!v57)
  {
    goto LABEL_20;
  }

  v58 = v57;
  if (v57 < 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v59 = 0;
  v26 = v56 & 0xC000000000000001;
  do
  {
    if (v26)
    {
      v60 = MEMORY[0x277C58B20](v59, v56);
    }

    else
    {
      v60 = *(v56 + 8 * v59 + 32);
    }

    v30 = v60;
    ++v59;
    [v60 snapInputParameterIfNecessary];
  }

  while (v58 != v59);
LABEL_20:

  v61 = v111;
  sub_274514A6C();
  inserted = MEMORY[0x277D84F90];
  if (v119)
  {
    sub_274412734(0, &qword_28094AF90);
    v110 = sub_27463BCEC();
    v62 = v112;
    sub_27463B22C();
    sub_27463B28C();
    v63 = *(v122 + 8);
    v122 += 8;
    v119 = v63;
    v63(v62, v121);
    OUTLINED_FUNCTION_39();
    v64 = swift_allocObject();
    *(v64 + 16) = v0;
    *(v64 + 24) = v61;
    v127 = sub_27451CC74;
    v128 = v64;
    v123 = MEMORY[0x277D85DD0];
    v124 = 1107296256;
    v125 = sub_27443E0E8;
    v126 = &block_descriptor_22;
    v26 = _Block_copy(&v123);
    v65 = v61;

    v66 = v113;
    sub_27463B20C();
    v131 = inserted;
    sub_27451CC94(&qword_28094E100, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    sub_274458A14(&qword_28094E110, &unk_28094AFA0);
    v67 = v115;
    v30 = v118;
    v61 = v111;
    sub_27463C1EC();
    v68 = v120;
    v69 = v110;
    MEMORY[0x277C58400](v120, v66, v67, v26);
    _Block_release(v26);

    v70 = v67;
    inserted = MEMORY[0x277D84F90];
    (*(v117 + 8))(v70, v30);
    (*(v114 + 8))(v66, v116);
    v119(v68, v121);
  }

  if ([v61 undoManager])
  {
    v71 = OUTLINED_FUNCTION_28_1();
    v72 = sub_274453594(v71);
    v73 = v72;
    v121 = v26;
    v122 = v72;
    if (v50 && v72 == 1)
    {
      sub_2744535A4(0, (v0 & 0xC000000000000001) == 0);
      if ((v0 & 0xC000000000000001) != 0)
      {
        goto LABEL_52;
      }

      for (i = *(v0 + 32); ; i = MEMORY[0x277C58B20](0, v0))
      {
        v75 = i;
        v76 = inserted;
        sub_27463B70C();
        OUTLINED_FUNCTION_66_0();
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22();
        }

        v77 = qword_28094BB00;
        OUTLINED_FUNCTION_41_4();
        v78 = sub_27463B66C();
        OUTLINED_FUNCTION_41_4();
        v79 = sub_27463B66C();

        v80 = [v77 localizedStringForKey:v78 value:v79 table:0];

        sub_27463B6AC();
        OUTLINED_FUNCTION_66_0();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
        v81 = OUTLINED_FUNCTION_48_3();
        *(v81 + 16) = xmmword_274648570;
        v82 = [v75 localizedName];
        v83 = sub_27463B6AC();
        v85 = v84;

        *(v81 + 56) = MEMORY[0x277D837D0];
        *(v81 + 64) = sub_27440F250();
        *(v81 + 32) = v83;
        *(v81 + 40) = v85;
        OUTLINED_FUNCTION_41_4();
        v120 = sub_27463B67C();
        v87 = v86;

        inserted = v76;
        v73 = v122;
LABEL_35:
        v119 = v87;
        v123 = inserted;
        sub_27445126C(0, v73 & ~(v73 >> 63), 0);
        if ((v73 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        ;
      }

      v98 = 0;
      v99 = v123;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v100 = OUTLINED_FUNCTION_13_3();
          v101 = MEMORY[0x277C58B20](v100);
        }

        else
        {
          v101 = *(v0 + 8 * v98 + 32);
        }

        v102 = v101;
        v103 = [v36 indexOfAction_];
        v104 = sub_274637CAC();

        if (v103 == v104)
        {
          __break(1u);
          goto LABEL_49;
        }

        v123 = v99;
        v106 = *(v99 + 16);
        v105 = *(v99 + 24);
        inserted = v106 + 1;
        if (v106 >= v105 >> 1)
        {
          v107 = OUTLINED_FUNCTION_0_8(v105);
          sub_27445126C(v107, v106 + 1, 1);
          v99 = v123;
        }

        ++v98;
        *(v99 + 16) = inserted;
        *(v99 + 8 * v106 + 32) = v103;
      }

      while (v122 != v98);
      v108 = v121;
    }

    else
    {
      sub_27463B70C();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_17_9();
      if (v88)
      {
        v123 = 0;
        v124 = 0xE000000000000000;
        sub_27463C38C();

        v123 = v30;
        v124 = v26;
        v131 = 10;
        v132 = 0xE100000000000000;
        v129 = 32;
        v130 = 0xE100000000000000;
        sub_274412BBC();
        OUTLINED_FUNCTION_16_12();
        v123 = OUTLINED_FUNCTION_45_4();
        v124 = v89;
        OUTLINED_FUNCTION_29_6();
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22();
        }

        v90 = qword_28094BB00;
        v91 = sub_27463B66C();

        OUTLINED_FUNCTION_41_4();
        v92 = sub_27463B66C();

        v93 = [v90 localizedStringForKey:v91 value:v92 table:0];

        sub_27463B6AC();
        OUTLINED_FUNCTION_66_0();

        v73 = v122;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
      v94 = OUTLINED_FUNCTION_48_3();
      v95 = MEMORY[0x277D83B88];
      *(v94 + 16) = xmmword_274648570;
      v96 = MEMORY[0x277D83C10];
      *(v94 + 56) = v95;
      *(v94 + 64) = v96;
      *(v94 + 32) = v73;
      OUTLINED_FUNCTION_41_4();
      v120 = sub_27463B67C();
      v87 = v97;

      if (v73)
      {
        goto LABEL_35;
      }

      v99 = MEMORY[0x277D84F90];
      v108 = v121;
    }

    v109 = sub_27463B66C();

    [v108 setActionName_];

    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = v99;
    type metadata accessor for EditorHostingViewController();
    sub_27463BBDC();
  }

LABEL_46:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274517F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_274638DAC();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  sub_27463B9CC();
  v5[23] = sub_27463B9BC();
  v8 = sub_27463B96C();
  v5[24] = v8;
  v5[25] = v7;

  return MEMORY[0x2822009F8](sub_274518020, v8, v7);
}

uint64_t sub_274518020()
{
  OUTLINED_FUNCTION_27_5();
  v1 = *(v0[18] + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v2 = [v1 database];
  v0[26] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [v1 reference];
    v0[27] = v4;
    if (v4)
    {
      v5 = v4;
      sub_274412734(0, &qword_28094E040);
      v6 = sub_27463B7FC();
      v0[28] = v6;
      v0[2] = v0;
      v0[3] = sub_2745182A8;
      v7 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2745ECED0;
      v0[13] = &block_descriptor_77;
      v0[14] = v7;
      [v3 createSmartPromptStatesForInsertedActions:v6 forReference:v5 completionHandler:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  sub_274638C2C();
  v8 = sub_274638D9C();
  v9 = sub_27463BBFC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2743F0000, v8, v9, "Could not create smart prompt states for inserted actions, missing database/reference.", v14, 2u);
    MEMORY[0x277C5A270](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_92();

  return v15();
}

uint64_t sub_2745182A8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v1 = v0;
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return MEMORY[0x2822009F8](sub_2745183A4, v4, v3);
}

uint64_t sub_2745183A4()
{
  OUTLINED_FUNCTION_42_1();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);

  OUTLINED_FUNCTION_92();

  return v3();
}

void sub_274518424(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_27463C27C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_2744535A4(v2 - 1, (a1 & 0xC000000000000001) == 0);
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v4 = MEMORY[0x277C58B20](v3, a1);
    goto LABEL_6;
  }

  v4 = *(a1 + 8 * v3 + 32);
LABEL_6:
  v7 = v4;
  sub_27463B1CC();
  sub_27443DA88(v7, 1, v5, v6, 0);
}

uint64_t sub_274518514(uint64_t a1, uint64_t a2)
{
  sub_27463B9CC();
  v5[2] = a1;
  v5[3] = a2;
  return sub_274581604(sub_27451CCD8, v5);
}

uint64_t sub_274518590(uint64_t a1, uint64_t a2)
{
  v3 = sub_27463800C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  sub_27451CC94(&qword_28094FE40, MEMORY[0x277CC9A28]);
  sub_27463C1DC();
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 32);
    do
    {
      v12 = *v11++;
      v14[1] = v12;
      sub_27463C1AC();
      --v10;
    }

    while (v10);
  }

  (*(v4 + 32))(v9, v6, v3);
  sub_2745189E4(v9);
  return (*(v4 + 8))(v9, v3);
}

void sub_274518740()
{
  OUTLINED_FUNCTION_24();
  v35 = v0;
  OUTLINED_FUNCTION_21();
  sub_27463800C();
  OUTLINED_FUNCTION_1();
  v32 = v2;
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v30 = v3 - v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - v6;
  v7 = sub_274453594(v0);
  v8 = 0;
  v9 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
  v34 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x277C58B20](v8, v0);
    }

    else
    {
      if (v8 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(v0 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v13 = [*(v35 + v9) indexOfAction_];
    v14 = sub_274637CAC();

    ++v8;
    if (v13 != v14)
    {
      v15 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450574();
        v15 = v19;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v34 = v15;
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v16);
        sub_274450574();
        v34 = v20;
      }

      v18 = v34;
      *(v34 + 16) = v17 + 1;
      *(v18 + 8 * v17 + 32) = v13;
      v8 = v12;
    }
  }

  OUTLINED_FUNCTION_1_21();
  sub_27451CC94(v21, v22);
  v23 = v30;
  v24 = v33;
  sub_27463C1DC();
  v25 = *(v34 + 16);
  if (v25)
  {
    v26 = (v34 + 32);
    do
    {
      v27 = *v26++;
      v36 = v27;
      sub_27463C1AC();
      --v25;
    }

    while (v25);
  }

  (*(v32 + 32))(v31, v23, v24);
  sub_2745189E4();
  v28 = OUTLINED_FUNCTION_24_5();
  v29(v28);
  OUTLINED_FUNCTION_23();
}

void sub_2745189E4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v110 = v2;
  v3 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = sub_274637F9C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = *&v0[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions];
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {
LABEL_82:
    OUTLINED_FUNCTION_23();
    return;
  }

  v103 = v11;
  v104 = v9;
  v105 = v7;
  v106 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_21();
  sub_27451CC94(v17, v18);
  v19 = v110;
  v20 = sub_27463BADC();
  v21 = &qword_28094F000;
  v108 = v0;
  v109 = v3;
  v107 = v5;
  v102 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = v20;
    v101 = v16;
    v111 = MEMORY[0x277D84F90];
    sub_27463C44C();
    v23 = v19;
    sub_27463BACC();
    if (v22 < 0)
    {
      goto LABEL_91;
    }

    v24 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    v19 = &v112;
    v16 = 0x277D7C098;
    v23 = v110;
    while (1)
    {
      sub_27463BB3C();
      v25 = OUTLINED_FUNCTION_53_3();
      v26(v25);
      v1 = [v24 actions];
      sub_274412734(0, &qword_28094E040);
      v27 = sub_27463B81C();

      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = OUTLINED_FUNCTION_63_2();
        MEMORY[0x277C58B20](v30);
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          OUTLINED_FUNCTION_2_22();
LABEL_78:
          v86 = qword_28094BB00;
          OUTLINED_FUNCTION_62_3();
          sub_27463B66C();
          OUTLINED_FUNCTION_19_8();

          v87 = sub_27463B66C();

          v88 = [v86 localizedStringForKey:v23 value:v87 table:0];

          sub_27463B6AC();
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_61_3();
        if (v28)
        {
          goto LABEL_84;
        }

        v29 = *(v27 + 8 * v23 + 32);
      }

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v23 = v110;
      sub_27463BB1C();
      if (!--v22)
      {
        (*(v103 + 8))(v15, v104);
        v31 = v111;
        v1 = v108;
        v21 = &qword_28094F000;
        v16 = v101;
        goto LABEL_14;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_14:
  v32 = sub_27443C514();
  if (!v32 || (v33 = v32, v34 = [v32 anchor], v33, v19 = objc_msgSend(v34, sel_variableProvider), v34, !v19))
  {
LABEL_61:
    v61 = *&v1[v21[420]];
    sub_274412734(0, &qword_28094E040);
    v62 = sub_27463B7FC();
    [v61 removeActions_];

    v63 = [v61 actions];
    v64 = sub_27463B81C();

    v65 = sub_274453594(v64);
    if (v65)
    {
      v23 = v65;
      if (v65 < 1)
      {
        goto LABEL_92;
      }

      for (i = 0; i != v23; i = (i + 1))
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x277C58B20](i, v64);
        }

        else
        {
          v67 = *(v64 + 8 * i + 32);
        }

        v68 = v67;
        [v67 snapInputParameterIfNecessary];
      }
    }

    sub_274514A6C();
    v69 = [v1 undoManager];
    if (v69)
    {
      v16 = v69;
      v1 = sub_274453594(v31);
      if (v1 == 1 && sub_274453594(v31))
      {
        sub_2744535A4(0, (v31 & 0xC000000000000001) == 0);
        if ((v31 & 0xC000000000000001) != 0)
        {
          v70 = MEMORY[0x277C58B20](0, v31);
        }

        else
        {
          v70 = *(v31 + 32);
        }

        v71 = v70;
        v19 = v31;
        v72 = sub_27463B70C();
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22();
        }

        v73 = qword_28094BB00;
        OUTLINED_FUNCTION_13_3();
        v74 = sub_27463B66C();
        OUTLINED_FUNCTION_13_3();
        sub_27463B66C();
        OUTLINED_FUNCTION_28_1();

        v75 = [v73 localizedStringForKey:v74 value:v72 table:0];

        sub_27463B6AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
        v76 = OUTLINED_FUNCTION_48_3();
        *(v76 + 16) = xmmword_274648570;
        v77 = [v71 localizedName];
        v78 = sub_27463B6AC();
        v80 = v79;

        *(v76 + 56) = MEMORY[0x277D837D0];
        *(v76 + 64) = sub_27440F250();
        *(v76 + 32) = v78;
        *(v76 + 40) = v80;
        sub_27463B67C();
      }

      else
      {
        v19 = v31;
        v81 = sub_27463B70C();
        v83 = v82;
        OUTLINED_FUNCTION_17_9();
        if (v84)
        {
          OUTLINED_FUNCTION_70_2();

          v112 = v81;
          v113 = v83;
          OUTLINED_FUNCTION_46_4();
          OUTLINED_FUNCTION_16_12();
          v112 = OUTLINED_FUNCTION_45_4();
          v113 = v85;
          OUTLINED_FUNCTION_29_6();
          v23 = v112;
          if (qword_2809492C0 != -1)
          {
            goto LABEL_93;
          }

          goto LABEL_78;
        }

LABEL_79:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
        v89 = OUTLINED_FUNCTION_48_3();
        v90 = MEMORY[0x277D83B88];
        *(v89 + 16) = xmmword_274648570;
        v91 = MEMORY[0x277D83C10];
        *(v89 + 56) = v90;
        *(v89 + 64) = v91;
        *(v89 + 32) = v1;
        sub_27463B67C();
      }

      v92 = sub_27463B66C();

      [v16 setActionName_];

      v94 = v106;
      v93 = v107;
      v95 = v109;
      (*(v107 + 16))(v106, v110, v109);
      v96 = (*(v93 + 80) + 24) & ~*(v93 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = v19;
      (*(v93 + 32))(v97 + v96, v94, v95);
      type metadata accessor for EditorHostingViewController();
      sub_27463BBDC();
    }

    else
    {
    }

    goto LABEL_82;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    goto LABEL_61;
  }

  v36 = v35;
  v1 = sub_274453594(v31);
  v23 = 0;
  v37 = v31 & 0xFFFFFFFFFFFFFF8;
  v38 = v31 + 32;
  while (v23 != v1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v104 = v37;
      v40 = MEMORY[0x277C58B20](v23, v31);
      v41 = __OFADD__(v23++, 1);
      if (v41)
      {
        goto LABEL_97;
      }

      v42 = v40;
      swift_unknownObjectRelease();
      v37 = v104;
      if (v42 == v36)
      {
LABEL_26:
        sub_27443C58C(0);
        swift_unknownObjectRelease();
        v1 = v108;
        goto LABEL_61;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      if (v23 >= *(v37 + 16))
      {
        goto LABEL_86;
      }

      v39 = *(v38 + 8 * v23++);
      if (v39 == v36)
      {
        goto LABEL_26;
      }
    }
  }

  v103 = v31;
  v104 = v37;
  v99 = v31 & 0xC000000000000001;
  v100 = v19;
  v101 = v16;
  v23 = [v36 containedVariables];
  sub_274412734(0, &qword_28094BD90);
  OUTLINED_FUNCTION_21_2();
  v43 = sub_27463B81C();

  v112 = MEMORY[0x277D84F90];
  v44 = sub_274453594(v43);
  v45 = 0;
  v19 = (v43 & 0xC000000000000001);
  while (v44 != v45)
  {
    if (v19)
    {
      v46 = MEMORY[0x277C58B20](v45, v43);
    }

    else
    {
      if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v46 = *(v43 + 8 * v45 + 32);
    }

    v23 = v46;
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_87;
    }

    v16 = sub_2745AA098();

    ++v45;
    if (v16)
    {
      v23 = &v112;
      MEMORY[0x277C57F30]();
      v48 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v48);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v102 = v112;
      v45 = v47;
    }
  }

  v49 = v102;
  v50 = sub_274453594(v102);
  if (!v50)
  {
    swift_unknownObjectRelease();

LABEL_60:
    v1 = v108;
    v31 = v103;
    v21 = &qword_28094F000;
    goto LABEL_61;
  }

  v51 = v50;
  v23 = 0;
  v19 = (v49 & 0xC000000000000001);
  v52 = v49 & 0xFFFFFFFFFFFFFF8;
  v16 = (v49 + 32);
  v53 = v49;
  v54 = v99;
  while (2)
  {
    if (v19)
    {
      v55 = MEMORY[0x277C58B20](v23, v53);
    }

    else
    {
      if (v23 >= *(v52 + 16))
      {
        goto LABEL_96;
      }

      v55 = *&v16[8 * v23];
    }

    v56 = v55;
    v41 = __OFADD__(v23++, 1);
    v57 = v104;
    if (!v41)
    {
      v58 = 0;
      while (v58 != v1)
      {
        if (v54)
        {
          v60 = MEMORY[0x277C58B20](v58, v103);
          v41 = __OFADD__(v58++, 1);
          if (v41)
          {
            goto LABEL_98;
          }

          v98 = v60;
          swift_unknownObjectRelease();
          v57 = v104;
          if (v98 == v56)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_89;
          }

          if (v58 >= *(v57 + 16))
          {
            goto LABEL_90;
          }

          v59 = *(v38 + 8 * v58++);
          if (v59 == v56)
          {
LABEL_58:

            sub_27443C58C(0);

            swift_unknownObjectRelease();
            goto LABEL_60;
          }
        }
      }

      v53 = v102;
      v21 = &qword_28094F000;
      if (v23 != v51)
      {
        continue;
      }

      swift_unknownObjectRelease();

      v1 = v108;
      v31 = v103;
      goto LABEL_61;
    }

    break;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

uint64_t sub_274519564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27463B9CC();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  return sub_274581604(sub_27451C558, v7);
}

uint64_t sub_2745195E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  inserted = type metadata accessor for EditorHostingViewController.InsertDestination(0);
  MEMORY[0x28223BE20](inserted);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27463800C();
  (*(*(v7 - 8) + 16))(v6, a3, v7);
  swift_storeEnumTagMultiPayload();
  sub_2745172F8();
  return sub_27451B6F4();
}

uint64_t sub_2745196F4()
{
  OUTLINED_FUNCTION_79();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = sub_27463B9CC();
  v1[7] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v5 = sub_27463B96C();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x2822009F8](sub_27451978C, v5, v4);
}

uint64_t sub_27451978C()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[4];
  if (v1 && sub_274453594(v0[4]))
  {
    v2 = v0[5];
    v3 = v0[3];
    v4 = sub_27463B9BC();
    v0[10] = v4;
    v5 = swift_task_alloc();
    v0[11] = v5;
    v5[2] = v3;
    v5[3] = v1;
    v5[4] = v2;
    v6 = swift_task_alloc();
    v0[12] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE50);
    *v6 = v0;
    v6[1] = sub_274519908;
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 2, v4, v8, 0xD000000000000033, 0x800000027468BFF0, sub_27451CCF4, v5, v7);
  }

  else
  {

    OUTLINED_FUNCTION_31_5();
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_274519908()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_274519A5C, v5, v4);
}

uint64_t sub_274519A5C()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_31_5();

  return v0();
}

uint64_t sub_274519AB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  v72 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58);
  v75 = *(v79 - 8);
  v69 = *(v75 + 64);
  MEMORY[0x28223BE20](v79);
  v70 = &v66 - v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CFC218]) init];
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v8 = qword_28094BB00;
  v9 = sub_27463B66C();
  v10 = sub_27463B66C();

  v73 = v8;
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v12 = swift_allocObject();
  v78 = xmmword_274648570;
  *(v12 + 16) = xmmword_274648570;
  v13 = [a2 localizedName];
  v14 = sub_27463B6AC();
  v16 = v15;

  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_27440F250();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = sub_27463B67C();
  v19 = v18;

  sub_274489628(v17, v19, v7);
  v20 = sub_27463B70C();
  v21 = v20;
  v23 = v22;
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    aBlock = 0;
    v81 = 0xE000000000000000;
    sub_27463C38C();

    aBlock = v21;
    v81 = v23;
    v88 = 10;
    v89 = 0xE100000000000000;
    v86 = 32;
    v87 = 0xE100000000000000;
    sub_274412BBC();
    aBlock = sub_27463C0FC();
    v81 = v25;
    MEMORY[0x277C57EA0](0xD000000000000010, 0x800000027468ABB0);
    v26 = sub_27463B66C();

    v27 = sub_27463B66C();

    v28 = [v73 localizedStringForKey:v26 value:v27 table:0];

    sub_27463B6AC();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v78;
  v68 = a3;
  v30 = sub_274453594(a3);
  v31 = MEMORY[0x277D83C10];
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = v31;
  *(v29 + 32) = v30;
  v32 = sub_27463B67C();
  v34 = v33;

  sub_274489634(v32, v34, v7);
  v35 = objc_opt_self();
  v36 = v75;
  v37 = v7;
  v67 = v7;
  v74 = *(v75 + 16);
  *&v78 = v75 + 16;
  v38 = v70;
  v39 = v71;
  v40 = v79;
  v74(v70, v71, v79);
  v77 = *(v36 + 80);
  v69 += (v77 + 16) & ~v77;
  v41 = (v77 + 16) & ~v77;
  v76 = v41;
  v42 = swift_allocObject();
  v75 = *(v36 + 32);
  (v75)(v42 + v41, v38, v40);
  v84 = sub_27451CD00;
  v85 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_27443E0E8;
  v83 = &block_descriptor_84;
  v43 = _Block_copy(&aBlock);

  v44 = [v35 cancelButtonWithHandler_];
  _Block_release(v43);
  [v37 addButton_];

  sub_274412734(0, &unk_28094FE60);
  sub_27463B70C();
  v45 = sub_27463B66C();
  v46 = sub_27463B66C();

  v47 = v73;
  v48 = [v73 localizedStringForKey:v45 value:v46 table:0];

  v49 = sub_27463B6AC();
  v51 = v50;

  v74(v38, v39, v40);
  v52 = v69;
  v53 = swift_allocObject();
  (v75)(v53 + v76, v38, v40);
  v54 = sub_274588E0C(v49, v51, 0, sub_27451CD94, v53);
  v55 = v67;
  [v67 addButton_];

  sub_27463B70C();
  v56 = sub_27463B66C();
  v57 = sub_27463B66C();

  v58 = [v47 localizedStringForKey:v56 value:v57 table:0];

  v59 = sub_27463B6AC();
  v61 = v60;

  v62 = v79;
  v74(v38, v39, v79);
  v63 = swift_allocObject();
  (v75)(v63 + v76, v38, v62);
  *(v63 + ((v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v68;

  v64 = sub_274588E0C(v59, v61, 2, sub_27451CE0C, v63);
  [v55 addButton_];

  [WFUserInterfaceFromViewController() presentAlert_];
  return swift_unknownObjectRelease();
}

uint64_t sub_27451A324()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58);
  return sub_27463B98C();
}

id EditorHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_27463B66C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EditorHostingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorHostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EditorHostingViewController.swiftUICoordinateSpaceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_coordinateSpaceName);

  return v1;
}

__C::CGRect __swiftcall EditorHostingViewController.convertRectToUserInterfaceCoordinateSpace(_:)(__C::CGRect a1)
{
  v2 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController];
  if (v2)
  {
    height = a1.size.height;
    width = a1.size.width;
    y = a1.origin.y;
    x = a1.origin.x;
    v7 = [v2 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v1 view];
      if (v9)
      {
        v10 = v9;
        [v9 convertRect:v8 fromCoordinateSpace:{x, y, width, height}];
        OUTLINED_FUNCTION_6_6();
      }

      else
      {
      }
    }
  }

  v11 = OUTLINED_FUNCTION_7_16();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void *sub_27451A6B0(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_27451A750;
  v5[3] = &block_descriptor_106;
  [v2 initWithDynamicProvider_];
  v3 = OUTLINED_FUNCTION_19_8();
  _Block_release(v3);

  return v2;
}

id sub_27451A750(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_27451A7B8()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_4(v4);
  *v5 = v6;
  v5[1] = sub_27445358C;
  v7 = OUTLINED_FUNCTION_49_1();

  return sub_274514324(v7, v8, v1, v3, v2);
}

void sub_27451A864(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_274547E98();
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_27451A904(v8, v7);
  sub_27463C42C();
}

void sub_27451A904(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2;
  v6 = sub_27463C65C();
  if (v6 < v4)
  {
    v7 = v6;
    v8 = sub_27444FC24(v4 / 2);
    v10[0] = v9;
    v10[1] = (v4 / 2);
    v5 = v5;
    sub_27451AB30(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    sub_27451AA24(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void sub_27451AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v20 = v7;
      v21 = a3;
      v9 = *(v5 + 8 * a3);
      v19 = v8;
      do
      {
        v10 = *v7;
        v11 = *&a5[v6];
        v12 = v9;
        v13 = v10;
        v14 = [v11 indexOfAction_];
        v15 = [v11 indexOfAction_];

        if (v14 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v16 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v16;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v21 + 1;
      v7 = v20 + 8;
      v8 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_27451AB30(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v98 = a5;
    v7 = MEMORY[0x277D84F90];
LABEL_95:
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    v117 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v100 = v7 + 16;
      v99 = *(v7 + 2);
      for (i = v7; ; v7 = i)
      {
        if (v99 < 2)
        {

          return;
        }

        v101 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v102 = &v7[16 * v99];
        v103 = *v102;
        v104 = v100;
        v105 = &v100[16 * v99];
        v106 = *(v105 + 1);
        v127 = (v101 + 8 * *v105);
        v129 = (v101 + 8 * *v102);
        v107 = (v101 + 8 * v106);
        v108 = v117;
        sub_27451B304(v129, v127, v107, v116, v108);
        if (v123)
        {
          break;
        }

        if (v106 < v103)
        {
          goto LABEL_123;
        }

        if (v99 - 2 >= *v104)
        {
          goto LABEL_124;
        }

        v100 = v104;
        *v102 = v103;
        *(v102 + 1) = v106;
        v109 = *v104 - v99;
        if (*v104 < v99)
        {
          goto LABEL_125;
        }

        v123 = 0;
        v99 = *v104 - 1;
        sub_274546A38(v105 + 16, v109, v105);
        *v104 = v99;
      }

LABEL_107:
      return;
    }

LABEL_132:
    v7 = sub_274546A20();
    goto LABEL_97;
  }

  v128 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
  v115 = a5;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v118 = v7;
      v124 = v6 + 1;
      v10 = v6;
      v11 = (*a3 + 8 * v6);
      v110 = 8 * v6;
      v13 = *v11;
      v12 = v11 + 2;
      v14 = *&a5[v128];
      v15 = *(*a3 + 8 * v9);
      v16 = v13;
      v117 = [v14 indexOfAction_];
      v116 = [v14 indexOfAction_];

      v112 = v10;
      v17 = v10 + 2;
      while (1)
      {
        v18 = v17;
        if (v124 + 1 >= v5)
        {
          break;
        }

        ++v124;
        v19 = *(v12 - 1);
        v20 = *&a5[v128];
        v21 = *v12;
        v22 = v19;
        v23 = [v20 indexOfAction_];
        v24 = [v20 indexOfAction_];

        ++v12;
        v17 = v18 + 1;
        if (v117 < v116 == v23 >= v24)
        {
          goto LABEL_9;
        }
      }

      v124 = v5;
LABEL_9:
      if (v117 >= v116)
      {
        v7 = v118;
        v9 = v124;
        v8 = v112;
      }

      else
      {
        v9 = v124;
        v8 = v112;
        if (v124 < v112)
        {
          goto LABEL_129;
        }

        if (v112 >= v124)
        {
          v7 = v118;
        }

        else
        {
          if (v5 >= v18)
          {
            v25 = v18;
          }

          else
          {
            v25 = v5;
          }

          v26 = 8 * v25 - 8;
          v27 = v112;
          v7 = v118;
          v28 = v110;
          do
          {
            if (v27 != --v9)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v30 = *(v29 + v28);
              *(v29 + v28) = *(v29 + v26);
              *(v29 + v26) = v30;
            }

            ++v27;
            v26 -= 8;
            v28 += 8;
          }

          while (v27 < v9);
          v9 = v124;
        }
      }
    }

    v31 = a3[1];
    if (v9 >= v31)
    {
      goto LABEL_41;
    }

    v32 = v9;
    v66 = __OFSUB__(v9, v8);
    v33 = (v9 - v8);
    if (v66)
    {
      goto LABEL_128;
    }

    if (v33 < a4)
    {
      break;
    }

    v9 = v32;
LABEL_41:
    if (v9 < v8)
    {
      goto LABEL_127;
    }

    v126 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744503AC();
      v7 = v96;
    }

    v48 = *(v7 + 2);
    v49 = v48 + 1;
    v50 = v126;
    if (v48 >= *(v7 + 3) >> 1)
    {
      sub_2744503AC();
      v50 = v126;
      v7 = v97;
    }

    *(v7 + 2) = v49;
    v51 = v7 + 32;
    v52 = &v7[16 * v48 + 32];
    *v52 = v8;
    *(v52 + 1) = v50;
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v48)
    {
      v116 = v7 + 32;
      v120 = v7;
      while (1)
      {
        v53 = v49 - 1;
        v54 = &v51[16 * v49 - 16];
        v55 = &v7[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v56 = *(v7 + 4);
          v57 = *(v7 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_62:
          if (v59)
          {
            goto LABEL_114;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_117;
          }

          v75 = *(v54 + 1);
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_120;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_122;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v49 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v49 < 2)
        {
          goto LABEL_116;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_77:
        if (v74)
        {
          goto LABEL_119;
        }

        v80 = *v54;
        v79 = *(v54 + 1);
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_121;
        }

        if (v81 < v73)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v53 - 1 >= v49)
        {
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
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v85 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v86 = &v51[16 * v53 - 16];
        v87 = *v86;
        v88 = v53;
        v89 = &v51[16 * v53];
        v90 = *(v89 + 1);
        v91 = (v85 + 8 * *v86);
        v92 = (v85 + 8 * *v89);
        v93 = (v85 + 8 * v90);
        v94 = v115;
        sub_27451B304(v91, v92, v93, v117, v94);
        if (v123)
        {

          goto LABEL_107;
        }

        v7 = v120;
        if (v90 < v87)
        {
          goto LABEL_109;
        }

        v95 = *(v120 + 2);
        if (v88 > v95)
        {
          goto LABEL_110;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v88 >= v95)
        {
          goto LABEL_111;
        }

        v123 = 0;
        v49 = v95 - 1;
        sub_274546A38(v89 + 16, v95 - 1 - v88, v89);
        *(v120 + 2) = v95 - 1;
        v51 = v116;
        if (v95 <= 2)
        {
          goto LABEL_91;
        }
      }

      v60 = &v51[16 * v49];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_112;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_113;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_115;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_118;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_126;
        }

        if (v58 < v84)
        {
          v53 = v49 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v5 = a3[1];
    v6 = v126;
    if (v126 >= v5)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_130;
  }

  if (v8 + a4 >= v31)
  {
    v34 = a3[1];
  }

  else
  {
    v34 = (v8 + a4);
  }

  if (v34 < v8)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v9 = v32;
  if (v32 == v34)
  {
    goto LABEL_41;
  }

  v119 = v7;
  v35 = *a3;
  v36 = *a3 + 8 * v32 - 8;
  v113 = v8;
  v37 = v8 - v32;
  v116 = v34;
LABEL_33:
  v125 = v9;
  v38 = *(v35 + 8 * v9);
  v39 = v37;
  v117 = v36;
  while (1)
  {
    v40 = *v36;
    v41 = *&a5[v128];
    v42 = v38;
    v43 = v40;
    v44 = [v41 indexOfAction_];
    v45 = [v41 indexOfAction_];

    if (v44 >= v45)
    {
LABEL_38:
      v9 = v125 + 1;
      v36 = (v117 + 8);
      --v37;
      if ((v125 + 1) == v116)
      {
        v9 = v116;
        v7 = v119;
        v8 = v113;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v36;
    v38 = *(v36 + 8);
    *v36 = v38;
    *(v36 + 8) = v46;
    v36 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_134:

  __break(1u);
LABEL_135:

  __break(1u);
LABEL_136:

  __break(1u);
LABEL_137:

  __break(1u);
LABEL_138:

  __break(1u);
}

uint64_t sub_27451B304(char *a1, char *a2, id *a3, char *a4, char *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = (a3 - a2) / 8;
  if (v9 < v10)
  {
    sub_274453590(a1, (a2 - a1) / 8, a4);
    v11 = &v5[v9];
    v38 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
    for (i = v11; ; v11 = i)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v13 = v6;
      v14 = *v5;
      v15 = *&a5[v38];
      v16 = *v7;
      v17 = v14;
      v18 = [v15 indexOfAction_];
      v19 = [v15 indexOfAction_];

      if (v18 >= v19)
      {
        break;
      }

      v20 = v7;
      v21 = v8 == v7++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v6 = v13;
    }

    v20 = v5;
    v21 = v8 == v5++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v20;
    goto LABEL_13;
  }

  sub_274453590(a2, (a3 - a2) / 8, a4);
  v11 = &v5[v10];
  v39 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
  v40 = v5;
  v37 = v8;
LABEL_15:
  v22 = v7 - 1;
  v23 = v6 - 1;
  while (v11 > v5 && v7 > v8)
  {
    v25 = v23;
    v26 = v22;
    v27 = *v22;
    v28 = *&a5[v39];
    v29 = *(v11 - 1);
    v30 = v27;
    v31 = [v28 indexOfAction_];
    v32 = [v28 indexOfAction_];

    if (v31 < v32)
    {
      v6 = v25;
      v21 = v25 + 1 == v7;
      v7 = v26;
      v8 = v37;
      v5 = v40;
      if (!v21)
      {
        *v6 = *v26;
        v7 = v26;
      }

      goto LABEL_15;
    }

    if (v11 != v25 + 1)
    {
      *v25 = *(v11 - 1);
    }

    v23 = v25 - 1;
    --v11;
    v8 = v37;
    v5 = v40;
    v22 = v26;
  }

LABEL_28:
  v33 = v11 - v5;
  if (v7 != v5 || v7 >= &v5[v33])
  {
    memmove(v7, v5, 8 * v33);
  }

  return 1;
}

uint64_t sub_27451B594(void *a1)
{
  v1 = [a1 createAccompanyingActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_0_10();
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_27451B620()
{
  OUTLINED_FUNCTION_27_5();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_4(v5);
  *v6 = v7;
  v6[1] = sub_27445358C;
  v8 = OUTLINED_FUNCTION_49_1();

  return sub_274515600(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_27451B6F4()
{
  v1 = OUTLINED_FUNCTION_39_4();
  v2(v1);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t dispatch thunk of EditorHostingViewController.workflow(_:askToRemoveNestedActionsWithin:)()
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_32_5();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x220);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_27451C0B4;

  return v7(v2, v0);
}

uint64_t sub_27451C0B4()
{
  OUTLINED_FUNCTION_79();
  v2 = v1;
  OUTLINED_FUNCTION_28_2();
  v3 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v4 = v3;

  OUTLINED_FUNCTION_31_5();

  return v5(v2);
}

void sub_27451C340()
{
  sub_27451C3B4();
  if (v0 <= 0x3F)
  {
    sub_27451C41C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_27451C3B4()
{
  if (!qword_28094FE08)
  {
    sub_27463BDAC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28094FE08);
    }
  }
}

void sub_27451C41C()
{
  if (!qword_28094FE10)
  {
    sub_27463800C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28094FE10);
    }
  }
}

uint64_t sub_27451C480()
{
  result = sub_27463800C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27451C4EC()
{
  OUTLINED_FUNCTION_39_4();
  v2 = sub_27463800C();
  OUTLINED_FUNCTION_53_0(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_274519564(v0, v4, v5);
}

uint64_t sub_27451C578()
{
  OUTLINED_FUNCTION_27_5();
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27445358C;
  v6 = OUTLINED_FUNCTION_28_1();

  return v7(v6, v2, v4, v3);
}

uint64_t sub_27451C630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorHostingViewController.MoveActionMode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27451C694()
{
  v2 = OUTLINED_FUNCTION_39_4();
  v3 = type metadata accessor for EditorHostingViewController.MoveActionMode(v2);
  OUTLINED_FUNCTION_53_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2745171EC(v0, v5);
}

uint64_t sub_27451C72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27451C79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27451C804(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_27451C8F8;

  return v5(v2 + 32);
}

uint64_t sub_27451C8F8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v2 = v1;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_92();

  return v8();
}

uint64_t sub_27451C9F4()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_52_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_26(v1);

  return v4(v3);
}

uint64_t sub_27451CA84()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_52_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_26(v1);

  return v4(v3);
}

uint64_t sub_27451CB14(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21();
  v5(v4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_62_3();

  return swift_deallocObject();
}

uint64_t sub_27451CBC0()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_4(v4);
  *v5 = v6;
  v5[1] = sub_27444E7E4;
  v7 = OUTLINED_FUNCTION_49_1();

  return sub_274517F2C(v7, v8, v1, v3, v2);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27451CC94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_80Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58);
  OUTLINED_FUNCTION_7();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_27451CDA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58);
  OUTLINED_FUNCTION_53_0(v0);
  return sub_27451A2D8();
}

uint64_t sub_27451CE0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58);

  return sub_27451A324();
}

uint64_t sub_27451CEA4()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_52_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_26(v1);

  return v4(v3);
}

id sub_27451CF6C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else
  {
    if (a3)
    {
      return result;
    }

    v4 = result;

    result = v4;
  }

  return result;
}

void sub_27451CFCC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_29_6()
{

  JUMPOUT(0x277C57EA0);
}

uint64_t OUTLINED_FUNCTION_45_4()
{

  return sub_27463C0FC();
}

unint64_t OUTLINED_FUNCTION_46_4()
{
  *(v0 - 136) = 10;
  *(v0 - 128) = 0xE100000000000000;
  *(v0 - 152) = 32;
  *(v0 - 144) = 0xE100000000000000;

  return sub_274412BBC();
}

uint64_t OUTLINED_FUNCTION_47_4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_27451C72C(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_48_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_27463B9CC();
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

char *OUTLINED_FUNCTION_68_2(uint64_t a1)
{

  return sub_27445126C(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = a1;

  sub_27451A864(&a18, v18);
}

uint64_t OUTLINED_FUNCTION_70_2()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  return sub_27463C38C();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_73_1()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_27451D4D0(uint64_t a1, unsigned __int8 a2)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a2);
  return sub_27463C7AC();
}

uint64_t sub_27451D514()
{
  sub_27463C74C();
  sub_27463C77C();
  return sub_27463C7AC();
}

uint64_t sub_27451D558(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a2);
  return sub_27463C7AC();
}

uint64_t ActionList.__allocating_init(workflow:)()
{
  v0 = swift_allocObject();
  ActionList.init(workflow:)();
  return v0;
}

uint64_t sub_27451D5DC()
{
  sub_274527C78();
  sub_274639ACC();
  return v1;
}

uint64_t sub_27451D694(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 32;
  v7 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_9:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v8 = *(v6 + 8 * v4);
      sub_27463C74C();
      MEMORY[0x277C58EA0](v8);
      result = sub_27463C7AC();
      v9 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v10 = result & v9;
        if (((*(v7 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          break;
        }

        result = v10 + 1;
        if (*(*(a2 + 48) + 8 * v10) == v8)
        {
          ++v4;
          goto LABEL_2;
        }
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t ActionIdentity.hashValue.getter()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_27451D810()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_27451D854@<X0>(uint64_t *a1@<X8>)
{
  result = ActionIdentity.id.getter();
  *a1 = result;
  return result;
}

uint64_t ActionMove.fromIndexSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27463800C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_27451D950()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();

  return v1;
}

uint64_t sub_27451D9CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

uint64_t sub_27451DA84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();
}

void sub_27451DAF8()
{
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_75();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_13_3();
  v2(v1);

  sub_274638FBC();
  v3 = OUTLINED_FUNCTION_24_3();
  v4(v3);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_27451DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_75();
  (*(v10 + 16))(v7, a1);
  return a7(v7);
}

uint64_t sub_27451DCBC()
{
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0);
  sub_274638F7C();
  return swift_endAccess();
}

uint64_t sub_27451DD28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFC8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_75();
  v0 = OUTLINED_FUNCTION_13_3();
  v1(v0);
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0);
  sub_274638F8C();
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_24_3();
  return v3(v2);
}

void sub_27451DE38(uint64_t a1)
{
  sub_2744D40AC(*(v1 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions), a1);
  if ((v2 & 1) == 0)
  {

    sub_274520448();
  }
}

void sub_27451DE9C(uint64_t a1)
{

  sub_2744D43E8(v2, a1);
  LOBYTE(a1) = v3;

  if ((a1 & 1) == 0)
  {

    sub_274520448();
  }
}

uint64_t sub_27451DF30(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  a3(v4);
}

void ActionList.init(workflow:)()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0);
  OUTLINED_FUNCTION_1();
  v45 = v4;
  v46 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v43 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED8);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEE0);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  *(v1 + 2) = MEMORY[0x277D84F90];
  v27 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__draggingActionTree;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEF0);
  sub_274638F6C();
  (*(v23 + 32))(&v1[v27], v26, v21);
  v28 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__inputAction;
  v49 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF00);
  sub_274638F6C();
  v29 = v41;
  (*(v17 + 32))(&v1[v28], v20, v41);
  v30 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__visibleActions;
  sub_27444A444();
  sub_27463832C();
  (*(v9 + 16))(v43, v15, v7);
  v31 = v44;
  sub_274638F6C();
  (*(v9 + 8))(v15, v7);
  (*(v45 + 32))(&v1[v30], v31, v46);
  v32 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_collapsedActionGroupIdentifiersForDragging] = v32;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_lastActions] = MEMORY[0x277D84F90];
  v33 = v47;
  *(v1 + 3) = v47;
  v34 = v33;
  v35 = [v34 inputAction];
  OUTLINED_FUNCTION_30_1();
  (*(v17 + 8))(&v1[v28], v29);
  v48 = v35;
  sub_274638F6C();
  swift_endAccess();
  type metadata accessor for WorkflowSelectionCoordinator();
  swift_allocObject();
  *(v1 + 4) = sub_2745E0E14();
  type metadata accessor for ActionViewModelStore(0);
  v36 = swift_allocObject();
  sub_2745214A8();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_actionViewModelStore] = v36;
  [v34 addEditingObserver_];
  v37 = [v34 actions];
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_21_2();
  v38 = sub_27463B81C();

  sub_274520070(v38);

  v39 = [v34 inputAction];
  sub_27451D9B8();

  swift_weakAssign();
  OUTLINED_FUNCTION_23();
}

uint64_t ActionList.deinit()
{
  [*(v0 + 24) removeEditingObserver_];

  v1 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__draggingActionTree;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEE0);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__inputAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED8);
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__visibleActions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0);
  OUTLINED_FUNCTION_4_2();
  (*(v6 + 8))(v0 + v5);

  return v0;
}

uint64_t ActionList.__deallocating_deinit()
{
  ActionList.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_27451E628(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  for (i = 48; ; i += 16)
  {
    if (v6 == v4)
    {
      v4 = *(v5 + 16);
      v9 = v4;
      goto LABEL_22;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    sub_274527BD8(v5 + i - 16, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_274527C10(v21);
    if (!Strong)
    {
      v9 = v4 + 1;
      v10 = *(v5 + 16);
      if (v10 - 1 != v4)
      {
        while (v9 < v10)
        {
          sub_274527BD8(v5 + i, v21);
          v11 = swift_unknownObjectWeakLoadStrong();
          sub_274527C10(v21);
          if (v11)
          {
            swift_unknownObjectRelease();
            if (v9 != v4)
            {
              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v12 = *(v5 + 16);
              if (v4 >= v12)
              {
                goto LABEL_32;
              }

              sub_274527BD8(v5 + 32 + 16 * v4, v21);
              if (v9 >= v12)
              {
                goto LABEL_33;
              }

              sub_274527BD8(v5 + i, v20);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a1 + 16) = v5;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27453AD30();
                v5 = v14;
                *(a1 + 16) = v14;
              }

              if (v4 >= *(v5 + 16))
              {
                goto LABEL_34;
              }

              sub_274527C40(v20, v5 + 16 * v4 + 32);
              *(a1 + 16) = v5;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_35;
              }

              sub_274527C40(v21, v5 + i);
              *(a1 + 16) = v5;
            }

            ++v4;
          }

          ++v9;
          v10 = *(v5 + 16);
          i += 16;
          if (v9 == v10)
          {
            if (v9 < v4)
            {
              goto LABEL_36;
            }

            goto LABEL_22;
          }
        }

        goto LABEL_30;
      }

LABEL_22:
      sub_2745C3664(v4, v9);
      swift_endAccess();
      v15 = *(a1 + 16);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 32;

        do
        {
          sub_274527BD8(v17, v22);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v23;
            ObjectType = swift_getObjectType();
            (*(v18 + 16))(a2, ObjectType, v18);
            swift_unknownObjectRelease();
          }

          sub_274527C10(v22);
          v17 += 16;
          --v16;
        }

        while (v16);
      }

      else
      {
      }

      return;
    }

    swift_unknownObjectRelease();
    ++v4;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_27451E8C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  for (i = 48; ; i += 16)
  {
    if (v6 == v4)
    {
      v4 = *(v5 + 16);
      v9 = v4;
      goto LABEL_22;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    sub_274527BD8(v5 + i - 16, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_274527C10(v21);
    if (!Strong)
    {
      v9 = v4 + 1;
      v10 = *(v5 + 16);
      if (v10 - 1 != v4)
      {
        while (v9 < v10)
        {
          sub_274527BD8(v5 + i, v21);
          v11 = swift_unknownObjectWeakLoadStrong();
          sub_274527C10(v21);
          if (v11)
          {
            swift_unknownObjectRelease();
            if (v9 != v4)
            {
              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v12 = *(v5 + 16);
              if (v4 >= v12)
              {
                goto LABEL_32;
              }

              sub_274527BD8(v5 + 32 + 16 * v4, v21);
              if (v9 >= v12)
              {
                goto LABEL_33;
              }

              sub_274527BD8(v5 + i, v20);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a1 + 16) = v5;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27453AD30();
                v5 = v14;
                *(a1 + 16) = v14;
              }

              if (v4 >= *(v5 + 16))
              {
                goto LABEL_34;
              }

              sub_274527C40(v20, v5 + 16 * v4 + 32);
              *(a1 + 16) = v5;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_35;
              }

              sub_274527C40(v21, v5 + i);
              *(a1 + 16) = v5;
            }

            ++v4;
          }

          ++v9;
          v10 = *(v5 + 16);
          i += 16;
          if (v9 == v10)
          {
            if (v9 < v4)
            {
              goto LABEL_36;
            }

            goto LABEL_22;
          }
        }

        goto LABEL_30;
      }

LABEL_22:
      sub_2745C3664(v4, v9);
      swift_endAccess();
      v15 = *(a1 + 16);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 32;

        do
        {
          sub_274527BD8(v17, v22);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v23;
            ObjectType = swift_getObjectType();
            (*(v18 + 8))(a2, ObjectType, v18);
            swift_unknownObjectRelease();
          }

          sub_274527C10(v22);
          v17 += 16;
          --v16;
        }

        while (v16);
      }

      else
      {
      }

      return;
    }

    swift_unknownObjectRelease();
    ++v4;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_27451EB58(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_1();
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  for (i = 48; ; i += 16)
  {
    if (v6 == v4)
    {
      v4 = *(v5 + 16);
      v9 = v4;
      goto LABEL_22;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    sub_274527BD8(v5 + i - 16, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_274527C10(v21);
    if (!Strong)
    {
      v9 = v4 + 1;
      v10 = *(v5 + 16);
      if (v10 - 1 != v4)
      {
        while (v9 < v10)
        {
          sub_274527BD8(v5 + i, v21);
          v11 = swift_unknownObjectWeakLoadStrong();
          sub_274527C10(v21);
          if (v11)
          {
            swift_unknownObjectRelease();
            if (v9 != v4)
            {
              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v12 = *(v5 + 16);
              if (v4 >= v12)
              {
                goto LABEL_32;
              }

              sub_274527BD8(v5 + 32 + 16 * v4, v21);
              if (v9 >= v12)
              {
                goto LABEL_33;
              }

              sub_274527BD8(v5 + i, v20);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a1 + 16) = v5;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27453AD30();
                v5 = v14;
                *(a1 + 16) = v14;
              }

              if (v4 >= *(v5 + 16))
              {
                goto LABEL_34;
              }

              sub_274527C40(v20, v5 + 16 * v4 + 32);
              *(a1 + 16) = v5;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_35;
              }

              sub_274527C40(v21, v5 + i);
              *(a1 + 16) = v5;
            }

            ++v4;
          }

          ++v9;
          v10 = *(v5 + 16);
          i += 16;
          if (v9 == v10)
          {
            if (v9 < v4)
            {
              goto LABEL_36;
            }

            goto LABEL_22;
          }
        }

        goto LABEL_30;
      }

LABEL_22:
      sub_2745C3664(v4, v9);
      swift_endAccess();
      v15 = *(a1 + 16);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 32;

        do
        {
          sub_274527BD8(v17, v22);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v23;
            ObjectType = swift_getObjectType();
            (*(v18 + 24))(a2, ObjectType, v18);
            swift_unknownObjectRelease();
          }

          sub_274527C10(v22);
          v17 += 16;
          --v16;
        }

        while (v16);
      }

      else
      {
      }

      return;
    }

    swift_unknownObjectRelease();
    ++v4;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_27451EDE8(void *a1)
{
  v2 = [a1 inputAction];
  sub_27451D9B8();

  sub_27451E8C0(v3, v1);
}

uint64_t sub_27451EE48(void *a1)
{
  v1 = [a1 actions];
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_0_10();
  v2 = sub_27463B81C();

  sub_274520070(v2);
}

uint64_t sub_27451EEE0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_27451EF40()
{
  type metadata accessor for ActionList(0);
  sub_274527B94(&qword_28094AFC8, type metadata accessor for ActionList);
  OUTLINED_FUNCTION_21_2();
  sub_274638EFC();
  sub_274638F3C();

  sub_27451EB58(v1, v0);
}

BOOL sub_27451F01C(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*(v1 + 24) actionTree];
  v4 = [v3 actionsGroupedWithAction_];

  result = 0;
  if (v4)
  {

    objc_opt_self();
    OUTLINED_FUNCTION_0_10();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if ([v5 mode] != 2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_27451F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_20_10(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16);
  if (result)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_54_1();
    v11 = swift_dynamicCastObjCClass();
    v12 = v9;
    if (v11)
    {
      [v11 setCollapsed_];
    }

    v14 = *(v8 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions);

    sub_27452179C();
    return sub_27451DE7C(v14);
  }

  return result;
}

uint64_t sub_27451F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_20_10(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16);
  if (result)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_54_1();
    v11 = swift_dynamicCastObjCClass();
    v12 = v9;
    if (v11)
    {
      [v11 setCollapsed_];
    }

    v14 = *(v8 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions);

    sub_2745FE8EC(v12, &v15);
    return sub_27451DE7C(v14);
  }

  return result;
}

void sub_27451F220()
{
  OUTLINED_FUNCTION_55_1();
  sub_27451DF10(MEMORY[0x277D84FA0]);
  v1 = sub_27451D914();
  if (!v1)
  {
    goto LABEL_10;
  }

  sub_27451D928();
  v2 = [*(v0 + 24) actions];
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_54_1();
  v3 = sub_27463B81C();

  v4 = sub_274453594(v3);
  if (!v4)
  {
LABEL_9:

    sub_27451EB58(v10, v0);
LABEL_10:
    OUTLINED_FUNCTION_56_0();
    return;
  }

  v5 = v4;
  if (v4 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = OUTLINED_FUNCTION_13_3();
        v8 = MEMORY[0x277C58B20](v7);
      }

      else
      {
        v8 = *(v3 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setActionTree_];
    }

    goto LABEL_9;
  }

  __break(1u);
}

void sub_27451F32C(void **a1)
{
  v2 = v1;
  v3 = *a1;
  objc_opt_self();
  OUTLINED_FUNCTION_54_1();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v10 = v3;
    if ([v5 mode] || (v10 = v10, v6 = sub_274527314(v5), !v7))
    {
    }

    else
    {
      v8 = v6;
      v9 = v7;
      v11 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_collapsedActionGroupIdentifiersForDragging);

      sub_274521FF8(&v12, v8, v9);

      sub_27451DF10(v11);
    }
  }
}

void sub_27451F424()
{
  OUTLINED_FUNCTION_55_1();
  v2 = v1;
  sub_27451D928();
  v3 = [v2 actions];
  sub_274412734(0, &qword_28094E040);
  v4 = sub_27463B81C();

  v5 = sub_274453594(v4);
  if (!v5)
  {
LABEL_8:

    sub_27451EB58(v10, v0);
    OUTLINED_FUNCTION_56_0();
    return;
  }

  v6 = v5;
  if (v5 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C58B20](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setActionTree_];
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_27451F52C()
{
  OUTLINED_FUNCTION_55_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_7();

  sub_274527384();
  sub_27463BACC();
  sub_27463BB0C();
  v6 = sub_27463BAFC();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_25_1();
  v7(v8);
  if (v6 == v2)
  {
    v9 = [*(v0 + 24) actions];
    sub_274412734(0, &qword_28094E040);
    OUTLINED_FUNCTION_0_10();
    v10 = sub_27463B81C();

    sub_274453594(v10);
LABEL_5:

    OUTLINED_FUNCTION_56_0();
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_7();

  v11 = sub_27463831C();
  v12 = OUTLINED_FUNCTION_25_1();
  v7(v12);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v11 + 16) > v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_27451F738()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v22 - v10;
  v12 = *(v1 + 24);
  v13 = [v12 actions];
  sub_274412734(0, &qword_28094E040);
  v14 = sub_27463B81C();

  v15 = sub_274453594(v14);

  if (v15 == v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    sub_274527384();
    OUTLINED_FUNCTION_24_3();
    sub_27463BACC();
    OUTLINED_FUNCTION_24_3();
    sub_27463BB0C();
    sub_27463BAFC();
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    v16 = [v12 actions];
    v17 = sub_27463B81C();

    sub_2744535A4(v3, (v17 & 0xC000000000000001) == 0);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x277C58B20](v3, v17);
    }

    else
    {
      v18 = *(v17 + 8 * v3 + 32);
    }

    v19 = v18;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v22 = v19;
    sub_27463837C();
    v20 = OUTLINED_FUNCTION_13_3();
    v21(v20);
    if (v23)
    {
    }
  }

  OUTLINED_FUNCTION_23();
}

id sub_27451F9FC(uint64_t a1)
{
  v3 = sub_27451D914();
  if (!v3)
  {
    v3 = [*(v1 + 24) actionTree];
  }

  v4 = v3;
  v5 = [v3 actionIsConnectedToPreviousAction_];

  return v5;
}

void sub_27451FA64(uint64_t a1)
{
  v3 = sub_27451D914();
  if (!v3)
  {
    v3 = [*(v1 + 24) actionTree];
  }

  v4 = v3;
  v5 = [v3 indexOfAction_];
  if (v5 == sub_274637CAC())
  {
  }

  else
  {
    v6 = [v4 indentationLevelOfActionAtIndex_];

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }
}

uint64_t sub_27451FB04(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*(v1 + 24) actionTree];
  v4 = [v3 actionsGroupedWithAction_];

  if (!v4)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_0_10();
  v5 = sub_27463B81C();

  return v5;
}

uint64_t sub_27451FB98(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*(v1 + 24) actionTree];
  v4 = [v3 actionsInControlFlowBranch_];

  if (!v4)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_0_10();
  v5 = sub_27463B81C();

  v6 = sub_274453594(v5);

  return v6;
}

char *sub_27451FC40(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v54 = MEMORY[0x277D84F90];
    sub_2744512AC(0, v4, 0);
    v5 = v54;
    v6 = (a1 + 32);
    v7 = v54[2];
    v8 = v4;
    do
    {
      v9 = *v6;
      v54 = v5;
      v10 = *(v5 + 24);
      if (v7 >= v10 >> 1)
      {
        v11 = OUTLINED_FUNCTION_0_8(v10);
        sub_2744512AC(v11, v7 + 1, 1);
        v5 = v54;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + 8 * v7 + 32) = v9;
      v6 += 3;
      ++v7;
      --v8;
    }

    while (v8);
    v3 = MEMORY[0x277D84F90];
  }

  v12 = sub_2745E18E8();
  v56 = MEMORY[0x277D84FA0];
  if (v4)
  {
    v50 = v4;
    v51 = v12;
    v13 = 0;
    v14 = a1 + 32;
    v49 = a1 + 32;
    while (1)
    {
      v15 = v14 + 24 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v56;
      if (*(v56 + 16))
      {
        v52 = *(v15 + 8);
        sub_27463C74C();
        MEMORY[0x277C58EA0](v16);
        v19 = sub_27463C7AC();
        v17 = v52;
        v20 = ~(-1 << *(v18 + 32));
        while (1)
        {
          v21 = v19 & v20;
          if (((*(v18 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {
            break;
          }

          v19 = v21 + 1;
          if (*(*(v18 + 48) + 8 * v21) == v16)
          {
            goto LABEL_39;
          }
        }
      }

      v54 = v16;
      v55 = v17;
      v53 = v16;
      v22 = sub_27451FB04(&v54);
      if (!v22)
      {
        goto LABEL_28;
      }

      v23 = v22;
      v24 = sub_274453594(v22);
      if (v24)
      {
        v25 = v24;
        v54 = v3;
        v26 = OUTLINED_FUNCTION_34_5();
        result = sub_2744512AC(v26, v27, v28);
        if (v25 < 0)
        {
          __break(1u);
          return result;
        }

        v30 = 0;
        v31 = v54;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x277C58B20](v30, v23);
          }

          else
          {
            v32 = *(v23 + 8 * v30 + 32);
          }

          v33 = v32;

          v54 = v31;
          v35 = *(v31 + 16);
          v34 = *(v31 + 24);
          if (v35 >= v34 >> 1)
          {
            v36 = OUTLINED_FUNCTION_0_8(v34);
            sub_2744512AC(v36, v35 + 1, 1);
            v31 = v54;
          }

          ++v30;
          *(v31 + 16) = v35 + 1;
          *(v31 + 8 * v35 + 32) = v33;
        }

        while (v25 != v30);
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        v31 = v3;
      }

      if (sub_27451D694(v37, v51))
      {
        break;
      }

      sub_2745882AC(v31);
      sub_2744535A4(0, (v23 & 0xC000000000000001) == 0);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x277C58B20](0, v23);
      }

      else
      {
        v41 = *(v23 + 32);
      }

      v42 = v41;
      v14 = v49;
      v4 = v50;

      v43 = sub_2744F4830();

      v44 = v43;
      MEMORY[0x277C57F30]();
      v45 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v45);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v46 = sub_27451B594(v44);
      if (!v46)
      {
        v46 = v3;
      }

      sub_27445BC10(v46);

      v38 = v53;
LABEL_38:

LABEL_39:
      if (++v13 == v4)
      {

        goto LABEL_43;
      }
    }

    v14 = v49;
    v4 = v50;
LABEL_28:
    v38 = v53;
    v39 = v53;
    sub_2744F4830();

    MEMORY[0x277C57F30]();
    v40 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v40 >> 1)
    {
      OUTLINED_FUNCTION_0_8(v40);
      sub_27463B85C();
    }

    sub_27463B8AC();
    goto LABEL_38;
  }

LABEL_43:

  if (a2)
  {
    return v57;
  }

  sub_274412734(0, &qword_28094E040);
  v47 = sub_2744F386C(v57);

  return v47;
}

void sub_274520070(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor10ActionList_lastActions;

  OUTLINED_FUNCTION_24_3();
  sub_2744F5CB4();
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    *(v1 + v3) = a1;

    sub_274520100();
    sub_274520448();
    sub_274520F34(a1);
  }
}

void sub_274520100()
{
  OUTLINED_FUNCTION_22_6();
  v1 = [*(v0 + 24) actions];
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_27463B81C();

  v3 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v4 = sub_274453594(v2);
  v5 = 0;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x277C58B20](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277C57F30]();
      v8 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v8);
        sub_27463B85C();
      }

      OUTLINED_FUNCTION_44_3();
      sub_27463B8AC();
      v3 = v26;
      ++v5;
    }

    else
    {

      ++v5;
    }
  }

  v27 = MEMORY[0x277D84F90];
  v9 = sub_274453594(v3);
  for (i = 0; v9 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C58B20](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v11 = *(v3 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      goto LABEL_41;
    }

    if ([v11 mode] == 2 || (objc_msgSend(v12, sel_isCollapsed) & 1) == 0)
    {
    }

    else
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }
  }

  v13 = v27;
  v14 = sub_274453594(v27);
  if (v14)
  {
    v15 = v14;
    v28 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_34_5();
    sub_2744512AC(v16, v17, v18);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x277C58B20](v19, v13);
          swift_unknownObjectRelease();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v19 >= *(v13 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v13 + 8 * v19 + 32);
        }

        v22 = *(v28 + 16);
        v21 = *(v28 + 24);
        if (v22 >= v21 >> 1)
        {
          v23 = OUTLINED_FUNCTION_0_8(v21);
          sub_2744512AC(v23, v22 + 1, 1);
        }

        ++v19;
        *(v28 + 16) = v22 + 1;
        *(v28 + 8 * v22 + 32) = v20;
        if (v15 == v19)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_45;
  }

LABEL_36:

  sub_2745E18E8();
  OUTLINED_FUNCTION_21_10();

  sub_27451DE7C(v24);
}

void sub_274520448()
{
  OUTLINED_FUNCTION_24();
  v2 = v0;
  v61 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v60 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v49 - v16;
  v18 = *(v0 + 24);

  v19 = [v18 actionTree];
  sub_274520950();

  v20 = v8;

  sub_274638C2C();
  v22 = *(v8 + 16);
  v21 = v8 + 16;
  v59 = v22;
  v22(v14, v17, v6);
  v23 = sub_274638D9C();
  v24 = sub_27463BC1C();
  if (!os_log_type_enabled(v23, v24))
  {

    v39 = *(v20 + 8);
    v39(v14, v6);
    (*(v4 + 8))(v1, v61);
LABEL_11:
    v59(v60, v17, v6);
    sub_27451DAF8();
    sub_2745E09D0();

    sub_27451E628(v48, v2);
    v39(v17, v6);
    OUTLINED_FUNCTION_23();
    return;
  }

  v52 = v24;
  v54 = v23;
  v57 = v17;
  v58 = v4;
  v25 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v64 = v51;
  v53 = v25;
  *v25 = 136315138;
  sub_274527384();
  v26 = sub_27463BADC();
  v27 = MEMORY[0x277D84F90];
  v55 = v20;
  v56 = v1;
  if (!v26)
  {
LABEL_10:
    v40 = v61;
    v41 = MEMORY[0x277C57F80](v27, MEMORY[0x277D837D0]);
    v43 = v42;

    v39 = *(v55 + 8);
    v39(v14, v6);
    v44 = sub_2745E7980(v41, v43, &v64);

    v45 = v53;
    *(v53 + 1) = v44;
    v46 = v54;
    _os_log_impl(&dword_2743F0000, v54, v52, "Visible actions: %s", v45, 0xCu);
    v47 = v51;
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x277C5A270](v47, -1, -1);
    MEMORY[0x277C5A270](v45, -1, -1);

    (*(v58 + 8))(v56, v40);
    v17 = v57;
    goto LABEL_11;
  }

  v28 = v26;
  v63 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_34_5();
  sub_27445128C();
  v27 = v63;
  sub_27463BACC();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v49[1] = v21;
    v50 = v2;
    do
    {
      v29 = sub_27463BB3C();
      v31 = *(v30 + 8);
      v29(&v62, 0);
      v32 = v31;
      v33 = [v32 identifier];
      v34 = sub_27463B6AC();
      v36 = v35;

      v63 = v27;
      v37 = *(v27 + 16);
      if (v37 >= *(v27 + 24) >> 1)
      {
        sub_27445128C();
        v27 = v63;
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      sub_27463BB1C();
      --v28;
    }

    while (v28);
    v2 = v50;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_274520950()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_27444A444();
  v7 = MEMORY[0x277D84F90];
  sub_27463832C();
  v8 = [v0 actionsInsideAction_];
  if (v8)
  {
    v9 = v8;
    sub_274412734(0, &qword_28094E040);
    v7 = sub_27463B81C();
  }

  result = sub_274453594(v7);
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v11; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C58B20](i, v7);
      }

      else
      {
        v13 = *(v7 + 8 * i + 32);
      }

      v14 = v13;
      sub_274520AC0(v13, v4, v2, v6);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_274520A80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionList(0);
  result = sub_274638EFC();
  *a1 = result;
  return result;
}