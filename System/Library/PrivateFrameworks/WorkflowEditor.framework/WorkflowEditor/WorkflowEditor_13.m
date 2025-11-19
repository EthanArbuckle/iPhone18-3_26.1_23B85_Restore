uint64_t sub_274533638(uint64_t a1)
{
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 80);
  v6 = *(a1 + 72);
  v11 = v6;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27443FF80(&v11, &qword_28094E440);
    result = (*(v3 + 8))(v5, v2);
    v6 = v10[1];
  }

  if (v6)
  {
    sub_27463875C();
  }

  return result;
}

void sub_2745337DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  sub_27463B11C();
  v24 = a2;
  v25 = v9;
  v26 = v8;
  v27 = v10;
  v28 = v11;
  sub_27463946C();

  v31 = *(a2 + 80);
  v12 = *(a2 + 72);
  v30 = v12;
  v13 = v31;

  if ((v13 & 1) == 0)
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    v23 = v4;
    v15 = v14;
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27443FF80(&v30, &qword_28094E440);
    (*(v5 + 8))(v7, v23);
    v12 = v29;
  }

  if (v12)
  {
    sub_27452F73C(v9, v8, v10, v11);
    sub_27463875C();
  }

  if (v8)
  {
    v16 = *(a2 + 8);
    if (v16)
    {
      v17 = v8;
      v18 = v16;
      sub_27463B1BC();
      sub_27443DA88(v17, 1, v19, v20, 0);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_274534C04(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      v21 = v8;
      sub_27463978C();
      __break(1u);
    }
  }
}

uint64_t sub_274533AB0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809549E0);
  return sub_27463ACFC();
}

void sub_274533B24(uint64_t a1, int64_t a2)
{
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274638C1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (!*(a1 + 16))
  {
    if (v12)
    {
      v16 = *(a1 + 8);
      v73 = a2;
      v74 = v7;
      v38 = v12;
      v39 = *(a2 + 24);
      if (!v39)
      {
        type metadata accessor for WorkflowEditorResults(0);
        sub_274534C04(&unk_28094C450, type metadata accessor for WorkflowEditorResults);

        v69 = v38;
        goto LABEL_65;
      }

      v40 = v5;
      v41 = v4;

      v42 = v38;
      v43 = v39;
      v44 = v42;
      sub_27443A104();

      v4 = v41;
      v5 = v40;
      a2 = v73;
      v7 = v74;
    }

    else
    {
      v16 = *(a1 + 8);
    }

    (*(v9 + 104))(v11, *MEMORY[0x277D79BE8], v8);
    v45 = sub_274638C0C();
    (*(v9 + 8))(v11, v8);
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (!v16)
    {
      return;
    }

    BYTE8(v75) = *(a2 + 48);
    v22 = *(a2 + 40);
    *&v75 = v22;
    v46 = BYTE8(v75);

    if ((v46 & 1) == 0)
    {
      sub_27463BC0C();
      v47 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_27443FF80(&v75, &qword_28094E9A0);
      v5[1](v7, v4);
      v22 = v79;
    }

    if (!v22)
    {
LABEL_25:

      return;
    }

    v74 = *(v22 + 24);

    if ((v16 & 0xC000000000000001) != 0)
    {
      v48 = sub_27463C51C();
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v16 = v48 | 0x8000000000000000;
    }

    else
    {
      v54 = -1 << *(v16 + 32);
      v49 = v16 + 64;
      v50 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v51 = v56 & *(v16 + 64);
    }

    v5 = 0;
    v73 = v50;
    a2 = (v50 + 64) >> 6;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_40:
    v57 = sub_27463C55C();
    if (!v57 || (v59 = v58, v78 = v57, sub_274412734(0, &unk_28094C200), swift_dynamicCast(), v22 = v79, v78 = v59, sub_274412734(0, &unk_280950440), swift_dynamicCast(), v11 = v79, v4 = v5, v60 = v51, !v22))
    {
LABEL_55:

      sub_274406A24();
      return;
    }

    while (1)
    {
      v65 = [v22 integerValue];
      v5 = [v74 actions];
      sub_274412734(0, &qword_28094E040);
      v66 = sub_27463B81C();

      if ((v66 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x277C58B20](v65, v66);
      }

      else
      {
        if ((v65 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        if (v65 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v67 = *(v66 + 8 * v65 + 32);
      }

      v68 = v67;

      [v68 setOutput_];

      v5 = v4;
      v51 = v60;
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

LABEL_43:
      v61 = v5;
      v62 = v51;
      v4 = v5;
      if (!v51)
      {
        break;
      }

LABEL_47:
      v60 = (v62 - 1) & v62;
      v63 = (v4 << 9) | (8 * __clz(__rbit64(v62)));
      v64 = *(*(v16 + 56) + v63);
      v22 = *(*(v16 + 48) + v63);
      v11 = v64;
      if (!v22)
      {
        goto LABEL_55;
      }
    }

    while (1)
    {
      v4 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v4 >= a2)
      {
        goto LABEL_55;
      }

      v62 = *(v49 + 8 * v4);
      v61 = (v61 + 1);
      if (v62)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (*(a1 + 16) != 1)
  {
    return;
  }

  v80 = *(a2 + 48);
  v13 = *(a2 + 40);
  v79 = v13;
  v14 = v80;

  if ((v14 & 1) == 0)
  {
    sub_27463BC0C();
    v15 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27443FF80(&v79, &qword_28094E9A0);
    v5[1](v7, v4);
    v13 = v75;
  }

  if (!v13)
  {
    goto LABEL_30;
  }

  v16 = v13[3];

  v17 = sub_274637D5C();
  v18 = [v17 userInfo];

  v19 = sub_27463B4CC();
  v20 = sub_27463B6AC();
  sub_27452F288(v20, v21, v19, &v75);

  if (v77)
  {
    if (swift_dynamicCast())
    {
      v74 = v7;
      v22 = v78;
      v23 = [v16 actions];
      sub_274412734(0, &qword_28094E040);
      v24 = sub_27463B81C();

      v25 = sub_274453594(v24);

      if (v22 >= v25)
      {

        goto LABEL_29;
      }

      v26 = [v16 actions];
      v11 = sub_27463B81C();

      sub_2744535A4(v22, (v11 & 0xC000000000000001) == 0);
      if ((v11 & 0xC000000000000001) == 0)
      {
        v27 = *(v11 + 8 * v22 + 32);
LABEL_11:
        v28 = v27;

        v29 = *(a2 + 8);
        if (v29)
        {
          v73 = v4;
          v30 = v29;
          sub_27463B1BC();
          sub_27443DA88(v28, 1, v31, v32, 0);

          v33 = *(a2 + 24);
          if (v33)
          {
            swift_getErrorValue();
            v34 = v33;
            v35 = v28;
            v36 = sub_27463C72C();
            *&v75 = v35;
            *(&v75 + 1) = v36;
            v76 = v37;
            sub_274439E10();

            v4 = v73;
LABEL_29:
            v7 = v74;
            goto LABEL_30;
          }

          type metadata accessor for WorkflowEditorResults(0);
          v70 = &unk_28094C450;
          v71 = type metadata accessor for WorkflowEditorResults;
        }

        else
        {
          type metadata accessor for WorkflowEditorOptions(0);
          v70 = &qword_28094A730;
          v71 = type metadata accessor for WorkflowEditorOptions;
        }

        sub_274534C04(v70, v71);
LABEL_65:
        sub_27463978C();
        __break(1u);
        return;
      }

LABEL_60:
      v27 = MEMORY[0x277C58B20](v22, v11);
      goto LABEL_11;
    }
  }

  else
  {

    sub_27443FF80(&v75, &unk_28094A230);
  }

LABEL_30:
  BYTE8(v75) = *(a2 + 64);
  v52 = *(a2 + 56);
  *&v75 = v52;
  if (BYTE8(v75) == 1)
  {
    swift_unknownObjectRetain();
    if (!v52)
    {
      return;
    }

LABEL_34:
    swift_getObjectType();
    sub_27463BD6C();
    swift_unknownObjectRelease();
    return;
  }

  sub_27463BC0C();
  v53 = sub_27463A2FC();
  sub_274638CEC();

  sub_274639AAC();
  swift_getAtKeyPath();
  sub_27443FF80(&v75, &unk_280950430);
  v5[1](v7, v4);
  if (v78)
  {
    goto LABEL_34;
  }
}

unint64_t sub_2745345D4()
{
  result = qword_2809503D8;
  if (!qword_2809503D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809503D8);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  j__swift_release(*(v0 + 56), *(v0 + 64));
  sub_274482198(*(v0 + 72), *(v0 + 80));
  j__swift_release(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_2745346F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809503E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_274534764(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_274534774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274535B48();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2745347D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = sub_274639ABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a4)
  {
    if (a3)
    {
LABEL_3:
      v14 = 1;
LABEL_7:
      KeyPath = swift_getKeyPath();
      v18 = swift_allocObject();
      *(v18 + 16) = v14 & 1;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950488);
      (*(*(v19 - 8) + 16))(a5, a1, v19);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950490);
      v21 = (a5 + *(result + 36));
      *v21 = KeyPath;
      v21[1] = sub_2744826D8;
      v21[2] = v18;
      return result;
    }
  }

  else
  {

    sub_27463BC0C();
    v15 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(a3, 0);
    (*(v11 + 8))(v13, v10);
    if (v22[15])
    {
      goto LABEL_3;
    }
  }

  if (a2)
  {
    v16 = a2;
    v14 = sub_27443B4C4();

    goto LABEL_7;
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_274534C04(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

id sub_274534A78(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = sub_274637E3C();
  v8 = [v3 initWithWorkflowData:v7 runSource:a3];

  sub_2744F52B4(a1, a2);
  return v8;
}

id sub_274534AEC(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v12 = [v6 initWithWorkflow:a1 state:a2 runSource:a3 input:a4 remoteDialogPresenterEndpoint:a5 requestOutput:a6 & 1];

  return v12;
}

uint64_t sub_274534B70@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_274534BA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = *(a1 + 12);
  v10 = v6;
  return a5(v7, v6, v8, v9);
}

uint64_t sub_274534C04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274534C48(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_27463B71C();
  v4 = sub_27463C7AC();

  return sub_274535018(a1, a2, v4);
}

void sub_274534CC0()
{
  OUTLINED_FUNCTION_3_28();
  sub_27463BF6C();
  sub_274535464();
}

unint64_t sub_274534D08()
{
  OUTLINED_FUNCTION_5_25();
  MEMORY[0x277C58EA0](v0);
  sub_27463C7AC();
  v1 = OUTLINED_FUNCTION_54_1();

  return sub_2745350F0(v1, v2);
}

unint64_t sub_274534D60()
{
  OUTLINED_FUNCTION_5_25();
  (*(*v0 + 200))(v4);
  sub_27463C7AC();
  v1 = OUTLINED_FUNCTION_54_1();

  return sub_274535150(v1, v2);
}

unint64_t sub_274534DD8(uint64_t a1)
{
  v2 = sub_27463C73C();

  return sub_2745350F0(a1, v2);
}

unint64_t sub_274534E1C()
{
  OUTLINED_FUNCTION_3_28();
  sub_27463BF6C();
  v0 = OUTLINED_FUNCTION_21_2();

  return sub_274535200(v0, v1);
}

unint64_t sub_274534E54()
{
  OUTLINED_FUNCTION_3_28();
  sub_27463C2EC();
  v0 = OUTLINED_FUNCTION_21_2();

  return sub_2745352C0(v0, v1);
}

unint64_t sub_274534E8C()
{
  OUTLINED_FUNCTION_5_25();
  sub_27463C30C();
  MEMORY[0x277C58EA0](*(v0 + 40));
  sub_27463C7AC();
  v1 = OUTLINED_FUNCTION_54_1();

  return sub_274535384(v1, v2);
}

void sub_274534EF0()
{
  OUTLINED_FUNCTION_3_28();
  sub_27463BF6C();
  sub_274535464();
}

void sub_274534F88()
{
  sub_27463B6AC();
  sub_27463C74C();
  sub_27463B71C();
  sub_27463C7AC();

  sub_274535524();
}

unint64_t sub_274535018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_27463C6BC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2745350F0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_274535150(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_274599D28();
    if (v5 == sub_274599D28())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_274535200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for WFEditorCell();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_27463BF7C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2745352C0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_27448E108(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x277C58A40](v8, a1);
    sub_274430664(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_274535384(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_274434ED4(*(v2 + 48) + 48 * v4, v9);
      if (MEMORY[0x277C58A40](v9, a1))
      {
        v7 = v9[5];
        sub_2744AE910(v9);
        if (v7 == *(a1 + 40))
        {
          return v4;
        }
      }

      else
      {
        sub_2744AE910(v9);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_274535464()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = v0;
  v4 = v0 + 64;
  v5 = ~(-1 << *(v0 + 32));
  for (i = v6 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_274412734(0, v2);
    v8 = *(*(v3 + 48) + 8 * i);
    v9 = sub_27463BF7C();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_23();
}

void sub_274535524()
{
  OUTLINED_FUNCTION_24();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_27463B6AC();
    v6 = v5;
    if (v4 == sub_27463B6AC() && v6 == v7)
    {

      break;
    }

    v9 = sub_27463C6BC();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_27453561C()
{
  OUTLINED_FUNCTION_10_17();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_25(v4);

  return sub_27453125C(v6, v7, v8, v9, v1, v2, v0);
}

uint64_t sub_2745356C8()
{
  OUTLINED_FUNCTION_10_17();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_25(v4);

  return sub_274530B34(v6, v7, v8, v9, v1, v2, v0);
}

uint64_t sub_274535774()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_25(v3);

  return sub_2745307FC(v5, v6, v7, v8, v1);
}

uint64_t sub_274535818()
{

  OUTLINED_FUNCTION_92();

  return v0();
}

unint64_t sub_274535908()
{
  result = qword_280950468;
  if (!qword_280950468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950468);
  }

  return result;
}

uint64_t sub_27453597C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2745359D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_274535A48()
{
  result = qword_280950478;
  if (!qword_280950478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950480);
    sub_274458A14(&qword_2809503F8, &qword_2809503E8);
    sub_274458A14(&unk_280950400, &qword_2809503F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950478);
  }

  return result;
}

unint64_t sub_274535B48()
{
  result = qword_280950498;
  if (!qword_280950498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950498);
  }

  return result;
}

unint64_t sub_274535B9C()
{
  result = qword_2809504A0;
  if (!qword_2809504A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950490);
    sub_274458A14(&qword_2809504A8, &qword_280950488);
    sub_274458A14(&unk_28094C740, &qword_280949FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809504A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return sub_27463C74C();
}

uint64_t OUTLINED_FUNCTION_15_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = v2;
  *(result + 24) = a2;
  *(result + 32) = v4;
  *(result + 40) = v3 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_27463C6BC();
}

void OUTLINED_FUNCTION_28_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_29_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_30_7()
{
}

uint64_t WFPhotoItemCollectionParameter.view(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809504B0);
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

  sub_27444AD04(v25, 0, 4, 0, 0, v3 + v24);
  *(v3 + v1[13]) = 0;
  sub_2745379AC(v3, v6);
  sub_27440CA78(&unk_2809504C0, &unk_2809504B0);
  return sub_27463AE9C();
}

id WFPhotoItemCollectionParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  v106 = *MEMORY[0x277D85DE8];
  v4 = sub_274638DAC();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &qword_28094BD80);
  v8 = [v1 localizedLabel];
  v9 = sub_27463B6AC();
  v11 = v10;

  v12 = sub_27444C12C(v1);
  v14 = v13;
  v15 = sub_27463B66C();
  v16 = sub_27444AEE4(v9, v11, v12, v14, v15);
  if (a1)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      swift_unknownObjectRetain();
      v19 = [v18 variable];
      if (v19)
      {
        v20 = v19;
        [v16 populateWith_];

LABEL_47:
        swift_unknownObjectRelease();
        return v16;
      }

      v103 = v5;
      v21 = [v18 value];
      if (!v21)
      {
        goto LABEL_47;
      }

      v22 = v21;
      v23 = [v21 items];
      sub_274412734(0, &unk_2809504D0);
      v24 = sub_27463B81C();

      v25 = sub_274453594(v24);

      if (!v25)
      {
        goto LABEL_45;
      }

      v102 = v16;
      v26 = [v22 items];
      v27 = sub_27463B81C();

      v28 = sub_274453594(v27);

      v29 = sub_27463B66C();
      v30 = v22;
      v31 = [v2 areItemsInPhotoItemCollectionOfType:v22 type:v29];

      if (v31)
      {
        v22 = v30;
        if (v28 == 1)
        {
          v2 = [v30 items];
          v32 = sub_27463B81C();

          if (sub_274453594(v32))
          {
            sub_2744535A4(0, (v32 & 0xC000000000000001) == 0);
            if ((v32 & 0xC000000000000001) != 0)
            {
              v33 = MEMORY[0x277C58B20](0, v32);
            }

            else
            {
              v33 = *(v32 + 32);
            }

            v34 = v33;
            v16 = v102;

            v35 = [objc_opt_self() sharedLibrary];
            v104 = 0;
            v36 = [v35 systemPhotoLibraryWithError_];

            if (v36)
            {
              v37 = v104;
              v38 = sub_2745CBF64(v34, v36);
              if (v39)
              {
                v40 = v38;
                v41 = v39;
                v42 = [v36 librarySpecificFetchOptions];
                v43 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0);
                v44 = swift_allocObject();
                *(v44 + 16) = xmmword_274648570;
                *(v44 + 32) = v40;
                *(v44 + 40) = v41;
                v45 = sub_27463B7FC();

                v46 = [v43 fetchAssetCollectionsWithLocalIdentifiers:v45 options:v42];

                v47 = [v46 firstObject];
                if (v47)
                {
                  v48 = [v47 localizedTitle];
                  if (v48)
                  {
                    v49 = v48;
                    sub_27463B6AC();
                    OUTLINED_FUNCTION_9_13();

LABEL_42:
                    v22 = v30;
                    goto LABEL_32;
                  }
                }

                else
                {
                }

                v76 = 0;
                v22 = v30;
                goto LABEL_46;
              }

              v88 = sub_27463B70C();
              v89 = v88;
              v91 = v90;
              v92 = HIBYTE(v90) & 0xF;
              if ((v90 & 0x2000000000000000) == 0)
              {
                v92 = v88 & 0xFFFFFFFFFFFFLL;
              }

              if (v92)
              {
                OUTLINED_FUNCTION_4_23();

                v104 = v89;
                v105 = v91;
                OUTLINED_FUNCTION_3_29();
                v93 = OUTLINED_FUNCTION_1_26();
                OUTLINED_FUNCTION_10_18(v93, v94);
                OUTLINED_FUNCTION_29_6();
                if (qword_2809492C0 != -1)
                {
                  OUTLINED_FUNCTION_2_22();
                }

                v95 = qword_28094BB00;
                v96 = sub_27463B66C();

                v97 = sub_27463B66C();

                v98 = [v95 localizedStringForKey:v96 value:v97 table:0];

                sub_27463B6AC();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
              v99 = swift_allocObject();
              *(v99 + 16) = xmmword_274648570;
              v100 = MEMORY[0x277D83C10];
              *(v99 + 56) = MEMORY[0x277D83B88];
              *(v99 + 64) = v100;
              *(v99 + 32) = 1;
              sub_27463B67C();
              OUTLINED_FUNCTION_9_13();

              goto LABEL_42;
            }

            v77 = v104;
            v78 = sub_274637D6C();

            swift_willThrow();
            sub_274638C2C();
            v79 = v78;
            v80 = sub_274638D9C();
            v81 = sub_27463BBFC();

            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              v102 = v34;
              v84 = v83;
              *v82 = 138412290;
              v85 = v78;
              v86 = _swift_stdlib_bridgeErrorToNSError();
              *(v82 + 4) = v86;
              *v84 = v86;
              _os_log_impl(&dword_2743F0000, v80, v81, "cannot open photo library: %@", v82, 0xCu);
              sub_274537A1C(v84);
              MEMORY[0x277C5A270](v84, -1, -1);
              v87 = v82;
              v22 = v30;
              MEMORY[0x277C5A270](v87, -1, -1);
            }

            else
            {
            }

            (*(v103 + 8))(v7, v4);
LABEL_45:
            v76 = 0;
            goto LABEL_46;
          }
        }

        sub_27463B70C();
        OUTLINED_FUNCTION_2_23();
        if (v66)
        {
          OUTLINED_FUNCTION_4_23();

          v104 = v4;
          v105 = v2;
          OUTLINED_FUNCTION_3_29();
          v67 = OUTLINED_FUNCTION_1_26();
          OUTLINED_FUNCTION_10_18(v67, v68);
          OUTLINED_FUNCTION_29_6();
          if (qword_2809492C0 != -1)
          {
            OUTLINED_FUNCTION_2_22();
          }

          v69 = sub_27463B66C();

          OUTLINED_FUNCTION_7_22();
          v70 = sub_27463B66C();

          v72 = OUTLINED_FUNCTION_6_15(v71, sel_localizedStringForKey_value_table_);

          sub_27463B6AC();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
        v73 = swift_allocObject();
        v74 = MEMORY[0x277D83B88];
        *(v73 + 16) = xmmword_274648570;
        v75 = MEMORY[0x277D83C10];
        *(v73 + 56) = v74;
        *(v73 + 64) = v75;
        *(v73 + 32) = v28;
        OUTLINED_FUNCTION_7_22();
        sub_27463B67C();
        OUTLINED_FUNCTION_9_13();

        v16 = v102;
        goto LABEL_32;
      }

      v50 = sub_27463B66C();
      v51 = [v2 areItemsInPhotoItemCollectionOfType:v30 type:v50];

      v22 = v30;
      if (v51)
      {
        sub_27463B70C();
        OUTLINED_FUNCTION_2_23();
        v52 = v28;
        if (v53)
        {
          OUTLINED_FUNCTION_4_23();

          v104 = v4;
          v105 = v51;
          OUTLINED_FUNCTION_3_29();
          v54 = OUTLINED_FUNCTION_1_26();
          OUTLINED_FUNCTION_10_18(v54, v55);
          OUTLINED_FUNCTION_29_6();
          v16 = v102;
          if (qword_2809492C0 == -1)
          {
            goto LABEL_23;
          }

          goto LABEL_53;
        }
      }

      else
      {
        sub_27463B70C();
        OUTLINED_FUNCTION_2_23();
        v52 = v28;
        if (v56)
        {
          OUTLINED_FUNCTION_4_23();

          v104 = v4;
          v105 = v51;
          OUTLINED_FUNCTION_3_29();
          v57 = OUTLINED_FUNCTION_1_26();
          OUTLINED_FUNCTION_10_18(v57, v58);
          OUTLINED_FUNCTION_29_6();
          v16 = v102;
          if (qword_2809492C0 == -1)
          {
LABEL_23:
            v59 = sub_27463B66C();

            OUTLINED_FUNCTION_7_22();
            v60 = sub_27463B66C();

            v62 = OUTLINED_FUNCTION_6_15(v61, sel_localizedStringForKey_value_table_);

            sub_27463B6AC();
LABEL_25:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
            v63 = swift_allocObject();
            v64 = MEMORY[0x277D83B88];
            *(v63 + 16) = xmmword_274648570;
            v65 = MEMORY[0x277D83C10];
            *(v63 + 56) = v64;
            *(v63 + 64) = v65;
            *(v63 + 32) = v52;
            OUTLINED_FUNCTION_7_22();
            sub_27463B67C();
            OUTLINED_FUNCTION_9_13();

LABEL_32:
            v76 = sub_27463B66C();

LABEL_46:
            [v16 populateWithString_];

            goto LABEL_47;
          }

LABEL_53:
          OUTLINED_FUNCTION_2_22();
          goto LABEL_23;
        }
      }

      v16 = v102;
      goto LABEL_25;
    }
  }

  return v16;
}

id sub_274536C54(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFPhotoItemCollectionParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

id sub_274536CBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 items];
  sub_274412734(0, &unk_2809504D0);
  v6 = sub_27463B81C();

  v7 = sub_274453594(v6);

  if (v7)
  {
    v8 = [a1 items];
    v9 = sub_27463B81C();

    result = sub_274453594(v9);
    v11 = result;
    for (i = 0; ; ++i)
    {
      v13 = v11 == i;
      if (v11 == i)
      {
LABEL_17:

        return v13;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x277C58B20](i, v9);
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        result = *(v9 + 8 * i + 32);
      }

      v14 = result;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v15 = a3;
      v16 = [result type];
      v17 = sub_27463B6AC();
      v19 = v18;

      a3 = v15;
      if (v17 == a2 && v19 == v15)
      {
      }

      else
      {
        v21 = sub_27463C6BC();

        if ((v21 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_274536E98(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_27463B6AC();
  v7 = v6;
  v8 = a3;
  v9 = a1;
  LOBYTE(v5) = sub_274536CBC(v8, v5, v7);

  return v5 & 1;
}

uint64_t sub_274536F14()
{
  static WFPhotoItemCollectionParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_274536F3C(void *a1, void *a2)
{
  v5 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v6 = v2;
  v7 = a1;
  sub_274407F7C();
  v8 = *&v6[OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_modal];
  *&v6[OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_modal] = v9;
  v10 = v9;

  sub_27440A42C(a2);
}

uint64_t sub_274537068()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_274537100, v3, v2);
}

uint64_t sub_274537100()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27453721C;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_24;
  v0[7].receiver = v2;
  v3 = type metadata accessor for PhotoItemCollectionParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_27453721C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_274537320, v2, v1);
}

uint64_t sub_274537320()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_274537418(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745374B0, v4, v3);
}

uint64_t sub_2745374B0()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_274537068();
}

