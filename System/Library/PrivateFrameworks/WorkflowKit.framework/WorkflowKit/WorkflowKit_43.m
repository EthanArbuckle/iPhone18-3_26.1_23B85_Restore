void sub_1CA6AC510()
{
  OUTLINED_FUNCTION_77_1();
  if ((*(v0 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_shouldIgnoreUpdates) & 1) != 0 || (v4 = v3, v5 = v2, v6 = v1, (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    OUTLINED_FUNCTION_76_0();
    return;
  }

  v8 = Strong;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v6;
    if (![v10 mode])
    {
      if (sub_1CA94C3A8() == v5 && v12 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_116();
        v14 = sub_1CA94D7F8();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      sub_1CA6A6714(v10);
    }

LABEL_14:
  }

  v15 = *&v8[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];

  v16 = OUTLINED_FUNCTION_69();
  sub_1CA365554(v16, v17, v4, v8);

  v18 = *&v8[OBJC_IVAR___WFWorkflowActionTree_connectorState];

  v19 = OUTLINED_FUNCTION_69();
  sub_1CA635D60(v19, v20, v4);

  OUTLINED_FUNCTION_76_0();
}

void sub_1CA6AC73C(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = _s17ControlFlowBranchVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA6A6D28(a1, &v38);
  if ((v40 & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(&v39 + 1);
  v13 = v39;
  if ((a2 & 1) == 0)
  {
    v37[0] = v38;
    sub_1CA94C218();
    sub_1CA94C218();
    v27 = v12;
    sub_1CA36D8A0(v37);
    v41 = v13;
LABEL_20:
    sub_1CA27080C(&v41, &unk_1EC448100, &qword_1CA991FF8);

LABEL_21:
    v29 = v39;
    *a3 = v38;
    *(a3 + 16) = v29;
    *(a3 + 32) = v40;
    return;
  }

  v36 = v38;
  v41 = v39;
  v14 = *(v39 + 16);
  if (!v14)
  {
    v26 = *(&v38 + 1);
    sub_1CA94C218();
    sub_1CA94C218();
    v28 = v12;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1CA4FC7D4(a1, a1, v18);
    *&v37[0] = v36;
    *(&v37[0] + 1) = v26;
    sub_1CA36D8A0(v37);
    goto LABEL_20;
  }

  v31 = *(&v38 + 1);
  v32 = a1;
  v33 = v3;
  v34 = *(&v39 + 1);
  v35 = a3;
  v15 = *(v7 + 28);
  v16 = v39 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  sub_1CA6B2BCC(&v38, v37);
  sub_1CA2D9D20(&v41, v37, &unk_1EC448100, &qword_1CA991FF8);
  v17 = *(v8 + 72);
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1CA285A0C(v16, v11);
    v19 = *&v11[v15];
    sub_1CA94C218();
    sub_1CA285DC8(v11, _s17ControlFlowBranchVMa);
    v20 = *(v19 + 16);
    v21 = *(v18 + 16);
    if (__OFADD__(v21, v20))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > *(v18 + 24) >> 1)
    {
      sub_1CA2E6A4C();
      v18 = v22;
    }

    if (*(v19 + 16))
    {
      if ((*(v18 + 24) >> 1) - *(v18 + 16) < v20)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v23 = *(v18 + 16);
        v24 = __OFADD__(v23, v20);
        v25 = v23 + v20;
        if (v24)
        {
          goto LABEL_25;
        }

        *(v18 + 16) = v25;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_23;
      }
    }

    v16 += v17;
    if (!--v14)
    {
      sub_1CA27080C(&v41, &unk_1EC448100, &qword_1CA991FF8);
      v12 = v34;
      a3 = v35;
      a1 = v32;
      v26 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1CA6ACA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  v5 = sub_1CA94C648();

  v6 = sub_1CA948CD8();
  v7 = [v3 initWithValues:v5 identity:v6];

  v8 = sub_1CA948D28();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

void sub_1CA6ACC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_43_0();
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448E0, &unk_1CA982760);
    OUTLINED_FUNCTION_171();
    v20 = sub_1CA94D3D8();
    v36 = v20;
    sub_1CA94D2F8();
    while (1)
    {
      if (!sub_1CA94D358())
      {

        goto LABEL_24;
      }

      OUTLINED_FUNCTION_84_4();
      type metadata accessor for ActionOutput();
      swift_dynamicCast();
      if (*(v20 + 24) <= *(v20 + 16))
      {
        sub_1CA6AD608();
      }

      v20 = v36;
      v21 = *(v36 + 40);
      sub_1CA94D918();
      v23 = *(a19 + 16);
      v22 = *(a19 + 24);
      switch(*(a19 + 40))
      {
        case 1:
          MEMORY[0x1CCAA2780](1);
          sub_1CA94CFE8();
          break;
        case 2:
          v26 = 2;
          goto LABEL_11;
        case 3:
          v26 = 3;
LABEL_11:
          MEMORY[0x1CCAA2780](v26);
          sub_1CA94CFE8();
          v25 = v22;
          goto LABEL_12;
        case 4:
          v25 = 4;
LABEL_12:
          MEMORY[0x1CCAA2780](v25);
          break;
        default:
          v24 = *(a19 + 32);
          MEMORY[0x1CCAA2780](0);
          sub_1CA94CFE8();
          sub_1CA94C458();
          break;
      }

      v27 = sub_1CA94D968();
      v28 = -1 << *(v36 + 32);
      OUTLINED_FUNCTION_56_10(v27, v36 + 56);
      if (((-1 << v29) & ~v30) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_35_17();
LABEL_21:
      OUTLINED_FUNCTION_29_18(v31);
      *(*(v36 + 48) + 8 * v35) = a19;
      OUTLINED_FUNCTION_42_10();
    }

    while (1)
    {
      OUTLINED_FUNCTION_119_4();
      if (v34)
      {
        if (v33)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_53_14(v32);
      if (!v34)
      {
        OUTLINED_FUNCTION_34_18();
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_24:
    OUTLINED_FUNCTION_42_0();
  }
}

void sub_1CA6ACE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_71_0();
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443E60, &qword_1CA9824D0);
    OUTLINED_FUNCTION_171();
    v12 = sub_1CA94D3D8();
    v24 = v12;
    sub_1CA94D2F8();
    while (1)
    {
      if (!sub_1CA94D358())
      {

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_84_4();
      sub_1CA949FB8();
      swift_dynamicCast();
      if (*(v12 + 24) <= *(v12 + 16))
      {
        sub_1CA6AE07C();
      }

      v12 = v24;
      v13 = *(v24 + 40);
      OUTLINED_FUNCTION_19_27();
      sub_1CA6B2C04(&unk_1EC4448B0, v14);
      v15 = sub_1CA94C288();
      v16 = *(v24 + 32);
      OUTLINED_FUNCTION_56_10(v15, v24 + 56);
      if (((-1 << v17) & ~v18) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_35_17();
LABEL_14:
      OUTLINED_FUNCTION_29_18(v19);
      *(*(v24 + 48) + 8 * v23) = a11;
      OUTLINED_FUNCTION_42_10();
    }

    OUTLINED_FUNCTION_120_6();
    while (1)
    {
      OUTLINED_FUNCTION_119_4();
      if (v22)
      {
        if (v21)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_53_14(v20);
      if (!v22)
      {
        OUTLINED_FUNCTION_34_18();
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_17:
    OUTLINED_FUNCTION_73();
  }
}

void sub_1CA6AD1DC()
{
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_10_39(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v4)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_64_10();
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_8_36();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v5 >= v10)
      {
        break;
      }

      ++v12;
      if (*(v1 + 8 * v5))
      {
        OUTLINED_FUNCTION_1_41();
        v8 = v14 & v13;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v29 != v30)
    {
      OUTLINED_FUNCTION_26_23(v28);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v31, v32, v1);
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_18();
LABEL_9:
    v15 = (*(v1 + 48) + 16 * (v11 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v2 + 40);
    sub_1CA94D918();
    sub_1CA94C458();
    sub_1CA94D968();
    v19 = *(v2 + 32);
    OUTLINED_FUNCTION_13_38();
    v21 = *(v2 + 56 + 8 * v20);
    OUTLINED_FUNCTION_34_0();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_19:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_67_9();
    v27 = (*(v2 + 48) + 16 * v26);
    *v27 = v16;
    v27[1] = v17;
    OUTLINED_FUNCTION_23_16();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    OUTLINED_FUNCTION_68_11(v23);
    if (!v22)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1CA6AD350()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v0;
  OUTLINED_FUNCTION_40();
  v48 = sub_1CA94ADC8();
  v3 = OUTLINED_FUNCTION_1_0(v48);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v47 = v9 - v8;
  v10 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v11 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444168, &qword_1CA982790);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v12)
  {
LABEL_30:

    *v2 = v1;
    OUTLINED_FUNCTION_36();
    return;
  }

  v43 = v2;
  v44 = v10;
  v13 = 0;
  v14 = (v10 + 56);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 56);
  v18 = (v15 + 63) >> 6;
  v19 = v1 + 56;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v18)
      {
        break;
      }

      ++v21;
      if (v14[v13])
      {
        OUTLINED_FUNCTION_1_41();
        v17 = v23 & v22;
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v39 != v40)
    {
      *v14 = -1 << v38;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v41, v42, v14);
    }

    v2 = v43;
    *(v10 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_103_4();
LABEL_14:
    v45 = *(v5 + 72);
    v46 = *(v5 + 32);
    v46(v47, *(v10 + 48) + v45 * (v20 | (v13 << 6)), v48);
    v24 = v1;
    v25 = *(v1 + 40);
    sub_1CA6B2C04(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
    sub_1CA94C288();
    v1 = v24;
    v26 = *(v24 + 32);
    OUTLINED_FUNCTION_13_38();
    v28 = *(v19 + 8 * v27);
    OUTLINED_FUNCTION_34_0();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_24:
    OUTLINED_FUNCTION_43_14();
    v34 = *(v19 + v33);
    OUTLINED_FUNCTION_57_12();
    *(v19 + v35) = v36;
    v46(*(v24 + 48) + v37 * v45, v47, v48);
    OUTLINED_FUNCTION_23_16();
    v10 = v44;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v19 + 8 * v30) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1CA6AD608()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_10_39(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448E0, &unk_1CA982760);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v5)
  {
LABEL_33:

    *v0 = v2;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v36 = v1;
  v6 = 0;
  v7 = v1;
  OUTLINED_FUNCTION_8_36();
  v10 = v9 & v8;
  OUTLINED_FUNCTION_70_13();
  if (!v10)
  {
LABEL_4:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v13)
      {
        OUTLINED_FUNCTION_1_41();
        v10 = v15 & v14;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v31 != v32)
    {
      OUTLINED_FUNCTION_26_23(v30);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v33, v34, v7);
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_121_4();
LABEL_9:
    v16 = *(*(v1 + 48) + 8 * (v11 | (v6 << 6)));
    v17 = *(v2 + 40);
    sub_1CA94D918();
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    switch(*(v16 + 40))
    {
      case 1:
        MEMORY[0x1CCAA2780](1);
        sub_1CA94CFE8();
        break;
      case 2:
        v21 = 2;
        goto LABEL_14;
      case 3:
        v21 = 3;
LABEL_14:
        MEMORY[0x1CCAA2780](v21);
        sub_1CA94CFE8();
        v20 = v18;
        goto LABEL_15;
      case 4:
        v20 = 4;
LABEL_15:
        MEMORY[0x1CCAA2780](v20);
        break;
      default:
        v35 = *(v16 + 32);
        MEMORY[0x1CCAA2780](0);
        sub_1CA94CFE8();
        sub_1CA94C458();
        break;
    }

    sub_1CA94D968();
    v22 = *(v2 + 32);
    OUTLINED_FUNCTION_13_38();
    v24 = *(v3 + 8 * v23);
    OUTLINED_FUNCTION_34_0();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_27:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_54_9();
    *(v29 + 8 * v28) = v16;
    OUTLINED_FUNCTION_23_16();
    v1 = v36;
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v25)
    {
      if (v26)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_104_6();
    if (v25)
    {
      v27 = 0;
    }

    OUTLINED_FUNCTION_38_14(v27);
    if (!v25)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1CA6AD804(uint64_t a1)
{
  OUTLINED_FUNCTION_10_39(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_51_10();
  if (!v4)
  {
LABEL_28:

    *v1 = v2;
    return;
  }

  v5 = 0;
  v7 = (v3 + 56);
  v6 = *(v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v1 = (v9 & v6);
  v10 = v2 + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      ++v12;
      if (v7[v5])
      {
        OUTLINED_FUNCTION_1_41();
        v1 = (v14 & v13);
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1CA5C3FA4(0, (v8 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_12:
    v15 = *(*(v3 + 48) + 8 * (v11 | (v5 << 6)));
    v16 = *(v2 + 40);
    sub_1CA94D908();
    v17 = *(v2 + 32);
    OUTLINED_FUNCTION_44_10();
    if (((-1 << v19) & ~*(v10 + 8 * v18)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_22:
    OUTLINED_FUNCTION_2_11();
    *(v10 + v24) |= v25;
    *(*(v2 + 48) + 8 * v26) = v15;
    OUTLINED_FUNCTION_69_10();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v23)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (*(v10 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1CA6AD9A8()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_88_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444860, &unk_1CA984330);
  OUTLINED_FUNCTION_97_4();
  v4 = sub_1CA94D3C8();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v4;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v37 = v1;
  v5 = 0;
  v6 = v1;
  OUTLINED_FUNCTION_8_36();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_70_13();
  if (!v9)
  {
LABEL_4:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v13)
      {
        OUTLINED_FUNCTION_1_41();
        v9 = v15 & v14;
        goto LABEL_9;
      }
    }

    v33 = *(v1 + 32);
    OUTLINED_FUNCTION_25_4();
    if (v34 >= 64)
    {
      v35 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v35, v36, v6);
    }

    else
    {
      OUTLINED_FUNCTION_26_23(v34);
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    v16 = (*(v1 + 48) + (v10 | (v5 << 6)) * v11);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = *(v4 + 40);
    sub_1CA94D918();
    MEMORY[0x1CCAA2780](v17);
    sub_1CA94C458();
    sub_1CA94D968();
    v21 = *(v4 + 32);
    OUTLINED_FUNCTION_13_38();
    v23 = *(v2 + 8 * v22);
    OUTLINED_FUNCTION_34_0();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_19:
    OUTLINED_FUNCTION_43_14();
    v28 = *(v2 + v27);
    OUTLINED_FUNCTION_57_12();
    *(v2 + v29) = v30;
    v32 = (*(v4 + 48) + 24 * v31);
    *v32 = v17;
    v32[1] = v18;
    v32[2] = v19;
    OUTLINED_FUNCTION_23_16();
    v1 = v37;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v24)
    {
      if (v25)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_104_6();
    if (v24)
    {
      v26 = 0;
    }

    OUTLINED_FUNCTION_38_14(v26);
    if (!v24)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1CA6ADB50(uint64_t a1)
{
  OUTLINED_FUNCTION_10_39(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481D0, &unk_1CA984390);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v6)
  {
LABEL_25:

    *v1 = v3;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_114_3();
  v1 = (v9 & v8);
  v11 = (v10 + 63) >> 6;
  v12 = v3 + 56;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v11)
      {
        break;
      }

      ++v14;
      if (*(v4 + 8 * v7))
      {
        OUTLINED_FUNCTION_1_41();
        v1 = (v16 & v15);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v31 != v32)
    {
      OUTLINED_FUNCTION_26_23(v30);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v33, v34, v4);
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_9:
    memcpy(__dst, (*(v2 + 48) + 112 * (v13 | (v7 << 6))), sizeof(__dst));
    v17 = *(v3 + 40);
    sub_1CA94D918();
    sub_1CA368780();
    sub_1CA94D968();
    v18 = *(v3 + 32);
    OUTLINED_FUNCTION_44_10();
    if (((v5 << v20) & ~*(v12 + 8 * v19)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_19:
    OUTLINED_FUNCTION_43_14();
    v26 = *(v12 + v25);
    OUTLINED_FUNCTION_57_12();
    *(v12 + v27) = v28;
    memcpy((*(v3 + 48) + 112 * v29), __dst, 0x70uLL);
    OUTLINED_FUNCTION_23_16();
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v24)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    OUTLINED_FUNCTION_38_14(v21);
    if (!v24)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1CA6ADCF8(uint64_t a1)
{
  OUTLINED_FUNCTION_88_5(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
  OUTLINED_FUNCTION_97_4();
  v4 = sub_1CA94D3C8();
  if (!*(v2 + 16))
  {
LABEL_28:

    *v1 = v4;
    return;
  }

  v37 = v2;
  v5 = 0;
  v6 = v2;
  OUTLINED_FUNCTION_8_36();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_70_13();
  if (!v9)
  {
LABEL_4:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v12)
      {
        OUTLINED_FUNCTION_1_41();
        v9 = v14 & v13;
        goto LABEL_9;
      }
    }

    v33 = *(v2 + 32);
    OUTLINED_FUNCTION_25_4();
    if (v34 >= 64)
    {
      v35 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v35, v36, v6);
    }

    else
    {
      OUTLINED_FUNCTION_26_23(v34);
    }

    *(v2 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    v15 = *(v2 + 48) + 32 * (v10 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v4 + 40);
    sub_1CA94D918();
    v39 = v17;
    sub_1CA94C458();
    v38 = v18;
    sub_1CA94D948();
    MEMORY[0x1CCAA2780](*(v19 + 16));
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = (v19 + 32);
      do
      {
        v23 = *v22++;
        OUTLINED_FUNCTION_126_5();
        --v21;
      }

      while (v21);
    }

    sub_1CA94D968();
    v24 = *(v4 + 32);
    OUTLINED_FUNCTION_13_38();
    v26 = *(v3 + 8 * v25);
    OUTLINED_FUNCTION_34_0();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_22:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_54_9();
    v32 = v31 + 32 * v30;
    *v32 = v16;
    *(v32 + 8) = v39;
    *(v32 + 16) = v38;
    *(v32 + 24) = v19;
    OUTLINED_FUNCTION_23_16();
    v2 = v37;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v27)
    {
      if (v28)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_104_6();
    if (v27)
    {
      v29 = 0;
    }

    OUTLINED_FUNCTION_38_14(v29);
    if (!v27)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1CA6ADEF0()
{
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_10_39(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C8, &unk_1CA984370);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v5)
  {
LABEL_28:

    *v0 = v2;
    OUTLINED_FUNCTION_64_10();
    return;
  }

  v34 = v0;
  v6 = 0;
  OUTLINED_FUNCTION_15_27();
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v12 = v2 + 56;
  if ((v9 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v14;
      if (*(v3 + 8 * v6))
      {
        OUTLINED_FUNCTION_1_41();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v30 != v31)
    {
      OUTLINED_FUNCTION_26_23(v29);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v32, v33, v3);
    }

    v0 = v34;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_12:
    v17 = *(*(v1 + 48) + 2 * (v13 | (v6 << 6)));
    v18 = *(v2 + 40);
    sub_1CA94D918();
    sub_1CA94D948();
    sub_1CA94D968();
    v19 = *(v2 + 32);
    OUTLINED_FUNCTION_44_10();
    if (((-1 << v21) & ~*(v12 + 8 * v20)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_22:
    OUTLINED_FUNCTION_2_11();
    *(v12 + v26) |= v27;
    *(*(v2 + 48) + 2 * v28) = v17;
    OUTLINED_FUNCTION_23_16();
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v25)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v12 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1CA6AE07C()
{
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_10_39(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443E60, &qword_1CA9824D0);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v4)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_73();
    return;
  }

  v33 = v1;
  v5 = 0;
  v6 = v1;
  OUTLINED_FUNCTION_8_36();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v0 = (v2 + 56);
  if ((v8 & v7) == 0)
  {
LABEL_4:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v5 >= v11)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v14)
      {
        OUTLINED_FUNCTION_1_41();
        v9 = v16 & v15;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v29 != v30)
    {
      OUTLINED_FUNCTION_26_23(v28);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v31, v32, v6);
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_25;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_9:
    v17 = *(*(v1 + 48) + 8 * (v12 | (v5 << 6)));
    v18 = *(v2 + 40);
    sub_1CA949FB8();
    OUTLINED_FUNCTION_19_27();
    sub_1CA6B2C04(&unk_1EC4448B0, v19);
    sub_1CA94C288();
    v20 = *(v2 + 32);
    OUTLINED_FUNCTION_13_38();
    v22 = v0[v21];
    OUTLINED_FUNCTION_34_0();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_19:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_67_9();
    *(*(v2 + 48) + 8 * v27) = v17;
    OUTLINED_FUNCTION_23_16();
    v1 = v33;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_68_11(v24);
    if (!v23)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1CA6AE254()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_10_39(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v8)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_36();
    return;
  }

  v9 = 0;
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_114_3();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= v14)
      {
        break;
      }

      ++v16;
      if (*(v3 + 8 * v9))
      {
        OUTLINED_FUNCTION_1_41();
        v12 = v18 & v17;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v31 != v32)
    {
      OUTLINED_FUNCTION_26_23(v30);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v33, v34, v3);
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_21();
LABEL_9:
    v19 = *(*(v1 + 48) + 8 * (v15 | (v9 << 6)));
    v20 = *(v2 + 40);
    sub_1CA94CFC8();
    v21 = *(v2 + 32);
    OUTLINED_FUNCTION_44_10();
    if (((v4 << v23) & ~*(v2 + 56 + 8 * v22)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_19:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_54_9();
    *(v29 + 8 * v28) = v19;
    OUTLINED_FUNCTION_23_16();
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v27)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_38_14(v24);
    if (!v27)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1CA6AE398(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1CA94D918();
  sub_1CA36417C(v9, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v5 = sub_1CA94D968();
  OUTLINED_FUNCTION_39_13(v5);
  sub_1CA94D2D8();
  OUTLINED_FUNCTION_48_10();
  *(a2 + 56 + v6) |= v7;
  *(*(a2 + 48) + 8 * v8) = a1;
  OUTLINED_FUNCTION_42_10();
}

void sub_1CA6AE420(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1CA949FB8();
  OUTLINED_FUNCTION_19_27();
  sub_1CA6B2C04(v5, v6);
  v7 = sub_1CA94C288();
  OUTLINED_FUNCTION_39_13(v7);
  sub_1CA94D2D8();
  OUTLINED_FUNCTION_48_10();
  *(a2 + 56 + v8) |= v9;
  *(*(a2 + 48) + 8 * v10) = a1;
  OUTLINED_FUNCTION_42_10();
}

void sub_1CA6AE4D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1CA94CFC8();
  OUTLINED_FUNCTION_39_13(v5);
  sub_1CA94D2D8();
  OUTLINED_FUNCTION_48_10();
  *(a2 + 56 + v6) |= v7;
  *(*(a2 + 48) + 8 * v8) = a1;
  OUTLINED_FUNCTION_42_10();
}

void sub_1CA6AE534()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    while (v2)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      v16 = (v15 + 16 * v14);
      v17 = v16[1];
      v18 = (v0[6] + 16 * v14);
      *v18 = *v16;
      v18[1] = v17;
      sub_1CA94C218();
    }

    v10 = v9;
    while (1)
    {
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v9 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v11)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AE654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    OUTLINED_FUNCTION_46_13();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_97_6();
LABEL_15:
        *(v0[6] + 8 * v13) = *(*(v1 + 48) + 8 * v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_96_8();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_1CA6AE708()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444860, &unk_1CA984330);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    while (v2)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      v14 *= 3;
      v16 = (v15 + 8 * v14);
      v17 = v16[1];
      v18 = v16[2];
      v19 = (v0[6] + 8 * v14);
      *v19 = *v16;
      v19[1] = v17;
      v19[2] = v18;
      sub_1CA94C218();
    }

    v10 = v9;
    while (1)
    {
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v9 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v11)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AE7E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481D0, &unk_1CA984390);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    v0[2] = *(v1 + 16);
    v10 = *(v1 + 32);
    OUTLINED_FUNCTION_25_4();
    v12 = -1;
    v13 = *(v1 + 56);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_103_4();
LABEL_17:
        v20 = *(v1 + 48);
        v21 = 112 * (v16 | (v9 << 6));
        memcpy(__dst, (v20 + v21), 0x70uLL);
        memmove((v0[6] + v21), (v20 + v21), 0x70uLL);
        sub_1CA2D9D20(__dst, v22, &qword_1EC4440C0, &qword_1CA983470);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {
        goto LABEL_19;
      }

      ++v17;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_1_41();
        v14 = v19 & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v0 = v0;
  }
}

void sub_1CA6AE930()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_4_57();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_121_4();
LABEL_15:
        v19 = v15 | (v9 << 6);
        v20 = *(v1 + 48) + 32 * v19;
        v21 = *(v20 + 8);
        v22 = *(v20 + 16);
        v23 = *(v20 + 24);
        v24 = v0[6] + 32 * v19;
        *v24 = *v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        sub_1CA94C218();
        sub_1CA94C218();
      }

      while (v12);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_1_41();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AEA28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C8, &unk_1CA984370);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    OUTLINED_FUNCTION_46_13();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_97_6();
LABEL_15:
        *(v0[6] + 2 * v13) = *(*(v1 + 48) + 2 * v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_96_8();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_1CA6AEAF0()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_55();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_79_7(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    while (v2)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      *(v0[6] + 8 * v16) = *(v17 + 8 * v16);
    }

    v12 = v11;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v13)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AEBD0()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_55();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_79_7(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    for (; v2; v19 = v18)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      v18 = *(v17 + 8 * v16);
      *(v0[6] + 8 * v16) = v18;
    }

    v12 = v11;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v13)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AEC88()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v33 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v15 = *v0;
  v16 = sub_1CA94D3B8();
  if (*(v15 + 16))
  {
    v34 = v5;
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_25_4();
    v20 = (v19 + 63) >> 6;
    if (v16 != v15 || v18 >= v15 + 56 + 8 * v20)
    {
      memmove(v18, (v15 + 56), 8 * v20);
    }

    v22 = 0;
    *(v16 + 16) = *(v15 + 16);
    v23 = *(v15 + 32);
    OUTLINED_FUNCTION_25_4();
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v15 + 56);
    v27 = (v24 + 63) >> 6;
    v35 = v10 + 32;
    v36 = v10 + 16;
    while (v26)
    {
      OUTLINED_FUNCTION_32_18();
LABEL_17:
      v32 = *(v10 + 72) * (v28 | (v22 << 6));
      (*(v10 + 16))(v14, *(v15 + 48) + v32, v7);
      (*(v10 + 32))(*(v16 + 48) + v32, v14, v7);
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v27)
      {

        v5 = v34;
        goto LABEL_21;
      }

      ++v29;
      if (*(v15 + 56 + 8 * v22))
      {
        OUTLINED_FUNCTION_1_41();
        v26 = v31 & v30;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v16;
    OUTLINED_FUNCTION_36();
  }
}

void *sub_1CA6AEE88(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1CA42B198(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1CA6AEF44(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_1CA94D908();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CA6AE654();
    v12 = v14;
  }

  v9 = *(*(v12 + 48) + 8 * v8);
  sub_1CA6AF710(v8);
  *v2 = v14;
  return v9;
}

void sub_1CA6AF018()
{
  OUTLINED_FUNCTION_65_7();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = *(*v0 + 40);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v7);
  sub_1CA94C458();
  v10 = sub_1CA94D968();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  v13 = v10 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v8 + 48);
    while (1)
    {
      v16 = (v15 + 24 * v13);
      if (*v16 == v7)
      {
        v17 = v16[1] == v5 && v16[2] == v3;
        if (v17 || (sub_1CA94D7F8() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v18 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v1;
    v25 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CA6AE708();
      v20 = v25;
    }

    v21 = (*(v20 + 48) + 24 * v13);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    sub_1CA6AF888(v13);
    *v1 = v25;
  }

LABEL_14:
  OUTLINED_FUNCTION_64_10();
}

uint64_t sub_1CA6AF174(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v9 = *(v4 + 40);
    v10 = sub_1CA94CFC8();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_1CA94CFD8();

      if (v14)
      {
        v15 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA6AEBD0();
          v17 = v19;
        }

        v8 = *(*(v17 + 48) + 8 * v12);
        sub_1CA6AFA74(v12);
        *v2 = v19;
        return v8;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  sub_1CA94C218();
  v6 = a1;
  v7 = sub_1CA94D368();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1CA6AF59C();

  return v8;
}

uint64_t sub_1CA6AF304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1CA9494C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
  v28 = a1;
  v11 = sub_1CA94C288();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1CA6B2C04(&qword_1EC441D98, MEMORY[0x1E69A1168]);
    v15 = sub_1CA94C358();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CA6AEC88();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1CA6AFC08(v13);
  v16 = 0;
  *v18 = v29;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
}

uint64_t sub_1CA6AF59C()
{
  v1 = *v0;

  v2 = sub_1CA94D328();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1CA6AD050(v3, v2, &unk_1EC448110, &unk_1CA984360, &qword_1EDB9F5D0, off_1E836DCF8);
  v5 = *(v4 + 40);

  v6 = sub_1CA94CFC8();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = sub_1CA94CFD8();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      sub_1CA6AFA74(v8);
      if (sub_1CA94CFD8())
      {
        *v13 = v4;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CA6AF710(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CA94D2C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_1CA94D908() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_15:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1CA6AF888(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CA94D2C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = v4;
        v12 = *(v3 + 40);
        v13 = (*(v3 + 48) + 24 * v6);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        sub_1CA94D918();
        MEMORY[0x1CCAA2780](v14);
        sub_1CA94C218();
        sub_1CA94C458();
        v17 = sub_1CA94D968();

        v18 = v17 & v7;
        if (v2 >= v10)
        {
          if (v18 >= v10 && v2 >= v18)
          {
LABEL_9:
            v20 = *(v3 + 48);
            v21 = v20 + 24 * v2;
            v22 = (v20 + 24 * v6);
            v23 = v2 != v6 || v21 >= v22 + 24;
            v4 = v11;
            if (v23)
            {
              v24 = *v22;
              *(v21 + 16) = *(v22 + 2);
              *v21 = v24;
              v2 = v6;
            }

            goto LABEL_21;
          }
        }

        else if (v18 >= v10 || v2 >= v18)
        {
          goto LABEL_9;
        }

        v4 = v11;
LABEL_21:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1CA6AFA74(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CA94D2C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1CA94CFC8();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1CA6AFC08(int64_t a1)
{
  v3 = sub_1CA9494C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1CA94D2C8();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
        v27 = sub_1CA94C288();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

void sub_1CA6AFF14()
{
  OUTLINED_FUNCTION_37_0();
  v6 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = *v0;
  v12 = (v11 + 32 + 16 * v1);
  swift_arrayDestroy();
  v13 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, v10))
  {
    goto LABEL_16;
  }

  sub_1CA26E4B4((v11 + 32 + 16 * v10), v14 - v10, &v12[2 * v9]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (v9 < 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    *v12 = v8;
    v12[1] = v7;
    if (v12 + 2 < &v12[2 * v9])
    {
      sub_1CA94C218();
      __break(1u);
    }

    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA6B0018()
{
  OUTLINED_FUNCTION_77_1();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = v9 + 32 + 40 * v1;
  swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, v8))
  {
    goto LABEL_15;
  }

  sub_1CA440438(v9 + 32 + 40 * v8, v13 - v8, v10 + 40 * v7);
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (v7 >= 1)
  {
    if (*(v6 + 16) == v7)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  OUTLINED_FUNCTION_76_0();
}

void sub_1CA6B0108(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
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
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
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
  v13 = sub_1CA94D328();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1CA440434((v8 + 8 * v6), &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_1CA94D328();
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

uint64_t sub_1CA6B0270(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_1CA94D328();
LABEL_6:
  if (__OFSUB__(v15, v7))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1CA6B2C64(v4, sub_1CA6B2C48);
  }

  sub_1CA440434(&v9[v7], v15 - v7, (v6 + 8 * v8));
  if (v10)
  {
    v13 = sub_1CA94D328();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v5[2] = v13 + v11;
LABEL_12:
  if (v8 < 1)
  {
  }

  result = MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6B043C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
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

void sub_1CA6B04B4()
{
  OUTLINED_FUNCTION_65_7();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v2;
  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_64_10();
    return;
  }

  OUTLINED_FUNCTION_105_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  OUTLINED_FUNCTION_171();
  v6 = sub_1CA94D3E8();
  v7 = v6;
  if (v0 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v1;
  }

  v9 = 0;
  v10 = v6 + 56;
  v33 = v4;
  while (v8)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_16:
    v15 = (*(v4 + 48) + 16 * (v11 | (v9 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v7 + 40);
    sub_1CA94D918();
    sub_1CA94C218();
    sub_1CA94C458();
    sub_1CA94D968();
    v19 = *(v7 + 32);
    OUTLINED_FUNCTION_13_38();
    v21 = *(v10 + 8 * v20);
    OUTLINED_FUNCTION_34_0();
    if (v22)
    {
      OUTLINED_FUNCTION_5_2();
      while (1)
      {
        OUTLINED_FUNCTION_35_15();
        if (v22)
        {
          if (v24)
          {
            goto LABEL_30;
          }
        }

        if (v23 == v25)
        {
          v23 = 0;
        }

        if (*(v10 + 8 * v23) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_6_4();
LABEL_26:
    OUTLINED_FUNCTION_43_14();
    v27 = *(v10 + v26);
    OUTLINED_FUNCTION_57_12();
    *(v10 + v28) = v29;
    v31 = (*(v7 + 48) + 16 * v30);
    *v31 = v16;
    v31[1] = v17;
    OUTLINED_FUNCTION_74_8();
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v0)
    {
      goto LABEL_5;
    }

    ++v12;
    if (v1[v9])
    {
      OUTLINED_FUNCTION_1_41();
      v8 = v14 & v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1CA6B0650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      OUTLINED_FUNCTION_105_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
      OUTLINED_FUNCTION_171();
      v8 = sub_1CA94D3E8();
      v9 = v8;
      if (v4 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v8 + 56;
      v35 = v6;
      v36 = v8;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v37 = (v10 - 1) & v10;
LABEL_16:
        v17 = *(v6 + 48) + 32 * (v13 | (v11 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v9 + 40);
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C218();
        v39 = v18;
        sub_1CA94C458();
        v38 = v20;
        sub_1CA94D948();
        MEMORY[0x1CCAA2780](*(v21 + 16));
        v23 = *(v21 + 16);
        if (v23)
        {
          v24 = (v21 + 32);
          do
          {
            v25 = *v24++;
            OUTLINED_FUNCTION_126_5();
            --v23;
          }

          while (v23);
        }

        sub_1CA94D968();
        v9 = v36;
        v26 = *(v36 + 32);
        OUTLINED_FUNCTION_13_38();
        v28 = *(v12 + 8 * v27);
        OUTLINED_FUNCTION_34_0();
        if (v29)
        {
          OUTLINED_FUNCTION_5_2();
          while (1)
          {
            OUTLINED_FUNCTION_35_15();
            if (v29)
            {
              if (v30)
              {
                goto LABEL_33;
              }
            }

            OUTLINED_FUNCTION_104_6();
            if (v29)
            {
              v31 = 0;
            }

            OUTLINED_FUNCTION_68_11(v31);
            if (!v29)
            {
              OUTLINED_FUNCTION_3_7();
              goto LABEL_29;
            }
          }
        }

        OUTLINED_FUNCTION_6_4();
LABEL_29:
        OUTLINED_FUNCTION_2_11();
        OUTLINED_FUNCTION_67_9();
        v33 = *(v36 + 48) + 32 * v32;
        *v33 = v39;
        *(v33 + 8) = v19;
        *(v33 + 16) = v38;
        *(v33 + 24) = v21;
        OUTLINED_FUNCTION_69_10();
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_34;
        }

        v6 = v35;
        v10 = v37;
        if (!v7)
        {
          goto LABEL_5;
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

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        ++v14;
        if (v5[v11])
        {
          OUTLINED_FUNCTION_1_41();
          v37 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1CA6B0888()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v2;
  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_36();
    return;
  }

  OUTLINED_FUNCTION_105_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  OUTLINED_FUNCTION_171();
  v6 = sub_1CA94D3E8();
  v7 = v6;
  if (v0 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v1;
  }

  v9 = 0;
  v10 = v6 + 56;
  while (v8)
  {
    OUTLINED_FUNCTION_32_18();
LABEL_16:
    v15 = *(*(v4 + 48) + 8 * (v11 | (v9 << 6)));
    v16 = *(v7 + 40);
    sub_1CA94D908();
    v17 = *(v7 + 32);
    OUTLINED_FUNCTION_44_10();
    if (((-1 << v19) & ~*(v10 + 8 * v18)) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (1)
      {
        OUTLINED_FUNCTION_35_15();
        if (v23)
        {
          if (v21)
          {
            goto LABEL_30;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v10 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_6_4();
LABEL_26:
    OUTLINED_FUNCTION_2_11();
    *(v10 + v24) |= v25;
    *(*(v7 + 48) + 8 * v26) = v15;
    OUTLINED_FUNCTION_69_10();
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v0)
    {
      goto LABEL_5;
    }

    ++v12;
    if (v1[v9])
    {
      OUTLINED_FUNCTION_1_41();
      v8 = v14 & v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1CA6B0A00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1CA9494C8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC448120, &qword_1CA9824A0);
  result = sub_1CA94D3E8();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
    result = sub_1CA94C288();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_27;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1CA6B0D34()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v2;
  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_36();
    return;
  }

  OUTLINED_FUNCTION_105_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_171();
  v8 = sub_1CA94D3E8();
  v9 = v8;
  if (v0 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v1;
  }

  v11 = 0;
  v12 = v8 + 56;
  while (v10)
  {
    OUTLINED_FUNCTION_32_18();
LABEL_16:
    v18 = *(v9 + 40);
    v19 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1CA94CFC8();
    v20 = *(v9 + 32);
    OUTLINED_FUNCTION_13_38();
    v22 = *(v12 + 8 * v21);
    OUTLINED_FUNCTION_34_0();
    if (v23)
    {
      OUTLINED_FUNCTION_5_2();
      while (1)
      {
        OUTLINED_FUNCTION_35_15();
        if (v23)
        {
          if (v25)
          {
            goto LABEL_30;
          }
        }

        if (v24 == v26)
        {
          v24 = 0;
        }

        if (*(v12 + 8 * v24) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_6_4();
LABEL_26:
    OUTLINED_FUNCTION_2_11();
    *(v12 + v27) |= v28;
    *(*(v9 + 48) + 8 * v29) = v19;
    OUTLINED_FUNCTION_74_8();
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_5;
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

    if (v11 >= v0)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_95_7();
    if (v15)
    {
      OUTLINED_FUNCTION_1_41();
      v10 = v17 & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1CA6B0E9C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_1CA94D328())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    sub_1CA94C948();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);
    sub_1CA94C218();
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_1CA2BC138();
      return;
    }

    while (1)
    {
      v18 = sub_1CA6AF174(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1CA94D358())
      {
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1CA6B10BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443858, &qword_1CA9815F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1CA9494C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;
    result = sub_1CA94C218();
    for (i = 0; v15; result = sub_1CA27080C(v6, &qword_1EC443858, &qword_1CA9815F8))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1CA6AF304(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CA6B12D8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v71 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_52;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    sub_1CA94C948();
    v5 = v66;
    v6 = v67;
    v7 = v68;
    v8 = v69;
    v9 = v70;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);
    sub_1CA94C218();
    v7 = v11;
    v8 = 0;
  }

  v61 = v5;
  v62 = v6;
  v63 = v7;
  v64 = v8;
  v52 = v7;
  v14 = (v7 + 64) >> 6;
  v58 = (v4 + 56);
  v65 = v9;
  v54 = v6;
  v55 = v14;
  if (v5 < 0)
  {
LABEL_17:
    v19 = sub_1CA94D358();
    if (!v19)
    {
      goto LABEL_51;
    }

    v59 = v19;
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    swift_dynamicCast();
    v2 = v60;
    v15 = v8;
    v57 = v9;
    if (!v60)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_10:
    v15 = v8;
    v16 = v9;
    v17 = v8;
    if (v9)
    {
LABEL_14:
      v3 = ((v16 - 1) & v16);
      v2 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      v18 = v2;
      v15 = v17;
    }

    else
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_55;
        }

        if (v17 >= v14)
        {
          break;
        }

        v16 = *(v6 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v3 = 0;
    }

    v61 = v5;
    v62 = v6;
    v63 = v52;
    v64 = v15;
    v57 = v3;
    v65 = v3;
    if (!v2)
    {
      goto LABEL_51;
    }
  }

  v20 = *(v4 + 40);
  v21 = v2;
  v22 = sub_1CA94CFC8();
  v56 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v22 & v56;
    v6 = (v22 & v56) >> 6;
    v14 = 1 << (v22 & v56);
    if ((v14 & v58[v6]) == 0)
    {

      v8 = v15;
      v9 = v57;
      v6 = v54;
      v14 = v55;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v3 = *(*(v4 + 48) + 8 * v8);
    v2 = sub_1CA94CFD8();

    if (v2)
    {
      break;
    }

    v22 = v8 + 1;
  }

  v24 = *(v4 + 32);
  v49 = ((1 << v24) + 63) >> 6;
  v2 = 8 * v49;
  v3 = v55;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v50 = &v48;
    MEMORY[0x1EEE9AC00](v23);
    v25 = &v48 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v25, v58, v2);
    v48 = 0;
    v26 = *&v25[8 * v6] & ~v14;
    v27 = *(v4 + 16);
    v56 = v25;
    *&v25[8 * v6] = v26;
    v28 = v27 - 1;
    v29 = v54;
    v6 = v57;
    v53 = v5;
    while (1)
    {
      v51 = v28;
LABEL_29:
      if (v5 < 0)
      {
        v34 = sub_1CA94D358();
        if (!v34)
        {
          goto LABEL_50;
        }

        v59 = v34;
        swift_dynamicCast();
        v32 = v60;
        if (!v60)
        {
          goto LABEL_50;
        }

        goto LABEL_40;
      }

      if (!v6)
      {
        break;
      }

LABEL_35:
      v31 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v32 = *(*(v5 + 48) + ((v15 << 9) | (8 * v31)));
      v33 = v32;
LABEL_36:
      v61 = v5;
      v62 = v29;
      v63 = v52;
      v64 = v15;
      v65 = v6;
      if (!v32)
      {
LABEL_50:
        sub_1CA6B0D34();
        v4 = v43;
        goto LABEL_51;
      }

LABEL_40:
      v57 = v6;
      v35 = *(v4 + 40);
      v2 = v32;
      v36 = sub_1CA94CFC8();
      v37 = v4;
      v8 = ~(-1 << *(v4 + 32));
      do
      {
        v38 = v36 & v8;
        v39 = (v36 & v8) >> 6;
        v40 = 1 << (v36 & v8);
        if ((v40 & v58[v39]) == 0)
        {

          v4 = v37;
          v5 = v53;
          v29 = v54;
          v3 = v55;
          v6 = v57;
          goto LABEL_29;
        }

        v14 = *(*(v37 + 48) + 8 * v38);
        v2 = sub_1CA94CFD8();

        v36 = v38 + 1;
      }

      while ((v2 & 1) == 0);

      v3 = v55;
      v41 = *(v56 + 8 * v39);
      *(v56 + 8 * v39) = v41 & ~v40;
      v42 = (v41 & v40) == 0;
      v4 = v37;
      v5 = v53;
      v29 = v54;
      v6 = v57;
      if (v42)
      {
        goto LABEL_29;
      }

      v28 = v51 - 1;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      if (v51 == 1)
      {

        v4 = MEMORY[0x1E69E7CD0];
        goto LABEL_51;
      }
    }

    while (1)
    {
      v30 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v30 >= v3)
      {
        v32 = 0;
        v6 = 0;
        goto LABEL_36;
      }

      v6 = *(v29 + 8 * v30);
      ++v15;
      if (v6)
      {
        v15 = v30;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v46 = swift_slowAlloc();
  v47 = sub_1CA6B28A8(v46, v49, v58, v49, v4, v8, &v61);

  MEMORY[0x1CCAA4BF0](v46, -1, -1);
  v4 = v47;
LABEL_51:
  sub_1CA2BC138();
LABEL_52:
  v44 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1CA6B18F0(unint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443858, &qword_1CA9815F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v72 - v9;
  v11 = sub_1CA9494C8();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v91 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v72 - v19;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_45;
  }

  v78 = v8;
  v73 = 0;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v82 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v79 = (63 - v22) >> 6;
  v81 = (v18 + 32);
  v89 = (a2 + 56);
  v86 = v18;
  v92 = v18 + 16;
  v93 = (v18 + 8);
  v83 = a1;
  sub_1CA94C218();
  v25 = 0;
  v80 = a1 + 56;
  v75 = v10;
LABEL_6:
  v26 = v24;
  v27 = v25;
  v90 = v25;
  if (v24)
  {
LABEL_12:
    a1 = (v26 - 1) & v26;
    v30 = v83;
    v86[2](v10, *(v83 + 48) + v86[9] * (__clz(__rbit64(v26)) | (v27 << 6)), v11);
    v31 = 0;
    v28 = v10;
    v29 = v27;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v28, v31, 1, v11);
    v94 = v30;
    v95 = v21;
    v96 = v82;
    v97 = v29;
    v98 = a1;
    if (__swift_getEnumTagSinglePayload(v28, 1, v11) == 1)
    {
      goto LABEL_47;
    }

    v77 = *v81;
    v77(v88, v28, v11);
    v32 = *(a2 + 40);
    v76 = sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
    v33 = sub_1CA94C288();
    v87 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v21 = v33 & v87;
      if (((1 << (v33 & v87)) & v89[(v33 & v87) >> 6]) == 0)
      {
        (*v93)(v88, v11);
        v25 = v29;
        v24 = a1;
        v21 = v80;
        v10 = v75;
        goto LABEL_6;
      }

      v84 = 1 << v21;
      v85 = v21 >> 6;
      v27 = a2;
      v34 = *(a2 + 48);
      v35 = v86;
      v90 = v86[9];
      v36 = v86[2];
      (v36)(v17, v34 + v90 * v21, v11);
      v37 = sub_1CA6B2C04(&qword_1EC441D98, MEMORY[0x1E69A1168]);
      v38 = sub_1CA94C358();
      a2 = v35[1];
      (a2)(v17, v11);
      if (v38)
      {
        break;
      }

      v33 = v21 + 1;
      a2 = v27;
    }

    v86 = v36;
    v87 = v37;
    v39 = (a2)(v88, v11);
    v40 = *(v27 + 32);
    v74 = ((1 << v40) + 63) >> 6;
    v24 = 8 * v74;
    if ((v40 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v88 = a2;
      v75 = &v72;
      MEMORY[0x1EEE9AC00](v39);
      v41 = &v72 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v41, v89, v24);
      v42 = *&v41[8 * v85] & ~v84;
      v43 = *(v27 + 16);
      v84 = v41;
      *&v41[8 * v85] = v42;
      v44 = v43 - 1;
      v28 = v78;
      v24 = v80;
      v45 = v79;
      v21 = v83;
      a2 = v27;
      v46 = v86;
      while (1)
      {
        v85 = v44;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v47 = v29;
LABEL_29:
        v48 = __clz(__rbit64(a1));
        v49 = (a1 - 1) & a1;
        (v46)(v28, *(v21 + 48) + (v48 | (v47 << 6)) * v90, v11);
        v50 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v28, v50, 1, v11);
        v94 = v21;
        v95 = v24;
        v96 = v82;
        v97 = v29;
        v98 = v49;
        if (__swift_getEnumTagSinglePayload(v28, 1, v11) == 1)
        {
          sub_1CA27080C(v28, &qword_1EC443858, &qword_1CA9815F8);
          a2 = sub_1CA6B0A00(v84, v74, v85, a2);
          goto LABEL_42;
        }

        v86 = v49;
        v51 = v46;
        v77(v91, v28, v11);
        v52 = *(a2 + 40);
        v53 = sub_1CA94C288();
        v54 = a2;
        v55 = ~(-1 << *(a2 + 32));
        do
        {
          v56 = v53 & v55;
          v57 = (v53 & v55) >> 6;
          v58 = 1 << (v53 & v55);
          if ((v58 & v89[v57]) == 0)
          {
            (v88)(v91, v11);
            a2 = v54;
            v21 = v83;
            v28 = v78;
            v24 = v80;
            v45 = v79;
            v46 = v51;
            a1 = v86;
            goto LABEL_23;
          }

          (v51)(v17, *(v54 + 48) + v56 * v90, v11);
          v59 = sub_1CA94C358();
          (v88)(v17, v11);
          v53 = v56 + 1;
        }

        while ((v59 & 1) == 0);
        (v88)(v91, v11);
        v60 = *(v84 + 8 * v57);
        *(v84 + 8 * v57) = v60 & ~v58;
        v61 = (v60 & v58) == 0;
        a2 = v54;
        v21 = v83;
        v28 = v78;
        v24 = v80;
        v45 = v79;
        v46 = v51;
        a1 = v86;
        if (v61)
        {
          goto LABEL_23;
        }

        v44 = v85 - 1;
        if (__OFSUB__(v85, 1))
        {
          __break(1u);
        }

        if (v85 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v47 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v47 >= v45)
        {
          v49 = 0;
          v50 = 1;
          goto LABEL_30;
        }

        a1 = *(v24 + 8 * v47);
        ++v29;
        if (a1)
        {
          v29 = v47;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_47:
      sub_1CA27080C(v28, &qword_1EC443858, &qword_1CA9815F8);
      v64 = v82;
      v62 = v83;
      v63 = v21;
      v65 = v90;
      v66 = v24;
LABEL_43:
      sub_1CA2BC138(v62, v63, v64, v65, v66);
LABEL_45:
      v67 = *MEMORY[0x1E69E9840];
      return a2;
    }
  }

  else
  {
    v28 = v10;
    v29 = v25;
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v79)
      {
        a1 = 0;
        v31 = 1;
        v30 = v83;
        goto LABEL_13;
      }

      v26 = *(v21 + 8 * v27);
      ++v29;
      if (v26)
      {
        v10 = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v69 = swift_slowAlloc();
  v70 = v73;
  v71 = sub_1CA6B2930(v69, v74, v89, v74, v27, v21, &v94);
  if (!v70)
  {
    a2 = v71;

    MEMORY[0x1CCAA4BF0](v69, -1, -1);
LABEL_42:
    v62 = v94;
    v63 = v95;
    v64 = v96;
    v65 = v97;
    v66 = v98;
    goto LABEL_43;
  }

  result = MEMORY[0x1CCAA4BF0](v69, -1, -1);
  __break(1u);
  return result;
}

void sub_1CA6B2204(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_1CA94D358())
      {
        goto LABEL_25;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      swift_dynamicCast();
      v13 = v29;
      if (!v29)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_1CA6B0D34();
      return;
    }

LABEL_15:
    v16 = *(a3 + 40);
    v17 = sub_1CA94CFC8();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      v22 = *(*(a3 + 48) + 8 * v19);
      v23 = sub_1CA94CFD8();

      v17 = v19 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = *(a1 + 8 * v20);
    *(a1 + 8 * v20) = v24 & ~v21;
    v25 = (v24 & v21) == 0;
    v5 = a5;
    if (v25)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_27;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1CA6B2458(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v42 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443858, &qword_1CA9815F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - v11;
  v13 = sub_1CA9494C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v53 = &v42 - v20;
  v21 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v22 = v21 - 1;
  v44 = a1;
  v45 = (v14 + 32);
  v49 = a3 + 56;
  v50 = v14 + 16;
  v51 = (v14 + 8);
  v52 = a3;
  v46 = v12;
  v47 = a5;
  while (1)
  {
    v43 = v22;
LABEL_3:
    v24 = *a5;
    v23 = a5[1];
    v25 = a5[2];
    v26 = a5[3];
    v27 = a5[4];
    v48 = v25;
    if (!v27)
    {
      break;
    }

    v28 = v26;
LABEL_9:
    v29 = (v27 - 1) & v27;
    (*(v14 + 16))(v12, *(v24 + 48) + *(v14 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v13);
    v30 = 0;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v12, v30, 1, v13);
    *a5 = v24;
    a5[1] = v23;
    a5[2] = v48;
    a5[3] = v26;
    a5[4] = v29;
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1CA27080C(v12, &qword_1EC443858, &qword_1CA9815F8);
      v41 = v52;

      return sub_1CA6B0A00(v44, v42, v43, v41);
    }

    (*v45)(v53, v12, v13);
    v31 = v52;
    v32 = *(v52 + 40);
    sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
    v33 = sub_1CA94C288();
    v34 = ~(-1 << *(v31 + 32));
    do
    {
      v35 = v33 & v34;
      v36 = (v33 & v34) >> 6;
      v37 = 1 << (v33 & v34);
      if ((v37 & *(v49 + 8 * v36)) == 0)
      {
        result = (*v51)(v53, v13);
        v12 = v46;
        a5 = v47;
        goto LABEL_3;
      }

      (*(v14 + 16))(v18, *(v52 + 48) + *(v14 + 72) * v35, v13);
      sub_1CA6B2C04(&qword_1EC441D98, MEMORY[0x1E69A1168]);
      v38 = sub_1CA94C358();
      v39 = *(v14 + 8);
      v39(v18, v13);
      v33 = v35 + 1;
    }

    while ((v38 & 1) == 0);
    result = (v39)(v53, v13);
    v40 = v44[v36];
    v44[v36] = v40 & ~v37;
    v12 = v46;
    a5 = v47;
    if ((v40 & v37) == 0)
    {
      goto LABEL_3;
    }

    v22 = v43 - 1;
    if (__OFSUB__(v43, 1))
    {
      goto LABEL_23;
    }

    if (v43 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= ((v25 + 64) >> 6))
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_10;
    }

    v27 = *(v23 + 8 * v28);
    ++v26;
    if (v27)
    {
      v26 = v28;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1CA6B28A8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1CA6B2204(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1CA6B2930(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1CA6B2458(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1CA6B29F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_1CA6B2A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA6B2ACC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
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

uint64_t sub_1CA6B2B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA6B2C04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA6B2C64(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1CA6AEE88(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

uint64_t OUTLINED_FUNCTION_47_15()
{
  v2 = *v0;

  return sub_1CA94D3B8();
}

void *OUTLINED_FUNCTION_79_7@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_88_5(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_93_5()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_127_5()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_129_4()
{
  v3 = *(v0 + *(v1 + 32)) + 16;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1CA6B2E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v92) = a3;
  v4 = a2;
  v5 = *(a4 + 16);
  if (v5)
  {
    v95 = a1;
    v104 = a1;
    v105 = a2;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](91, 0xE100000000000000);
    v7 = v104;
    v8 = v105;
    sub_1CA26DADC();
    v10 = *(v9 + 16);
    v101 = v9;
    if (v10 >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_56();
      v101 = v85;
    }

    *(v101 + 16) = v10 + 1;
    v11 = v101 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
    v12 = (a4 + 64);
    v89 = v4;
    v13 = v95;
    while (1)
    {
      v14 = *(v12 - 4);
      v15 = *(v12 - 3);
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      HIDWORD(v86) = *v12;
      if ((v86 & 0x100000000) != 0)
      {
        break;
      }

      v104 = v13;
      v105 = v4;
      sub_1CA94C218();
      v46 = OUTLINED_FUNCTION_0_74();
      sub_1CA36DA2C(v46, v47, v48, v49, 0);
      v50 = MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
      v58 = OUTLINED_FUNCTION_2_66(v50, v51, v52, v53, v54, v55, v56, v57, v86, v89, v92, v95, v98, v101, v104);
      v23 = v14;
      v100 = sub_1CA6B3118(v58, v59, v60);
      v36 = v61;

      OUTLINED_FUNCTION_3_62(v62, v63, v64, v65, v66, v67, v68, v69, v88, v91, v94, v97, v100, v103);
      if (v45)
      {
        goto LABEL_13;
      }

      v18 = 0;
LABEL_11:
      v70 = OUTLINED_FUNCTION_0_74();
      sub_1CA36D780(v70, v71, v72, v73, v18);
      *(v101 + 16) = a4;
      v74 = v101 + 16 * v23;
      *(v74 + 32) = v98;
      *(v74 + 40) = v36;
      v12 += 40;
      --v5;
      v4 = v89;
      v13 = v95;
      if (!v5)
      {
        v104 = v95;
        v105 = v89;
        sub_1CA94C218();
        MEMORY[0x1CCAA1300](93, 0xE100000000000000);
        v76 = v104;
        v77 = v105;
        v79 = *(v101 + 16);
        v78 = *(v101 + 24);
        goto LABEL_15;
      }
    }

    v104 = v13;
    v105 = v4;
    sub_1CA94C218();
    v18 = 1;
    v19 = OUTLINED_FUNCTION_0_74();
    sub_1CA36DA2C(v19, v20, v21, v22, 1);
    v23 = &v104;
    v24 = MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
    v32 = OUTLINED_FUNCTION_2_66(v24, v25, v26, v27, v28, v29, v30, v31, v86, v89, v92, v95, v98, v101, v104);
    v99 = sub_1CA6B331C(v32, v33, v34, v14, v15, v16, v17);
    v36 = v35;

    OUTLINED_FUNCTION_3_62(v37, v38, v39, v40, v41, v42, v43, v44, v87, v90, v93, v96, v99, v102);
    if (!v45)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_1CA26DADC();
    v101 = v75;
    v18 = BYTE4(v86);
    goto LABEL_11;
  }

  v104 = a1;
  v105 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](23899, 0xE200000000000000);
  v76 = v104;
  v77 = v105;
  sub_1CA26DADC();
  v79 = *(v80 + 16);
  v78 = *(v80 + 24);
  v101 = v80;
LABEL_15:
  if (v79 >= v78 >> 1)
  {
    OUTLINED_FUNCTION_1_56();
    v101 = v84;
  }

  *(v101 + 16) = v79 + 1;
  v81 = v101 + 16 * v79;
  *(v81 + 32) = v76;
  *(v81 + 40) = v77;
  v104 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v82 = sub_1CA94C308();

  return v82;
}

uint64_t sub_1CA6B3118(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v23 = 0;
    MEMORY[0x1CCAA1300]();
    v5 = [v3 identifier];
    v6 = sub_1CA94C3A8();
    v8 = v7;

    MEMORY[0x1CCAA1300](v6, v8);

    MEMORY[0x1CCAA1300](10272, 0xE200000000000000);
    sub_1CA94D578();
    MEMORY[0x1CCAA1300](41, 0xE100000000000000);
  }

  else
  {
    v23 = a1;
    sub_1CA94C218();
    v9 = [v3 identifier];
    v10 = sub_1CA94C3A8();
    v12 = v11;

    MEMORY[0x1CCAA1300](v10, v12);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v4;
    if ([v14 mode] == 1 && (v16 = objc_msgSend(v14, sel_itemTitle)) != 0)
    {
      v17 = v16;
      v18 = [v16 stringByRemovingVariables];

      v19 = sub_1CA94C3A8();
      v21 = v20;

      MEMORY[0x1CCAA1300](32, 0xE100000000000000);
      MEMORY[0x1CCAA1300](v19, v21);
    }

    else
    {
    }
  }

  return v23;
}

uint64_t sub_1CA6B331C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a7;
  v13 = _s17ControlFlowBranchVMa(0);
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = a1;
  v58 = a1;
  v59 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](0x2070756F7267, 0xE600000000000000);
  MEMORY[0x1CCAA1300](a4, a5);
  MEMORY[0x1CCAA1300](31520, 0xE200000000000000);
  v17 = v58;
  v18 = v59;
  sub_1CA26DADC();
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21 >= *(v19 + 24) >> 1)
  {
    sub_1CA26DADC();
    v20 = v51;
  }

  *(v20 + 16) = v21 + 1;
  v22 = v20 + 16 * v21;
  *(v22 + 32) = v17;
  *(v22 + 40) = v18;
  v23 = *(a6 + 16);
  if (v23)
  {
    v24 = *(v13 + 28);
    v25 = a6 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v55 = *(v55 + 72);
    v56 = v24;
    do
    {
      sub_1CA36D71C(v25, v16);
      v26 = *v16;
      v58 = v57;
      v59 = a2;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
      v27 = sub_1CA6B3118(v58, v59, a3 & 1);
      v29 = v28;

      v30 = *(v20 + 16);
      if (v30 >= *(v20 + 24) >> 1)
      {
        sub_1CA26DADC();
        v20 = v38;
      }

      *(v20 + 16) = v30 + 1;
      v31 = v20 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v29;
      v32 = *(v16 + v56);
      v58 = v57;
      v59 = a2;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
      v33 = sub_1CA6B2E48(v58, v59, a3 & 1, v32);
      v35 = v34;

      sub_1CA6B3728(v16);
      v36 = *(v20 + 16);
      if (v36 >= *(v20 + 24) >> 1)
      {
        sub_1CA26DADC();
        v20 = v39;
      }

      *(v20 + 16) = v36 + 1;
      v37 = v20 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v35;
      v25 += v55;
      --v23;
    }

    while (v23);
  }

  v58 = v57;
  v59 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
  v40 = sub_1CA6B3118(v58, v59, a3 & 1);
  v42 = v41;

  v43 = *(v20 + 16);
  if (v43 >= *(v20 + 24) >> 1)
  {
    sub_1CA26DADC();
    v20 = v52;
  }

  *(v20 + 16) = v43 + 1;
  v44 = v20 + 16 * v43;
  *(v44 + 32) = v40;
  *(v44 + 40) = v42;
  v58 = v57;
  v59 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](125, 0xE100000000000000);
  v45 = v58;
  v46 = v59;
  v47 = *(v20 + 16);
  if (v47 >= *(v20 + 24) >> 1)
  {
    sub_1CA26DADC();
    v20 = v53;
  }

  *(v20 + 16) = v47 + 1;
  v48 = v20 + 16 * v47;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  v58 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v49 = sub_1CA94C308();

  return v49;
}

uint64_t sub_1CA6B3728(uint64_t a1)
{
  v2 = _s17ControlFlowBranchVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA6B3784()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  v1 = sub_1CA94C1A8();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id sub_1CA6B3878()
{
  v214 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9E1760;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v229 = v12;
  v232 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v207 - v232;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v231 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v230 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v228 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v207 - v228;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v227 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v226 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v225 = v207;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v207 - v232;
  sub_1CA948D98();
  v31 = [v231 bundleURL];
  v221 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v207 - v228;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v227;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v226;
  v37 = sub_1CA6B3784();
  v38 = v221;
  v221[15] = v37;
  v38[18] = v36;
  v38[19] = @"Discontinued";
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 160) = 1;
  v38[23] = v39;
  v38[24] = @"IconName";
  v40 = v39;
  v38[25] = 0x6472616F626E6950;
  v38[26] = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6158];
  v38[28] = MEMORY[0x1E69E6158];
  v38[29] = @"Input";
  v42 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v43 = swift_initStackObject();
  v219 = xmmword_1CA981350;
  *(v43 + 16) = xmmword_1CA981350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  *(v43 + 48) = 0;
  *(v43 + 72) = v40;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  strcpy((v43 + 96), "WFPinboardURL");
  *(v43 + 110) = -4864;
  *(v43 + 120) = v41;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v40;
  *(v43 + 176) = 0x7365707954;
  *(v43 + 184) = 0xE500000000000000;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 216) = v213;
  *(v43 + 192) = &unk_1F4A0CC08;
  v44 = @"Discontinued";
  v45 = @"IconName";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v42[30] = v47;
  v42[33] = v48;
  v42[34] = @"InputPassthrough";
  *(v42 + 280) = 1;
  v42[38] = v40;
  v42[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v53 = v52;
  v54 = sub_1CA94C438();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v57 = v207 - v232;
  sub_1CA948D98();
  v58 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = v207 - v228;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  v62 = v221;
  v221[40] = v61;
  v62[43] = v227;
  v62[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_1CA981410;
  v225 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_initStackObject();
  v218 = xmmword_1CA981370;
  *(v63 + 16) = xmmword_1CA981370;
  *(v63 + 32) = @"AutocapitalizationType";
  *(v63 + 40) = 0x7364726F57;
  *(v63 + 48) = 0xE500000000000000;
  v64 = MEMORY[0x1E69E6158];
  *(v63 + 64) = MEMORY[0x1E69E6158];
  *(v63 + 72) = @"Class";
  v220 = 0x80000001CA99B500;
  *(v63 + 80) = 0xD000000000000014;
  *(v63 + 88) = 0x80000001CA99B500;
  *(v63 + 104) = v64;
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0x7469546E69504657;
  *(v63 + 128) = 0xEA0000000000656CLL;
  *(v63 + 144) = v64;
  *(v63 + 152) = @"Label";
  v65 = @"Class";
  v66 = @"Key";
  v67 = @"Label";
  v68 = v65;
  v69 = v66;
  v70 = v67;
  v71 = @"AutocapitalizationType";
  v215 = v68;
  v212 = v69;
  v216 = v70;
  v211 = v71;
  v72 = @"Parameters";
  v222 = sub_1CA94C438();
  v217 = v73;
  v210 = sub_1CA94C438();
  v75 = v74;
  v223 = v207;
  MEMORY[0x1EEE9AC00](v210);
  v76 = v232;
  sub_1CA948D98();
  v77 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v228;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 160) = sub_1CA2F9F14(v222, v217, v210, v75, 0, 0, v207 - v76, v207 - v78);
  v80 = v227;
  *(v63 + 184) = v227;
  *(v63 + 192) = @"Placeholder";
  v217 = @"Placeholder";
  v222 = sub_1CA94C438();
  v210 = v81;
  v82 = sub_1CA94C438();
  v84 = v83;
  v223 = v207;
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948D98();
  v85 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v222, v210, v82, v84, 0, 0, v207 - v76, v207 - v78);
  *(v63 + 224) = v80;
  *(v63 + 200) = v87;
  _s3__C3KeyVMa_0(0);
  v223 = v88;
  v222 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v226 + 32) = sub_1CA2F864C();
  v89 = swift_allocObject();
  *(v89 + 16) = v218;
  v90 = v212;
  *(v89 + 32) = v211;
  *(v89 + 40) = 1701736270;
  *(v89 + 48) = 0xE400000000000000;
  v91 = MEMORY[0x1E69E6158];
  v92 = v215;
  v93 = v216;
  *(v89 + 64) = MEMORY[0x1E69E6158];
  *(v89 + 72) = v92;
  *(v89 + 80) = 0xD000000000000014;
  *(v89 + 88) = v220;
  *(v89 + 104) = v91;
  *(v89 + 112) = v90;
  *(v89 + 120) = 0x6761546E69504657;
  *(v89 + 128) = 0xE900000000000073;
  *(v89 + 144) = v91;
  *(v89 + 152) = v93;
  v211 = v92;
  v215 = v90;
  v216 = v93;
  v94 = sub_1CA94C438();
  v209 = v95;
  v210 = v94;
  v208 = sub_1CA94C438();
  v97 = v96;
  v212 = v207;
  MEMORY[0x1EEE9AC00](v208);
  v98 = v207 - v232;
  sub_1CA948D98();
  v99 = v231;
  v100 = [v231 bundleURL];
  v207[1] = v207;
  MEMORY[0x1EEE9AC00](v100);
  v101 = v228;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 160) = sub_1CA2F9F14(v210, v209, v208, v97, 0, 0, v98, v207 - v101);
  v103 = v227;
  v104 = v217;
  *(v89 + 184) = v227;
  *(v89 + 192) = v104;
  v105 = sub_1CA94C438();
  v209 = v106;
  v210 = v105;
  v107 = sub_1CA94C438();
  v109 = v108;
  v212 = v207;
  MEMORY[0x1EEE9AC00](v107);
  v110 = v207 - v232;
  sub_1CA948D98();
  v111 = [v99 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v210, v209, v107, v109, 0, 0, v110, v207 - v101);
  *(v89 + 224) = v103;
  *(v89 + 200) = v113;
  sub_1CA94C1E8();
  *(v226 + 40) = sub_1CA2F864C();
  v114 = swift_allocObject();
  *(v114 + 16) = v219;
  v212 = 0x80000001CA99E620;
  v210 = 0xD000000000000011;
  v115 = v211;
  *(v114 + 32) = v211;
  *(v114 + 40) = 0xD000000000000011;
  *(v114 + 48) = 0x80000001CA99E620;
  v116 = MEMORY[0x1E69E6158];
  *(v114 + 64) = MEMORY[0x1E69E6158];
  *(v114 + 72) = @"DefaultValue";
  *(v114 + 80) = 1;
  v117 = v215;
  v118 = v216;
  *(v114 + 104) = MEMORY[0x1E69E6370];
  *(v114 + 112) = v117;
  *(v114 + 120) = 0x6275506E69504657;
  *(v114 + 128) = 0xEB0000000063696CLL;
  *(v114 + 144) = v116;
  *(v114 + 152) = v118;
  v119 = @"DefaultValue";
  v208 = v115;
  v209 = v117;
  v211 = v118;
  v216 = v119;
  v120 = sub_1CA94C438();
  v122 = v121;
  v123 = sub_1CA94C438();
  v125 = v124;
  v215 = v207;
  MEMORY[0x1EEE9AC00](v123);
  v126 = v207 - v232;
  sub_1CA948D98();
  v127 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v207 - v228;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  *(v114 + 184) = v227;
  *(v114 + 160) = v130;
  sub_1CA94C1E8();
  *(v226 + 48) = sub_1CA2F864C();
  v131 = swift_allocObject();
  *(v131 + 16) = v219;
  v132 = v208;
  v133 = v209;
  v134 = v210;
  *(v131 + 32) = v208;
  *(v131 + 40) = v134;
  *(v131 + 48) = v212;
  v135 = MEMORY[0x1E69E6158];
  v136 = v216;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = v136;
  *(v131 + 80) = 1;
  *(v131 + 104) = MEMORY[0x1E69E6370];
  *(v131 + 112) = v133;
  *(v131 + 120) = 0x726E556E69504657;
  *(v131 + 128) = 0xEB00000000646165;
  v137 = v211;
  *(v131 + 144) = v135;
  *(v131 + 152) = v137;
  v215 = v132;
  v216 = v133;
  *&v219 = v137;
  v138 = sub_1CA94C438();
  v211 = v139;
  v140 = sub_1CA94C438();
  v142 = v141;
  v212 = v207;
  MEMORY[0x1EEE9AC00](v140);
  v143 = v207 - v232;
  sub_1CA948D98();
  v144 = v231;
  v145 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  v146 = v207 - v228;
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v138, v211, v140, v142, 0, 0, v143, v146);
  *(v131 + 184) = v227;
  *(v131 + 160) = v148;
  sub_1CA94C1E8();
  *(v226 + 56) = sub_1CA2F864C();
  v149 = swift_allocObject();
  *(v149 + 16) = v218;
  *(v149 + 32) = v215;
  *(v149 + 40) = 0xD000000000000014;
  *(v149 + 48) = v220;
  v150 = MEMORY[0x1E69E6158];
  v151 = v216;
  *(v149 + 64) = MEMORY[0x1E69E6158];
  *(v149 + 72) = v151;
  *(v149 + 80) = 0xD000000000000010;
  *(v149 + 88) = 0x80000001CA9E1870;
  v152 = v219;
  *(v149 + 104) = v150;
  *(v149 + 112) = v152;
  v153 = sub_1CA94C438();
  v211 = v154;
  v212 = v153;
  v155 = sub_1CA94C438();
  v210 = v156;
  *&v218 = v207;
  MEMORY[0x1EEE9AC00](v155);
  v157 = v232;
  sub_1CA948D98();
  v158 = [v144 bundleURL];
  v209 = v207;
  MEMORY[0x1EEE9AC00](v158);
  v159 = v228;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v149 + 120) = sub_1CA2F9F14(v212, v211, v155, v210, 0, 0, v207 - v157, v207 - v159);
  v161 = v227;
  *(v149 + 144) = v227;
  *(v149 + 152) = @"Multiline";
  *(v149 + 160) = 1;
  v162 = v217;
  *(v149 + 184) = MEMORY[0x1E69E6370];
  *(v149 + 192) = v162;
  v163 = @"Multiline";
  v217 = sub_1CA94C438();
  v212 = v164;
  v211 = sub_1CA94C438();
  v166 = v165;
  *&v218 = v207;
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948D98();
  v167 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v217, v212, v211, v166, 0, 0, v207 - v157, v207 - v159);
  *(v149 + 224) = v161;
  *(v149 + 200) = v169;
  sub_1CA94C1E8();
  *(v226 + 64) = sub_1CA2F864C();
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1CA981380;
  *(v170 + 32) = v215;
  *(v170 + 40) = 0xD000000000000014;
  *(v170 + 48) = v220;
  v171 = MEMORY[0x1E69E6158];
  *(v170 + 64) = MEMORY[0x1E69E6158];
  *(v170 + 72) = @"DisableAutocorrection";
  *(v170 + 80) = 1;
  v172 = v216;
  *(v170 + 104) = MEMORY[0x1E69E6370];
  *(v170 + 112) = v172;
  strcpy((v170 + 120), "WFPinboardURL");
  *(v170 + 134) = -4864;
  *(v170 + 144) = v171;
  *(v170 + 152) = @"KeyboardType";
  *(v170 + 160) = 5001813;
  *(v170 + 168) = 0xE300000000000000;
  *(v170 + 184) = v171;
  *(v170 + 192) = v219;
  v173 = @"DisableAutocorrection";
  v174 = @"KeyboardType";
  v175 = sub_1CA94C438();
  v177 = v176;
  v178 = sub_1CA94C438();
  v180 = v179;
  v224 = v207;
  MEMORY[0x1EEE9AC00](v178);
  v181 = v207 - v232;
  sub_1CA948D98();
  v182 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  v183 = v207 - v228;
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 200) = sub_1CA2F9F14(v175, v177, v178, v180, 0, 0, v181, v183);
  *(v170 + 224) = v227;
  *(v170 + 232) = @"TextContentType";
  *(v170 + 264) = MEMORY[0x1E69E6158];
  *(v170 + 240) = 5001813;
  *(v170 + 248) = 0xE300000000000000;
  v185 = @"TextContentType";
  sub_1CA94C1E8();
  v186 = sub_1CA2F864C();
  v187 = v226;
  *(v226 + 72) = v186;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v189 = v221;
  v221[45] = v187;
  v189[48] = v188;
  v189[49] = @"ParameterSummary";
  v190 = @"ParameterSummary";
  v191 = sub_1CA94C438();
  v193 = v192;
  v194 = sub_1CA94C438();
  v196 = v195;
  MEMORY[0x1EEE9AC00](v194);
  v197 = v207 - v232;
  sub_1CA948D98();
  v198 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  v199 = v207 - v228;
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v201 = sub_1CA2F9F14(v191, v193, v194, v196, 0, 0, v197, v199);
  v202 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v203 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v204 = v221;
  v221[50] = v202;
  v204[53] = v203;
  v204[54] = @"RequiredResources";
  v204[58] = v213;
  v204[55] = &unk_1F4A0CC38;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v205 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6B515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1CA94B728();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA6B5220, 0, 0);
}

uint64_t sub_1CA6B5220()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for LinkValueTransformContext(0);
  (*(v2 + 16))(v1, v4 + *(v7 + 24), v3);
  DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v6, v1, *(v4 + *(v7 + 28)), v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CA6B52FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CA3601B4;

  return sub_1CA6B515C(a1, v6, a3);
}

id WFBestFileTypeForSupportedContentTypes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 containsObject:v4])
  {
    v5 = [v4 copy];
  }

  else
  {
    v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __WFBestFileTypeForSupportedContentTypes_block_invoke;
    v10[3] = &unk_1E837AB68;
    v11 = v6;
    v4 = v6;
    v7 = [v3 if_firstObjectPassingTest:v10];
    v5 = v7;
    if (v7)
    {
      v8 = v7;
    }
  }

  return v5;
}

uint64_t __WFBestFileTypeForSupportedContentTypes_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  v4 = [v3 conformsToType:*(a1 + 32)];

  return v4;
}

id getICTextStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getICTextStyleClass_softClass;
  v7 = getICTextStyleClass_softClass;
  if (!getICTextStyleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getICTextStyleClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getICTextStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA6B864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICTextStyleClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!NotesUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __NotesUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8373240;
    v9 = 0;
    NotesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NotesUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NotesUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLinkEntityContentItem.m" lineNumber:54 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("ICTextStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICTextStyleClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLinkEntityContentItem.m" lineNumber:55 description:{@"Unable to find class %s", "ICTextStyle"}];

LABEL_10:
    __break(1u);
  }

  getICTextStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NotesUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NotesUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA6B9BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHAssetClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __PhotosLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8373228;
    v9 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLinkEntityContentItem.m" lineNumber:35 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLinkEntityContentItem.m" lineNumber:36 description:{@"Unable to find class %s", "PHAsset"}];

LABEL_10:
    __break(1u);
  }

  getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA6BA130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMObjectIDClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __ReminderKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8373210;
    v9 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLinkEntityContentItem.m" lineNumber:46 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("REMObjectID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMObjectIDClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLinkEntityContentItem.m" lineNumber:47 description:{@"Unable to find class %s", "REMObjectID"}];

LABEL_10:
    __break(1u);
  }

  getREMObjectIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFIndexingKeyForForcedLinkEntityFindAction()
{
  v11[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E0F98];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0F98], *MEMORY[0x1E69970E8]];
  v10[0] = v1;
  v11[0] = &unk_1F4A99BE0;
  v2 = *MEMORY[0x1E69E0EB8];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0EB8], *MEMORY[0x1E69970D0]];
  v10[1] = v3;
  v11[1] = &unk_1F4A99C08;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v2, *MEMORY[0x1E69970E0]];
  v10[2] = v4;
  v11[2] = &unk_1F4A99C30;
  v5 = *MEMORY[0x1E69E0EA0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0EA0], *MEMORY[0x1E69970D8]];
  v10[3] = v6;
  v11[3] = &unk_1F4A99C58;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id WFForcedLinkEntityFindActionIdentifiers()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0E40], @"BookAppEntity"];
  v2 = [v0 initWithObjects:{@"com.apple.mobilesafari.TabEntity", @"com.apple.mobilesafari.TabGroupEntity", @"com.apple.mobilesafari.ReadingListItemEntity", @"com.apple.mobilesafari.BookmarkEntity", v1, 0}];

  return v2;
}