uint64_t sub_27453755C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_27463B9CC();

  v1 = sub_27463B9BC();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v0;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_27463B9BC();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BED0);
  sub_27463AF0C();
  return v8;
}

void sub_2745376C0(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = *&Strong[OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_lastValue];
  if (!v4)
  {
    v3 = Strong;
    v6 = [v3 initialState];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 value];

      if (v8)
      {

        v4 = [v3 initialState];
        goto LABEL_4;
      }
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v5 = v4;
LABEL_4:

LABEL_10:
  *a1 = v4;
}

void sub_2745377B4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_lastValue);
    *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_lastValue) = v1;
    v5 = v1;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 commitState_];
  }
}

id sub_274537860(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_modal] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_16F0212F6D31E3D618FE97C107DFCC2A41PhotoItemCollectionParameterSummaryEditor_lastValue] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PhotoItemCollectionParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_274537928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoItemCollectionParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745379AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809504B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274537A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274537B00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_274537418(v2, v3);
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return sub_27463C0FC();
}

unint64_t OUTLINED_FUNCTION_3_29()
{
  *(v0 - 120) = 10;
  *(v0 - 112) = 0xE100000000000000;
  *(v0 - 136) = 32;
  *(v0 - 128) = 0xE100000000000000;

  return sub_274412BBC();
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  return sub_27463C38C();
}

id OUTLINED_FUNCTION_6_15(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t result, uint64_t a2)
{
  *(v2 - 104) = result;
  *(v2 - 96) = a2;
  return result;
}

id sub_274537C9C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView);
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

id sub_274537DA8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
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
    v9 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item + 8);
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

id sub_274537E4C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView);
  }

  else
  {
    type metadata accessor for DimmingOverlayView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_274537EC4()
{
  OUTLINED_FUNCTION_18_8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item);
    swift_unknownObjectRetain();

    v3 = *(v2 + 32);
    swift_unknownObjectRelease();

    sub_274638F0C();
  }

  return result;
}

void sub_274537F5C()
{
  OUTLINED_FUNCTION_18_8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2745384A0();
  }
}

void sub_274537F9C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_progressLayer;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ProgressLayer()) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___actionHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___auxiliaryContentView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView) = 0;
  if (sub_274453594(MEMORY[0x277D84F90]))
  {
    sub_274573FD0(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_cancellables) = v2;
  sub_27463C56C();
  __break(1u);
}

void sub_2745380A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActionCellContentView();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, a1);
  sub_274538CC8();
  sub_274538B90();
}

id sub_274538158()
{
  v1 = sub_27463BEEC();
  [v0 bounds];
  [v1 setCornerRadius_];

  [v0 bounds];
  Width = CGRectGetWidth(v45);
  v3 = sub_274538D20(Width);
  v4 = sub_274537C9C();
  v5 = *&v0[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView];
  sub_27452F448(v3, v38);
  v6 = *v38;
  v7 = *&v38[1];
  v8 = *&v38[2];
  v9 = *&v38[3];

  if (v39)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  if (v39)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  if (v39)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  if (v39)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  [v4 setFrame_];

  v14 = sub_274537D40();
  v15 = *&v0[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___actionHeaderView];
  sub_27452F448(v3, v40);
  v16 = *v40;
  v17 = *&v40[1];
  v18 = *&v40[2];
  v19 = *&v40[3];

  if (v41)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v16;
  }

  if (v41)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v17;
  }

  if (v41)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v18;
  }

  if (v41)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v19;
  }

  [v14 setFrame_];

  v24 = sub_274537D74();
  v25 = *&v0[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___auxiliaryContentView];
  sub_27452F448(v3, v42);
  v26 = *v42;
  v27 = *&v42[1];
  v28 = *&v42[2];
  v29 = *&v42[3];

  if (v43)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v26;
  }

  if (v43)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v27;
  }

  if (v43)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v28;
  }

  if (v43)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v29;
  }

  [v24 setFrame_];

  v34 = *&v0[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_progressLayer];
  [v34 frame];
  v35 = CGRectGetWidth(v46);
  [v0 bounds];
  [v34 setFrame_];
  v37.receiver = v0;
  v37.super_class = type metadata accessor for ActionCellContentView();
  return objc_msgSendSuper2(&v37, sel_layoutSubviews);
}

double sub_2745383D4(double a1)
{
  v2 = sub_274538D20(a1);
  sub_2744F536C(v2);
  v4 = v3;

  sub_2745F36B8(v4);

  return a1;
}

void sub_2745384A0()
{
  v1 = v0;
  sub_274538CC8();
  v2 = sub_274537D40();
  v3 = &v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item];
  v4 = *&v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item + 8];
  v5 = swift_unknownObjectRetain();
  sub_2744F6174(v5, v4);

  v6 = sub_274537D74();
  v7 = *(v3 + 1);
  v8 = swift_unknownObjectRetain();
  sub_2745F3778(v8, v7);

  v9 = *v3;
  swift_getObjectType();
  if (*(*(v9 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_requiresHomeUpdate) == 1)
  {
    v10 = sub_274537C9C();
    OUTLINED_FUNCTION_30_8(v10);

    v11 = *&v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView];
    sub_27453B790();
    v12 = v11;
LABEL_9:
    v62 = sub_27463AE9C();
    sub_2746395AC();

    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    OUTLINED_FUNCTION_4_10();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_24_5();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = *(AssociatedConformanceWitness + 24);
    v17 = swift_checkMetadataState();
    v18 = v16(v17, AssociatedConformanceWitness);

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_29_9();

    v19 = v61;
    if (v61)
    {
      OUTLINED_FUNCTION_20_11();
      if (v20 == v61)
      {
        v58 = sub_274537C9C();
        OUTLINED_FUNCTION_30_8(v58);

        v59 = *&v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView];
        sub_274483044();
        v60 = v59;

        v62 = sub_27463AE9C();
        sub_2746395AC();

        sub_27446E6D4(v19);
        goto LABEL_10;
      }

      sub_27446E6D4(v61);
    }
  }

  v21 = *(*v3 + 32);
  sub_2745E2614();
  v23 = v22;

  if (v23)
  {
    v24 = sub_274537C9C();
    OUTLINED_FUNCTION_30_8(v24);

    v25 = *&v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView];
    sub_274483044();
    v12 = v25;
    goto LABEL_9;
  }

  v41 = sub_274537C9C();
  [v41 setHidden_];

  v42 = *&v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView];
  v62 = sub_27463AE9C();
  sub_2746395AC();

LABEL_10:
  v26 = sub_274537E4C();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = &v26[OBJC_IVAR____TtC14WorkflowEditorP33_8FDBF9E8088A1008826C0E098104910318DimmingOverlayView_handlePress];
  v29 = *&v26[OBJC_IVAR____TtC14WorkflowEditorP33_8FDBF9E8088A1008826C0E098104910318DimmingOverlayView_handlePress];
  *v28 = sub_27453B788;
  v28[1] = v27;

  sub_274406A94(v29);

  swift_getObjectType();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_16:
    [*&v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView] setHidden_];
    goto LABEL_17;
  }

  v31 = v30;
  OUTLINED_FUNCTION_4_10();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  v32 = swift_getAssociatedConformanceWitness();
  v33 = *(v32 + 32);
  v34 = swift_checkMetadataState();
  v35 = v33(v34, v32);

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_9();

  if (v65 != 1 || (OUTLINED_FUNCTION_20_11(), v36 == v62))
  {
    OUTLINED_FUNCTION_4_10();
    sub_27443C9D4(v43, v44, v45, v46, v63, v64, v47);
    goto LABEL_16;
  }

  [*&v1[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView] setHidden_];
  OUTLINED_FUNCTION_4_10();
  sub_27443C9D4(v37, v38, v39, v40, v63, v64, 1);