id WFEnforceClass(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Failed to archive quarantine data: %{public}@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void WFTerminateDaemon(void *a1, void *a2)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v4 = getRBSProcessPredicateClass_softClass;
  v36 = getRBSProcessPredicateClass_softClass;
  if (!getRBSProcessPredicateClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSProcessPredicateClass_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    __getRBSProcessPredicateClass_block_invoke(&v28);
    v4 = v34[3];
  }

  v5 = v4;
  _Block_object_dispose(&v33, 8);
  v6 = [v4 predicateMatchingJobLabel:*MEMORY[0x1E69E0E60]];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v7 = getRBSTerminateContextClass_softClass;
  v36 = getRBSTerminateContextClass_softClass;
  if (!getRBSTerminateContextClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSTerminateContextClass_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    __getRBSTerminateContextClass_block_invoke(&v28);
    v7 = v34[3];
  }

  v8 = v7;
  _Block_object_dispose(&v33, 8);
  v9 = objc_alloc_init(v7);
  [v9 setMaximumTerminationResistance:40];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v10 = getRBSTerminateRequestClass_softClass;
  v36 = getRBSTerminateRequestClass_softClass;
  if (!getRBSTerminateRequestClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSTerminateRequestClass_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    __getRBSTerminateRequestClass_block_invoke(&v28);
    v10 = v34[3];
  }

  v11 = v10;
  _Block_object_dispose(&v33, 8);
  v12 = [[v10 alloc] initWithPredicate:v6 context:v9];
  v26 = 0;
  v27 = 0;
  v13 = [v12 execute:&v27 error:&v26];
  v14 = v27;
  v15 = v26;
  if (a1)
  {
    v16 = v14;
    *a1 = v14;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  v17 = [v15 domain];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v18 = getRBSRequestErrorDomainSymbolLoc_ptr;
  v36 = getRBSRequestErrorDomainSymbolLoc_ptr;
  if (!getRBSRequestErrorDomainSymbolLoc_ptr)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSRequestErrorDomainSymbolLoc_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    v19 = RunningBoardServicesLibrary();
    v20 = dlsym(v19, "RBSRequestErrorDomain");
    *(v32[1] + 24) = v20;
    getRBSRequestErrorDomainSymbolLoc_ptr = *(v32[1] + 24);
    v18 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (v18)
  {
    v21 = *v18;
    if ([v17 isEqualToString:v21])
    {
      v22 = [v15 code];

      if (v22 != 3)
      {
        goto LABEL_18;
      }

      v17 = v15;
      v15 = 0;
    }

    else
    {
    }

LABEL_18:
    if (a2)
    {
      v23 = v15;
      *a2 = v15;
    }

LABEL_20:

    return;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSErrorDomain getRBSRequestErrorDomain(void)"];
  [v24 handleFailureInFunction:v25 file:@"WFDaemonControl.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1CA6C25A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRBSProcessPredicateClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSProcessPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSProcessPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSProcessPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDaemonControl.m" lineNumber:19 description:{@"Unable to find class %s", "RBSProcessPredicate"}];

    __break(1u);
  }
}

void __getRBSTerminateContextClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTerminateContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTerminateContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTerminateContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDaemonControl.m" lineNumber:20 description:{@"Unable to find class %s", "RBSTerminateContext"}];

    __break(1u);
  }
}

void __getRBSTerminateRequestClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTerminateRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTerminateRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTerminateRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDaemonControl.m" lineNumber:21 description:{@"Unable to find class %s", "RBSTerminateRequest"}];

    __break(1u);
  }
}

void *__getRBSRequestErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RunningBoardServicesLibrary();
  result = dlsym(v2, "RBSRequestErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRBSRequestErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *RunningBoardServicesLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __RunningBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E83732D0;
    v7 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = RunningBoardServicesLibraryCore_frameworkLibrary;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFDaemonControl.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA6C30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelPhoneNumberiPhoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberiPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberiPhoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ContactsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E83732E8;
    v7 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"ICPhoneNumberContentMapping.m" lineNumber:14 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getCNLabelPhoneNumberMobileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberMobile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMobileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class initINCLocalExtensionRegistry()
{
  if (IntentsCoreLibrary_sOnce != -1)
  {
    dispatch_once(&IntentsCoreLibrary_sOnce, &__block_literal_global_238);
  }

  result = objc_getClass("INCLocalExtensionRegistry");
  classINCLocalExtensionRegistry = result;
  getINCLocalExtensionRegistryClass = INCLocalExtensionRegistryFunction;
  return result;
}

void *__IntentsCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IntentsCore.framework/IntentsCore", 2);
  IntentsCoreLibrary_sLib = result;
  return result;
}