LABEL_17:
  swift_getObjectType();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
    goto LABEL_21;
  }

  v49 = v48;
  OUTLINED_FUNCTION_4_10();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  v50 = swift_getAssociatedConformanceWitness();
  v51 = *(v50 + 16);
  v52 = swift_checkMetadataState();
  v53 = v51(v52, v50);

  sub_274530580();
  v55 = v54;

  if (!v55)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_20_11();
  if (v56 != v55)
  {

LABEL_21:
    sub_27453A018();
    return;
  }

  v57 = v55;
  sub_27453A06C();
}

void sub_274538A84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_unknownObjectRetain();

    swift_getObjectType();
    v2 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRelease();
    if (v2)
    {
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v4 = *(AssociatedConformanceWitness + 120);
      v5 = swift_checkMetadataState();
      v4(v5, AssociatedConformanceWitness);
    }
  }
}

void sub_274538B90()
{
  v1 = sub_274638C4C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_progressLayer);
  sub_274412734(0, qword_28094A770);
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v3 = qword_280965DC8;
  sub_274638C3C();
  v4 = sub_27463BF3C();
  v5 = [v4 CGColor];

  [v2 setBackgroundColor_];
}

void sub_274538CC8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item) + 32);
  sub_2744497AC();
}

uint64_t sub_274538D20(double a1)
{
  v3 = v1;
  sub_274538EB8(0, __src);
  sub_274537C9C();
  OUTLINED_FUNCTION_34_6();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_26_9();
  sub_2745FC848();

  sub_274537D40();
  OUTLINED_FUNCTION_34_6();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_26_9();
  sub_2745FC848();

  sub_274537D74();
  OUTLINED_FUNCTION_34_6();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_26_9();
  sub_2745FC848();

  v5 = __dst[0];
  memcpy(__dst, __src, 0x48uLL);
  __dst[9] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274653070;
  v7 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView);
  *(inited + 32) = v7;
  v8 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___actionHeaderView);
  *(inited + 40) = v8;
  v9 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___auxiliaryContentView);
  *(inited + 48) = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = sub_274538F90(inited, a1);
  sub_27453B758(__dst);
  swift_setDeallocating();
  sub_2744EBB98();
  return v13;
}

uint64_t sub_274538EB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = OUTLINED_FUNCTION_11_13();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_11_13();
  v6 = OUTLINED_FUNCTION_11_13();
  v7 = OUTLINED_FUNCTION_11_13();
  v8 = OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_24_5();
  result = sub_27463B4DC();
  *a2 = a1 & 1;
  *(a2 + 8) = MEMORY[0x277D84FA0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_274538F90(unint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_274412734(0, &qword_28094A4D8);
  type metadata accessor for CGRect(0);
  sub_2744FAE90();
  v7 = sub_27463B4DC();
  v8 = *(v3 + 16);
  if (a2 - v8 > 0.0)
  {
    v9 = a2 - v8;
  }

  else
  {
    v9 = 0.0;
  }

  if ((*v3 & 1) == 0)
  {
    v55 = sub_274453594(a1);
    if (v55)
    {
      v56 = v55;
      v57 = 0;
      v58 = a1;
      v59 = a1 & 0xC000000000000001;
      v180 = v58;
      v182 = v58 + 32;
      v184 = v58 & 0xFFFFFFFFFFFFFF8;
      v60 = 0.0;
      while (1)
      {
        if (v59)
        {
          v61 = MEMORY[0x277C58B20](v57, v180);
        }

        else
        {
          if (v57 >= *(v184 + 16))
          {
            goto LABEL_180;
          }

          v61 = *(v182 + 8 * v57);
        }

        v62 = v61;
        v16 = __OFADD__(v57++, 1);
        if (v16)
        {
          break;
        }

        if ([v61 isHidden])
        {
          v63 = *(v3 + 8);
          sub_27463BF9C();
          if (*(v63 + 16))
          {
            sub_27463C73C();
            OUTLINED_FUNCTION_25_11();
            while (1)
            {
              OUTLINED_FUNCTION_13_14();
              if ((v64 & 1) == 0)
              {
                break;
              }

              OUTLINED_FUNCTION_23_9();
              if (v19)
              {
                goto LABEL_69;
              }
            }
          }

          swift_isUniquelyReferenced_nonNull_native();
          sub_274534EF0();
          OUTLINED_FUNCTION_7_23();
          if (v16)
          {
            goto LABEL_182;
          }

          v103 = v101;
          v104 = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950550);
          OUTLINED_FUNCTION_21_11();
          if (sub_27463C4CC())
          {
            sub_274534EF0();
            OUTLINED_FUNCTION_19_10();
            if (!v19)
            {
              goto LABEL_191;
            }

            v103 = v105;
          }

          if (v104)
          {
            OUTLINED_FUNCTION_31_7();
            *v106 = 0u;
            v106[1] = 0u;
          }

          else
          {
            OUTLINED_FUNCTION_6_16(v7 + 8 * (v103 >> 6));
            *(v120 + 8 * v103) = v62;
            OUTLINED_FUNCTION_31_7();
            OUTLINED_FUNCTION_17_10(v121);
            if (v16)
            {
              goto LABEL_188;
            }

            *(v7 + 16) = v122;
          }
        }

        else
        {
LABEL_69:
          v65 = *(v3 + 32);
          v66 = v62;
          v67 = OUTLINED_FUNCTION_34_6();
          v68 = 0.0;
          v69 = 0.0;
          if (*(v65 + 16))
          {
            v70 = sub_274534DD8(v67);
            if (v71)
            {
              v69 = *(*(v65 + 56) + 8 * v70);
            }
          }

          v72 = *(v3 + 56);
          v73 = sub_27463BF9C();
          if (*(v72 + 16))
          {
            v74 = sub_274534DD8(v73);
            if (v75)
            {
              v68 = *(*(v72 + 56) + 8 * v74);
            }
          }

          v76 = v9 - v68;
          v77 = *(v3 + 64);
          v78 = sub_27463BF9C();
          if (*(v77 + 16))
          {
            v79 = sub_274534DD8(v78);
            if (v80)
            {
              v76 = v76 - *(*(v77 + 56) + 8 * v79);
            }
          }

          if (v76 <= 0.0)
          {
            v76 = 0.0;
          }

          v81 = *(v3 + 72);
          v82 = sub_27463BF9C();
          if (*(v81 + 16) && (v82 = sub_274534DD8(v82), (v83 & 1) != 0))
          {
            OUTLINED_FUNCTION_32_6();
            if (!v19 & v29)
            {

              v76 = (v81)(v62, v76, 1.79769313e308);
              sub_27453B740(v81);
            }

            else
            {
              switch(v81)
              {
                case 1uLL:
                  [v62 intrinsicContentSize];
                  goto LABEL_86;
                case 2uLL:
                case 4uLL:
                  goto LABEL_84;
                case 3uLL:
                  OUTLINED_FUNCTION_33_4(v82, sel_sizeThatFits_);
                  break;
                default:
                  v84 = sel_systemLayoutSizeFittingSize_;
                  goto LABEL_85;
              }
            }
          }

          else
          {
LABEL_84:
            v84 = sel_sizeThatFits_;
LABEL_85:
            OUTLINED_FUNCTION_33_4(v82, v84);
LABEL_86:
            v76 = v85;
          }

          v86 = sub_27463BF9C();
          if (*(v72 + 16))
          {
            sub_274534DD8(v86);
          }

          v87 = *(v3 + 48);
          v88 = sub_27463BF9C();
          if (*(v87 + 16))
          {
            sub_274534DD8(v88);
          }

          v89 = v62;
          swift_isUniquelyReferenced_nonNull_native();
          sub_274534EF0();
          OUTLINED_FUNCTION_7_23();
          if (v16)
          {
            goto LABEL_176;
          }

          v92 = v90;
          v93 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950550);
          OUTLINED_FUNCTION_21_11();
          if (sub_27463C4CC())
          {
            sub_274534EF0();
            if ((v93 & 1) != (v95 & 1))
            {
              goto LABEL_191;
            }

            v92 = v94;
          }

          v96 = v60 + v69;
          if (v93)
          {
            OUTLINED_FUNCTION_31_7();
            *v97 = v98;
            *(v97 + 8) = v96;
            *(v97 + 16) = v76;
            *(v97 + 24) = v99;

            v100 = *(v7 + 16);
          }

          else
          {
            OUTLINED_FUNCTION_6_16(v7 + 8 * (v92 >> 6));
            *(v107 + 8 * v92) = v89;
            OUTLINED_FUNCTION_31_7();
            *v108 = v109;
            *(v108 + 8) = v96;
            *(v108 + 16) = v76;
            *(v108 + 24) = v110;
            v111 = *(v7 + 16);
            v16 = __OFADD__(v111, 1);
            v100 = v111 + 1;
            if (v16)
            {
              goto LABEL_186;
            }

            *(v7 + 16) = v100;
          }

          v112 = 0.0;
          Height = 0.0;
          if (v100)
          {
            sub_274534EF0();
            if (v115)
            {
              Height = CGRectGetHeight(*(*(v7 + 56) + 32 * v114));
            }
          }

          v116 = *(v3 + 24);
          v117 = sub_27463BF9C();

          if (*(v116 + 16))
          {
            v118 = sub_274534DD8(v117);
            if (v119)
            {
              v112 = *(*(v116 + 56) + 8 * v118);
            }
          }

          v60 = v96 + Height + v112;
        }

        if (v57 == v56)
        {
          return v7;
        }
      }

LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    return v7;
  }

  v10 = WFShouldReverseLayoutDirection();

  v175 = v6;
  if (v10)
  {
    a1 = sub_27453A8C0(a1);
  }

  type metadata accessor for CGSize(0);
  v11 = sub_27463B4DC();
  v183 = sub_274453594(a1);
  if (!v183)
  {

LABEL_171:

    return v7;
  }

  v12 = 0;
  v179 = a1;
  v181 = a1 & 0xC000000000000001;
  v177 = a1 & 0xFFFFFFFFFFFFFF8;
  v178 = 0;
  v176 = a1 + 32;
  v13 = 0.0;
  do
  {
    if (v181)
    {
      v14 = MEMORY[0x277C58B20](v12, a1);
    }

    else
    {
      if (v12 >= *(v177 + 16))
      {
        goto LABEL_179;
      }

      v14 = *(v176 + 8 * v12);
    }

    v15 = v14;
    v16 = __OFADD__(v12++, 1);
    if (v16)
    {
      __break(1u);
      goto LABEL_174;
    }

    if ([v14 isHidden])
    {
      v17 = *(v3 + 8);
      sub_27463BF9C();
      if (*(v17 + 16))
      {
        sub_27463C73C();
        OUTLINED_FUNCTION_25_11();
        while (1)
        {
          OUTLINED_FUNCTION_13_14();
          if ((v18 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_23_9();
          if (v19)
          {
            goto LABEL_20;
          }
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_7_23();
      if (v16)
      {
        goto LABEL_183;
      }

      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950550);
      OUTLINED_FUNCTION_21_11();
      if (sub_27463C4CC())
      {
        sub_274534EF0();
        OUTLINED_FUNCTION_19_10();
        if (!v19)
        {
          goto LABEL_191;
        }
      }

      if (v42)
      {
        OUTLINED_FUNCTION_10_19();
      }

      else
      {
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_17_10(v51);
        if (v16)
        {
          goto LABEL_189;
        }

        v185[2] = v52;
      }
    }

    else
    {
LABEL_20:
      v20 = *(v3 + 32);
      v21 = v15;
      v22 = sub_27463BF9C();
      v23 = 0.0;
      if (*(v20 + 16))
      {
        v24 = sub_274534DD8(v22);
        if (v25)
        {
          v23 = *(*(v20 + 56) + 8 * v24);
        }
      }

      v26 = *(v3 + 72);
      v27 = sub_27463BF9C();
      if (*(v26 + 16) && (sub_274534DD8(v27), (v28 & 1) != 0))
      {
        OUTLINED_FUNCTION_32_6();
        if (!v19 & v29)
        {

          v32 = (v26)(v21, v9, 1.79769313e308);
          v33 = v54;
          sub_27453B740(v26);
        }

        else
        {
          switch(v26)
          {
            case 1uLL:
              [v21 intrinsicContentSize];
              goto LABEL_28;
            case 2uLL:
            case 3uLL:
              goto LABEL_27;
            case 4uLL:

              v53 = v21;
              v32 = 0.0;
              v33 = 0;
              v178 = v21;
              break;
            default:
              [v21 systemLayoutSizeFittingSize_];
              goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_27:
        [v21 sizeThatFits_];
LABEL_28:
        v32 = v30;
        v33 = v31;
      }

      v34 = sub_27463BF9C();
      swift_isUniquelyReferenced_nonNull_native();
      v185 = v11;
      v35 = sub_274534DD8(v34);
      if (__OFADD__(v11[2], (v36 & 1) == 0))
      {
        goto LABEL_177;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950548);
      OUTLINED_FUNCTION_21_11();
      if (sub_27463C4CC())
      {
        sub_274534DD8(v34);
        OUTLINED_FUNCTION_19_10();
        if (!v19)
        {
          goto LABEL_191;
        }

        v37 = v39;
      }

      if (v38)
      {
        v40 = v11[7] + 16 * v37;
        *v40 = v32;
        *(v40 + 8) = v33;
      }

      else
      {
        v11[(v37 >> 6) + 8] |= 1 << v37;
        *(v11[6] + 8 * v37) = v34;
        v43 = v11[7] + 16 * v37;
        *v43 = v32;
        *(v43 + 8) = v33;
        v44 = v11[2];
        v16 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v16)
        {
          goto LABEL_185;
        }

        v11[2] = v45;
      }

      v46 = *(v3 + 24);
      v47 = sub_27463BF9C();

      v48 = 0.0;
      a1 = v179;
      if (*(v46 + 16))
      {
        v49 = sub_274534DD8(v47);
        if (v50)
        {
          v48 = *(*(v46 + 56) + 8 * v49);
        }
      }

      v13 = v13 + v23 + v32 + v48;
    }
  }

  while (v12 != v183);
  v123 = 0;
  v124 = v9 - v13;
  v125 = 0.0;
  while (1)
  {
    if (v181)
    {
      v126 = MEMORY[0x277C58B20](v123, a1);
    }

    else
    {
      if (v123 >= *(v177 + 16))
      {
        goto LABEL_181;
      }

      v126 = *(v176 + 8 * v123);
    }

    v127 = v126;
    v16 = __OFADD__(v123++, 1);
    if (v16)
    {
      break;
    }

    if ([v126 isHidden])
    {
      v128 = *(v3 + 8);
      sub_27463BF9C();
      if (*(v128 + 16))
      {
        sub_27463C73C();
        OUTLINED_FUNCTION_25_11();
        while (1)
        {
          OUTLINED_FUNCTION_13_14();
          if ((v129 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_23_9();
          if (v19)
          {
            goto LABEL_132;
          }
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_7_23();
      if (v16)
      {
        goto LABEL_184;
      }

      v149 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950550);
      OUTLINED_FUNCTION_21_11();
      if (sub_27463C4CC())
      {
        sub_274534EF0();
        OUTLINED_FUNCTION_19_10();
        if (!v19)
        {
          goto LABEL_191;
        }
      }

      v7 = v185;
      if (v149)
      {
        OUTLINED_FUNCTION_10_19();
      }

      else
      {
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_17_10(v172);
        if (v16)
        {
          goto LABEL_190;
        }

        v185[2] = v173;
      }
    }

    else
    {
LABEL_132:
      v130 = *(v3 + 32);
      v131 = v127;
      v132 = sub_27463BF9C();
      v133 = 0.0;
      if (*(v130 + 16))
      {
        v134 = sub_274534DD8(v132);
        if (v135)
        {
          v133 = *(*(v130 + 56) + 8 * v134);
        }
      }

      if (v178 && v131 == v178 && (v136 = *(v3 + 72), v137 = sub_27463BF9C(), *(v136 + 16)) && (v138 = sub_274534DD8(v137), (v139 & 1) != 0) && *(*(v136 + 56) + 16 * v138) == 4)
      {
        [v131 sizeThatFits_];
        v141 = v140;
        v143 = v142;
      }

      else
      {
        v144 = sub_27463BF9C();
        v143 = 0;
        if (v11[2])
        {
          v145 = sub_274534DD8(v144);
          v141 = 0.0;
          if (v146)
          {
            v147 = v11[7] + 16 * v145;
            v141 = *v147;
            v143 = *(v147 + 8);
          }
        }

        else
        {
          v141 = 0.0;
        }
      }

      v150 = *(v3 + 40);
      v151 = sub_27463BF9C();
      v152 = 0;
      if (*(v150 + 16))
      {
        v153 = sub_274534DD8(v151);
        if (v154)
        {
          v152 = *(*(v150 + 56) + 8 * v153);
        }
      }

      v155 = v131;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_7_23();
      if (v16)
      {
        goto LABEL_178;
      }

      v158 = v156;
      v159 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950550);
      OUTLINED_FUNCTION_21_11();
      if (sub_27463C4CC())
      {
        sub_274534EF0();
        if ((v159 & 1) != (v161 & 1))
        {
          goto LABEL_191;
        }

        v158 = v160;
      }

      v162 = v125 + v133;
      v7 = v185;
      if (v159)
      {
        v163 = v185[7] + 32 * v158;
        *v163 = v162;
        *(v163 + 8) = v152;
        *(v163 + 16) = v141;
        *(v163 + 24) = v143;
      }

      else
      {
        OUTLINED_FUNCTION_3_30();
        *v164 = v162;
        *(v164 + 8) = v152;
        *(v164 + 16) = v141;
        *(v164 + 24) = v143;
        v165 = v185[2];
        v16 = __OFADD__(v165, 1);
        v166 = v165 + 1;
        if (v16)
        {
          goto LABEL_187;
        }

        v185[2] = v166;
      }

      v167 = *(v3 + 24);
      v168 = sub_27463BF9C();

      v169 = 0.0;
      a1 = v179;
      if (*(v167 + 16))
      {
        v170 = sub_274534DD8(v168);
        if (v171)
        {
          v169 = *(*(v167 + 56) + 8 * v170);
        }
      }

      v125 = v162 + v141 + v169;
    }

    if (v123 == v183)
    {

      goto LABEL_171;
    }
  }

LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

uint64_t sub_274539CF0()
{
  swift_unknownObjectRelease();
}

id sub_274539E58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressLayer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_274539EB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_27463C69C();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ProgressLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id sub_27453A018()
{
  [v0 removeAllAnimations];
  [v0 bounds];

  return [v0 setBounds_];
}

void sub_27453A06C()
{
  v1 = v0;
  v2 = [v0 superlayer];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    CGRectGetWidth(v19);
  }

  sub_274412734(0, &unk_2809505D0);
  v12 = sub_27453A2C0(0xD000000000000011, 0x800000027468C7D0);
  [v1 bounds];
  CGRectGetWidth(v20);
  v13 = sub_2746386DC();
  [v12 setFromValue_];

  v14 = sub_2746386DC();
  [v12 setToValue_];

  v17 = v12;
  [v17 setDuration_];
  v15 = [objc_opt_self() functionWithName_];
  [v17 setTimingFunction_];

  v16 = objc_opt_self();
  [v16 begin];
  [v16 setDisableActions_];
  [v1 bounds];
  [v1 setBounds_];
  [v16 commit];
  sub_27453ADBC(v17, 0x73736572676F7270, 0xE800000000000000, v1);
}

id sub_27453A2C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_27463B66C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

id sub_27453A370(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC14WorkflowEditorP33_8FDBF9E8088A1008826C0E098104910318DimmingOverlayView_handlePress];
  v10 = type metadata accessor for DimmingOverlayView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v25.receiver = v4;
  v25.super_class = v10;
  v11 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  sub_27453A67C();
  [v11 setHidden_];
  [v11 setAutoresizingMask_];
  v12 = sub_27463BEEC();
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  [v12 setCornerRadius_];

  v24[3] = v10;
  v24[0] = v11;
  objc_allocWithZone(MEMORY[0x277D75B80]);
  v21 = v11;
  v22 = sub_27455A888(v24, sel__handlePress);
  [v21 addGestureRecognizer_];

  return v21;
}

void sub_27453A520()
{
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditorP33_8FDBF9E8088A1008826C0E098104910318DimmingOverlayView_handlePress);
  *v1 = 0;
  v1[1] = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_27453A5C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DimmingOverlayView();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, a1);
  sub_27453A67C();
}

void sub_27453A67C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = dbl_274657AD0[v2 == 2];
  v5 = &selRef_blackColor;
  if (v2 != 2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v3 *v5];
  v7 = [v6 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
}

void sub_27453A770()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_8FDBF9E8088A1008826C0E098104910318DimmingOverlayView_handlePress);
  if (v1)
  {

    v1(v2);

    sub_274406A94(v1);
  }
}

id sub_27453A850(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_27453A8C0(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = sub_27463C27C();
    if (v19)
    {
      v20 = v19;
      v2 = sub_27453AC9C(v19, 0);
      sub_27453B440(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = sub_27463C27C();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x277C58B20]();
          v12 = MEMORY[0x277C58B20](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_27453AD58(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_27453AD58(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void *sub_27453AACC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B868);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 80);
  return v4;
}

size_t sub_27453ABA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_27453AC9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_27453AD58(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_27463C27C();
  }

  return sub_27463C3EC();
}

void sub_27453ADBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_27463B66C();

  [a4 addAnimation:a1 forKey:v6];
}

unint64_t sub_27453B740(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

unint64_t sub_27453B790()
{
  result = qword_2809505E8;
  if (!qword_2809505E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809505E8);
  }

  return result;
}

uint64_t sub_27453B7E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor18StackLayoutBuilderV12SizingOptionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27453B860(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27453B8B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_27453B908(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for StackLayoutBuilder.Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27453BA18()
{
  result = qword_280950638;
  if (!qword_280950638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950638);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return swift_arrayInitWithCopy();
}

double OUTLINED_FUNCTION_10_19()
{
  v2 = (*(v1 + 56) + 32 * v0);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return sub_27463B4DC();
}

double OUTLINED_FUNCTION_17_10@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_24_8(unint64_t *a1)
{

  return sub_27453B7E4(a1, v1);
}

id OUTLINED_FUNCTION_27_7(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

void OUTLINED_FUNCTION_28_10()
{

  sub_274534EF0();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return sub_274638FAC();
}

id OUTLINED_FUNCTION_30_8(void *a1)
{

  return [a1 (v1 + 1656)];
}

id OUTLINED_FUNCTION_33_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return sub_27463BF9C();
}

uint64_t sub_27453BD78()
{
  result = type metadata accessor for SlotParameterPicker();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_27453BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  OUTLINED_FUNCTION_1_28();
  v14 = 1107296256;
  v15 = sub_27453EB70;
  v16 = &block_descriptor_6;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  OUTLINED_FUNCTION_1_28();
  v14 = 1107296256;
  v15 = sub_27453EBC0;
  v16 = &block_descriptor_25;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_274406A94(a4);
  sub_274406A94(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void sub_27453BF94()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();
  *(v15 + 56) = sub_27463979C();
  *(v15 + 64) = v16;
  *(v15 + 72) = swift_getKeyPath();
  *(v15 + 80) = 0;
  *(v15 + 88) = swift_getKeyPath();
  *(v15 + 96) = 0;
  v17 = type metadata accessor for SlotParameterPicker();
  v18 = v17[14];
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  swift_storeEnumTagMultiPayload();
  v19 = v15 + v17[15];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v15 + v17[16];
  *v20 = swift_getKeyPath();
  *(v20 + 40) = 0;
  *v15 = v13;
  *(v15 + 8) = v11;
  *(v15 + 16) = v9;
  *(v15 + 24) = v7;
  *(v15 + 32) = v5;
  *(v15 + 40) = v3;
  *(v15 + 48) = v1;
  OUTLINED_FUNCTION_23();
}

id sub_27453C0BC()
{
  v1 = type metadata accessor for MenuProvidedButton();
  v2 = *(v0 + 40) == 0;
  swift_getWitnessTable();
  sub_27463A1DC();
  sub_27463A1BC();
  v3 = type metadata accessor for SlotParameterPicker.Coordinator();
  return sub_27453EC50(v2, v5, v1, v3, &off_28836C530);
}

void sub_27453C170(void *a1)
{
  swift_getWitnessTable();
  sub_27463A1DC();
  sub_27463A1BC();
  sub_27453C204(a1, v2);
}

void sub_27453C204(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, v6);
  sub_27453C648(v8);
  if (v3[5])
  {
    [a1 addTarget:a2 action:sel_performPrimaryAction forControlEvents:64];
  }

  v10 = [a1 currentTitle];
  if (!v10)
  {
LABEL_9:
    v17 = sub_27463B66C();
    [a1 setTitle:v17 forState:0];

    return;
  }

  v11 = v10;
  v12 = sub_27463B6AC();
  v14 = v13;

  if (v12 != *v3 || v14 != v3[1])
  {
    v16 = sub_27463C6BC();

    if (v16)
    {
      return;
    }

    goto LABEL_9;
  }
}

double sub_27453C3B8()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC14WorkflowEditor18MenuProvidedButton_menuProvider];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = [v0 titleLabel];
    v5 = COERCE_DOUBLE((*(v3 + 24))());
    v7 = v6;
    swift_unknownObjectRelease();

    if ((v7 & 1) == 0)
    {
      return v5;
    }
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_intrinsicContentSize);
  return result;
}

id sub_27453C4A0(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  type metadata accessor for SlotParameterPicker.Coordinator();
  (*(v4 + 16))(v8, v1, a1);
  return sub_27453C564(v8);
}

uint64_t sub_27453C598@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_24();
  v4 = *(v3 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_7_24();
  type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_7();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_27453C648(uint64_t a1)
{
  OUTLINED_FUNCTION_7_24();
  v4 = *(v3 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_7_24();
  type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_7();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_27453C700()
{
  OUTLINED_FUNCTION_3_31();
  v2 = *(v1 + 96);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
}

uint64_t sub_27453C73C()
{
  OUTLINED_FUNCTION_3_31();
  swift_beginAccess();
}

id sub_27453C79C(uint64_t a1)
{
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)] = 0;
  OUTLINED_FUNCTION_3_31();
  v4 = *(v3 + 104);
  type metadata accessor for CGSize(0);
  *&v1[v4] = sub_27463B4DC();
  OUTLINED_FUNCTION_3_31();
  v6 = *(v5 + 88);
  v7 = type metadata accessor for SlotParameterPicker();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], a1, v7);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SlotParameterPicker.Coordinator();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t sub_27453C904()
{
  OUTLINED_FUNCTION_3_31();
  v1 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_20(v5, v8);
  v6 = *(v0 + 40);
  sub_2744069F0(v6);
  result = (*(v3 + 8))(v0, v1);
  if (v6)
  {
    v6(result);
    return sub_274406A94(v6);
  }

  return result;
}

void sub_27453C9F0(void *a1)
{
  v1 = a1;
  sub_27453C904();
}

uint64_t sub_27453CA38()
{
  OUTLINED_FUNCTION_3_31();
  v1 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_20(v5, v8);
  v6 = *(v3 + 8);

  v6(v0, v1);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2746385BC();
}

void sub_27453CB38(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_27453CA38();

  swift_unknownObjectRelease();
}

void sub_27453CBB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_27453CBB0();
}

uint64_t sub_27453CC18(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_3_31();
  v5 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v29[-v9 - 8];
  if (!a1)
  {
    return 0;
  }

  v11 = a1;
  v12 = sub_27453D500();
  v14 = v13;
  sub_27453C598(v10);
  sub_2744C6ABC();
  (*(v7 + 8))(v10, v5);
  v15 = v30;
  sub_27440CB1C(v29, &unk_2809507C0);
  if (v15 && (v16 = sub_27453C73C(), v17 = sub_27452F578(v12, v14, v16), v19 = v18, , (v19 & 1) == 0))
  {
  }

  else
  {
    v20 = sub_27463B66C();
    [v11 setText_];

    v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v22 = [v11 text];
    [v21 setText_];

    v23 = [v11 font];
    [v21 setFont_];

    [v21 setPreferredMaxLayoutWidth_];
    [v21 setNumberOfLines_];
    [v21 setLineBreakMode_];
    [v21 setTextAlignment_];
    [v21 intrinsicContentSize];
    v25 = v24;
    v26 = *((*v4 & *v2) + 0x68);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v2 + v26);
    sub_2745FC93C();
    *(v2 + v26) = v28;

    swift_endAccess();

    return v25;
  }

  return v17;
}

void sub_27453CF88()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v52 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v47 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v46 = v7 - v6;
  v51 = *((v3 & v2) + 0x50);
  v8 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v45 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = (&v45 - v26);
  sub_27453C598(&v45 - v26);
  v28 = *(v10 + 8);
  v50 = v27[3];
  v28(v27, v8);
  sub_27453C598(v24);
  v29 = v24[2];
  v28(v24, v8);
  v49 = [v29 identifier];

  sub_27453C598(v21);

  v28(v21, v8);
  swift_getObjectType();
  v48 = sub_2746385AC();

  sub_27453C598(v18);
  v30 = *(v18 + 11);
  if (v18[96] == 1)
  {
    v32 = v46;
    v31 = v47;
  }

  else
  {

    sub_27463BC0C();
    v33 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15();

    v32 = v46;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v30, 0);
    v31 = v47;
    (*(v47 + 8))(v32, v52);
    v30 = v56;
  }

  v28(v18, v8);
  sub_27453C598(v15);
  v34 = *(v15 + 9);
  v35 = v15[80];
  v47 = v30;
  if (v35 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v36 = v31;
    v37 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15();

    v31 = v36;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v34, 0);
    (*(v36 + 8))(v32, v52);
    v34 = v55;
  }

  v28(v15, v8);
  v38 = v53;
  sub_27453C598(v53);
  v39 = v38 + *(v8 + 60);
  v40 = *v39;
  if (*(v39 + 8) != 1)
  {

    sub_27463BC0C();
    v41 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v40, 0);
    (*(v31 + 8))(v32, v52);
    LOBYTE(v40) = v54;
  }

  sub_274412734(0, &qword_2809507E0);
  v28(v53, v8);
  v42 = v1;
  v43 = sub_27456B8B8(v50, v49, v48, v47 & 1, v34, v1, 0, v40 & 1);
  [v43 setDelegate_];
  v44 = v43;
  sub_27453C700();
  [v44 menu];

  OUTLINED_FUNCTION_23();
}

uint64_t sub_27453D500()
{
  OUTLINED_FUNCTION_3_31();
  v0 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = (&v9 - v4);
  sub_27453C598(&v9 - v4);
  v6 = *v5;
  v7 = *(v2 + 8);

  v7(v5, v0);
  return v6;
}

void sub_27453D5E8()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3_31();
  v8 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  sub_27453C598(v17 - v12);
  v14 = *(v13 + 7);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = v14;
    v15(v13, v8);
    v17[1] = v5;
    v17[2] = v7 & 1;
    v17[3] = v3;
    v17[4] = v1;
    v17[5] = 0;
    v17[6] = 0;
    v18 = 0;
    swift_unknownObjectRetain();

    sub_27443CA58();

    OUTLINED_FUNCTION_23();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274528610();
    OUTLINED_FUNCTION_2_14();
    __break(1u);
  }
}

uint64_t sub_27453D72C(void *a1, int a2, int a3, int a4, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_27453D5E8();
  swift_unknownObjectRelease();
}

void sub_27453D7E4()
{
  OUTLINED_FUNCTION_24();
  v39 = v2;
  v40 = v1;
  v4 = v3;
  v37 = v5;
  v41 = v6;
  v36 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  sub_27453C598(&v36 - v20);
  v22 = *(v21 + 9);
  v23 = v21[80];
  v38 = v4;
  if (v23 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v24 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v22, 0);
    (*(v8 + 8))(v12, v36);
    v22 = v42;
  }

  v25 = *(v15 + 8);
  v26 = v25(v21, v13);
  v27 = v41;
  if (!v22)
  {
LABEL_10:
    OUTLINED_FUNCTION_23();
    return;
  }

  MEMORY[0x28223BE20](v26);
  *(&v36 - 2) = v0;
  *(&v36 - 1) = v27;
  sub_27463B13C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0);
  sub_27463946C();

  sub_27453C598(v18);
  v28 = *(v18 + 7);
  if (v28)
  {
    v29 = v28;
    v25(v18, v13);
    v31 = v38;
    v30 = v39;
    if (v38)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      v33 = sub_27440CBD0;
    }

    else
    {
      v33 = CGSizeMake;
      v32 = 0;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v42 = v27;
    v43 = v22;
    v44 = sub_27440CB74;
    v45 = v34;
    v46 = v37;
    v47 = v40;
    v48 = 1;
    sub_2744069F0(v31);

    v35 = v27;
    swift_unknownObjectRetain();
    sub_27443CA58();

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();
  OUTLINED_FUNCTION_2_14();
  __break(1u);
}