uint64_t WFREPBAlertRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(WFREPBAlert);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBAlertReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id WFEnforceClass_732(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Could not archive LNValue into data: %@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void __WFLinkActionFromSerializedRepresentation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v12 = 0;
  v8 = [v6 unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v12];

  v9 = v12;
  if (v9)
  {
    v10 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v14 = "WFLinkActionFromSerializedRepresentation_block_invoke";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Failed to decode LNValue from data: %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69AC950]) initWithIdentifier:v5 value:v8];
    [*(a1 + 32) addObject:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

id WFCategorizedInputTypes()
{
  v53[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E696E928]);
  v1 = WFLocalizedString(@"Media");
  v2 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFImageContentItem"];
  v53[0] = v2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFAVAssetContentItem"];
  v53[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v46 = [v0 initWithTitle:v1 items:v4];

  v5 = objc_alloc(MEMORY[0x1E696E928]);
  v6 = WFLocalizedString(@"Documents");
  v7 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFGenericFileContentItem"];
  v52[0] = v7;
  v8 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFFolderContentItem"];
  v52[1] = v8;
  v9 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFPDFContentItem"];
  v52[2] = v9;
  v10 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFStringContentItem"];
  v52[3] = v10;
  v11 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFRichTextContentItem"];
  v52[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:5];
  v45 = [v5 initWithTitle:v6 items:v12];

  v13 = objc_alloc(MEMORY[0x1E696E928]);
  v14 = WFLocalizedString(@"Web");
  v15 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFSafariWebPageContentItem"];
  v51[0] = v15;
  v16 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFURLContentItem"];
  v51[1] = v16;
  v17 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFArticleContentItem"];
  v51[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
  v44 = [v13 initWithTitle:v14 items:v18];

  v19 = objc_alloc(MEMORY[0x1E696E928]);
  v20 = WFLocalizedString(@"Places");
  v21 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFDCMapsLinkContentItem"];
  v50[0] = v21;
  v22 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFLocationContentItem"];
  v50[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v24 = [v19 initWithTitle:v20 items:v23];

  v25 = objc_alloc(MEMORY[0x1E696E928]);
  v26 = WFLocalizedString(@"Communication");
  v27 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFContactContentItem"];
  v49[0] = v27;
  v28 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFEmailAddressContentItem"];
  v49[1] = v28;
  v29 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFPhoneNumberContentItem"];
  v49[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  v31 = [v25 initWithTitle:v26 items:v30];

  v32 = objc_alloc(MEMORY[0x1E696E928]);
  v33 = WFLocalizedString(@"Other");
  v34 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFDateContentItem"];
  v48[0] = v34;
  v35 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFAppStoreAppContentItem"];
  v48[1] = v35;
  v36 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFiTunesProductContentItem"];
  v48[2] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  v38 = [v32 initWithTitle:v33 items:v37];

  v39 = objc_alloc(MEMORY[0x1E696E918]);
  v47[0] = v46;
  v47[1] = v45;
  v47[2] = v44;
  v47[3] = v24;
  v47[4] = v31;
  v47[5] = v38;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:6];
  v41 = [v39 initWithSections:v40];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

id WFAssetDataDirectoryForIdentifier(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSURL * _Nonnull WFAssetDataDirectoryForIdentifier(NSString * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"WFRemoteQuarantinePolicyManager.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
  }

  v2 = WFAssetsDirectory();
  v3 = [v1 stringByAppendingPathExtension:@"bundle"];

  v4 = [v2 URLByAppendingPathComponent:v3 isDirectory:1];

  return v4;
}

id WFEnforceClass_1042(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Warning: Can't find remote quarantine localized string for value '%{public}@'", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

id initHMCharacteristicMetadataFormatUInt64()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt64");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt64", "WFGetHomeAccessoryStateAction.m", 34, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt64, *v0);
  getHMCharacteristicMetadataFormatUInt64 = HMCharacteristicMetadataFormatUInt64Function;
  v1 = constantHMCharacteristicMetadataFormatUInt64;

  return v1;
}

void *__HomeKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib = result;
  return result;
}

id initHMCharacteristicMetadataFormatUInt32()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt32");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt32", "WFGetHomeAccessoryStateAction.m", 33, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt32, *v0);
  getHMCharacteristicMetadataFormatUInt32 = HMCharacteristicMetadataFormatUInt32Function;
  v1 = constantHMCharacteristicMetadataFormatUInt32;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt16()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt16");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt16", "WFGetHomeAccessoryStateAction.m", 32, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt16, *v0);
  getHMCharacteristicMetadataFormatUInt16 = HMCharacteristicMetadataFormatUInt16Function;
  v1 = constantHMCharacteristicMetadataFormatUInt16;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt8()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt8");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt8", "WFGetHomeAccessoryStateAction.m", 31, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt8, *v0);
  getHMCharacteristicMetadataFormatUInt8 = HMCharacteristicMetadataFormatUInt8Function;
  v1 = constantHMCharacteristicMetadataFormatUInt8;

  return v1;
}