uint64_t sub_27453DB98@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for SlotParameterPicker();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_27453C598(v7);
  sub_2744C6BF0();
  (*(v5 + 8))(v7, v4);
  v11 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_27440CB1C(v10, &unk_28094D7C0);
  }

  else
  {
    v14[1] = a1;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v11 - 8) + 8))(v10, v11);
  }

  *a2 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t sub_27453DDAC(void *a1, int a2, void *a3, void *aBlock, const void *a5, const void *a6)
{
  v10 = _Block_copy(aBlock);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v10;
  *(swift_allocObject() + 16) = v11;
  if (v12)
  {
    *(swift_allocObject() + 16) = v12;
    v12 = sub_27445B860;
  }

  v13 = a3;
  v14 = a1;
  sub_27453D7E4();
  sub_274406A94(v12);
}

void sub_27453DEF0()
{
  OUTLINED_FUNCTION_3_31();
  v0 = type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  sub_27453C598(&v9 - v4);
  v6 = *(v5 + 7);
  if (v6)
  {
    v7 = *(v2 + 8);
    v8 = v6;
    v7(v5, v0);

    sub_27443CE38();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274528610();
    OUTLINED_FUNCTION_2_14();
    __break(1u);
  }
}

uint64_t sub_27453E028(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v4 = a1;
  sub_27453DEF0();
}

id sub_27453E0AC()
{
  OUTLINED_FUNCTION_3_31();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SlotParameterPicker.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27453E104(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  type metadata accessor for SlotParameterPicker();
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(&a1[v2]);
  OUTLINED_FUNCTION_8_20();

  OUTLINED_FUNCTION_8_20();
}

uint64_t sub_27453E200@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SlotParameterPicker.Coordinator();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

id sub_27453E26C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_27453C4A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_27453E2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_27453E32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_27453E3A8()
{
  swift_getWitnessTable();
  sub_274639D9C();
  __break(1u);
}

uint64_t sub_27453E42C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection] != 1;

  return 2 * v2;
}

void sub_27453E480()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18MenuProvidedButton_menuProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_27463C56C();
  __break(1u);
}

id sub_27453E50C()
{
  sub_274412734(0, &qword_28094F5B8);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  return sub_27453BE24(0, 0, 0, sub_27453EF00, v1);
}

id sub_27453E598(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC14WorkflowEditor18MenuProvidedButton_menuProvider;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v6)
    {
      Strong = [v6 platformMenu];
    }

    else
    {
      return 0;
    }
  }

  return Strong;
}

void sub_27453E68C(void *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || v4 != [a1 layoutDirection])
  {
    v5 = [v1 titleLabel];
    if (v5)
    {
      v6 = v5;
      [v5 setTextAlignment_];
    }
  }
}

uint64_t sub_27453E848()
{
  v0 = sub_274412734(319, &qword_28094BD80);
  if (v1 <= 0x3F)
  {
    v0 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      v0 = type metadata accessor for ParameterStateStore();
      if (v3 <= 0x3F)
      {
        sub_27453EAF0(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
        v0 = v4;
        if (v5 <= 0x3F)
        {
          sub_274481024();
          v0 = v6;
          if (v7 <= 0x3F)
          {
            sub_27453EAF0(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0, MEMORY[0x277CDF468]);
            v0 = v8;
            if (v9 <= 0x3F)
            {
              sub_27453EAA0();
              v0 = v10;
              if (v11 <= 0x3F)
              {
                sub_27453EAF0(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60, MEMORY[0x277CDF468]);
                if (v13 > 0x3F)
                {
                  return v12;
                }

                else
                {
                  sub_27453EAF0(319, &qword_28094A5F0, &unk_2809507C0, &unk_274649C60, MEMORY[0x277CDF468]);
                  v0 = v14;
                  if (v15 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

  return v0;
}

void sub_27453EAA0()
{
  if (!qword_28094C510)
  {
    v0 = sub_27463919C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094C510);
    }
  }
}

void sub_27453EAF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

id sub_27453EB70(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_27453EBC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_274412734(0, &unk_2809507D0);
  v2 = sub_27463B81C();

  v3 = v1(v2);

  return v3;
}

id sub_27453EC50(char a1, uint64_t a2, Class a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(a3);

  return sub_27453ECB0(a1, a2, v9, a4, a5);
}

id sub_27453ECB0(char a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC14WorkflowEditor18MenuProvidedButton_menuProvider + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v19.receiver = a3;
  v19.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 setShowsMenuAsPrimaryAction_];
  [v9 setContextMenuInteractionEnabled_];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 wf_accentColor];
  [v11 setTitleColor:v12 forState:0];

  v13 = [v11 titleLabel];
  if (v13)
  {
    [v13 setNumberOfLines_];
  }

  v14 = [v11 titleLabel];

  if (v14)
  {
    [v14 setLineBreakMode_];
  }

  v15 = [v11 titleLabel];

  if (v15)
  {
    [v15 setTextAlignment_];
  }

  v16 = [v11 titleLabel];

  if (v16)
  {
    v17 = [objc_opt_self() preferredFontForTextStyle_];
    [v16 setFont_];
  }

  return v11;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return sub_274638CEC();
}

uint64_t OUTLINED_FUNCTION_10_20@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_27453C598(v3);
}

uint64_t WFUpdatableParameter.view(with:)(uint64_t a1)
{
  v3 = sub_2746383EC();
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v3))
  {
    v5 = v4;
    swift_getObjectType();
    sub_27463B9CC();

    v6 = sub_27463B9BC();
    OUTLINED_FUNCTION_68_0();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = a1;

    v9 = v1;
    v10 = sub_27463B9BC();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v8;
    v11[4] = a1;
    v11[5] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
    sub_27463AF0C();
    type metadata accessor for BindingParameterStateDataSource();
    OUTLINED_FUNCTION_68_0();
    v12 = swift_allocObject();
    *(v12 + 16) = v15;
    *(v12 + 32) = v16;
    type metadata accessor for ParameterStateStore();
    OUTLINED_FUNCTION_68_0();
    swift_allocObject();
    sub_27458265C();
    (*(v5 + 16))();

    v13 = sub_27463AE9C();

    return v13;
  }

  else
  {

    return sub_27463AE9C();
  }
}

uint64_t sub_27453F200@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809507E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  swift_getObjectType();
  if (sub_2746385AC())
  {
    swift_getObjectType();
    v5 = sub_27463856C();
    sub_27453F568();
    sub_27463BC9C();
    swift_unknownObjectRelease();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      *a1 = sub_27463855C();
      return (*(*(v5 - 8) + 8))(v4, v5);
    }
  }

  else
  {
    v7 = sub_27463856C();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  }

  result = sub_27453F500(v4);
  *a1 = 0;
  return result;
}

uint64_t sub_27453F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809507E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  swift_unknownObjectRetain();
  v9 = [a5 key];
  sub_27463B6AC();

  sub_2746383FC();
  v10 = a5;
  sub_27463857C();
  v11 = sub_27463856C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    sub_27453F500(v8);
  }

  else
  {
    sub_27453F568();
    sub_27463820C();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  swift_getObjectType();
  return sub_2746385BC();
}

uint64_t sub_27453F500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809507E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27453F568()
{
  result = qword_2809507F0;
  if (!qword_2809507F0)
  {
    sub_27463856C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809507F0);
  }

  return result;
}

uint64_t WFHomeAccessoryPickerParameter.view(with:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950800);
  sub_27440CA78(&unk_280950808, &qword_280950800);
  return sub_27463AE9C();
}

uint64_t sub_27453F698@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950830);
  v5 = v4[14];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[15];
  *v6 = swift_getKeyPath();
  *(v6 + 4) = 0;
  v7 = a2 + v4[16];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a2 + v4[17];
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v9 = a1;
  sub_27444A564(v9);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *a2 = sub_27463950C();
  a2[1] = v10;
  v11 = [v9 localizedLabel];
  v12 = sub_27463B6AC();
  v14 = v13;

  v15 = [v9 localizedDescription];
  if (v15)
  {
    v16 = v15;
    v17 = sub_27463B6AC();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  a2[2] = v12;
  a2[3] = v14;
  a2[4] = v17;
  a2[5] = v19;
  v20 = a2 + v4[12];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = v4[11];
  v22 = v9;

  result = sub_27444AD18(v22, 0, 4, 0, 0, a2 + v21);
  *(a2 + v4[13]) = 0;
  return result;
}

id WFHomeAccessoryPickerParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274412734(0, &qword_28094BD80);
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (a1)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = [v2 localizedLabelForState_];
      [v12 populateWithString_];
      swift_unknownObjectRelease();
    }
  }

  return v12;
}

id sub_27453FA00(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFHomeAccessoryPickerParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27453FA70()
{
  static WFHomeAccessoryPickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_27453FA98(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v5 = v2;
  sub_27440846C();
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_1A61F53087D1474697F25AFA4527846B32HomeAccessoryPickerSummaryEditor_modal];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_1A61F53087D1474697F25AFA4527846B32HomeAccessoryPickerSummaryEditor_modal] = v7;
  v8 = v7;

  sub_27440A42C(a2);
}

uint64_t sub_27453FBB4()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_27453FC4C, v3, v2);
}

uint64_t sub_27453FC4C()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27453FD68;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_26;
  v0[7].receiver = v2;
  v3 = type metadata accessor for HomeAccessoryPickerSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_27453FD68()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_27453FE6C, v2, v1);
}

uint64_t sub_27453FE6C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_1A61F53087D1474697F25AFA4527846B32HomeAccessoryPickerSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27453FF64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27453FFFC, v4, v3);
}

uint64_t sub_27453FFFC()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_27453FBB4();
}

id sub_2745400A8()
{
  v1 = [v0 initialState];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 home];

    if (v3)
    {
      v4 = WFSerializableHomeIdentifier();
      sub_27463B6AC();

      v5 = objc_allocWithZone(MEMORY[0x277D7C4A8]);
      v2 = sub_2745402F4();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

id sub_2745401F0(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_1A61F53087D1474697F25AFA4527846B32HomeAccessoryPickerSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for HomeAccessoryPickerSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745402AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAccessoryPickerSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2745402F4()
{
  sub_274412734(0, &unk_280950820);
  v1 = sub_27463B7FC();

  v2 = sub_27463B66C();

  v3 = [v0 initWithActionSets:v1 homeIdentifier:v2];

  return v3;
}

uint64_t sub_2745403C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_27453FF64(v2, v3);
}

void sub_274540484(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950838);
  MEMORY[0x277C575F0](&v16, v8);
  v9 = v16;
  if (v16)
  {
    v10 = [v16 dictionaryKey];

    v9 = sub_27463B6AC();
    v12 = v11;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v9;
  a4[4] = v12;
  a4[5] = 0;
}

uint64_t sub_274540574@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274638B1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = *(v4 + 104);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v8;
  v7(v5);
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

  *&v38 = v13;
  *(&v38 + 1) = v15;
  sub_274412BBC();
  v16 = sub_27463A53C();
  v18 = v17;
  v20 = v19;
  sub_27463ABCC();
  v32 = sub_27463A4DC();
  v33 = v21;
  v23 = v22;
  LOBYTE(v10) = v24;

  sub_274412C10(v16, v18, v20 & 1);

  v25 = *v1;
  v39 = v1[2];
  v40 = v25;
  v38 = *(v1 + 3);
  v37 = v1[5];
  v26 = swift_allocObject();
  v27 = *(v1 + 1);
  v26[1] = *v1;
  v26[2] = v27;
  v26[3] = *(v1 + 2);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950840);
  v29 = *(v28 + 56);
  v30 = v35;
  (*(v4 + 32))(a1 + v29, v34, v35);
  __swift_storeEnumTagSinglePayload(a1 + v29, 0, 1, v30);
  *(a1 + 16) = v32;
  *(a1 + 24) = v23;
  *(a1 + 32) = v10 & 1;
  *(a1 + 40) = v33;
  *(a1 + *(v28 + 60)) = 1;
  *a1 = sub_274540ED8;
  *(a1 + 8) = v26;
  sub_27445E9E4(&v40, v36);

  sub_274439BF0(&v39, v36, &qword_28094F1E0);
  sub_27448E448(&v38, v36);
  return sub_274439BF0(&v37, v36, &qword_28094F1E8);
}

uint64_t sub_2745408A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D688);
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F720);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  *a2 = sub_274639C6C();
  *(a2 + 8) = 0;
  v30 = a2;
  *(a2 + 16) = 1;
  v26[5] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950848) + 44);
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v10 = qword_28094BB00;
  v11 = sub_27463B66C();
  v12 = sub_27463B66C();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_27463B6AC();
  v16 = v15;

  v36 = v14;
  v37 = v16;
  v17 = a1[5];
  v34 = *(a1 + 3);
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463AD0C();
  v26[3] = *(&v31 + 1);
  v26[4] = v31;
  v26[2] = v32;
  v26[1] = v33;
  v18 = *a1;
  v38 = a1[2];
  v39 = v18;
  v31 = *(a1 + 3);
  v40[0] = v17;
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  v19[1] = *a1;
  v19[2] = v20;
  v19[3] = *(a1 + 2);
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  v21[3] = *(a1 + 2);
  sub_27445E9E4(&v39, &v34);

  sub_274439BF0(&v38, &v34, &qword_28094F1E0);
  sub_27448E448(&v31, &v34);
  sub_274439BF0(v40, &v34, &qword_28094F1E8);
  sub_27445E9E4(&v39, &v34);

  sub_274439BF0(&v38, &v34, &qword_28094F1E0);
  sub_27448E448(&v31, &v34);
  sub_274439BF0(v40, &v34, &qword_28094F1E8);
  sub_274412BBC();
  sub_27463B17C();
  v23 = sub_27440CA78(&qword_280952FC0, &qword_28094D688);
  MEMORY[0x277C56F80](1, v4, v23);
  (*(v27 + 8))(v6, v4);
  *&v34 = v4;
  *(&v34 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_27463A7DC();
  return (*(v28 + 8))(v9, v24);
}

uint64_t sub_274540D6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463ACEC();

  v0 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v0 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    sub_274540F84();
    sub_27463ACEC();
    sub_274540E60();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950838);
  return sub_27463AEBC();
}

id sub_274540E60()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_27463B66C();

  v2 = [v0 initWithDictionaryKey_];

  return v2;
}

uint64_t sub_274540EE0(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return sub_274540D6C();
  }

  return result;
}

uint64_t objectdestroyTm_13()
{

  return swift_deallocObject();
}

unint64_t sub_274540F84()
{
  result = qword_280950850;
  if (!qword_280950850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280950850);
  }

  return result;
}

id sub_274540FC8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_274540FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = type metadata accessor for ScrollableTableView.LayoutAtom();
  (*(*(v14 - 8) + 32))(a3, a1, v14);
  result = _s12OverlayLayerC10LayoutItemVMa();
  *(a3 + *(result + 36)) = a2;
  v16 = (a3 + *(result + 40));
  *v16 = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  return result;
}

id sub_2745410C8()
{
  v3.receiver = v0;
  v3.super_class = _s12OverlayLayerCMa();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setNeedsDisplayOnBoundsChange_];
  return v1;
}

double sub_2745411CC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EditorDropItem();
  type metadata accessor for CGRect(0);
  sub_274541D10();
  v2 = sub_27463B4DC();
  _s12OverlayLayerC10LayoutItemVMa();
  v3 = sub_27463B87C();
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  return result;
}

void sub_27454129C()
{
  swift_unknownObjectRetain();
  sub_27463C13C();
  swift_unknownObjectRelease();
  sub_27454126C();
}