id initHMCharacteristicMetadataFormatFloat()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatFloat");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatFloat", "WFGetHomeAccessoryStateAction.m", 29, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatFloat, *v0);
  getHMCharacteristicMetadataFormatFloat = HMCharacteristicMetadataFormatFloatFunction;
  v1 = constantHMCharacteristicMetadataFormatFloat;

  return v1;
}

id initHMCharacteristicMetadataFormatInt()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatInt");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatInt", "WFGetHomeAccessoryStateAction.m", 28, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatInt, *v0);
  getHMCharacteristicMetadataFormatInt = HMCharacteristicMetadataFormatIntFunction;
  v1 = constantHMCharacteristicMetadataFormatInt;

  return v1;
}

id initHMCharacteristicMetadataFormatString()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatString");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatString", "WFGetHomeAccessoryStateAction.m", 30, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatString, *v0);
  getHMCharacteristicMetadataFormatString = HMCharacteristicMetadataFormatStringFunction;
  v1 = constantHMCharacteristicMetadataFormatString;

  return v1;
}

id initHMCharacteristicMetadataFormatBool()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatBool");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatBool", "WFGetHomeAccessoryStateAction.m", 27, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatBool, *v0);
  getHMCharacteristicMetadataFormatBool = HMCharacteristicMetadataFormatBoolFunction;
  v1 = constantHMCharacteristicMetadataFormatBool;

  return v1;
}