id sub_274541364()
{
  v1 = v0;
  v2 = qword_2809508E0;
  OUTLINED_FUNCTION_1_29();
  _s20OverlayLayerDelegateCMa();
  *&v0[v2] = sub_274540FC8();
  v3 = qword_2809508E8;
  OUTLINED_FUNCTION_1_29();
  _s12OverlayLayerCMa();
  *&v1[v3] = sub_27463B87C();
  v4 = &v1[qword_2809508F0];
  sub_2745411CC(v8);
  v5 = v8[1];
  *v4 = v8[0];
  *(v4 + 1) = v5;
  *(v4 + 2) = v8[2];
  *(v4 + 6) = v9;
  OUTLINED_FUNCTION_1_29();
  v7.receiver = v1;
  v7.super_class = _s11OverlayHostCMa();
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

void sub_274541498()
{
  v1 = v0;
  v2 = qword_2809508E0;
  OUTLINED_FUNCTION_1_29();
  _s20OverlayLayerDelegateCMa();
  *(v0 + v2) = sub_274540FC8();
  v3 = qword_2809508E8;
  OUTLINED_FUNCTION_1_29();
  _s12OverlayLayerCMa();
  *(v1 + v3) = sub_27463B87C();
  v4 = v1 + qword_2809508F0;
  sub_2745411CC(v6);
  v5 = v6[1];
  *v4 = v6[0];
  *(v4 + 16) = v5;
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v7;
  OUTLINED_FUNCTION_0_35();
  __break(1u);
}

id sub_2745415C0()
{
  v1 = sub_27454178C();
  _s12OverlayLayerCMa();
  OUTLINED_FUNCTION_3_32();
  v2 = sub_27463B82C();
  v9 = v2;
  OUTLINED_FUNCTION_3_32();
  if (v2 != sub_27463B8BC())
  {
    do
    {
      OUTLINED_FUNCTION_3_32();
      v4 = sub_27463B89C();
      sub_27463B84C();
      if (v4)
      {
        v5 = *(v1 + 32 + 8 * v2);
      }

      else
      {
        v5 = sub_27463C3CC();
      }

      v6 = v5;
      sub_27463B91C();
      v7 = v6;
      [v0 bounds];
      [v7 setFrame_];

      OUTLINED_FUNCTION_3_32();
      v2 = v9;
    }

    while (v9 != sub_27463B8BC());
  }

  v8.receiver = v0;
  v8.super_class = _s11OverlayHostCMa();
  return objc_msgSendSuper2(&v8, sel_layoutSubviews);
}

void sub_274541744(void *a1)
{
  v1 = a1;
  sub_2745415C0();
}

uint64_t sub_27454179C()
{
  v0 = sub_27454178C();
  _s12OverlayLayerCMa();
  OUTLINED_FUNCTION_5_0();
  v1 = sub_27463B82C();
  v6 = v1;
  OUTLINED_FUNCTION_5_0();
  if (v1 != sub_27463B8BC())
  {
    do
    {
      OUTLINED_FUNCTION_5_0();
      v3 = sub_27463B89C();
      sub_27463B84C();
      if (v3)
      {
        v4 = *(v0 + 32 + 8 * v1);
      }

      else
      {
        v4 = sub_27463C3CC();
      }

      v5 = v4;
      sub_27463B91C();

      OUTLINED_FUNCTION_5_0();
      v1 = v6;
    }

    while (v6 != sub_27463B8BC());
  }
}

uint64_t sub_274541904()
{
}

uint64_t sub_274541980(uint64_t a1)
{
}

id sub_274541A38()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEB68]);

  return [v0 init];
}

id sub_274541A70(void *a1, uint64_t a2, void *a3)
{
  sub_27463B6AC();
  v5 = a3;
  v6 = a1;
  v7 = sub_274541A38();

  return v7;
}

id sub_274541AF4()
{
  v2.receiver = v0;
  v2.super_class = _s20OverlayLayerDelegateCMa();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_274541BA0(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_274541C30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274541C6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_274541CAC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_274541D10()
{
  result = qword_28094EF08;
  if (!qword_28094EF08)
  {
    type metadata accessor for EditorDropItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EF08);
  }

  return result;
}

void sub_274541D80()
{
  type metadata accessor for ScrollableTableView.LayoutAtom();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_274541E10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 9;
  v5 = v3 + 120;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (v5 <= 0x78)
  {
    v5 = 120;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  v7 = a2 - 252;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v7 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_25:
      v14 = *(a1 + v5);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v13 = v11 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return (v8 | v13) + 254;
}

void sub_274541EF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  v7 = v5 + 120;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= 0x78)
  {
    v7 = 120;
  }

  v8 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else
  {
    v9 = a3 - 252;
    if ((((v7 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  if (a2 > 0xFD)
  {
    if ((((v7 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v12 = a2 - 253;
    }

    else
    {
      v12 = 1;
    }

    if ((((v7 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v13 = a2 - 254;
      bzero(a1, (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32);
      *a1 = v13;
    }

    switch(v11)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
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
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return sub_27463C56C();
}

uint64_t sub_2745420A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2745684BC();
  *a1 = result;
  return result;
}

uint64_t sub_274542110(uint64_t *a1)
{
  v4[1] = *(v1 + qword_280954408);
  v5 = *(v1 + qword_280954408 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x277C575F0](v4, v2);
  return v4[0];
}

uint64_t sub_274542164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F970);
  sub_274458A14(&unk_280950C30, &qword_28094F970);
  sub_274638EFC();
  sub_274638F3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A8);
  return sub_27463AEBC();
}

uint64_t sub_274542248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F990);
  sub_274458A14(&qword_280950BF0, &unk_28094F990);
  sub_274638EFC();
  sub_274638F3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BD8);
  return sub_27463AEBC();
}

uint64_t sub_27454232C(void *a1, char a2, uint64_t a3)
{
  result = sub_274542110(&qword_28094F8A8);
  v7 = *(result + 16);
  if (v7 < a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a3 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = a1;
  if (!swift_isUniquelyReferenced_nonNull_native() || v7 >= *(v8 + 24) >> 1)
  {
    sub_27444FF1C();
  }

  sub_274546E84(a3, a3, 1, a1, a2 & 1);

  return sub_274542164();
}

uint64_t sub_274542408(void *a1, uint64_t a2)
{
  v4 = sub_274542110(&qword_280950BD8);
  result = sub_274546B64(a2, v4);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_27444C52C(v4);
  if (result < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_274453594(v4);
  v6 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = a1;
  sub_274545B30(v6);
  sub_274546F90(a2, a2, 1, v7);

  return sub_274542248();
}

uint64_t sub_2745424E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950B78);

  return swift_allocObject();
}

uint64_t sub_274542524()
{
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  swift_allocObject();
  return ModuleSummaryModalCoordinator.init()();
}

void sub_27454255C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v49 = v2;
  v3 = sub_2746380BC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2744C6ABC();
  v6 = v54;
  if (v54)
  {
    v7 = v55;
    __swift_project_boxed_opaque_existential_1(&v51, v54);
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    sub_274415174(&v51, &unk_2809507C0);
    v8 = 3;
  }

  v46 = v8;
  OUTLINED_FUNCTION_9_16();
  sub_27463B9CC();
  v9 = sub_27463B9BC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  OUTLINED_FUNCTION_10_21(v10 + 4);
  v10[33] = v8;
  OUTLINED_FUNCTION_9_16();
  v12 = sub_27463B9BC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v11;
  OUTLINED_FUNCTION_10_21(v13 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809505C0);
  sub_27463AF0C();
  v14 = v51;
  v15 = v52;
  v16 = v53;
  sub_2746380AC();
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F990));
  v18 = sub_2745076D4(v5, v14, v15, v16);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950B78);
  sub_274458A14(&qword_280950B80, &qword_280950B78);
  v47 = sub_27463920C();
  OUTLINED_FUNCTION_9_16();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_10_21((v19 + 16));
  OUTLINED_FUNCTION_9_16();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_10_21((v20 + 16));
  v21 = swift_allocObject();
  *(v21 + 16) = CGSizeMake;
  *(v21 + 24) = v20;
  v45 = sub_274543E80();
  v44 = v22;
  v43 = v23;
  v42 = v24;
  v25 = sub_274542110(&qword_280950BD8);
  v26 = sub_274453594(v25);

  LOBYTE(v11) = v26 > 1;
  v27 = *(*(v1 + 8) + qword_28094A100);
  v28 = sub_27463BBBC();
  v30 = v29;
  v32 = v31;

  v72 = sub_2745457A4;
  v73 = 0;
  v74 = 0;
  KeyPath = swift_getKeyPath();
  v76 = 0;
  v75 = KeyPath;
  v51 = v18;
  v52 = sub_27463950C();
  v53 = v34;
  v54 = sub_274547908;
  v55 = 0;
  v56 = j__CGSizeMake;
  v57 = 0;
  v58 = sub_274545908;
  v59 = v19;
  v60 = sub_274545910;
  v61 = v21;
  v62 = v45;
  v63 = v44;
  v64 = v43;
  v65 = v42;
  v66 = v11;
  v67 = 1;
  v71 = 0;
  v68 = v28;
  v69 = v30;
  v70 = v32 & 1;
  v50 = sub_27463AB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950B88);
  sub_274458A14(&qword_280950B90, &qword_280950B88);
  v35 = v49;
  sub_27463A87C();

  sub_274415174(&v51, &qword_280950B88);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950B98) + 36);
  *(v36 + 32) = 0;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  sub_274544E64(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator);
  OUTLINED_FUNCTION_2_25();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BA8);
  sub_27456919C(v35 + *(v37 + 36));
  v38 = swift_getKeyPath();
  v39 = OUTLINED_FUNCTION_2_25();

  v40 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BB0) + 36));
  *v40 = v38;
  v40[1] = v39;
  OUTLINED_FUNCTION_23();
}

void sub_274542B90(uint64_t a1@<X2>, unint64_t *a2@<X8>)
{
  v4 = sub_274542C88(a1);
  v5 = *(a1 + 8);
  v6 = qword_28094A100;
  if ([*(v5 + qword_28094A100) isRangedSizeArray])
  {
    v7 = *(v5 + v6);
    v8 = sub_27463BBBC();
    v10 = v9;
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C20);
      sub_27463ACEC();
      v13 = sub_274544ECC(v4, v8, v10);

      v4 = v13;
    }
  }

  *a2 = v4;
}

id sub_274542C88(uint64_t a1)
{
  (*(a1 + 32))(&v4);
  v1 = v4;
  if (!v4 || (v2 = [v4 value], v1, !v2) || (v4 = 0, sub_274412734(0, &qword_280954170), sub_27463B80C(), v2, (result = v4) == 0))
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_274542D30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = sub_274637EEC();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  v10 = sub_274453594(v33);
  v11 = MEMORY[0x277D84F90];
  v31 = a4;
  if (v10)
  {
    v12 = v10;
    v34 = MEMORY[0x277D84F90];
    sub_274451474(0, v10 & ~(v10 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v13 = 0;
    v14 = v34;
    v15 = v33 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v16 = MEMORY[0x277C58B20](v13, v33);
      }

      else
      {
        v16 = *(v33 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v17 identity];
      sub_274637ECC();

      v34 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_274451474(v19 > 1, v20 + 1, 1);
        v14 = v34;
      }

      ++v13;
      *(v14 + 16) = v20 + 1;
      (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v9, v32);
    }

    while (v12 != v13);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v34 = sub_274547760(v33, sub_274453594, &qword_28094B7C8);
  sub_274545D08(&v34);
  v21 = v34;
  v22 = v34[2];
  if (v22)
  {
    v34 = v11;
    sub_27463C44C();
    v23 = 5;
    do
    {
      v24 = [v21[v23] parameterState];
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v23 += 2;
      --v22;
    }

    while (v22);

    v25 = v34;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  sub_2745430F0(v14, v25);

  v26 = v31;
  [*(*(v31 + 8) + qword_28094A100) multipleStateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_28094E0C0);
  swift_dynamicCastMetatype();
  sub_274412734(0, &qword_280954170);
  v27 = sub_27463B7FC();

  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

  v29 = *(v26 + 48);
  v34 = v28;
  v29(&v34);
}

uint64_t sub_2745430F0(uint64_t a1, uint64_t a2)
{
  v45 = sub_274637EEC();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v39 - v7;
  MEMORY[0x28223BE20](v8);
  v47 = &v39 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950C00);
  MEMORY[0x28223BE20](v49);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - v13;
  MEMORY[0x28223BE20](v14);
  v40 = a2;
  v41 = &v39 - v15;
  v16 = *(a1 + 16);
  v51 = *(a2 + 16);
  v52 = a1;
  if (v51 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v51;
  }

  v53 = MEMORY[0x277D84F90];
  result = sub_27463C44C();
  v48 = v16;
  if (v17)
  {
    v19 = 0;
    v43 = (v4 + 32);
    v44 = v40 + 32;
    while (v16 != v19)
    {
      v20 = *(v4 + 16);
      v22 = v45;
      v21 = v46;
      result = v20(v46, v52 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v45);
      if (v51 == v19)
      {
        goto LABEL_20;
      }

      v23 = v21;
      v24 = v19 + 1;
      v25 = *(v44 + 8 * v19);
      v26 = *(v49 + 48);
      (*v43)(v11, v23, v22);
      *&v11[v26] = v25;
      v27 = v50;
      v20(v50, v11, v22);
      objc_allocWithZone(MEMORY[0x277D7C680]);
      swift_unknownObjectRetain_n();
      sub_274545944(v27, v25);
      sub_274415174(v11, &unk_280950C00);
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      result = sub_27463C42C();
      v19 = v24;
      v28 = v17 == v24;
      v16 = v48;
      if (v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_10:
    v46 = (v4 + 16);
    v44 = v40 + 32;
    v29 = v45;
    while (v16 != v17)
    {
      if (v17 >= v16)
      {
        goto LABEL_21;
      }

      v30 = *(v4 + 16);
      result = v30(v47, v52 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v29);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_22;
      }

      if (v51 == v17)
      {
        (*(v4 + 8))(v47, v29);
        return v53;
      }

      if (v17 >= v51)
      {
        goto LABEL_23;
      }

      v31 = *(v44 + 8 * v17);
      v32 = v49;
      v33 = *(v49 + 48);
      v34 = v42;
      (*(v4 + 32))(v42, v47, v29);
      *&v34[v33] = v31;
      v35 = v34;
      v36 = v41;
      sub_274547B30(v35, v41);
      v37 = *(v36 + *(v32 + 48));
      v38 = v50;
      v30(v50, v36, v29);
      objc_allocWithZone(MEMORY[0x277D7C680]);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_274545944(v38, v37);
      sub_274415174(v36, &unk_280950C00);
      sub_27463C41C();
      sub_27463C46C();
      v16 = v48;
      sub_27463C47C();
      result = sub_27463C42C();
      ++v17;
    }

    return v53;
  }

  return result;
}

uint64_t sub_2745435C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = sub_274639ABC();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a6 + 8) + qword_28094A100);
  sub_27463B9CC();

  v50 = v15;
  v16 = a4;

  v17 = a3;
  v18 = sub_27463B9BC();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v16;
  v19[5] = a5;
  v49 = a5;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = v17;
  sub_2745457E8(a6, __src);

  v21 = v17;

  v22 = sub_27463B9BC();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = MEMORY[0x277D85700];
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = v21;
  memcpy(v23 + 7, __src, 0xE8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
  sub_27463AF0C();
  v48 = *__src;
  v24 = *&__src[16];
  type metadata accessor for BindingParameterStateDataSource();
  v25 = swift_allocObject();
  *(v25 + 16) = v48;
  *(v25 + 32) = v24;
  type metadata accessor for ParameterStateStore();
  swift_allocObject();
  sub_27458265C();
  v27 = v26;
  v28 = *(a6 + 216);
  v29 = *(a6 + 224);
  *__src = *(a6 + 208);
  __src[8] = v28;
  *&__src[16] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950BE0);
  sub_27463ACEC();
  v30 = v51;
  v31 = v52;
  v32 = *(a6 + 192);
  if (*(a6 + 200) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v33 = sub_27463A2FC();
    sub_274638CEC();

    v34 = v45;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v32, 0);
    (*(v46 + 8))(v34, v47);
  }

  v35 = *(a6 + 176);
  if (v35)
  {
    v36 = (v30 == v49) & ~v31;
    swift_unknownObjectWeakInit();
    v37 = v35;
    *(a7 + 56) = sub_2746390EC() & 1;
    *(a7 + 64) = v38;
    *(a7 + 72) = v39 & 1;
    v40 = type metadata accessor for ParameterRowView();
    v41 = *(v40 + 52);
    *(a7 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
    swift_storeEnumTagMultiPayload();
    v42 = a7 + *(v40 + 56);
    *v42 = swift_getKeyPath();
    *(v42 + 8) = 0;
    *a7 = v50;
    *(a7 + 8) = v27;
    *(a7 + 16) = 0;
    *(a7 + 17) = v36;
    *(a7 + 24) = 1;
    *(a7 + 32) = 257;
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
    *(a7 + 48) = v37;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274544E64(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void sub_274543AA0(uint64_t a1@<X3>, void *a2@<X4>, void *a3@<X5>, void *a4@<X6>, void *a5@<X8>)
{
  v10 = sub_274542110(&qword_280950BD8);
  v11 = sub_274453594(v10);

  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    if ((a1 & 0x8000000000000000) == 0 && v11 > a1)
    {
      v15[1] = a2;
      v15[2] = a3;
      v15[3] = a4;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BF8);
      MEMORY[0x277C575F0](v15, v13);
      v14 = v15[0];
      v12 = [v15[0] parameterState];
    }

    *a5 = v12;
  }
}

uint64_t sub_274543B84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_274637EEC();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = *a1;
  if (*a1)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    swift_unknownObjectRetain();
    if (v19)
    {
      swift_unknownObjectRetain();
      v20 = sub_2745474B4(v19);
      if (v20)
      {
        v21 = v20;
        v22 = sub_274453594(v20);
        swift_unknownObjectRelease();
        if (v22 == 1)
        {
          v38 = a4;
          v39 = a5;
          v40 = a6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BF8);
          MEMORY[0x277C575F0](&v36);
          v23 = v36;
          v24 = [v36 identity];

          sub_274637ECC();
          sub_2744535A4(0, (v21 & 0xC000000000000001) == 0);
          if ((v21 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x277C58B20](0, v21);
          }

          else
          {
            v25 = *(v21 + 32);
            swift_unknownObjectRetain();
          }

          v26 = objc_allocWithZone(MEMORY[0x277D7C680]);
          v27 = sub_274545944(v17, v25);
          v38 = a4;
          v39 = a5;
          v40 = a6;
          v36 = v27;
          goto LABEL_11;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v38 = a4;
    v39 = a5;
    v40 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BF8);
    MEMORY[0x277C575F0](&v36);
    v28 = v36;
    v29 = [v36 identity];

    sub_274637ECC();
    v30 = objc_allocWithZone(MEMORY[0x277D7C680]);
    swift_unknownObjectRetain();
    v31 = sub_274545944(v14, v18);
    v38 = a4;
    v39 = a5;
    v40 = a6;
    v36 = v31;
LABEL_11:
    sub_27463AEBC();
    swift_unknownObjectRelease();
  }

  v32 = *(a7 + 216);
  v33 = *(a7 + 224);
  v38 = *(a7 + 208);
  LOBYTE(v39) = v32;
  v40 = v33;
  v36 = 0;
  v37 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950BE0);
  return sub_27463ACFC();
}

uint64_t sub_274543E80()
{
  v1 = v0;
  sub_2744C6ABC();
  v2 = __src[3];
  if (__src[3])
  {
    v3 = __src[4];
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    v3[1](v2, v3);
    v4 = __swift_destroy_boxed_opaque_existential_1(__src);
  }

  else
  {
    v4 = sub_274415174(__src, &unk_2809507C0);
  }

  (*(v0 + 32))(__src, v4);
  v5 = __src[0];
  if (!__src[0] || (v6 = [__src[0] value], v5, !v6) || (__src[0] = 0, sub_274412734(0, &qword_280954170), sub_27463B80C(), v6, (v7 = __src[0]) == 0))
  {

    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v1 + 8);
  v9 = qword_28094A100;
  if ([*(v8 + qword_28094A100) isRangedSizeArray] && (v10 = *(v8 + v9), v11 = sub_27463BBBC(), v13 = v12, v10, (v13 & 1) == 0))
  {
    v28 = sub_274453594(v7);

    if (v28 < v11)
    {
      return 0;
    }
  }

  else
  {
  }

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v14 = qword_28094BB00;
  v15 = sub_27463B66C();
  v16 = sub_27463B66C();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = sub_27463B6AC();
  v20 = v19;

  sub_27463B70C();
  v21 = sub_27463B66C();
  v22 = sub_27463B66C();

  v23 = [v14 localizedStringForKey:v21 value:v22 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_274648570;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_27440F250();
  *(v24 + 32) = v18;
  *(v24 + 40) = v20;
  v25 = sub_27463B67C();

  sub_2745457E8(v1, __src);
  v26 = swift_allocObject();
  memcpy((v26 + 16), __src, 0xE8uLL);
  return v25;
}

uint64_t sub_274544234(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274637EEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = *(*(a3 + 8) + qword_28094A100);
  v51 = &unk_2883D7328;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = result;
      v44 = a1;
      v16 = *(a3 + 216);
      v17 = *(a3 + 224);
      *&v49 = *(a3 + 208);
      BYTE8(v49) = v16;
      v50 = v17;
      *&v46 = a2 + 1;
      v47 = a2 + 1;
      LOBYTE(v48) = 0;
      v45 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950BE0);
      sub_27463ACFC();
      sub_274637EDC();
      ObjectType = swift_getObjectType();
      if (([v15 respondsToSelector_] & 1) != 0 && (v18 = objc_msgSend(v15, sel_defaultStateForNewArrayElement)) != 0)
      {
        v19 = v18;
        (*(v7 + 16))(v9, v12, v6);
        v20 = objc_allocWithZone(MEMORY[0x277D7C680]);
        swift_unknownObjectRetain();
        v21 = sub_274545944(v9, v19);
        sub_274542408(v21, v46);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for ModuleSummaryModalCoordinator(0);
        v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_274544E64(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator);
        v42 = sub_27463920C();
        v41 = [objc_opt_self() addingSlotWithKey_];
        sub_27463B9CC();
        v22 = v44;
        v23 = sub_27463B9BC();
        v24 = swift_allocObject();
        v25 = MEMORY[0x277D85700];
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = v46;
        v24[5] = v22;
        (*(v7 + 16))(v9, v12, v6);
        v26 = v22;
        v27 = sub_27463B9BC();
        v28 = *(v7 + 80);
        v44 = v15;
        v29 = v6;
        v30 = (v28 + 32) & ~v28;
        v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = swift_allocObject();
        *(v32 + 16) = v27;
        *(v32 + 24) = MEMORY[0x277D85700];
        (*(v7 + 32))(v32 + v30, v40, v29);
        *(v32 + v31) = v26;
        *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
        sub_27463AF0C();
        v46 = v49;
        v33 = v50;
        type metadata accessor for BindingParameterStateDataSource();
        v34 = swift_allocObject();
        *(v34 + 16) = v46;
        *(v34 + 32) = v33;
        v6 = v29;
        type metadata accessor for ParameterStateStore();
        swift_allocObject();
        sub_27458265C();
        v35 = v41;
        sub_27456BA04(v44, v41, v36, v42, ObjectType, v37, v38, v39, v40, v41, v42, ObjectType, v44, v45, v46, *(&v46 + 1), v47, v48);
      }

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

void sub_274544704(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = sub_274542110(&qword_280950BD8);
  v5 = sub_274453594(v4);

  if (v5 <= a1)
  {
    v9 = 0;
  }

  else
  {
    v6 = sub_274542110(&qword_280950BD8);
    sub_2744535A4(a1, (v6 & 0xC000000000000001) == 0);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277C58B20](a1, v6);
    }

    else
    {
      v7 = *(v6 + 8 * a1 + 32);
    }

    v8 = v7;

    v9 = [v8 parameterState];
  }

  *a2 = v9;
}

void sub_2745447F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_274637EEC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (!v15)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    goto LABEL_11;
  }

  v6 = v16;
  swift_unknownObjectRetain();
  v17 = [v6 value];
  if (!v17 || (v18 = v17, v28 = 0, sub_274412734(0, &qword_280954170), sub_27463B80C(), v18, (v6 = v28) == 0))
  {
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    (*(v11 + 16))(v14, a4, v10, v12);
    v21 = objc_allocWithZone(MEMORY[0x277D7C680]);
    swift_unknownObjectRetain();
    v20 = sub_274545944(v14, v15);
    goto LABEL_12;
  }

  if (!sub_274453594(v28))
  {

    goto LABEL_10;
  }

  sub_2744535A4(0, (v6 & 0xC000000000000001) == 0);
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  for (i = *(v6 + 32); ; i = MEMORY[0x277C58B20](0, v6))
  {
    v20 = i;
    swift_unknownObjectRelease();

LABEL_12:
    v22 = v20;
    v23 = sub_274542110(&qword_280950BD8);
    v28 = v23;
    sub_274546B64(a6, v23);
    if (a6 < 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (sub_27444C52C(v23) < a6)
    {
      goto LABEL_17;
    }

    v24 = sub_274453594(v23);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  sub_274545B30(v26);
  sub_274546F90(a6, a6, 1, v22);
  sub_274542248();
}

uint64_t sub_274544A7C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[5];
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v10 = a1;
  sub_27444A564(v10);
  sub_274458A14(&qword_28094CF70, &unk_28094B440);
  v11 = sub_27463950C();
  v13 = v12;

  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v8;
  *(a5 + 24) = *(a2 + 1);
  *(a5 + 40) = *(a2 + 3);
  *(a5 + 56) = v9;
  *(a5 + 64) = sub_2745424E4;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = a3;
  *(a5 + 96) = a4;
  *(a5 + 104) = 0;
  *(a5 + 112) = swift_getKeyPath();
  *(a5 + 152) = 0;
  type metadata accessor for MultipleValueFixedSizeIdentityStore();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  sub_27463ACDC();
  *(a5 + 160) = v18;
  *(a5 + 168) = v19;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274544E64(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  OUTLINED_FUNCTION_21_2();
  *(a5 + 176) = sub_27463979C();
  *(a5 + 184) = v14;
  *(a5 + 192) = swift_getKeyPath();
  *(a5 + 200) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C40);
  result = sub_27463ACDC();
  *(a5 + 208) = v18;
  *(a5 + 216) = v19;
  *(a5 + 224) = v20;
  return result;
}

void WFMultipleValueParameterStateEntry.id.getter()
{
  v1 = [v0 identity];
  sub_274637ECC();
}

BOOL sub_274544D18()
{
  v1 = [v0 parameterState];
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_274544D64(uint64_t a1)
{
  *(a1 + 8) = sub_274544DCC(&unk_280950B60);
  result = sub_274544DCC(&qword_280950B70);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_274544DCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_274412734(255, &qword_280954170);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274544E64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274544ECC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v54 = a2;
  v59 = sub_274637EEC();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v7;
  MEMORY[0x28223BE20](v8);
  v53 = &v53 - v9;
  v60 = MEMORY[0x277D84F90];
  v10 = sub_274453594(a1);
  v11 = 0;
  v12 = a1 & 0xC000000000000001;
  v13 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x277C58B20](v11, a1);
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v14 = *(a1 + 8 * v11 + 32);
    }

    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if ([v14 parameterState])
    {
      swift_unknownObjectRelease();
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    else
    {
    }

    ++v11;
  }

  v16 = sub_274453594(v60);

  if (v16 == v56)
  {

    return a1;
  }

  if (v16 > v56)
  {
    v17 = v56;
    if (v56 < 0)
    {
      goto LABEL_48;
    }

    sub_274546B64(0, a1);
    sub_274546B64(v17, a1);
    if (v12 && v17)
    {
      sub_274412734(0, &qword_280954170);

      v18 = 0;
      do
      {
        v19 = v18 + 1;
        sub_27463C3BC();
        v18 = v19;
      }

      while (v17 != v19);
    }

    else
    {
    }

    if (!(a1 >> 62))
    {
      a1 = 0;
      v39 = (v13 + 32);
      v22 = (2 * v17) | 1;
      goto LABEL_52;
    }

LABEL_51:

    v13 = sub_27463C5DC();
    v39 = v47;
    a1 = v48;
    v22 = v49;
    if ((v49 & 1) == 0)
    {
LABEL_42:
      sub_2745E01DC(v13, v39, a1, v22);
      a1 = v46;
      swift_unknownObjectRelease();
      return a1;
    }

LABEL_52:
    sub_27463C6DC();
    swift_unknownObjectRetain_n();
    v50 = swift_dynamicCastClass();
    if (!v50)
    {
      swift_unknownObjectRelease();
      v50 = MEMORY[0x277D84F90];
    }

    v51 = *(v50 + 16);

    if (!__OFSUB__(v22 >> 1, a1))
    {
      if (v51 == (v22 >> 1) - a1)
      {
        a1 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!a1)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x277D84F90];
        }

        return a1;
      }

      goto LABEL_61;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v20 = v55;
  v21 = *(*(v55 + 16) + 16);
  v22 = v56 - v21;
  v23 = v53;
  if (v56 > v21)
  {
    do
    {
      sub_274637EDC();
      v24 = *(v20 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 16) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_274450B78(0, *(v24 + 16) + 1, 1, v24);
        v24 = v28;
        *(v20 + 16) = v28;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_274450B78(v26 > 1, v27 + 1, 1, v24);
        v24 = v29;
      }

      *(v24 + 16) = v27 + 1;
      (*(v4 + 32))(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v23, v59);
      *(v20 + 16) = v24;
      --v22;
    }

    while (v22);
  }

  v30 = sub_274453594(a1);
  v31 = v56;
  if (v30 < v56)
  {
    v31 = v30;
  }

  if (v31 <= v54)
  {
    v32 = v54;
  }

  else
  {
    v32 = v31;
  }

  if (v32 < v30)
  {
    goto LABEL_49;
  }

  v33 = sub_2745DDE90(v30, v32, *(v20 + 16));
  v56 = v35;
  v37 = v36 >> 1;
  v38 = (v36 >> 1) - v34;
  if (__OFSUB__(v36 >> 1, v34))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v38)
  {
    v13 = v34;
    v55 = v33;
    v60 = MEMORY[0x277D84F90];
    v39 = &v60;
    sub_27463C44C();
    if ((v38 & 0x8000000000000000) == 0)
    {
      while (v13 < v37)
      {
        v40 = v57;
        v41 = *(v4 + 16);
        v42 = v59;
        v41(v57, v56 + *(v4 + 72) * v13, v59);
        v43 = v58;
        v41(v58, v40, v42);
        v44 = objc_allocWithZone(MEMORY[0x277D7C680]);
        sub_274545944(v43, 0);
        (*(v4 + 8))(v40, v42);
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
        if (v37 == ++v13)
        {
          swift_unknownObjectRelease();
          v45 = v60;
          goto LABEL_44;
        }
      }

      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_60;
  }

  swift_unknownObjectRelease();
  v45 = MEMORY[0x277D84F90];
LABEL_44:
  v60 = a1;

  sub_27445C33C(v45);
  return v60;
}

uint64_t sub_274545494()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2745454F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_274545538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2745455DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BC0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BC8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *(*v0 + 168);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BD0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  sub_274547920(v10, v7);
  sub_274638F6C();
  sub_274415174(v10, &qword_280950BC8);
  (*(v2 + 32))(v0 + v11, v4, v1);
  return v0;
}

uint64_t sub_2745457A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BB8);
  swift_allocObject();
  return sub_2745455DC();
}

uint64_t objectdestroyTm_14()
{
  swift_unknownObjectRelease();

  sub_2743F459C();
  sub_2743F459C();
  if (*(v0 + 184))
  {
    if (*(v0 + 168))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 144);
    }
  }

  else
  {
  }

  sub_274482198(*(v0 + 224), *(v0 + 232));

  return swift_deallocObject();
}

id sub_274545944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_274637EAC();
  v7 = [v3 initWithIdentity:v6 parameterState:a2];
  swift_unknownObjectRelease();

  v8 = sub_274637EEC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_274545AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_274545B30(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_27463C27C();
LABEL_9:
  result = sub_27463C3EC();
  *v1 = result;
  return result;
}

void *sub_274545BD0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, MEMORY[0x277D84F90]);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, MEMORY[0x277D84F90], v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

void sub_274545D08(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274545CDC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_274545D74(v5);
  *a1 = v2;
}

void sub_274545D74(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_27463C65C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950C10);
        v6 = sub_27463B88C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274545FC4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_274545E78(0, v2, 1, a1);
  }
}