id WFEnforceClass_1501(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA6CF8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHAssetCollectionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary_1518)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __PhotosLibraryCore_block_invoke_1519;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8373628;
    v9 = 0;
    PhotosLibraryCore_frameworkLibrary_1518 = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary_1518)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLinkActionPhotoItemCollectionParameterDefinition.m" lineNumber:27 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PHAssetCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetCollectionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLinkActionPhotoItemCollectionParameterDefinition.m" lineNumber:28 description:{@"Unable to find class %s", "PHAssetCollection"}];

LABEL_10:
    __break(1u);
  }

  getPHAssetCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke_1519(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_1518 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFSerializableHomeIdentifier(void *a1)
{
  v1 = [a1 uuid];
  v2 = [v1 UUIDString];

  return v2;
}

void *__HomeKitLibrary_block_invoke_1606()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_1608 = result;
  return result;
}

id getWFRelevanceEngineLogObject()
{
  if (getWFRelevanceEngineLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRelevanceEngineLogObject_onceToken, &__block_literal_global_1740);
  }

  v1 = getWFRelevanceEngineLogObject_log;

  return v1;
}

void __getWFRelevanceEngineLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "RelevanceEngine");
  v1 = getWFRelevanceEngineLogObject_log;
  getWFRelevanceEngineLogObject_log = v0;
}

void *__HomeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib = result;
  return result;
}

id initHMCharacteristicMetadataFormatUInt64_2144()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt64");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt64", "WFHomeAccessoryConditionalSubjectState.m", 35, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt64_2149, *v0);
  getHMCharacteristicMetadataFormatUInt64_2142 = HMCharacteristicMetadataFormatUInt64Function_2151;
  v1 = constantHMCharacteristicMetadataFormatUInt64_2149;

  return v1;
}

void *__HomeKitLibrary_block_invoke_2153()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_2146 = result;
  return result;
}

id initHMCharacteristicMetadataFormatUInt32_2155()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt32");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt32", "WFHomeAccessoryConditionalSubjectState.m", 34, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt32_2157, *v0);
  getHMCharacteristicMetadataFormatUInt32_2141 = HMCharacteristicMetadataFormatUInt32Function_2159;
  v1 = constantHMCharacteristicMetadataFormatUInt32_2157;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt16_2161()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt16");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt16", "WFHomeAccessoryConditionalSubjectState.m", 33, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt16_2164, *v0);
  getHMCharacteristicMetadataFormatUInt16_2140 = HMCharacteristicMetadataFormatUInt16Function_2166;
  v1 = constantHMCharacteristicMetadataFormatUInt16_2164;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt8_2168()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt8");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt8", "WFHomeAccessoryConditionalSubjectState.m", 32, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt8_2170, *v0);
  getHMCharacteristicMetadataFormatUInt8_2139 = HMCharacteristicMetadataFormatUInt8Function_2172;
  v1 = constantHMCharacteristicMetadataFormatUInt8_2170;

  return v1;
}

id initHMCharacteristicMetadataFormatFloat_2174()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatFloat");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatFloat", "WFHomeAccessoryConditionalSubjectState.m", 30, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatFloat_2176, *v0);
  getHMCharacteristicMetadataFormatFloat_2138 = HMCharacteristicMetadataFormatFloatFunction_2178;
  v1 = constantHMCharacteristicMetadataFormatFloat_2176;

  return v1;
}

id initHMCharacteristicMetadataFormatInt_2180()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatInt");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatInt", "WFHomeAccessoryConditionalSubjectState.m", 29, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatInt_2183, *v0);
  getHMCharacteristicMetadataFormatInt_2137 = HMCharacteristicMetadataFormatIntFunction_2185;
  v1 = constantHMCharacteristicMetadataFormatInt_2183;

  return v1;
}

id initHMCharacteristicMetadataFormatString_2187()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatString");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatString", "WFHomeAccessoryConditionalSubjectState.m", 31, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatString_2189, *v0);
  getHMCharacteristicMetadataFormatString_2136 = HMCharacteristicMetadataFormatStringFunction_2191;
  v1 = constantHMCharacteristicMetadataFormatString_2189;

  return v1;
}

id initHMCharacteristicMetadataFormatBool_2193()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatBool");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatBool", "WFHomeAccessoryConditionalSubjectState.m", 28, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatBool_2196, *v0);
  getHMCharacteristicMetadataFormatBool_2135 = HMCharacteristicMetadataFormatBoolFunction_2198;
  v1 = constantHMCharacteristicMetadataFormatBool_2196;

  return v1;
}

uint64_t WFPBTriggeredAutomationEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      switch(v13)
      {
        case 1:
          v27 = PBReaderReadString();
          v28 = 16;
          break;
        case 2:
          v27 = PBReaderReadString();
          v28 = 24;
          break;
        case 3:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v49 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v14;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_70;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_70:
          v45 = 32;
LABEL_73:
          *(a1 + v45) = v20;
          goto LABEL_79;
        default:
          goto LABEL_52;
      }

      v37 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_79:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 4)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v51 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v51 & 0x7F) << v29;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_68;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_68:
      v44 = 8;
      goto LABEL_78;
    }

    if (v13 == 6)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v50 = 0;
        v41 = [a2 position] + 1;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v40 |= (v50 & 0x7F) << v38;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v38 += 7;
        v11 = v39++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v40;
      }

LABEL_77:
      v44 = 12;
LABEL_78:
      *(a1 + v44) = v35;
      goto LABEL_79;
    }

    if (v13 != 7)
    {
LABEL_52:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_79;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 36) |= 8u;
    while (1)
    {
      v48 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v48 & 0x7F) << v21;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        LOBYTE(v20) = 0;
        goto LABEL_72;
      }
    }

    v20 = (v23 != 0) & ~[a2 hasError];
LABEL_72:
    v45 = 33;
    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFVariableStringInferredContentTypeForItem(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 2;
    }

    else
    {
      v4 = [v1 supportedItemClasses];
      v5 = [v4 containsObject:objc_opt_class()];

      v2 = v5;
    }
  }

LABEL_5:

  return v2;
}

void WFAppendStringToVariableContentConcatenatingStringsIfNecessary(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = [v6 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 stringByAppendingString:v3];
      [v6 replaceObjectAtIndex:objc_msgSend(v6 withObject:{"count") - 1, v5}];
    }

    else
    {
      [v6 addObject:v3];
    }
  }
}

void sub_1CA6DE7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2997(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA6DF17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL WFAppShortcutDataSourceEnvironmentToOrganizationStyle(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

uint64_t (*initHKUILocalizedWorkoutTypeName(uint64_t a1))()
{
  if (HealthUILibrary_sOnce != -1)
  {
    dispatch_once(&HealthUILibrary_sOnce, &__block_literal_global_482);
  }

  v2 = dlsym(HealthUILibrary_sLib, "HKUILocalizedWorkoutTypeName");
  softLinkHKUILocalizedWorkoutTypeName = v2;
  if (v2)
  {
    v2 = (v2)(a1);
  }

  return v2;
}

void *__HealthUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/HealthUI.framework/HealthUI", 2);
  HealthUILibrary_sLib = result;
  return result;
}

Class initHKWorkout()
{
  if (HealthKitLibrary_sOnce != -1)
  {
    dispatch_once(&HealthKitLibrary_sOnce, &__block_literal_global_478);
  }

  result = objc_getClass("HKWorkout");
  classHKWorkout = result;
  getHKWorkoutClass = HKWorkoutFunction;
  return result;
}

void *__HealthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HealthKit.framework/HealthKit", 2);
  HealthKitLibrary_sLib = result;
  return result;
}