void sub_274545E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v20 = *a4;
  v4 = (*a4 + 16 * a3);
  v5 = a1 - a3;
  while (2)
  {
    v18 = v4;
    v19 = a3;
    v6 = (v20 + 16 * a3);
    v8 = *v6;
    v7 = v6[1];
    v17 = v5;
    while (1)
    {
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = v7;
      v12 = v10;
      v13 = [v11 parameterState];
      v14 = [v12 parameterState];
      if (!v13)
      {
        break;
      }

      swift_unknownObjectRelease();

      if (v14)
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

LABEL_9:
      if (!v20)
      {
        __break(1u);
        return;
      }

      v8 = *v4;
      v7 = v4[1];
      *v4 = *(v4 - 1);
      *(v4 - 1) = v7;
      *(v4 - 2) = v8;
      v4 -= 2;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_14;
      }
    }

    if (!v14)
    {
LABEL_8:
      if (v8 >= v9)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    swift_unknownObjectRelease();
LABEL_14:
    a3 = v19 + 1;
    v4 = v18 + 2;
    v5 = v17 - 1;
    if (v19 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_274545FC4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_109:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v95 = v6 + 16;
      v96 = *(v6 + 2);
      while (v96 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_148;
        }

        v97 = v6;
        v98 = &v6[16 * v96];
        v99 = *v98;
        v100 = &v95[2 * v96];
        v101 = v100[1];
        sub_27454674C((*a3 + 16 * *v98), (*a3 + 16 * *v100), (*a3 + 16 * v101), v7);
        if (v115)
        {
          break;
        }

        if (v101 < v99)
        {
          goto LABEL_136;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_137;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        v102 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_138;
        }

        v115 = 0;
        v96 = *v95 - 1;
        memmove(v100, v100 + 2, 16 * v102);
        *v95 = v96;
        v6 = v97;
      }

LABEL_119:

      return;
    }

LABEL_145:
    v6 = sub_274546A20();
    goto LABEL_111;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (2)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      goto LABEL_34;
    }

    v116 = v4;
    v9 = *a3 + 16 * v8;
    v10 = *v9;
    v106 = v5;
    v11 = (*a3 + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v9 + 8);
    v15 = v13;
    v16 = [v14 parameterState];
    v17 = [v15 parameterState];
    v104 = v6;
    if (v16)
    {
      swift_unknownObjectRelease();

      if (!v17)
      {
        v111 = 1;
        v18 = v116;
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
      v18 = v116;
      goto LABEL_9;
    }

    v18 = v116;
    if (!v17)
    {
LABEL_9:
      v111 = v10 < v12;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    v111 = 0;
LABEL_11:
    v8 = v106 + 2;
    v19 = 16 * v106;
    v20 = (v11 + 5);
    while (v8 < v18)
    {
      v21 = *(v20 - 1);
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      v24 = *v20;
      v25 = v23;
      v26 = [v24 parameterState];
      v27 = [v25 parameterState];
      if (!v26)
      {

        v18 = v116;
        if (v27)
        {
          swift_unknownObjectRelease();
          if (v111)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        goto LABEL_19;
      }

      swift_unknownObjectRelease();

      if (v27)
      {
        swift_unknownObjectRelease();
        v18 = v116;
LABEL_19:
        if (((v111 ^ (v21 >= v22)) & 1) == 0)
        {
          break;
        }

        goto LABEL_22;
      }

      v18 = v116;
      if (!v111)
      {
        goto LABEL_32;
      }

LABEL_22:
      ++v8;
      v20 += 2;
    }

    if (!v111)
    {
LABEL_32:
      v6 = v104;
      v7 = v106;
      goto LABEL_34;
    }

LABEL_24:
    v7 = v106;
    if (v8 < v106)
    {
      goto LABEL_142;
    }

    if (v106 >= v8)
    {
      v6 = v104;
    }

    else
    {
      v28 = 16 * v8;
      v29 = v8;
      v30 = v106;
      v6 = v104;
      do
      {
        if (v30 != --v29)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v32 = (v31 + v19);
          v33 = v31 + v28;
          v34 = *v32;
          v35 = v32[1];
          *v32 = *(v33 - 16);
          *(v33 - 16) = v34;
          *(v33 - 8) = v35;
        }

        ++v30;
        v28 -= 16;
        v19 += 16;
      }

      while (v30 < v29);
    }

LABEL_34:
    v36 = a3[1];
    if (v8 >= v36)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v8, v7))
    {
      goto LABEL_141;
    }

    if (v8 - v7 >= a4)
    {
LABEL_56:
      if (v8 < v7)
      {
        goto LABEL_140;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2744503AC();
        v6 = v93;
      }

      v51 = *(v6 + 2);
      v52 = v51 + 1;
      v113 = v8;
      if (v51 >= *(v6 + 3) >> 1)
      {
        sub_2744503AC();
        v6 = v94;
      }

      *(v6 + 2) = v52;
      v53 = v6 + 32;
      v54 = &v6[16 * v51 + 32];
      *v54 = v7;
      *(v54 + 1) = v113;
      v118 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      if (!v51)
      {
LABEL_105:
        v5 = v113;
        v4 = a3[1];
        if (v113 >= v4)
        {
          goto LABEL_109;
        }

        continue;
      }

      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v6[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v6 + 4);
          v59 = *(v6 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_76:
          if (v61)
          {
            goto LABEL_127;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_130;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_133;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_135;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        if (v52 < 2)
        {
          goto LABEL_129;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_91:
        if (v76)
        {
          goto LABEL_132;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_134;
        }

        if (v83 < v75)
        {
          goto LABEL_105;
        }

LABEL_98:
        if (v55 - 1 >= v52)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = &v53[16 * v55];
        v7 = *(v89 + 1);
        sub_27454674C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v7), v118);
        if (v115)
        {
          goto LABEL_119;
        }

        if (v7 < v88)
        {
          goto LABEL_122;
        }

        v90 = v6;
        v91 = *(v6 + 2);
        if (v55 > v91)
        {
          goto LABEL_123;
        }

        *v87 = v88;
        v87[1] = v7;
        if (v55 >= v91)
        {
          goto LABEL_124;
        }

        v115 = 0;
        v52 = v91 - 1;
        memmove(&v53[16 * v55], v89 + 16, 16 * (v91 - 1 - v55));
        *(v90 + 2) = v91 - 1;
        v92 = v91 > 2;
        v6 = v90;
        if (!v92)
        {
          goto LABEL_105;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_125;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_126;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_128;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_131;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_139;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_76;
    }

    break;
  }

  v37 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_143;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v7)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v8 == v37)
  {
    goto LABEL_56;
  }

  v117 = *a3;
  v38 = *a3 + 16 * v8;
  v107 = v7;
  v108 = v37;
  v39 = (v7 - v8);
  while (2)
  {
    v112 = v8;
    v40 = (v117 + 16 * v8);
    v42 = *v40;
    v41 = v40[1];
    v109 = v39;
    v110 = v38;
    v43 = v38;
LABEL_44:
    v44 = *(v43 - 2);
    v45 = *(v43 - 1);
    v46 = v41;
    v47 = v45;
    v48 = [v46 parameterState];
    v49 = [v47 parameterState];
    if (v48)
    {
      swift_unknownObjectRelease();

      if (v49)
      {
        swift_unknownObjectRelease();
        goto LABEL_48;
      }
    }

    else
    {

      if (v49)
      {
        swift_unknownObjectRelease();
LABEL_54:
        v8 = v112 + 1;
        v38 = v110 + 16;
        v39 = v109 - 1;
        if ((v112 + 1) == v108)
        {
          v8 = v108;
          v7 = v107;
          goto LABEL_56;
        }

        continue;
      }

LABEL_48:
      if (v42 >= v44)
      {
        goto LABEL_54;
      }
    }

    break;
  }

  if (v117)
  {
    v42 = *v43;
    v41 = v43[1];
    *v43 = *(v43 - 1);
    *(v43 - 1) = v41;
    *(v43 - 2) = v42;
    v43 -= 2;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_27454674C(char *a1, char *a2, _OWORD *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_274451080(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    v34 = v5;
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v22 = v7;
        goto LABEL_39;
      }

      v12 = *(v6 + 1);
      v37 = *v6;
      v13 = v6;
      v14 = *v4;
      v15 = *(v4 + 1);
      v16 = v12;
      v17 = v15;
      v18 = [v16 parameterState];
      v19 = [v17 parameterState];
      if (v18)
      {
        swift_unknownObjectRelease();

        v6 = v13;
        if (!v19)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        v6 = v13;
        if (v19)
        {
          swift_unknownObjectRelease();
LABEL_16:
          v20 = v4;
          v21 = v7 == v4;
          v4 += 16;
          if (v21)
          {
            goto LABEL_18;
          }

LABEL_17:
          *v7 = *v20;
          goto LABEL_18;
        }
      }

      if (v37 >= v14)
      {
        goto LABEL_16;
      }

LABEL_13:
      v20 = v6;
      v21 = v7 == v6;
      v6 += 16;
      if (!v21)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 16;
      v5 = v34;
    }
  }

  sub_274451080(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
  v22 = v6;
  v36 = v7;
LABEL_20:
  v35 = v22 - 16;
  for (--v5; v10 > v4 && v22 > v7; --v5)
  {
    v40 = v10;
    v24 = v10 - 16;
    v38 = *(v10 - 2);
    v26 = *(v22 - 2);
    v25 = *(v22 - 1);
    v27 = *(v10 - 1);
    v28 = v25;
    v29 = [v27 parameterState];
    v30 = [v28 parameterState];
    if (v29)
    {
      swift_unknownObjectRelease();

      if (!v30)
      {
        goto LABEL_36;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      if (v30)
      {
        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    if (v38 < v26)
    {
LABEL_36:
      v21 = v5 + 1 == v22;
      v22 -= 16;
      v7 = v36;
      v10 = v40;
      if (!v21)
      {
        *v5 = *v35;
      }

      goto LABEL_20;
    }

LABEL_33:
    if (v40 != (v5 + 1))
    {
      *v5 = *v24;
    }

    v10 = v24;
    v7 = v36;
  }

LABEL_39:
  v31 = (v10 - v4) / 16;
  if (v22 != v4 || v22 >= &v4[16 * v31])
  {
    memmove(v22, v4, 16 * v31);
  }

  return 1;
}

char *sub_274546A38(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_274546A64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_274546B64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_27463C27C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_274546BBC()
{
  OUTLINED_FUNCTION_24();
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_36();
  sub_274412734(0, &qword_280950570);
  v11 = OUTLINED_FUNCTION_8_21();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v14 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_23:
  v14 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v14, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_274453590((v6 + 8 * v3), v14 - v3, (v2 + 8 * v4));
  if (v7)
  {
    v11 = sub_27463C27C();
  }

  else
  {
    v11 = *(v1 + 16);
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_25;
  }

  *(v1 + 16) = v11 + v10;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_23();

    return;
  }

  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_27();
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    sub_274547520(v0, sub_274547BA0, v12, sub_2745DFFE0);
    goto LABEL_17;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) == v4)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_17:

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_274546D40()
{
  OUTLINED_FUNCTION_24();
  v12 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_20;
  }

  v0 = v11;
  v3 = v10;
  v4 = v9;
  v2 = v8;
  v13 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v6 + 32;
  v5 = v6 + 32 + 8 * v8;
  type metadata accessor for WFEditorItem();
  swift_arrayDestroy();
  v14 = __OFSUB__(v3, v12);
  v12 = v3 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v1 = (v5 + 8 * v3);
  if (!v12)
  {
    goto LABEL_12;
  }

  v5 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v6 + 16);
    goto LABEL_6;
  }

LABEL_21:
  v15 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  sub_274453590((v7 + 8 * v4), v15 - v4, v1);
  if (v5)
  {
    v16 = sub_27463C27C();
  }

  else
  {
    v16 = *(v6 + 16);
  }

  if (__OFADD__(v16, v12))
  {
    goto LABEL_23;
  }

  *(v6 + 16) = v16 + v12;
LABEL_12:
  if (v3 < 1)
  {
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v17 = v6 + 8 * v2;
    *(v17 + 32) = v0;
    if (v17 + 40 < v1)
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_23();
  }
}

void sub_274546E84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = *v5;
  v11 = v10 + 32 + 16 * a1;
  a1 = swift_arrayDestroy();
  v12 = __OFSUB__(a3, v6);
  v13 = a3 - v6;
  if (v12)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v10 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_15;
  }

  a1 = sub_274451080((v10 + 32 + 16 * a2), v14 - a2, (v11 + 16 * a3));
  v15 = *(v10 + 16);
  v12 = __OFADD__(v15, v13);
  v16 = v15 + v13;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v10 + 16) = v16;
LABEL_7:
  a1 = a4;
  if (a3 >= 1)
  {
    *v11 = a4;
    *(v11 + 8) = a5 & 1;
    if (a3 == 1)
    {
      return;
    }

LABEL_17:
    v17 = a1;
    __break(1u);
    return;
  }
}

void sub_274546F90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_274412734(0, &qword_280954170);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_274453590((v8 + 8 * v6), &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_27463C27C();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

void sub_2745470D0()
{
  OUTLINED_FUNCTION_24();
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_36();
  type metadata accessor for WFEditorItem();
  v11 = OUTLINED_FUNCTION_8_21();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v14 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_23:
  v14 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v14, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_274453590((v6 + 8 * v3), v14 - v3, (v2 + 8 * v4));
  if (v7)
  {
    v11 = sub_27463C27C();
  }

  else
  {
    v11 = *(v1 + 16);
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_25;
  }

  *(v1 + 16) = v11 + v10;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_23();

    return;
  }

  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_27();
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    sub_274547520(v0, sub_274547BBC, v12, sub_2745DFFE0);
    goto LABEL_17;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) == v4)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_17:

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

uint64_t sub_274547244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for WFEditorDragSession();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_274453590(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_27463C27C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_27454732C(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 16 * result);
  if (v8)
  {
    v14 = *(v11 + 16);
    v15 = __OFSUB__(v14, a2);
    v16 = v14 - a2;
    if (!v15)
    {
      result = sub_274451080((v12 + 16 * a2), v16, &v13[2 * a3]);
      v17 = *(v11 + 16);
      v15 = __OFADD__(v17, v8);
      v18 = v17 + v8;
      if (!v15)
      {
        *(v11 + 16) = v18;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_2745473D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_274412734(0, &qword_280950570);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27454744C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for WFEditorItem();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2745474B4(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_274547520(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_274545BD0(a1, a4);
  v6 = v5[2];

  return a2(v5 + 4, v6);
}

uint64_t sub_2745475B0(uint64_t a1)
{
  v2 = a1;
  result = sub_274453594(a1);
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = v2 & 0xC000000000000001;
  v8 = MEMORY[0x277D84F90];
  v9 = (MEMORY[0x277D84F90] + 32);
  v10 = v2 & 0xFFFFFFFFFFFFFF8;
  v27 = v2 & 0xFFFFFFFFFFFFFF8;
  v28 = v2;
  while (1)
  {
    if (v4 == v5)
    {
      v24 = v8[3];
      if (v24 >= 2)
      {
        v25 = v24 >> 1;
        v23 = __OFSUB__(v25, v6);
        v26 = v25 - v6;
        if (v23)
        {
          goto LABEL_32;
        }

        v8[2] = v26;
      }

      return v8;
    }

    if (v7)
    {
      result = MEMORY[0x277C58B20](v5, v2);
      v11 = result;
    }

    else
    {
      if (v5 >= *(v10 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(v2 + 8 * v5 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (!v6)
    {
      v12 = v8[3];
      if (((v12 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v13 = v4;
      v14 = v7;
      v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C88);
      v17 = swift_allocObject();
      _swift_stdlib_malloc_size_0(v17);
      OUTLINED_FUNCTION_4_25();
      v17[2] = v16;
      v17[3] = v18;
      v19 = (v17 + 4);
      v20 = v8[3];
      v21 = v20 >> 1;
      if (v8[2])
      {
        if (v17 != v8 || v19 >= &v8[2 * v21 + 4])
        {
          memmove(v17 + 4, v8 + 4, 16 * v21);
        }

        v8[2] = 0;
      }

      v9 = (v19 + 16 * v21);
      v6 = (v1 & 0x7FFFFFFFFFFFFFFFLL) - (v20 >> 1);

      v8 = v17;
      v7 = v14;
      v4 = v13;
      v10 = v27;
      v2 = v28;
    }

    v23 = __OFSUB__(v6--, 1);
    if (v23)
    {
      goto LABEL_30;
    }

    *v9 = v5;
    v9[1] = v11;
    v9 += 2;
    ++v5;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}