uint64_t WFPBRunShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 40;
          goto LABEL_63;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_63;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 24;
          goto LABEL_63;
        case 5u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            v60 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v60 & 0x7F) << v34;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_91;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_91:
          v56 = 8;
          goto LABEL_99;
        case 6u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v64 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v64 & 0x7F) << v22;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_85;
            }
          }

          v21 = (v24 != 0) & ~[a2 hasError];
LABEL_85:
          v55 = 80;
          goto LABEL_94;
        case 7u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v63 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v63 & 0x7F) << v28;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_87;
            }
          }

          v21 = (v30 != 0) & ~[a2 hasError];
LABEL_87:
          v55 = 82;
          goto LABEL_94;
        case 8u:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_63;
        case 9u:
          v13 = PBReaderReadString();
          v14 = 32;
          goto LABEL_63;
        case 0xAu:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            v59 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v59 & 0x7F) << v49;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v51;
          }

LABEL_98:
          v56 = 48;
LABEL_99:
          *(a1 + v56) = v40;
          goto LABEL_100;
        case 0xBu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v62 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v62 & 0x7F) << v43;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_93;
            }
          }

          v21 = (v45 != 0) & ~[a2 hasError];
LABEL_93:
          v55 = 81;
          goto LABEL_94;
        case 0xCu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 84) |= 0x20u;
          break;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 16;
          goto LABEL_63;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 64;
LABEL_63:
          v42 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_100;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_100;
      }

      while (1)
      {
        v61 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v61 & 0x7F) << v15;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          LOBYTE(v21) = 0;
          goto LABEL_83;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_83:
      v55 = 83;
LABEL_94:
      *(a1 + v55) = v21;
LABEL_100:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initHFTriggerActionSetsBuilder()
{
  if (HomeLibrary_sOnce_4502 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_4502, &__block_literal_global_256);
  }

  result = objc_getClass("HFTriggerActionSetsBuilder");
  classHFTriggerActionSetsBuilder = result;
  getHFTriggerActionSetsBuilderClass = HFTriggerActionSetsBuilderFunction;
  return result;
}

void *__HomeLibrary_block_invoke_4505()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_4507 = result;
  return result;
}

void sub_1CA6E77BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEnforceClass_4549(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Failed to serialize INRunWorkflowIntent for watch sync", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

id WFMapPropertyListStrings(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v5)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    goto LABEL_25;
  }

  v9 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v5;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v9 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:v15];
          v17 = WFMapPropertyListStrings(v15, v4);
          v18 = WFMapPropertyListStrings(v16, v4);
          if (![v15 isEqual:v17] || (objc_msgSend(v16, "isEqual:", v18) & 1) == 0)
          {
            [v9 removeObjectForKey:v15];
            [v9 setObject:v18 forKey:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v5 = v24;
    goto LABEL_25;
  }

  v9 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_24:

    v9 = v5;
    goto LABEL_25;
  }

  if ([v9 count])
  {
    v19 = 0;
    do
    {
      v20 = [v9 objectAtIndexedSubscript:v19];
      v21 = WFMapPropertyListStrings(v20, v4);
      [v9 setObject:v21 atIndexedSubscript:v19];

      ++v19;
    }

    while (v19 < [v9 count]);
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];

  return v9;
}

id WFLegacySerializedWorkflowToRunWorkflow(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable WFLegacySerializedWorkflowToRunWorkflow(WFWorkflowReference * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v17 handleFailureInFunction:v18 file:@"WFWorkflowRecord+PeaceDeserialization.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"reference"}];
  }

  v4 = [objc_alloc(MEMORY[0x1E696E9B0]) initWithWorkflowReference:v3 includeIcon:0];
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:a2];
  if ([v5 length])
  {
    v6 = objc_opt_new();
    v7 = [v3 name];
    [v6 setObject:v7 forKeyedSubscript:@"WFLWorkflowName"];

    v8 = [v3 subtitle];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v3 subtitle];
      [v6 setObject:v10 forKeyedSubscript:@"WFLWorkflowDescription"];
    }

    v20 = v5;
    v21[0] = @"WFLWorkflowActionIdentifier";
    v21[1] = @"WFLWorkflowActionParameters";
    v22[0] = @"com.apple.WorkflowKit.actions.handle-intent";
    v19 = @"IntentData";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v23 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v6 setObject:v13 forKeyedSubscript:@"WFLWorkflowActions"];

    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:a2];
  }

  else
  {
    v6 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "WFLegacySerializedWorkflowToRunWorkflow";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Failed to serialize INRunWorkflowIntent for watch sync", buf, 0xCu);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

Class initATXClient()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_338_4775);
  }

  result = objc_getClass("ATXClient");
  classATXClient = result;
  getATXClientClass = ATXClientFunction;
  return result;
}

void *__AppPredictionClientLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient", 2);
  AppPredictionClientLibrary_sLib = result;
  return result;
}

id VCIntentsForAllPossibleParameterCombinationsOfIntent(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v3 mediaContainer];
  v5 = [v4 type];

  if (v5 != 6)
  {
LABEL_6:

LABEL_7:
    v7 = [v2 _validParameterCombinations];
    goto LABEL_8;
  }

  v6 = [v3 copy];
  [v6 setMediaItems:MEMORY[0x1E695E0F0]];
  [v6 setResumePlayback:0];
  v7 = [v6 _validParameterCombinations];
  if (![v7 count])
  {

    goto LABEL_6;
  }

LABEL_8:
  v26 = v7;
  v8 = [v7 allKeys];
  v9 = [v8 mutableCopy];

  v25 = [v2 _nonNilParameters];
  v10 = [v9 indexOfObject:?];
  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 exchangeObjectAtIndex:v10 withObjectAtIndex:0];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v2 _emptyCopy];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * j);
              if ([v15 _isValidKey:v21])
              {
                v22 = [v2 valueForKey:v21];
                [v15 setValue:v22 forKey:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v18);
        }

        [v29 addObject:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

id VCInteractionDonationFromINIntent(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696E8B8];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithIntent:v5 response:0];

  v7 = objc_alloc(MEMORY[0x1E69E0920]);
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithIdentifier:v9 sourceAppIdentifier:v4 interaction:v6];

  return v10;
}

void sub_1CA6EBB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v70 - 160), 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4812(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VCActionDonationArrayFromINShortcutArray(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v35 = a2;
  v36 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v38;
    *&v6 = 136315394;
    v33 = v6;
    v9 = 0x1E696A000uLL;
    v10 = 0x1E696E000uLL;
    do
    {
      v11 = 0;
      v34 = v7;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        v13 = [v12 intent];

        if (v13)
        {
          v14 = objc_alloc(*(v10 + 2232));
          v15 = [v12 intent];
          v16 = [v14 initWithIntent:v15 response:0];

          v17 = objc_alloc(MEMORY[0x1E69E0920]);
          v18 = [*(v9 + 4016) UUID];
          v19 = [v18 UUIDString];
          v20 = [v17 initWithIdentifier:v19 sourceAppIdentifier:v35 interaction:v16];
          [v36 addObject:v20];
        }

        else
        {
          v21 = [v12 userActivity];

          if (v21)
          {
            v22 = objc_alloc(MEMORY[0x1E69E0930]);
            v16 = [v12 userActivity];
            v23 = [*(v9 + 4016) UUID];
            v24 = [v23 UUIDString];
            v25 = v8;
            v26 = v10;
            v27 = v9;
            v28 = v4;
            v29 = objc_opt_new();
            v30 = [v22 initWithUserActivity:v16 identifier:v24 sourceAppIdentifier:v35 date:v29];
            [v36 addObject:v30];

            v4 = v28;
            v9 = v27;
            v10 = v26;
            v8 = v25;
            v7 = v34;
          }

          else
          {
            v16 = getWFActionDonationsLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v33;
              v42 = "VCActionDonationArrayFromINShortcutArray";
              v43 = 2114;
              v44 = v12;
              _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Invalid action: %{public}@", buf, 0x16u);
            }
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = [v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v7);
  }

  v31 = *MEMORY[0x1E69E9840];

  return v36;
}

Class initATXActionPredictionClient()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_338_4775);
  }

  result = objc_getClass("ATXActionPredictionClient");
  classATXActionPredictionClient = result;
  getATXActionPredictionClientClass = ATXActionPredictionClientFunction;
  return result;
}

uint64_t (*initSPGetDisabledAppSet())()
{
  if (SearchLibrary_sOnce != -1)
  {
    dispatch_once(&SearchLibrary_sOnce, &__block_literal_global_344);
  }

  v0 = dlsym(SearchLibrary_sLib, "SPGetDisabledAppSet");
  softLinkSPGetDisabledAppSet = v0;
  if (v0)
  {
    v0 = v0();
  }

  return v0;
}

void *__SearchLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Search.framework/Search", 2);
  SearchLibrary_sLib = result;
  return result;
}

void WFTransformValueForParameterDescription(void *a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 wf_objectClass];
  if (!v8)
  {
    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_20;
  }

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v5;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x1E6996D40];
    v26[0] = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x1E6996D58] itemWithFile:v5];
      }

      else
      {
        [MEMORY[0x1E6996D58] itemWithObject:v5];
      }
      v13 = ;
      v14 = MEMORY[0x1E6996D40];
      v25 = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v10 = [v14 collectionWithItems:v15];

      goto LABEL_14;
    }

    v11 = MEMORY[0x1E6996D40];
    v12 = [v5 if_compactMap:&__block_literal_global_4953];
  }

  v13 = v12;
  v10 = [v11 collectionWithItems:v12];
LABEL_14:

LABEL_15:
  if (([v6 wf_multipleValues] & 1) != 0 || !objc_msgSend(objc_msgSend(v6, "wf_objectClass"), "isEqual:", objc_opt_class()))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __WFTransformValueForParameterDescription_block_invoke_3;
    v19[3] = &unk_1E837A538;
    v16 = &v20;
    v20 = v6;
    v17 = &v21;
    v21 = v7;
    [v10 getObjectRepresentations:v19 forClass:v9];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __WFTransformValueForParameterDescription_block_invoke_2;
    v22[3] = &unk_1E83787E0;
    v16 = &v24;
    v24 = v7;
    v17 = &v23;
    v23 = v6;
    [v10 getObjectRepresentation:v22 forClass:v9];
  }

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];
}

void __WFTransformValueForParameterDescription_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a4;
  v8 = a2;
  v9 = WFTransformObjectRepresentationToFacadeObject(v8, [v6 wf_facadeClass]);

  (*(v5 + 16))(v5, v9, v7);
}

void __WFTransformValueForParameterDescription_block_invoke_3(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __WFTransformValueForParameterDescription_block_invoke_4;
  v7[3] = &unk_1E837E220;
  v8 = *(a1 + 32);
  v4 = [a2 if_compactMap:v7];
  v5 = *(a1 + 40);
  if ([*(a1 + 32) wf_multipleValues])
  {
    (*(v5 + 16))(v5, v4, 0);
  }

  else
  {
    v6 = [v4 firstObject];
    (*(v5 + 16))(v5, v6, 0);
  }
}

id __WFTransformValueForParameterDescription_block_invoke_4(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  if (isKindOfClass)
  {
    v7 = [v6 codableDescription];
    v8 = objc_opt_class();
    v9 = v3;
    if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = getWFGeneralLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v42 = "WFEnforceClass";
        v43 = 2114;
        v44 = v9;
        v45 = 2114;
        v46 = objc_opt_class();
        v47 = 2114;
        v48 = v8;
        v13 = v46;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v14 = v7;
    v15 = [v10 codableDescription];
    v16 = [v15 typeName];
    v17 = [v14 typeName];
    v18 = [v16 isEqualToString:v17];

    if (v18)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = [v14 attributes];
      v19 = [obj countByEnumeratingWithState:&v37 objects:buf count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        v34 = v10;
        v35 = v3;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v37 + 1) + 8 * i);
            v24 = [v14 attributes];
            v25 = [v24 objectForKeyedSubscript:v23];

            v26 = [v15 attributes];
            v27 = [v26 objectForKeyedSubscript:v23];

            v28 = objc_opt_class();
            if (v28 != objc_opt_class() || ([v25 propertyName], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "propertyName"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "isEqualToString:", v30), v30, v29, !v31))
            {

              v10 = v34;
              v3 = v35;
              goto LABEL_21;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v37 objects:buf count:16];
          v10 = v34;
          v3 = v35;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v11 = v10;
    }

    else
    {
LABEL_21:

      v11 = 0;
    }
  }

  else
  {
    v11 = WFTransformObjectRepresentationToFacadeObject(v3, [v6 wf_facadeClass]);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v11;
}

id WFTransformObjectRepresentationToFacadeObject(void *a1, void *a2)
{
  v3 = a1;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if ([a2 isEqual:objc_opt_class()])
  {
    v4 = [objc_alloc(MEMORY[0x1E696EA50]) initWithSpokenPhrase:v3];
    goto LABEL_7;
  }

  if ([a2 isEqual:objc_opt_class()])
  {
    v4 = [objc_alloc(MEMORY[0x1E696E800]) initWithStartDateComponents:v3 endDateComponents:0];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

id __WFTransformValueForParameterDescription_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [MEMORY[0x1E6996D58] itemWithFile:v2];
    }

    else
    {
      [MEMORY[0x1E6996D58] itemWithObject:v2];
    }
    v3 = ;
  }

  v4 = v3;

  return v4;
}

id WFAddSpacesToCamelCaseName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 mutableCopy];
    v3 = [v1 length];
    v4 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    if (v3 >= 2)
    {
      for (i = 1; i < v3; ++i)
      {
        if ([v4 characterIsMember:{objc_msgSend(v2, "characterAtIndex:", i)}])
        {
          [v2 insertString:@" " atIndex:i++];
        }
      }
    }

    v6 = [v2 copy];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id WFCapitalizeFirstLetter(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 substringToIndex:1];
    v3 = [v2 capitalizedString];

    v4 = [v1 stringByReplacingCharactersInRange:0 withString:{1, v3}];
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

uint64_t WFREPBRunRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA6F140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}