void sub_1D7E88EA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if ([v3 isViewLoaded])
  {
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        v8 = [v7 windowScene];

        if (v8)
        {
          v9 = [v8 session];

          if (v9)
          {
            v10 = sub_1D818EF94();
            a3(v10);
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D7E88FB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (sub_1D7E89164(v3))
  {
  }

  else
  {
    v6 = sub_1D8190D94();
    sub_1D7EE20E4(v6, v3);
  }

  if (sub_1D7E89164(v3))
  {
    v10 = MEMORY[0x1E69E6158];
    *&v9 = a1;
    *(&v9 + 1) = a2;
    sub_1D7E1C664(&v9, &v8);
    sub_1D8190DB4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D7E894CC();
    v7 = sub_1D8190D44();

    [v3 setUserInfo_];
  }

  else
  {

    [v3 setUserInfo_];
  }
}

uint64_t sub_1D7E89164(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190D54();

  return v3;
}

uint64_t sub_1D7E891D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + *(*Strong + 144));

    v8 = *(v7 + 24);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v8 + 8))(__src, ObjectType, v8);
    swift_unknownObjectRelease();
    memcpy(__dst, __src, 0x235uLL);
    memcpy(__src, __dst, 0x235uLL);
    memcpy(v19, (a4 + 1896), 0x235uLL);
    memcpy(v16, (a4 + 1896), 0x235uLL);
    sub_1D7E222B8(v19, v15);
    BlueprintLayoutOptions.validate(layoutOptions:)(v16);
    memcpy(v15, v16, 0x235uLL);
    sub_1D7E4C1A0(v15);
    if (v4)
    {
      sub_1D81921A4();
      MEMORY[0x1DA713260](0xD00000000000002FLL, 0x80000001D81D2C50);
      v20 = v4;
      sub_1D7E61D28();
      sub_1D8192334();
      v10 = sub_1D81919C4();
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      BlueprintPipelineRecorder.log(_:type:)(v11, v10);

      sub_1D81921A4();
      MEMORY[0x1DA713260](0xD00000000000001BLL, 0x80000001D81D2C80);
      v20 = v4;
      sub_1D8192334();
      sub_1D7FE814C();
      swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 3;
      swift_willThrow();
    }

    return sub_1D7E4C1A0(__dst);
  }

  else
  {
    sub_1D7FE814C();
    swift_allocError();
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 4;
    return swift_willThrow();
  }
}

__n128 *sub_1D7E894CC()
{
  OUTLINED_FUNCTION_144();
  v4 = v3;
  v6 = v5;
  v8 = OUTLINED_FUNCTION_27_2(v5, v7);
  sub_1D7E11428(v8, v9);
  OUTLINED_FUNCTION_4_10();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_11_6();
  sub_1D7E63668(0, v12, v11 + 8, v13);
  if (OUTLINED_FUNCTION_40())
  {
    v14 = OUTLINED_FUNCTION_85();
    sub_1D7E11428(v14, v15);
    OUTLINED_FUNCTION_26_1();
    if (!v17)
    {
      goto LABEL_14;
    }

    v2 = v16;
  }

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(*v0 + 56) + 32 * v2);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_139();

    return sub_1D7E895D8(v18, v19);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_53_0();
    sub_1D7F55578(v22, v23, v4, v6, v24);
    OUTLINED_FUNCTION_139();

    return sub_1D8190DB4();
  }
}

uint64_t sub_1D7E89620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D7E94724;

  return BlueprintIntegator.integrate(update:)();
}

uint64_t BlueprintIntegator.integrate(update:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = sub_1D8191534();
  v1[6] = sub_1D8191524();
  v4 = sub_1D81914D4();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D7E89C00, v4, v3);
}

uint64_t sub_1D7E89778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v30[1] = a2;
  v31 = a3;
  v6 = *v4;
  v35 = sub_1D8190BD4();
  OUTLINED_FUNCTION_2();
  v37 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v36 = sub_1D8190C34();
  OUTLINED_FUNCTION_2();
  v34 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v17 = v6[10];
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v30 - v21;
  v32 = *(v4 + v6[16]);
  v23 = swift_allocObject();
  swift_weakInit();
  (*(v19 + 16))(v22, a1, v17);
  v24 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v17;
  *(v25 + 3) = v6[11];
  *(v25 + 4) = v6[12];
  *(v25 + 5) = v23;
  (*(v19 + 32))(&v25[v24], v22, v17);
  aBlock[4] = v31;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = v33;
  v26 = _Block_copy(aBlock);

  sub_1D8190BF4();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D7E10290(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  v27 = MEMORY[0x1E69E7F60];
  sub_1D7E10320(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1043C(&qword_1EDBB3340, &qword_1EDBB3348, v27);
  v28 = v35;
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v16, v11, v26);
  _Block_release(v26);
  (*(v37 + 8))(v11, v28);
  (*(v34 + 8))(v16, v36);
}

uint64_t sub_1D7E89B74()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E89C00()
{
  v2 = v0[2];
  v1 = v0[3];
  (*(*(v0[4] + 120) + 96))(1, *(v0[4] + 96));
  v3 = sub_1D8191524();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1D7E94540;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v3, v6, 0xD000000000000012, 0x80000001D81D1C40, sub_1D7E8A2AC, v4, v7);
}

uint64_t BlueprintViewProvider.isReloading.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

Swift::Void __swiftcall TipManager.validate(sourceViewController:)(UIViewController *sourceViewController)
{
  OUTLINED_FUNCTION_120();
  v3 = v1;
  v5 = v4;
  v6 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_140();
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v2 = sub_1D8191AB4();
  (*(v8 + 104))(v2, *MEMORY[0x1E69E8020], v6);
  v10 = sub_1D8190CA4();
  (*(v8 + 8))(v2, v6);
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1D818EDB4();
  if (qword_1EDBBC398 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v11 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v11, qword_1EDBBC3A0);
    v12 = v5;
    v13 = sub_1D818FE14();
    v14 = sub_1D81919E4();

    v46 = v12;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_55_1();
      v16 = OUTLINED_FUNCTION_61();
      v47 = v16;
      *v15 = 136446210;
      v17 = [v12 description];
      v18 = sub_1D8190F14();
      v20 = v19;

      v21 = sub_1D7E1C3D8(v18, v20, &v47);

      *(v15 + 4) = v21;
      OUTLINED_FUNCTION_34_21(&dword_1D7DFF000, v22, v14, "Validating sourceViewController=%{public}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_38();
    }

    OUTLINED_FUNCTION_21_38();
    v23 = *(v3 + 16) + 64;
    OUTLINED_FUNCTION_0_222();
    v26 = v25 & v24;
    v28 = (v27 + 63) >> 6;
    v45 = v29;
    sub_1D8190DB4();
    v30 = 0;
    v44 = v23;
    if (!v26)
    {
      break;
    }

LABEL_6:
    v31 = v30;
LABEL_10:
    v32 = *(*(v45 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v26)))));
    v26 &= v26 - 1;
    v3 = v32 + 64;
    OUTLINED_FUNCTION_0_222();
    v35 = v34 & v33;
    v5 = ((v36 + 63) >> 6);
    sub_1D8190DB4();
    v37 = 0;
    while (v35)
    {
LABEL_16:
      OUTLINED_FUNCTION_23_25();
      v35 &= v39;
      v41 = *(*(v32 + 56) + ((v37 << 9) | (8 * v40)));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v43 = Strong;

        if (v43 == v46)
        {
          *(v41 + 64) = 1;
        }
      }
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v5)
      {

        v30 = v31;
        v23 = v44;
        if (!v26)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v35 = *(v3 + 8 * v38);
      ++v37;
      if (v35)
      {
        v37 = v38;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_0_264();
    swift_once();
  }

  while (1)
  {
LABEL_7:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_24;
    }

    if (v31 >= v28)
    {
      break;
    }

    v26 = *(v23 + 8 * v31);
    ++v30;
    if (v26)
    {
      goto LABEL_10;
    }
  }

  sub_1D818EDC4();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E8A0EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D7E8A2B4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D7E8A330(a3, sub_1D7E93C08, v11);
}

uint64_t sub_1D7E8A230()
{
  sub_1D7E8A2B4();
  OUTLINED_FUNCTION_4_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_1D7E8A2B4()
{
  if (!qword_1EDBB32C0)
  {
    sub_1D7E0631C(255, &qword_1EDBB2BC0);
    v0 = sub_1D8191504();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB32C0);
    }
  }
}

uint64_t sub_1D7E8A330(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = *v3;
  v7 = *(*v3 + 104);
  v24 = *(*v3 + 80);
  v25 = v7;
  v29 = v7;
  aBlock = v24;
  v8 = type metadata accessor for BlueprintPipelineUpdate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v14 = v3[13];
  v13 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 10, v14);
  (*(v13 + 40))(&v32, v14, v13);
  if (v32)
  {
    v15 = objc_opt_self();
    (*(v9 + 16))(v12, a1, v8);
    v16 = (*(v9 + 80) + 64) & ~*(v9 + 80);
    v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    a1 = swift_allocObject();
    v18 = v25;
    *(a1 + 16) = v24;
    *(a1 + 32) = *(v6 + 96);
    *(a1 + 40) = v18;
    *(a1 + 56) = *(v6 + 120);
    (*(v9 + 32))(a1 + v16, v12, v8);
    *(a1 + v17) = v4;
    v19 = (a1 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
    v20 = v27;
    *v19 = v26;
    v19[1] = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1D7E8AD9C;
    *(v21 + 24) = a1;
    v30 = sub_1D7E74D6C;
    v31 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v29 = sub_1D7E74D74;
    *(&v29 + 1) = &block_descriptor_56;
    v22 = _Block_copy(&aBlock);

    [v15 performWithoutAnimation_];
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_1D7E8C090(a1, v4, v26, v27);
}

void sub_1D7E8A640()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_35(*(v1 + 40), *(v1 + 16));
  type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_20_19();
  v6 = v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80));
  OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  OUTLINED_FUNCTION_14();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_36_11();
  if (!(!v9 & v8))
  {
    switch(v7)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_40_10();
        goto LABEL_15;
      case 2:
        OUTLINED_FUNCTION_40_10();

        if (!*(v6 + 88))
        {
          break;
        }

        v10 = v6 + 64;
        goto LABEL_19;
      case 4:
        v10 = v6;
        goto LABEL_19;
      case 5:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v4 = type metadata accessor for Blueprint();
        v0 = *(v4 + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v16 + 8))(v6 + v0);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_42_11();
        OUTLINED_FUNCTION_1_1();
        WitnessTable = swift_getWitnessTable();
        OUTLINED_FUNCTION_20_25(WitnessTable);
        OUTLINED_FUNCTION_4_3();
        v18 = OUTLINED_FUNCTION_30_17();
        v19(v18);
        OUTLINED_FUNCTION_66_6();
        OUTLINED_FUNCTION_49_7();
        MEMORY[0x1EEE9AC00](v20);
        OUTLINED_FUNCTION_50_6();
        OUTLINED_FUNCTION_5_52(v21);
        v44 = sub_1D7E0631C(255, &qword_1EDBBA670);
        OUTLINED_FUNCTION_8_40(v44, qword_1EDBB68A8);
        OUTLINED_FUNCTION_15_31(v22, MEMORY[0x1E69E6370]);
        OUTLINED_FUNCTION_28_16();
        OUTLINED_FUNCTION_77_5(v23);
        goto LABEL_15;
      case 6:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v24 = *(type metadata accessor for Blueprint() + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v25 + 8))(v6 + v24);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        v0 = v2;
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        v4 = v3;
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_1();
        v26 = swift_getWitnessTable();
        OUTLINED_FUNCTION_14_31(v26);
        OUTLINED_FUNCTION_4_3();
        v27 = OUTLINED_FUNCTION_30_17();
        v28(v27);
        OUTLINED_FUNCTION_64_7();
        sub_1D7E0631C(255, &qword_1EDBBA670);
        v10 = v6 + *(OUTLINED_FUNCTION_54_4() + 48);
        goto LABEL_19;
      case 7:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v11 = *(type metadata accessor for Blueprint() + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v12 + 8))(v6 + v11);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        v0 = v2;
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        v4 = v3;
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_1();
        v13 = swift_getWitnessTable();
        OUTLINED_FUNCTION_14_31(v13);
        OUTLINED_FUNCTION_4_3();
        v14 = OUTLINED_FUNCTION_30_17();
        v15(v14);
LABEL_15:

        break;
      default:
        if (!*(v6 + 40))
        {
          break;
        }

        v10 = v6 + 16;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        break;
    }
  }

  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_61_6();
  switch(OUTLINED_FUNCTION_53_5())
  {
    case 0u:
      v29 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v29))
      {
        OUTLINED_FUNCTION_3_0();
        v30 = OUTLINED_FUNCTION_55_0();
        goto LABEL_25;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v31 = *(v32 + 8);
      v30 = v4;
LABEL_25:
      v31(v30);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_75_7();
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  OUTLINED_FUNCTION_123_0();
  v33 = type metadata accessor for Blueprint();
  v34 = *(v33 + 56);
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  v35 = OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_8();
  (*(v36 + 8))(v0 + v34, v35);
  v37 = *(v33 + 60);
  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v38 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v40 = *(v39 + 8);
  v40(v0 + v37, v38);
  OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_59_5();
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  OUTLINED_FUNCTION_35_14();
  v41 = OUTLINED_FUNCTION_33_11();
  v42(v41);
  v43 = OUTLINED_FUNCTION_46_11();
  (v40)(v43);
  OUTLINED_FUNCTION_55_9();

  OUTLINED_FUNCTION_58_7();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E8AD5C@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *a1 = *(v1 + 72);
  return result;
}

uint64_t sub_1D7E8AD9C()
{
  v1 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_15_15(v1);
  OUTLINED_FUNCTION_25_14();
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1D7E8C090(v0 + v2, v4, v6, v7);
}

void sub_1D7E8AE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7E10320(0, &qword_1EDBB32B8, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v112 - v10;
  v131 = sub_1D8190BD4();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1D8190C34();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v112 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v112 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v112 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v121 = v11;
    v139 = a4;
    if (qword_1EDBBC3C0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D818FE34();
    v29 = __swift_project_value_buffer(v28, qword_1EDBC6108);
    v30 = *(v14 + 16);
    v135 = v14 + 16;
    v136 = v30;
    v30(v25, a2, a3);
    v125 = v29;
    v31 = sub_1D818FE14();
    v32 = sub_1D81919E4();
    v33 = os_log_type_enabled(v31, v32);
    v138 = a5;
    v134 = v14;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v122 = v27;
      v35 = a3;
      v36 = v34;
      v37 = swift_slowAlloc();
      v132 = a2;
      v38 = v37;
      aBlock = v37;
      *v36 = 136446210;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v40 = (*(AssociatedConformanceWitness + 32))(v35, AssociatedConformanceWitness);
      v42 = v41;
      (*(v14 + 8))(v25, v35);
      v43 = sub_1D7E1C3D8(v40, v42, &aBlock);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_1D7DFF000, v31, v32, "User activity will become current, identifier=%{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v44 = v38;
      a2 = v132;
      MEMORY[0x1DA715D00](v44, -1, -1);
      v45 = v36;
      a3 = v35;
      v27 = v122;
      MEMORY[0x1DA715D00](v45, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v25, a3);
    }

    v46 = sub_1D7E8FD58(a2, 0);
    v47 = v46;
    sub_1D7E91F50(v46);
    v48 = swift_getAssociatedConformanceWitness();
    v49 = *(v48 + 32);
    v115 = v48;
    v114 = v48 + 32;
    v113 = v49;
    (v49)(a3);
    v50 = a3;
    v51 = v27;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *(v27 + 24);
    sub_1D7E923F8();
    *(v27 + 24) = v140;

    swift_endAccess();
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    v122 = sub_1D8191AB4();
    v52 = v133;
    v136(v133, a2, a3);
    v53 = v134;
    v54 = *(v134 + 80);
    v116 = ~v54;
    v55 = (v54 + 48) & ~v54;
    v117 = v54;
    v56 = swift_allocObject();
    v57 = v138;
    v58 = v139;
    *(v56 + 2) = v50;
    *(v56 + 3) = v58;
    *(v56 + 4) = v57;
    *(v56 + 5) = v47;
    v59 = *(v53 + 32);
    v120 = v50;
    v119 = v53 + 32;
    v118 = v59;
    v59(&v56[v55], v52, v50);
    v146 = sub_1D7E92678;
    v147 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v143 = 1107296256;
    v144 = sub_1D7E64940;
    v145 = &block_descriptor_33_0;
    v60 = _Block_copy(&aBlock);
    v137 = v47;

    v61 = v126;
    sub_1D8190BF4();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D7E10290(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
    v132 = a2;
    v62 = MEMORY[0x1E69E7F60];
    sub_1D7E10320(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    v63 = v62;
    v64 = v132;
    sub_1D7E1043C(&qword_1EDBB3340, &qword_1EDBB3348, v63);
    v65 = v128;
    v66 = v139;
    v67 = v131;
    sub_1D8192004();
    v68 = v122;
    MEMORY[0x1DA713CE0](0, v61, v65, v60);
    v69 = v60;
    v70 = v138;
    _Block_release(v69);

    (*(v130 + 8))(v65, v67);
    (*(v127 + 8))(v61, v129);
    v71 = (*(v70 + 80))(v64, v66, v70);
    if (v71)
    {
      v72 = v71;
      v122 = v51;
      v73 = v124;
      v74 = v120;
      v75 = v136;
      v136(v124, v64, v120);
      v76 = sub_1D818FE14();
      v77 = sub_1D81919E4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock = v79;
        *v78 = 136446210;
        v80 = v113(v74, v115);
        v81 = v73;
        v83 = v82;
        (*(v134 + 8))(v81, v74);
        v84 = sub_1D7E1C3D8(v80, v83, &aBlock);

        *(v78 + 4) = v84;
        _os_log_impl(&dword_1D7DFF000, v76, v77, "User activity will donate interaction for %{public}s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x1DA715D00](v79, -1, -1);
        v85 = v136;
        MEMORY[0x1DA715D00](v78, -1, -1);
      }

      else
      {
        v85 = v75;

        (*(v134 + 8))(v73, v74);
      }

      v99 = v133;
      v85(v133, v132, v74);
      v100 = (v117 + 40) & v116;
      v101 = swift_allocObject();
      v102 = v138;
      v103 = v139;
      *(v101 + 2) = v74;
      *(v101 + 3) = v103;
      *(v101 + 4) = v102;
      v118(&v101[v100], v99, v74);
      v146 = sub_1D7FEF7B8;
      v147 = v101;
      aBlock = MEMORY[0x1E69E9820];
      v143 = 1107296256;
      v144 = sub_1D7FED96C;
      v145 = &block_descriptor_43_1;
      v104 = _Block_copy(&aBlock);

      [v72 donateInteractionWithCompletion_];

      _Block_release(v104);
    }

    else
    {
      v86 = v64;
      v87 = v120;
      (*(v70 + 88))(&v140, v86, v66, v70);
      if (v141)
      {
        sub_1D7E05450(&v140, &aBlock);
        v88 = v123;
        v89 = v87;
        v136(v123, v86, v87);
        v90 = sub_1D818FE14();
        v91 = sub_1D81919E4();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *&v140 = v93;
          *v92 = 136446210;
          v94 = v113(v87, v115);
          v96 = v95;
          (*(v134 + 8))(v88, v87);
          v97 = sub_1D7E1C3D8(v94, v96, &v140);

          *(v92 + 4) = v97;
          _os_log_impl(&dword_1D7DFF000, v90, v91, "User activity will donate app intent for %{public}s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v93);
          MEMORY[0x1DA715D00](v93, -1, -1);
          v98 = v92;
          v89 = v87;
          MEMORY[0x1DA715D00](v98, -1, -1);
        }

        else
        {

          (*(v134 + 8))(v88, v87);
        }

        v105 = sub_1D8191564();
        v106 = v121;
        __swift_storeEnumTagSinglePayload(v121, 1, 1, v105);
        sub_1D7E0E768(&aBlock, &v140);
        v107 = v133;
        v136(v133, v132, v89);
        v108 = (v117 + 96) & v116;
        v109 = swift_allocObject();
        *(v109 + 2) = 0;
        *(v109 + 3) = 0;
        v110 = v138;
        v111 = v139;
        *(v109 + 4) = v89;
        *(v109 + 5) = v111;
        *(v109 + 6) = v110;
        sub_1D7E05450(&v140, (v109 + 56));
        v118(&v109[v108], v107, v89);
        sub_1D7F7F414(0, 0, v106, &unk_1D81AD0F0, v109);

        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      }

      else
      {

        sub_1D7FEF5C8(&v140);
      }
    }
  }
}

uint64_t sub_1D7E8BEDC()
{
  OUTLINED_FUNCTION_2();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  v1 = OUTLINED_FUNCTION_2_11();
  v2(v1);
  OUTLINED_FUNCTION_4_44();

  return swift_deallocObject();
}

uint64_t sub_1D7E8BF88()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7E8C090(unint64_t a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  v286 = a4;
  v287 = a3;
  v288 = a2;
  v5 = *(*a2 + 80);
  v283 = *a2;
  v6 = *(v283 + 104);
  v289 = v5;
  v290 = v6;
  v304 = v5;
  v305 = v6;
  v7 = type metadata accessor for Blueprint();
  v280 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v269 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v279 = &v269 - v11;
  v281 = v12;
  v13 = sub_1D8191E84();
  v277 = *(v13 - 8);
  v278 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v275 = &v269 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v276 = &v269 - v16;
  sub_1D7E815E4(0, qword_1EDBBA708, type metadata accessor for BlueprintBookmark);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v274 = &v269 - v18;
  v304 = v289;
  v305 = v290;
  v19 = type metadata accessor for BlueprintPipelineUpdate.Action();
  v20 = sub_1D8191E84();
  v272 = *(v20 - 8);
  v273 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v271 = &v269 - v21;
  v304 = v289;
  v305 = v290;
  v22 = type metadata accessor for BlueprintPipelineUpdate();
  v284 = *(v22 - 8);
  v23 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v270 = &v269 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v269 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v269 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v269 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v282 = &v269 - v34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v269 - v37;
  v40 = *(v39 + 16);
  v285 = a1;
  v40(v38, a1, v19, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v107 = v22;
      v281 = *(v38 + 5);
      sub_1D7E05450(v38, &v304);
      v108 = v288;
      sub_1D807997C();
      sub_1D7E2657C((v108 + 5), &v301, &qword_1EDBB65A8, &qword_1EDBB65B0);
      v109 = *(&v302 + 1);
      if (*(&v302 + 1))
      {
        v110 = v303;
        __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
        v111 = v285;
        (*(v110 + 24))(&v298, v285 + *(v22 + 60), v109, v110);
        __swift_destroy_boxed_opaque_existential_1Tm(&v301);
        v112 = v284;
      }

      else
      {
        sub_1D7E2739C(&v301, &qword_1EDBB65A8, &qword_1EDBB65B0);
        v298 = 0u;
        v299 = 0u;
        v112 = v284;
        v111 = v285;
      }

      v216 = *(v283 + 120);
      v217 = *(v216 + 56);
      v279 = *(v283 + 96);
      v285 = v217();
      v218 = (v111 + *(v22 + 56));
      v220 = *v218;
      v219 = v218[1];
      v283 = v220;
      v280 = v219;
      v221 = swift_allocObject();
      swift_weakInit();
      v222 = v282;
      (*(v112 + 16))(v282, v111, v107);
      sub_1D7E7B91C(&v298, &v301);
      v223 = v112;
      v224 = (*(v112 + 80) + 72) & ~*(v112 + 80);
      v225 = (v23 + v224 + 7) & 0xFFFFFFFFFFFFFFF8;
      v192 = swift_allocObject();
      v226 = v290;
      *(v192 + 16) = v289;
      *(v192 + 32) = v279;
      *(v192 + 40) = v226;
      *(v192 + 56) = v216;
      *(v192 + 64) = v221;
      (*(v223 + 32))(v192 + v224, v222, v107);
      v227 = (v192 + v225);
      v228 = v302;
      *v227 = v301;
      v227[1] = v228;
      v229 = swift_allocObject();
      v230 = v286;
      *(v229 + 16) = v287;
      *(v229 + 24) = v230;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v199 = *(AssociatedConformanceWitness + 16);

      v267[0] = swift_checkMetadataState();
      v267[1] = AssociatedConformanceWitness;
      v266 = v229;
      v200 = sub_1D7EB3910;
      v201 = v283;
      v202 = v280;
      v203 = v281;
      v204 = 1;
      goto LABEL_37;
    case 2:
      v269 = v22;
      v280 = *(v38 + 5);
      sub_1D7E05450(v38, &v307);
      v66 = *(v38 + 4);
      v304 = *(v38 + 3);
      v305 = v66;
      v306 = *(v38 + 5);
      v67 = v288;
      sub_1D807997C();
      sub_1D7E2657C((v67 + 15), v292, &qword_1EDBB65B8, &unk_1EDBB65C0);
      if (!v293)
      {
        sub_1D7E2739C(v292, &qword_1EDBB65B8, &unk_1EDBB65C0);
        v295 = 0u;
        v296 = 0u;
        v297 = 0;
        goto LABEL_29;
      }

      v68 = v294;
      __swift_project_boxed_opaque_existential_1(v292, v293);
      v69 = static BlueprintAnimatorType.key.getter();
      (*(v68 + 16))(&v295, v69);

      __swift_destroy_boxed_opaque_existential_1Tm(v292);
      if (!*(&v296 + 1))
      {
LABEL_29:
        sub_1D7E2739C(&v295, &qword_1EDBB93D8, &qword_1EDBB93E0);
        v170 = v271;
        sub_1D7E25380(&v307, v271);
        *(v170 + 40) = v280;
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v170, 0, 1, v19);
        v171 = type metadata accessor for BlueprintBookmark();
        v172 = v274;
        __swift_storeEnumTagSinglePayload(v274, 1, 1, v171);
        v173 = v276;
        v174 = v281;
        __swift_storeEnumTagSinglePayload(v276, 1, 1, v281);
        v175 = v275;
        __swift_storeEnumTagSinglePayload(v275, 1, 1, v174);

        v176 = v269;
        v177 = v282;
        BlueprintPipelineUpdate.replacing(action:apply:validate:bookmark:before:after:)(v170, 0, 0, 0, 0, v172, v173, v175, v282, v269);
        v178 = *(v277 + 8);
        v179 = v175;
        v180 = v278;
        v178(v179, v278);
        v178(v173, v180);
        sub_1D807A408(v172);
        (*(v272 + 8))(v170, v273);
        sub_1D7E8A330(v177, v287, v286);

        (*(v284 + 8))(v177, v176);
        __swift_destroy_boxed_opaque_existential_1Tm(&v301);
        goto LABEL_30;
      }

      sub_1D7E05450(&v295, &v298);
      v70 = v284;
      v71 = *(v284 + 16);
      v72 = v269;
      v71(v26, v285, v269);
      sub_1D7E25380(&v301, &v295);
      v71(v270, v26, v72);
      sub_1D7E25380(&v295, v292);
      v73 = (*(v70 + 80) + 72) & ~*(v70 + 80);
      v74 = (v23 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v285 = (v74 + 47) & 0xFFFFFFFFFFFFFFF8;
      v75 = (v285 + 15) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      v77 = v290;
      *(v76 + 16) = v289;
      v78 = v283;
      *&v289 = *(v283 + 96);
      *(v76 + 32) = v289;
      *(v76 + 40) = v77;
      v79 = *(v78 + 120);
      v80 = v288;
      *(v76 + 56) = v79;
      *(v76 + 64) = v80;
      v81 = v70;
      v82 = v72;
      (*(v81 + 32))(v76 + v73, v26, v72);
      sub_1D7E05450(&v295, v76 + v74);
      v83 = v286;
      *(v76 + v285) = v280;
      v84 = (v76 + v75);
      v85 = v287;
      *v84 = v287;
      v84[1] = v83;
      v86 = *(v79 + 56);

      v87 = v86(v289, v79);
      v88 = [v87 window];

      if (v88)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v292);
        (*(v284 + 8))(v270, v82);
        v89 = v300;
        __swift_project_boxed_opaque_existential_1(&v298, *(&v299 + 1));
        v90 = sub_1D7E25380(&v307, v291);
        v91 = MEMORY[0x1EEE9AC00](v90);
        v267[1] = sub_1D807A480;
        v268 = v76;
        (*(v89 + 8))(v291, &v304, sub_1D807A590, v91);

        sub_1D807A53C(v291);
      }

      else
      {
        v261 = *(&v299 + 1);
        v262 = v300;
        __swift_project_boxed_opaque_existential_1(&v298, *(&v299 + 1));
        sub_1D7E25380(&v307, v291);
        (*(v262 + 16))(v291, &v304, v261, v262);
        sub_1D807A53C(v291);
        v263 = v270;
        sub_1D80799F8(0, 0, v288, v270, v292, v280, v85, v83);

        __swift_destroy_boxed_opaque_existential_1Tm(v292);
        (*(v284 + 8))(v263, v82);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v301);
      __swift_destroy_boxed_opaque_existential_1Tm(&v307);
      v181 = &v298;
LABEL_52:
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
      return sub_1D8022FD0(&v304);
    case 3:
      v92 = v22;
      v93 = *(v38 + 5);
      sub_1D7E05450(v38, &v304);
      v94 = v288;
      sub_1D807997C();
      sub_1D7E2657C((v94 + 5), &v301, &qword_1EDBB65A8, &qword_1EDBB65B0);
      v95 = *(&v302 + 1);
      v281 = v93;
      if (*(&v302 + 1))
      {
        v96 = v303;
        __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
        v97 = v285;
        (*(v96 + 24))(&v298, v285 + *(v92 + 60), v95, v96);
        __swift_destroy_boxed_opaque_existential_1Tm(&v301);
        v98 = v284;
      }

      else
      {
        sub_1D7E2739C(&v301, &qword_1EDBB65A8, &qword_1EDBB65B0);
        v298 = 0u;
        v299 = 0u;
        v98 = v284;
        v97 = v285;
      }

      v182 = *(v283 + 120);
      v183 = *(v182 + 56);
      v279 = *(v283 + 96);
      v285 = v183();
      v184 = (v97 + *(v92 + 56));
      v186 = *v184;
      v185 = v184[1];
      v283 = v186;
      v280 = v185;
      v187 = swift_allocObject();
      swift_weakInit();
      v188 = v282;
      (*(v98 + 16))(v282, v97, v92);
      sub_1D7E7B91C(&v298, &v301);
      v189 = v98;
      v190 = (*(v98 + 80) + 72) & ~*(v98 + 80);
      v191 = (v23 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
      v192 = swift_allocObject();
      v193 = v290;
      *(v192 + 16) = v289;
      *(v192 + 32) = v279;
      *(v192 + 40) = v193;
      *(v192 + 56) = v182;
      *(v192 + 64) = v187;
      (*(v189 + 32))(v192 + v190, v188, v92);
      v194 = (v192 + v191);
      v195 = v302;
      *v194 = v301;
      v194[1] = v195;
      v196 = swift_allocObject();
      v197 = v286;
      *(v196 + 16) = v287;
      *(v196 + 24) = v197;
      swift_getAssociatedTypeWitness();
      v198 = swift_getAssociatedConformanceWitness();
      v199 = *(v198 + 16);

      v267[0] = swift_checkMetadataState();
      v267[1] = v198;
      v266 = v196;
      v200 = sub_1D7EB39A4;
      v201 = v283;
      v202 = v280;
      v203 = v281;
      v204 = 0;
LABEL_37:
      v232 = v285;
      v199(&v307, v201, v202, v203, v204, sub_1D7EB1EF4, v192, v200, v266, v267[0], v267[1]);

      sub_1D7E7BAAC(&v298);
      __swift_destroy_boxed_opaque_existential_1Tm(&v307);
      __swift_destroy_boxed_opaque_existential_1Tm(&v304);

    case 4:
      (*(v285 + *(v22 + 56)))();
      v287(0);
      v62 = v38;
      return __swift_destroy_boxed_opaque_existential_1Tm(v62);
    case 5:
      v113 = v22;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      qmemcpy(&v269 - 6, "blueprint diff response", 23);
      HIBYTE(v266) = 32;
      strcpy(v267, "animated ");
      v114 = v281;
      *&v304 = v281;
      *(&v304 + 1) = sub_1D7E0631C(255, &qword_1EDBBA670);
      sub_1D7E815E4(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
      *&v305 = v115;
      *(&v305 + 1) = MEMORY[0x1E69E6370];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v117 = TupleTypeMetadata[12];
      v278 = *&v38[TupleTypeMetadata[16]];
      v118 = v38[TupleTypeMetadata[20]];
      v119 = v279;
      v120 = v280;
      (*(v280 + 32))(v279, v38, v114);
      v121 = v288[21];
      if (v121)
      {
        v275 = v288[22];
        v122 = v285;
        v123 = (v285 + *(v113 + 56));
        v277 = v117;
        v124 = v288;
        LODWORD(v276) = v118;
        v125 = *v123;

        v125(v126);
        sub_1D7E2657C((v124 + 5), &v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
        v127 = v284;
        v128 = v282;
        (*(v284 + 16))(v282, v122, v113);
        v129 = (*(v127 + 80) + 104) & ~*(v127 + 80);
        v130 = swift_allocObject();
        v131 = v290;
        *(v130 + 16) = v289;
        v132 = v283;
        *(v130 + 32) = *(v283 + 96);
        *(v130 + 40) = v131;
        *(v130 + 56) = *(v132 + 120);
        v133 = v305;
        *(v130 + 64) = v304;
        *(v130 + 80) = v133;
        *(v130 + 96) = v306;
        (*(v127 + 32))(v130 + v129, v128, v113);
        v134 = v279;
        v121(v279, v278, v276, sub_1D807A350, v130);

        v287(0);
        sub_1D7E0E10C(v121);

        (*(v120 + 8))(v134, v281);
        v62 = &v38[v277];
      }

      else
      {
        sub_1D7FE814C();
        v233 = swift_allocError();
        *v234 = 3;
        *(v234 + 8) = 0;
        *(v234 + 16) = 0;
        *(v234 + 24) = 0;
        *(v234 + 32) = 4;
        (v287)();

        (*(v120 + 8))(v119, v114);
        v62 = &v38[v117];
      }

      return __swift_destroy_boxed_opaque_existential_1Tm(v62);
    case 6:
      sub_1D7E0631C(255, &qword_1EDBBA670);
      v135 = v281;
      v136 = *(swift_getTupleTypeMetadata2() + 48);
      v137 = v280;
      (*(v280 + 32))(v9, v38, v135);
      v138 = v288[23];
      if (v138)
      {
        v139 = *(v285 + *(v22 + 56));

        v139(v140);
        v138(v9);
        v287(0);
        sub_1D7E0E10C(v138);
      }

      else
      {
        sub_1D7FE814C();
        v235 = swift_allocError();
        *v236 = 3;
        *(v236 + 8) = 0;
        *(v236 + 16) = 0;
        *(v236 + 24) = 0;
        *(v236 + 32) = 4;
        (v287)();
      }

      (*(v137 + 8))(v9, v135);
      v62 = &v38[v136];
      return __swift_destroy_boxed_opaque_existential_1Tm(v62);
    case 7:
      v99 = v281;
      LODWORD(v290) = v38[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v285 + *(v22 + 56)))();
      v100 = (*(*(v283 + 120) + 56))(*(v283 + 96), *(v283 + 120));
      v101 = swift_allocObject();
      v102 = v286;
      *(v101 + 16) = v287;
      *(v101 + 24) = v102;
      swift_getAssociatedTypeWitness();
      v103 = swift_getAssociatedConformanceWitness();
      v104 = *(v103 + 24);

      v105 = swift_checkMetadataState();
      v104(v290, sub_1D7EB38E4, v101, v105, v103);

      return (*(v280 + 8))(v38, v99);
    case 8:
      sub_1D7E2657C((v288 + 5), &v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
      v145 = *(&v305 + 1);
      if (*(&v305 + 1))
      {
        v146 = v306;
        __swift_project_boxed_opaque_existential_1(&v304, *(&v305 + 1));
        v147 = v285;
        (*(v146 + 24))(&v307, v285 + *(v22 + 60), v145, v146);
        __swift_destroy_boxed_opaque_existential_1Tm(&v304);
      }

      else
      {
        sub_1D7E2739C(&v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
        v307 = 0u;
        v308 = 0u;
        v147 = v285;
      }

      v240 = *(v283 + 120);
      v241 = *(v283 + 96);
      v285 = (*(v240 + 56))(v241, v240);
      v242 = (v147 + *(v22 + 56));
      v244 = *v242;
      v243 = v242[1];
      v283 = v244;
      v281 = v243;
      v245 = swift_allocObject();
      v246 = v22;
      v269 = v22;
      v247 = v245;
      swift_weakInit();
      v248 = v284;
      v249 = v282;
      (*(v284 + 16))(v282, v147, v246);
      sub_1D7E7B91C(&v307, &v304);
      v250 = (*(v248 + 80) + 72) & ~*(v248 + 80);
      v251 = (v23 + v250 + 7) & 0xFFFFFFFFFFFFFFF8;
      v252 = swift_allocObject();
      v253 = v290;
      *(v252 + 16) = v289;
      *(v252 + 32) = v241;
      *(v252 + 40) = v253;
      *(v252 + 56) = v240;
      *(v252 + 64) = v247;
      (*(v248 + 32))(v252 + v250, v249, v269);
      v254 = (v252 + v251);
      v255 = v305;
      *v254 = v304;
      v254[1] = v255;
      v256 = (v252 + ((v251 + 39) & 0xFFFFFFFFFFFFFFF8));
      v257 = v286;
      *v256 = v287;
      v256[1] = v257;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v259 = swift_getAssociatedConformanceWitness();

      v260 = v285;
      BlueprintViewType.reload(apply:completion:)(v283, v281, sub_1D7E9381C, v252, AssociatedTypeWitness, v259);

      sub_1D7E7BAAC(&v307);

    case 9:
      sub_1D7E2657C((v288 + 5), &v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
      v63 = *(&v305 + 1);
      if (*(&v305 + 1))
      {
        v64 = v306;
        __swift_project_boxed_opaque_existential_1(&v304, *(&v305 + 1));
        v65 = v285;
        (*(v64 + 24))(&v307, v285 + *(v22 + 60), v63, v64);
        __swift_destroy_boxed_opaque_existential_1Tm(&v304);
      }

      else
      {
        sub_1D7E2739C(&v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
        v307 = 0u;
        v308 = 0u;
        v65 = v285;
      }

      v148 = *(v283 + 120);
      v149 = *(v283 + 96);
      v285 = (*(v148 + 56))(v149, v148);
      v150 = (v65 + *(v22 + 56));
      v152 = *v150;
      v151 = v150[1];
      v283 = v152;
      v281 = v151;
      v153 = swift_allocObject();
      v154 = v22;
      v269 = v22;
      v155 = v153;
      v280 = v153;
      swift_weakInit();
      v156 = v284;
      v157 = v282;
      (*(v284 + 16))(v282, v65, v154);
      sub_1D7E7B91C(&v307, &v304);
      v158 = (*(v156 + 80) + 72) & ~*(v156 + 80);
      v159 = (v23 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
      v160 = swift_allocObject();
      v161 = v290;
      *(v160 + 16) = v289;
      *(v160 + 32) = v149;
      *(v160 + 40) = v161;
      *(v160 + 56) = v148;
      *(v160 + 64) = v155;
      (*(v156 + 32))(v160 + v158, v157, v269);
      v162 = (v160 + v159);
      v163 = v305;
      *v162 = v304;
      v162[1] = v163;
      v164 = (v160 + ((v159 + 39) & 0xFFFFFFFFFFFFFFF8));
      v165 = v286;
      *v164 = v287;
      v164[1] = v165;
      swift_getAssociatedTypeWitness();
      v166 = swift_getAssociatedConformanceWitness();
      v167 = *(v166 + 8);

      v168 = swift_checkMetadataState();
      v169 = v285;
      v167(v283, v281, 0, sub_1D807A65C, v160, v168, v166);

      sub_1D7E7BAAC(&v307);

    case 10:
      v141 = v288;
      sub_1D7E2657C((v288 + 5), &v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
      v142 = *(&v305 + 1);
      if (*(&v305 + 1))
      {
        v143 = v306;
        __swift_project_boxed_opaque_existential_1(&v304, *(&v305 + 1));
        v144 = v285;
        (*(v143 + 24))(&v307, v285 + *(v22 + 60), v142, v143);
        __swift_destroy_boxed_opaque_existential_1Tm(&v304);
      }

      else
      {
        sub_1D7E2739C(&v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
        v307 = 0u;
        v308 = 0u;
        v144 = v285;
      }

      sub_1D7E2657C((v141 + 5), &v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
      v237 = *(&v305 + 1);
      v238 = v287;
      if (*(&v305 + 1))
      {
        v239 = v306;
        __swift_project_boxed_opaque_existential_1(&v304, *(&v305 + 1));
        (*(v239 + 32))(v144 + *(v22 + 60), &v307, v237, v239);
        __swift_destroy_boxed_opaque_existential_1Tm(&v304);
      }

      else
      {
        sub_1D7E2739C(&v304, &qword_1EDBB65A8, &qword_1EDBB65B0);
      }

      v238(0);
      return sub_1D7E7BAAC(&v307);
    default:
      v269 = v22;
      v42 = *(v38 + 1);
      v304 = *v38;
      v305 = v42;
      v306 = *(v38 + 2);
      sub_1D7E2657C((v288 + 15), &v298, &qword_1EDBB65B8, &unk_1EDBB65C0);
      if (*(&v299 + 1))
      {
        v43 = v300;
        __swift_project_boxed_opaque_existential_1(&v298, *(&v299 + 1));
        v44 = static BlueprintAnimatorType.key.getter();
        (*(v43 + 16))(&v301, v44);

        __swift_destroy_boxed_opaque_existential_1Tm(&v298);
        if (*(&v302 + 1))
        {
          sub_1D7E05450(&v301, &v307);
          v45 = v284;
          v46 = *(v284 + 16);
          v47 = v269;
          v46(v32, v285, v269);
          v46(v29, v32, v47);
          v48 = (*(v45 + 80) + 72) & ~*(v45 + 80);
          v49 = swift_allocObject();
          v50 = v290;
          *(v49 + 16) = v289;
          v51 = v283;
          *&v289 = *(v283 + 96);
          *(v49 + 32) = v289;
          *(v49 + 40) = v50;
          v52 = *(v51 + 120);
          v53 = v288;
          *(v49 + 56) = v52;
          *(v49 + 64) = v53;
          (*(v45 + 32))(v49 + v48, v32, v47);
          v54 = (v49 + ((v23 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
          v55 = v286;
          *v54 = v287;
          v54[1] = v55;
          v56 = *(v52 + 56);

          v57 = v56(v289, v52);
          v58 = [v57 window];

          if (v58)
          {

            (*(v284 + 8))(v29, v269);
            v59 = v309;
            v60 = __swift_project_boxed_opaque_existential_1(&v307, *(&v308 + 1));
            v303 = 0;
            v301 = 0u;
            v302 = 0u;
            v61 = MEMORY[0x1EEE9AC00](v60);
            v267[1] = sub_1D807A5B8;
            v268 = v49;
            (*(v59 + 8))(&v301, &v304, sub_1D807AECC, v61);

            sub_1D807A53C(&v301);
          }

          else
          {
            v264 = *(&v308 + 1);
            v265 = v309;
            __swift_project_boxed_opaque_existential_1(&v307, *(&v308 + 1));
            v303 = 0;
            v301 = 0u;
            v302 = 0u;
            (*(v265 + 16))(&v301, &v304, v264, v265);
            sub_1D807A53C(&v301);
            sub_1D80793E8(0, 0, v288, v29, v287, v55);

            (*(v284 + 8))(v29, v269);
          }

LABEL_30:
          v181 = &v307;
          goto LABEL_52;
        }
      }

      else
      {
        sub_1D7E2739C(&v298, &qword_1EDBB65B8, &unk_1EDBB65C0);
        v301 = 0u;
        v302 = 0u;
        v303 = 0;
      }

      sub_1D7E2739C(&v301, &qword_1EDBB93D8, &qword_1EDBB93E0);
      v205 = v271;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v205, 0, 1, v19);
      v206 = type metadata accessor for BlueprintBookmark();
      v207 = v274;
      __swift_storeEnumTagSinglePayload(v274, 1, 1, v206);
      v208 = v276;
      v209 = v281;
      __swift_storeEnumTagSinglePayload(v276, 1, 1, v281);
      v210 = v275;
      __swift_storeEnumTagSinglePayload(v275, 1, 1, v209);
      v211 = v269;
      v212 = v282;
      BlueprintPipelineUpdate.replacing(action:apply:validate:bookmark:before:after:)(v205, 0, 0, 0, 0, v207, v208, v210, v282, v269);
      v213 = *(v277 + 8);
      v214 = v210;
      v215 = v278;
      v213(v214, v278);
      v213(v208, v215);
      sub_1D807A408(v207);
      (*(v272 + 8))(v205, v273);
      sub_1D7E8A330(v212, v287, v286);
      (*(v284 + 8))(v212, v211);
      return sub_1D8022FD0(&v304);
  }
}

uint64_t sub_1D7E8E16C()
{

  return swift_deallocObject();
}

void sub_1D7E8E1A4()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_123_0();
  v1 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_20_19();
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  }

  v4 = v0 + v3;
  OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  v44 = v1;
  v45 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      if (*(v4 + 40))
      {
        v5 = v4 + 16;
        goto LABEL_10;
      }

      break;
    case 1u:
    case 3u:
      OUTLINED_FUNCTION_69_4();
      break;
    case 2u:
      OUTLINED_FUNCTION_69_4();
      if (*(v4 + 88))
      {
        v5 = v4 + 64;
        goto LABEL_10;
      }

      break;
    case 4u:
      v5 = v0 + v3;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      break;
    case 5u:

      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v11 = type metadata accessor for Blueprint();
      v12 = *(v11 + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v13 + 8))(v4 + v12);
      v42 = *(v11 + 60);
      OUTLINED_FUNCTION_29_15();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_42_11();
      OUTLINED_FUNCTION_1_1();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_20_25(WitnessTable);
      OUTLINED_FUNCTION_4_3();
      (*(v15 + 8))(v45 + v42);

      OUTLINED_FUNCTION_49_7();
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_52(v17);
      v47 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_8_40(v47, qword_1EDBB68A8);
      OUTLINED_FUNCTION_15_31(v18, MEMORY[0x1E69E6370]);
      OUTLINED_FUNCTION_28_16();
      __swift_destroy_boxed_opaque_existential_1Tm(v45 + v19);
      v4 = v0 + v3;
      goto LABEL_17;
    case 6u:

      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v20 = type metadata accessor for Blueprint();
      v21 = *(v20 + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v22 + 8))(v4 + v21);
      v43 = *(v20 + 60);
      v4 = OUTLINED_FUNCTION_29_15();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_42_11();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_18_26(v23);
      OUTLINED_FUNCTION_4_3();
      (*(v24 + 8))(v4 + v43);

      sub_1D7E0631C(255, &qword_1EDBBA670);
      v25 = OUTLINED_FUNCTION_41_10();
      __swift_destroy_boxed_opaque_existential_1Tm(v4 + *(v25 + 48));
      goto LABEL_21;
    case 7u:

      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v6 = type metadata accessor for Blueprint();
      v7 = *(v6 + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v8 + 8))(v4 + v7);
      v41 = *(v6 + 60);
      v4 = OUTLINED_FUNCTION_29_15();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_42_11();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_18_26(v9);
      OUTLINED_FUNCTION_4_3();
      (*(v10 + 8))(v4 + v41);
LABEL_17:

LABEL_21:
      v1 = v44;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_79_4();
  v26 = v4 + *(v1 + 60);
  type metadata accessor for BlueprintBookmark();
  switch(OUTLINED_FUNCTION_53_5())
  {
    case 0u:
      v27 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v27))
      {
        OUTLINED_FUNCTION_3_0();
        v28 = OUTLINED_FUNCTION_55_0();
        goto LABEL_27;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v29 = *(v30 + 8);
      v28 = v26;
LABEL_27:
      v29(v28);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  v31 = v4 + *(v1 + 64);

  if (*(v31 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31 + 16);
  }

  OUTLINED_FUNCTION_123_0();
  v32 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_72_6(*(v33 + 8));
  v34();
  v46 = *(v32 + 60);
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v35 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v37 = *(v36 + 8);
  v37(v31 + v46, v35);
  OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_59_5();
  if (*(v31 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31 + 16);
  }

  v38 = OUTLINED_FUNCTION_33_11();
  v39(v38);
  v40 = OUTLINED_FUNCTION_46_11();
  (v37)(v40);
  OUTLINED_FUNCTION_55_9();
  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

void sub_1D7E8E8D8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_35(*(v0 + 40), *(v0 + 16));
  v3 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_20_19();
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);

  v47 = v0;
  v6 = v0 + v5;
  OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  OUTLINED_FUNCTION_14();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_36_11();
  if (!(!v9 & v8))
  {
    switch(v7)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_40_10();
        goto LABEL_15;
      case 2:
        OUTLINED_FUNCTION_40_10();

        if (!*(v6 + 88))
        {
          break;
        }

        v10 = v6 + 64;
        goto LABEL_19;
      case 4:
        v10 = v6;
        goto LABEL_19;
      case 5:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v2 = type metadata accessor for Blueprint();
        v16 = *(v2 + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v17 + 8))(v6 + v16);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_42_11();
        OUTLINED_FUNCTION_1_1();
        WitnessTable = swift_getWitnessTable();
        OUTLINED_FUNCTION_20_25(WitnessTable);
        OUTLINED_FUNCTION_4_3();
        v19 = OUTLINED_FUNCTION_30_17();
        v20(v19);
        OUTLINED_FUNCTION_66_6();
        OUTLINED_FUNCTION_49_7();
        MEMORY[0x1EEE9AC00](v21);
        OUTLINED_FUNCTION_50_6();
        OUTLINED_FUNCTION_5_52(v22);
        v48 = sub_1D7E0631C(255, &qword_1EDBBA670);
        OUTLINED_FUNCTION_8_40(v48, qword_1EDBB68A8);
        OUTLINED_FUNCTION_15_31(v23, MEMORY[0x1E69E6370]);
        OUTLINED_FUNCTION_28_16();
        OUTLINED_FUNCTION_77_5(v24);
        goto LABEL_15;
      case 6:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v25 = *(type metadata accessor for Blueprint() + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v26 + 8))(v6 + v25);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        v2 = v1;
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_1();
        v27 = swift_getWitnessTable();
        OUTLINED_FUNCTION_14_31(v27);
        OUTLINED_FUNCTION_4_3();
        v28 = OUTLINED_FUNCTION_30_17();
        v29(v28);
        OUTLINED_FUNCTION_64_7();
        sub_1D7E0631C(255, &qword_1EDBBA670);
        v10 = v6 + *(OUTLINED_FUNCTION_54_4() + 48);
        goto LABEL_19;
      case 7:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v11 = *(type metadata accessor for Blueprint() + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v12 + 8))(v6 + v11);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        v2 = v1;
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_1();
        v13 = swift_getWitnessTable();
        OUTLINED_FUNCTION_14_31(v13);
        OUTLINED_FUNCTION_4_3();
        v14 = OUTLINED_FUNCTION_30_17();
        v15(v14);
LABEL_15:

        break;
      default:
        if (!*(v6 + 40))
        {
          break;
        }

        v10 = v6 + 16;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        break;
    }
  }

  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_61_6();
  switch(OUTLINED_FUNCTION_53_5())
  {
    case 0u:
      v30 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v30))
      {
        OUTLINED_FUNCTION_3_0();
        v31 = OUTLINED_FUNCTION_55_0();
        goto LABEL_25;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v32 = *(v33 + 8);
      v31 = v2;
LABEL_25:
      v32(v31);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  v45 = v6;
  v46 = v3;
  v34 = v6 + *(v3 + 64);

  if (*(v34 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v34 + 16);
  }

  OUTLINED_FUNCTION_123_0();
  v35 = type metadata accessor for Blueprint();
  v36 = *(v35 + 56);
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  v37 = OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_8();
  (*(v38 + 8))(v34 + v36, v37);
  v39 = *(v35 + 60);
  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v40 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v42 = *(v41 + 8);
  v42(v34 + v39, v40);
  OUTLINED_FUNCTION_66_6();
  v43 = v45 + *(v46 + 68);

  if (*(v43 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v43 + 16);
  }

  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_39_12();
  v44();
  v42(v43 + *(v35 + 60), v40);
  OUTLINED_FUNCTION_66_6();
  __swift_destroy_boxed_opaque_existential_1Tm(v47 + v39);

  OUTLINED_FUNCTION_58_7();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E8EFE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1D7E8F024()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_35(*(v0 + 40), *(v0 + 16));
  type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_20_19();
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);

  v6 = v0 + v5;
  OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  OUTLINED_FUNCTION_14();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_36_11();
  if (!(!v9 & v8))
  {
    switch(v7)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_40_10();
        goto LABEL_15;
      case 2:
        OUTLINED_FUNCTION_40_10();

        if (!*(v6 + 88))
        {
          break;
        }

        v10 = v6 + 64;
        goto LABEL_19;
      case 4:
        v10 = v6;
        goto LABEL_19;
      case 5:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v3 = type metadata accessor for Blueprint();
        v5 = *(v3 + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v16 + 8))(v6 + v5);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_42_11();
        OUTLINED_FUNCTION_1_1();
        WitnessTable = swift_getWitnessTable();
        OUTLINED_FUNCTION_20_25(WitnessTable);
        OUTLINED_FUNCTION_4_3();
        v18 = OUTLINED_FUNCTION_30_17();
        v19(v18);
        OUTLINED_FUNCTION_66_6();
        OUTLINED_FUNCTION_49_7();
        MEMORY[0x1EEE9AC00](v20);
        OUTLINED_FUNCTION_50_6();
        OUTLINED_FUNCTION_5_52(v21);
        v44 = sub_1D7E0631C(255, &qword_1EDBBA670);
        OUTLINED_FUNCTION_8_40(v44, qword_1EDBB68A8);
        OUTLINED_FUNCTION_15_31(v22, MEMORY[0x1E69E6370]);
        OUTLINED_FUNCTION_28_16();
        OUTLINED_FUNCTION_77_5(v23);
        goto LABEL_15;
      case 6:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v24 = *(type metadata accessor for Blueprint() + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v25 + 8))(v6 + v24);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        v5 = v1;
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        v3 = v2;
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_1();
        v26 = swift_getWitnessTable();
        OUTLINED_FUNCTION_14_31(v26);
        OUTLINED_FUNCTION_4_3();
        v27 = OUTLINED_FUNCTION_30_17();
        v28(v27);
        OUTLINED_FUNCTION_64_7();
        sub_1D7E0631C(255, &qword_1EDBBA670);
        v10 = v6 + *(OUTLINED_FUNCTION_54_4() + 48);
        goto LABEL_19;
      case 7:

        if (*(v6 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
        }

        OUTLINED_FUNCTION_7_51();
        v11 = *(type metadata accessor for Blueprint() + 56);
        OUTLINED_FUNCTION_10_44();
        type metadata accessor for BlueprintSection();
        OUTLINED_FUNCTION_4_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_11();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_33();
        OUTLINED_FUNCTION_4_3();
        (*(v12 + 8))(v6 + v11);
        OUTLINED_FUNCTION_17_23();
        OUTLINED_FUNCTION_43_11();
        v5 = v1;
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        v3 = v2;
        OUTLINED_FUNCTION_0_44();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_1();
        v13 = swift_getWitnessTable();
        OUTLINED_FUNCTION_14_31(v13);
        OUTLINED_FUNCTION_4_3();
        v14 = OUTLINED_FUNCTION_30_17();
        v15(v14);
LABEL_15:

        break;
      default:
        if (!*(v6 + 40))
        {
          break;
        }

        v10 = v6 + 16;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        break;
    }
  }

  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_61_6();
  switch(OUTLINED_FUNCTION_53_5())
  {
    case 0u:
      v29 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v29))
      {
        OUTLINED_FUNCTION_3_0();
        v30 = OUTLINED_FUNCTION_55_0();
        goto LABEL_25;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v31 = *(v32 + 8);
      v30 = v3;
LABEL_25:
      v31(v30);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_75_7();
  if (*(v5 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
  }

  OUTLINED_FUNCTION_123_0();
  v33 = type metadata accessor for Blueprint();
  v34 = *(v33 + 56);
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  v35 = OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_8();
  (*(v36 + 8))(v5 + v34, v35);
  v37 = *(v33 + 60);
  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v38 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v40 = *(v39 + 8);
  v40(v5 + v37, v38);
  OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_59_5();
  if (*(v5 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
  }

  OUTLINED_FUNCTION_35_14();
  v41 = OUTLINED_FUNCTION_33_11();
  v42(v41);
  v43 = OUTLINED_FUNCTION_46_11();
  (v40)(v43);
  OUTLINED_FUNCTION_55_9();

  OUTLINED_FUNCTION_58_7();
  OUTLINED_FUNCTION_100();
}

double BlueprintBookmarkManager.prepare(bookmark:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_66();
  static BlueprintBookmark.== infix(_:_:)(a1, v2);
  OUTLINED_FUNCTION_4_66();
  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    sub_1D7EB2030();
    swift_endAccess();
    OUTLINED_FUNCTION_3_91();
    sub_1D7EB2070(v19, v16, v7);
    v8 = v17;
    if (v17)
    {
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      BlueprintBookmarkManager.preparedContext()(v14);
      nullsub_1(v14);
      memcpy(v13, v14, sizeof(v13));
      (*(v9 + 16))(a1, v13, v8, v9);
      memcpy(v15, v13, sizeof(v15));
      OUTLINED_FUNCTION_0_159();
      sub_1D7E76F2C(v15, v10);
      OUTLINED_FUNCTION_1_115();
      sub_1D7E76F2C(v19, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      return result;
    }

    sub_1D7E76F2C(v19, sub_1D7EB20D0);
    sub_1D7E76F2C(v16, sub_1D7EB20D0);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t static BlueprintBookmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_1D7E2B634();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v18 = (v15 - v14 + *(v17 + 56));
  sub_1D7E2B108(a1, v15 - v14);
  sub_1D7E2B108(a2, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D7E2B108(v16, v9);
      OUTLINED_FUNCTION_2_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v24 = sub_1D818E994();
      OUTLINED_FUNCTION_8();
      v26 = *(v25 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        v27 = OUTLINED_FUNCTION_2_4();
        v26(v27);
        (v26)(v9, v24);
        goto LABEL_27;
      }

      (v26)(v9, v24);
      goto LABEL_24;
    case 2u:
      OUTLINED_FUNCTION_2_4();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_2_4();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_24;
      }

LABEL_13:
      sub_1D7E2BBA0(v18);
      goto LABEL_27;
    case 4u:
      sub_1D7E2B108(v16, v6);
      v20 = *v6;
      v19 = v6[1];
      OUTLINED_FUNCTION_2_4();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_24;
      }

      if (v20 != *v18 || v19 != v18[1])
      {
        v22 = sub_1D8192634();

        goto LABEL_28;
      }

      goto LABEL_27;
    case 5u:
      OUTLINED_FUNCTION_2_4();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 6u:
      OUTLINED_FUNCTION_2_4();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 7u:
      OUTLINED_FUNCTION_2_4();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    default:
      sub_1D7E2B108(v16, v12);
      OUTLINED_FUNCTION_2_4();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1D7E73334(v12);
LABEL_24:
        sub_1D7E2BBA0(v18);
        v22 = 0;
      }

      else
      {
        sub_1D7E73334(v18);
        sub_1D7E73334(v12);
LABEL_27:
        v22 = 1;
      }

LABEL_28:
      sub_1D7E2BBA0(v16);
      return v22 & 1;
  }
}

uint64_t sub_1D7E8FD58(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = v2;
  v71 = a1;
  v4 = *v2;
  sub_1D7E10320(0, &qword_1EDBBD088, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v63 - v6;
  v7 = v4[12];
  v8 = v4[10];
  v67 = v4[11];
  v68 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v65 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  v15 = sub_1D8190C74();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v22 = *(v3 + v4[16]);
  *(v20 - v19) = v22;
  (*(v17 + 104))(v20 - v19, *MEMORY[0x1E69E8020], v15);
  v23 = v22;
  LOBYTE(v22) = sub_1D8190CA4();
  result = (*(v17 + 8))(v21, v15);
  if (v22)
  {
    v25 = (*(AssociatedConformanceWitness + 32))(v8, AssociatedConformanceWitness);
    v27 = v26;
    v28 = sub_1D7E90420();
    v29 = sub_1D7E90458(v25, v27, v28);

    v63 = AssociatedConformanceWitness;
    v64 = v8;
    if (v29)
    {
      v30 = v71;
    }

    else
    {
      sub_1D7E0A1A8(0, qword_1EDBBC7E0);
      v31 = v71;
      (*(AssociatedConformanceWitness + 24))(v8, AssociatedConformanceWitness);
      swift_getAssociatedConformanceWitness();
      sub_1D8191294();
      (*(v65 + 8))(v14, AssociatedTypeWitness);
      v29 = sub_1D7E904C0();
      v30 = v31;
    }

    v32 = v70;
    v33 = sub_1D7E906A4(v69, v3, v30);
    if (v32)
    {
    }

    else
    {
      v34 = v33;
      sub_1D7E90BAC(v33);
      v35 = sub_1D8190D44();

      [v29 setUserInfo_];

      sub_1D7E91068(v34);
      sub_1D8191604();
      OUTLINED_FUNCTION_161();

      OUTLINED_FUNCTION_6_43(v36, sel_setRequiredUserInfoKeys_);

      v38 = v67;
      v37 = v68;
      v39 = OUTLINED_FUNCTION_2_72();
      v40(v39);
      sub_1D8190EE4();
      OUTLINED_FUNCTION_161();

      OUTLINED_FUNCTION_6_43(v41, sel_setTitle_);

      v42 = OUTLINED_FUNCTION_2_72();
      v44 = v43(v42);
      sub_1D7E919E0(v44);
      sub_1D8191604();
      OUTLINED_FUNCTION_161();

      OUTLINED_FUNCTION_6_43(v45, sel_setKeywords_);

      v46 = v66;
      (*(v37 + 40))(v30, v38, v37);
      v47 = sub_1D818E644();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v47);
      v49 = 0;
      if (EnumTagSinglePayload != 1)
      {
        v49 = sub_1D818E5C4();
        OUTLINED_FUNCTION_3_0();
        EnumTagSinglePayload = (*(v50 + 8))(v46, v47);
      }

      OUTLINED_FUNCTION_6_43(EnumTagSinglePayload, sel_setWebpageURL_);

      v51 = OUTLINED_FUNCTION_2_72();
      v53 = v52(v51);
      [v29 setContentAttributeSet_];

      v54 = OUTLINED_FUNCTION_2_72();
      v56 = v55(v54);
      v57 = v63;
      if (v58)
      {
        v59 = sub_1D8190EE4();
      }

      else
      {
        v59 = 0;
      }

      v60 = v64;
      OUTLINED_FUNCTION_6_43(v56, sel_setPersistentIdentifier_);

      v61 = (*(v57 + 40))(v60, v57);
      [v29 setEligibleForSearch_];
      [v29 setEligibleForHandoff_];
      [v29 setEligibleForPublicIndexing_];
      v62 = sub_1D7E3A3F4(3, v61);

      [v29 setEligibleForPrediction_];
      [v29 setNeedsSave_];
    }

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7E90470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = a4();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

id sub_1D7E904C0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D8190EE4();

  v2 = [v0 initWithActivityType_];

  return v2;
}

uint64_t UICollectionView.reload(apply:animated:completion:)(void (*a1)(void), uint64_t a2, char a3, void (*a4)(void))
{
  if ([v4 dataSource])
  {
    v8 = v4;
    v9 = sub_1D7E9075C(v8);
    v11 = v10;
    updated = TSAccessibilityBlockPostingOfUpdateElementVisualsNotifications();
    (a1)(updated);
    v13 = v8;
    sub_1D7E19F24(v9);
    sub_1D7E92CE0(a3 & 1, v13, v13, v9, v11);
    a4(0);
    sub_1D818EE14();
    sub_1D7E0E10C(v9);

    return swift_unknownObjectRelease();
  }

  else
  {
    a1();
    return (a4)(0);
  }
}

uint64_t sub_1D7E906A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 96);
  if (a1)
  {
    return (*(v3 + 64))(a3, a1, *(*a2 + 88));
  }

  else
  {
    return (*(v3 + 56))(a3, *(*a2 + 88), v3);
  }
}

uint64_t (*sub_1D7E9075C(void *a1))()
{
  if (UICollectionView.blueprintViewDataSource.getter())
  {
    v3 = v2;
    v4 = sub_1D7E90938(a1);
    if (v4)
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = (*(v3 + 72))(v5, ObjectType, v3);

      v8 = swift_allocObject();
      *(v8 + 24) = &protocol witness table for UICollectionView;
      swift_unknownObjectWeakInit();

      v9 = swift_allocObject();
      *(v9 + 24) = v3;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v9;
      v10[4] = v7;
      return sub_1D7E93434;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1D7E90894()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id UICollectionView.blueprintViewDataSource.getter()
{
  result = [v0 dataSource];
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v2);
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E90938(void *a1)
{
  v1 = [a1 indexPathsForSelectedItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D818E994();
  v3 = sub_1D8191314();

  return v3;
}

void sub_1D7E90998()
{
  OUTLINED_FUNCTION_120();
  v15 = v1;
  v16 = v2;
  v14 = v3;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v0;
  v7 = *(v6 + 0x70);
  v8 = *(v6 + 0x50);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10_8();
  v24 = AssociatedTypeWitness;
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_24();
  BlueprintProviderType.blueprint.getter(v8, v7);
  v17[2] = v8;
  v18 = *(v6 + 88);
  v19 = *((v5 & v4) + 0x68);
  v20 = v7;
  v21 = *(v6 + 120);
  v22 = *(v6 + 136);
  v23 = AssociatedTypeWitness;
  v16(v15, v17, v14);
  (*(v12 + 8))(AssociatedTypeWitness, v10);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E90BAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D7E90EF8();
    v2 = sub_1D8192444();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_1D8190DB4();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1D7E1B288(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_1D8190DB4();
    swift_dynamicCast();
    sub_1D7E1C664(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D7E1C664(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D7E1C664(v31, v32);
    result = sub_1D8192104();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
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
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1D7E1C664(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D7E90E90()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447E0](ObjectType);
}

void sub_1D7E90EF8()
{
  if (!qword_1EDBB2D28)
  {
    v0 = sub_1D8192454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D28);
    }
  }
}

void sub_1D7E90F5C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15_4(a1);
  v3 = 0;
  v15 = MEMORY[0x1DA713850](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_24();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v9 = v3;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      sub_1D8190DB4();
      sub_1D7E91548(v14, v12, v13);
    }

    while (v6);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v6 = *(v1 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1D7E9106C(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(sub_1D818E994() - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v17, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    v11 = v18;
    ++v6;
    if (v18)
    {
      v19 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7E2D320();
        v8 = v15;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1D7E2D320();
        v13 = v12 + 1;
        v8 = v16;
      }

      *(v8 + 16) = v13;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v19;
      *(v14 + 40) = v11;
      v6 = v10;
    }
  }
}

void PresentationOperationManager.sceneDidBecomeActive(with:sourceApplication:sceneID:)()
{
  v1 = v0;
  if (qword_1EDBBC3C8 != -1)
  {
    OUTLINED_FUNCTION_2_62();
  }

  v2 = sub_1D818FE34();
  v3 = __swift_project_value_buffer(v2, qword_1EDBC6120);
  v4 = sub_1D818FE14();
  v5 = sub_1D81919E4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_8_26();
    *v6 = 0;
    _os_log_impl(&dword_1D7DFF000, v4, v5, "Presentation Operation Manager detected scene becoming active.", v6, 2u);
    OUTLINED_FUNCTION_38();
  }

  if (*(v1 + 217))
  {
    v7 = sub_1D818FE14();
    v8 = sub_1D81919E4();
    if (OUTLINED_FUNCTION_4_39(v8))
    {
      *OUTLINED_FUNCTION_8_26() = 0;
      OUTLINED_FUNCTION_3_57(&dword_1D7DFF000, v9, v10, "Presentation Operation Manager treating scene activation as app launch.");
      OUTLINED_FUNCTION_38();
    }

    sub_1D7E17F64();
    return;
  }

  if (*(v1 + 216) == 1)
  {
    sub_1D818F154();
    if (v26)
    {
      sub_1D7E64CF4(0);
LABEL_27:
      *(v1 + 216) = 0;
      return;
    }

    swift_beginAccess();
    v13 = *(v1 + 40);
    if (v13[2])
    {
      v14 = v13[6];
      v15 = v13[7];
      sub_1D8190DB4();
      sub_1D8190DB4();
      v16 = sub_1D818FE14();
      v17 = sub_1D81919E4();
      if (!OUTLINED_FUNCTION_4_39(v17))
      {

        goto LABEL_26;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;

      v20 = sub_1D7E1C3D8(v14, v15, &v25);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1D7DFF000, v16, v3, "Scene became active while operation (%s) is in progress. A new processing session will not be initiated.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v16 = sub_1D818FE14();
      v21 = sub_1D81919E4();
      if (!OUTLINED_FUNCTION_4_39(v21))
      {
LABEL_26:

        goto LABEL_27;
      }

      *OUTLINED_FUNCTION_8_26() = 0;
      OUTLINED_FUNCTION_3_57(&dword_1D7DFF000, v22, v23, "Scene became active while an operation with a currently unknown UID is in progress. A new processing session will not be initiated.");
    }

    OUTLINED_FUNCTION_38();
    goto LABEL_26;
  }

  oslog = sub_1D818FE14();
  v11 = sub_1D81919E4();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = OUTLINED_FUNCTION_8_26();
    *v12 = 0;
    _os_log_impl(&dword_1D7DFF000, oslog, v11, "We have yet to enter the background so this scene activation cannot be treated as an app launch.", v12, 2u);
    OUTLINED_FUNCTION_38();
  }
}

uint64_t sub_1D7E91684()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_27_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_139_2();
  v4 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_15_15(v4);
  v7 = *(v6 + 64);
  v8 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v9 = type metadata accessor for BlueprintPipelineProcessingResult();
  OUTLINED_FUNCTION_50(v9);
  v11 = v0[6];
  v12 = v0 + ((v8 + v7 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1D7E91A9C(v11, v0 + v8, v12, v1, v2, v3);
}

void sub_1D7E917F8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D7EAF62C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1D7EAF3D4();
LABEL_10:
      v15 = *v4;
      sub_1D81927E4();
      sub_1D8190FF4();
      v16 = sub_1D8192824();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (sub_1D8192634() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1D7F5C484(a1);
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1D8192704();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1D7E91960()
{
  swift_getObjectType();

  return sub_1D818F414();
}

uint64_t sub_1D7E919E0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15_4(a1);
  result = MEMORY[0x1DA713850](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v4 = 0;
  v10 = result;
  v5 = *(v1 + 16);
  for (i = (v1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;
    sub_1D8190DB4();
    sub_1D7E91548(v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7E91A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v9 + 16))(v11, Strong + *(*Strong + 120), a4);

    (*(a6 + 48))(a4, a6);
    (*(v9 + 8))(v11, a4);
    sub_1D818F124();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v24[1] = AssociatedTypeWitness;
  v24[2] = v14;
  v24[3] = AssociatedConformanceWitness;
  v24[4] = v16;
  result = type metadata accessor for BlueprintPipelineProcessingResult();
  v18 = *(a3 + *(result + 52));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 56;
    do
    {
      v21 = *(v20 - 24);
      v22 = *(v20 - 8);

      v23 = sub_1D7E19F24(v22);
      v21(v23);

      result = sub_1D7E0E10C(v22);
      v20 += 32;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_1D7E91D08()
{
  type metadata accessor for Blueprint();

  return sub_1D7E91DE0();
}

unint64_t sub_1D7E91E54()
{
  result = qword_1EDBBCB28[0];
  if (!qword_1EDBBCB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBBCB28);
  }

  return result;
}

uint64_t sub_1D7E91EBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D7E91FA0(a2);
  }

  return result;
}

uint64_t sub_1D7E91F50(void *a1)
{
  v1 = a1;

  sub_1D818FA54();
}

uint64_t sub_1D7E91FA0(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v36 = *v6;
  v37 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = (v18 - v17);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v19 = sub_1D8191AB4();
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v13);
  v20 = sub_1D8190CA4();
  result = (*(v15 + 8))(v19, v13);
  if (v20)
  {
    swift_weakLoadStrong();
    OUTLINED_FUNCTION_3_52();
    *(v2 + *(v22 + 128)) = v23;

    OUTLINED_FUNCTION_3_52();
    *(v2 + *(v24 + 120)) = v3;

    OUTLINED_FUNCTION_3_52();
    memcpy(v40, v3 + 80, sizeof(v40));
    memcpy(v39, v3 + 80, 0x4E8uLL);

    sub_1D7E6755C(v40, v41);
    sub_1D818F124();

    memcpy(v41, v39, sizeof(v41));
    sub_1D7E598FC(v41);
    OUTLINED_FUNCTION_3_52();
    (*(*(v5 + 88) + 48))(*(v5 + 80));
    v25 = *(v36 + 96);
    v39[0] = *(v36 + 80);
    v39[1] = v25;
    type metadata accessor for BlueprintLayout();
    OUTLINED_FUNCTION_0_2();
    sub_1D818F124();

    v26 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v26 + 16))(ObjectType, v26);
    memcpy(v42, v3 + 237, 0x235uLL);
    sub_1D7E222B8(v42, v39);
    sub_1D818E784();
    v28 = sub_1D818E764();
    v30 = v29;
    (*(v8 + 8))(v12, v37);
    memcpy(&v43[2], v42, 0x235uLL);
    v43[0] = v28;
    v43[1] = v30;
    nullsub_1(v43);
    memcpy(v38, v43, sizeof(v38));
    sub_1D818F124();

    memcpy(v39, v38, 0x245uLL);
    result = sub_1D7E925D0(v39, &qword_1EDBB65A0);
    v31 = v3[308];
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v31 + 40;
      do
      {
        v34 = *(v33 - 8);

        v34(v35);

        v33 += 16;
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7E923F8()
{
  OUTLINED_FUNCTION_144();
  v4 = OUTLINED_FUNCTION_10_11(v2, v3);
  sub_1D7E11428(v4, v5);
  OUTLINED_FUNCTION_4_10();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_108();
  sub_1D7E17BB8(0, qword_1EDBB2DC0);
  v7 = OUTLINED_FUNCTION_40();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_41_1();
    sub_1D7E11428(v11, v12);
    OUTLINED_FUNCTION_26_1();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_46_0(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_139();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_30_5();
    sub_1D7E146E8(v16);
    OUTLINED_FUNCTION_139();

    sub_1D8190DB4();
  }
}

uint64_t sub_1D7E924F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 568) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 580) = 0;
    *(result + 576) = 0;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 581) = 1;
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

    *(result + 581) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7E925D0(uint64_t a1, unint64_t *a2)
{
  sub_1D7E09D14(0, a2);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E92620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(a1);
  return a1;
}

void sub_1D7E926A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v9 becomeCurrent];
  if (qword_1EDBBC3C0 != -1)
  {
    swift_once();
  }

  v10 = sub_1D818FE34();
  __swift_project_value_buffer(v10, qword_1EDBC6108);
  (*(v5 + 16))(v8, a2, a3);
  v11 = sub_1D818FE14();
  v12 = sub_1D81919E4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 32))(a3, AssociatedConformanceWitness);
    v18 = v17;
    (*(v5 + 8))(v8, a3);
    v19 = sub_1D7E1C3D8(v16, v18, &v21);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D7DFF000, v11, v12, "User activity did become current, identifier=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA715D00](v14, -1, -1);
    MEMORY[0x1DA715D00](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, a3);
  }
}

uint64_t sub_1D7E92920(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1D818E8B4();
  OUTLINED_FUNCTION_9();
  v50 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23();
  v48 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v49 = v43 - v19;
  v20 = [a1 collectionViewLayout];
  [v20 invalidateLayout];

  [a1 reloadData];
  v21 = [a1 indexPathsForVisibleItems];
  v53 = v6;
  v22 = sub_1D8191314();

  v23 = *(v22 + 16);
  if (v23)
  {
    v44 = v13;
    v45 = a1;
    v46 = a3;
    v47 = a2;
    v55 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E94(0, v23, 0);
    v24 = v55;
    v26 = *(v8 + 16);
    v25 = v8 + 16;
    v27 = *(v25 + 64);
    v43[1] = v22;
    v28 = v22 + ((v27 + 32) & ~v27);
    v51 = *(v25 + 56);
    v52 = v26;
    v29 = (v25 - 8);
    do
    {
      v30 = v53;
      v52(v12, v28, v53);
      v31 = sub_1D818E974();
      (*v29)(v12, v30);
      v55 = v24;
      v33 = v24[2];
      v32 = v24[3];
      if (v33 >= v32 >> 1)
      {
        v34 = OUTLINED_FUNCTION_2_10(v32);
        sub_1D7F08E94(v34, v33 + 1, 1);
        v24 = v55;
      }

      v24[2] = v33 + 1;
      v24[v33 + 4] = v31;
      v28 += v51;
      --v23;
    }

    while (v23);

    a2 = v47;
    v13 = v44;
    a1 = v45;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7E2DAB8(&qword_1EDBBC6D8, MEMORY[0x1E6969B50]);
  v35 = v48;
  sub_1D8191FF4();
  v36 = v24[2];
  if (v36)
  {
    v37 = v24 + 4;
    do
    {
      v38 = *v37++;
      v54 = v38;
      sub_1D8191FD4();
      --v36;
    }

    while (v36);
  }

  v40 = v49;
  v39 = v50;
  (*(v50 + 32))(v49, v35, v13);
  if ((sub_1D818E874() & 1) == 0)
  {
    v41 = sub_1D818E814();
    [a1 reloadSections_];
  }

  if (a2)
  {
    a2();
  }

  return (*(v39 + 8))(v40, v13);
}

uint64_t sub_1D7E92CE0(char a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  if (a1)
  {
    sub_1D7E92920(a3, a4, a5);

    return sub_1D7E418F4(a4, a5);
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D80876A0;
  *(v9 + 24) = v13;
  v17 = sub_1D7EA8F68;
  v18 = v9;
  OUTLINED_FUNCTION_1_118();
  OUTLINED_FUNCTION_0_165();
  v15 = v10;
  v16 = &block_descriptor_7;
  v11 = _Block_copy(aBlock);

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v8) = OUTLINED_FUNCTION_2_108();

  if ((v8 & 1) == 0)
  {
    return sub_1D7E418F4(a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t BlueprintPipeline.modifyPromise<A>(with:)(uint64_t a1)
{
  OUTLINED_FUNCTION_59_4(a1, &qword_1EDBBC3F8, &type metadata for BlueprintPipelinePromiseResult);
  OUTLINED_FUNCTION_8_5();
  return sub_1D818FBA4();
}

uint64_t sub_1D7E92F40(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190F14();
  sub_1D818E924();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(v13, v12);

  return (*(v8 + 8))(v10, v7);
}

void BlueprintCollectionViewDelegate.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_7();
  v5 = *(v4 + 224);
  OUTLINED_FUNCTION_10();
  v6 = *(v2 + v5);
  if (v6)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2))
    {
      v8 = v7;
      v9 = v6;
      v10 = a2;
      OUTLINED_FUNCTION_85();
      BlueprintViewportMonitor.remove(observer:)();
      ObjectType = swift_getObjectType();
      (*(v8 + 72))(v9, ObjectType, v8);
    }
  }
}

uint64_t sub_1D7E93154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  BlueprintPipeline.modify<A>(with:completion:)();
}

void sub_1D7E93228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(a1 + 24);
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 80))(a3, ObjectType, v14);
      v17 = *(v16 + 16);
      if (v17)
      {
        v25[1] = v13;
        v18 = swift_getObjectType();
        v26 = *(v11 + 184);
        v27 = v18;
        v19 = sub_1D818E994();
        v20 = *(v19 - 8);
        v21 = *(v20 + 16);
        v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v25[0] = v16;
        v23 = v16 + v22;
        v24 = *(v20 + 72);
        do
        {
          v21(v8, v23, v19);
          __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
          v26(v8, 0, v27, v11);
          sub_1D7E73334(v8);
          v23 += v24;
          --v17;
        }

        while (v17);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7E93468(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33[3] = a2;
  sub_1D7E1ACFC(0, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23();
  v32 = v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v27 - v13;
  v29 = v14;
  v15 = *(a3 + 16);
  v31 = (v14 + 32);
  v16 = (a3 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  v30 = a1;
  if (v15)
  {
    while (1)
    {
      v18 = *v16;
      v33[0] = *(v16 - 1);
      v33[1] = v18;
      sub_1D8190DB4();
      a1(v33);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1D7FE5400(v8, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
      }

      else
      {
        v19 = v9;
        v20 = *v31;
        v21 = v28;
        (*v31)(v28, v8, v19);
        v20(v32, v21, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EAEB70(0, *(v17 + 16) + 1, 1, v17);
          v17 = v24;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D7EAEB70(v22 > 1, v23 + 1, 1, v17);
          v17 = v25;
        }

        *(v17 + 16) = v23 + 1;
        v20((v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23), v32, v19);
        v9 = v19;
        a1 = v30;
      }

      v16 += 2;
      if (!--v15)
      {
        return v17;
      }
    }
  }

  return v17;
}

uint64_t sub_1D7E93734()
{
  OUTLINED_FUNCTION_66_0();
  v3 = *(v1 + 32);
  v9 = *(v1 + 16);
  v10 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_25_14();
  return v0(v2, *(v1 + 64), v1 + v6, v1 + v7, *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), v9, *(&v9 + 1), v3, v10, *(&v10 + 1), v4);
}

uint64_t sub_1D7E93834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D7E2657C(Strong + 40, v14, &qword_1EDBB65A8, &qword_1EDBB65B0);

    v10 = v15;
    if (v15)
    {
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v12 = type metadata accessor for BlueprintPipelineUpdate();
      (*(v11 + 32))(a3 + *(v12 + 60), a4, v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      sub_1D7E2739C(v14, &qword_1EDBB65A8, &qword_1EDBB65B0);
    }
  }

  return a5(a1);
}

uint64_t BlueprintBookmarkManager.apply(bookmark:preparedContext:)(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_66();
  static BlueprintBookmark.== infix(_:_:)(a1, v3);
  result = OUTLINED_FUNCTION_4_66();
  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    sub_1D7EB2030();
    swift_endAccess();
    v10 = [objc_opt_self() defaultCenter];
    v11 = sub_1D8190EE4();
    [v10 postNotificationName:v11 object:0];

    OUTLINED_FUNCTION_3_91();
    sub_1D7EB2070(v26, v23, v12);
    v13 = v24;
    if (v24)
    {
      v14 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      memcpy(v21, (v5 + 32), sizeof(v21));
      memcpy(v20, (v5 + 32), sizeof(v20));
      v15 = *(v14 + 24);
      sub_1D7EB2070(v21, v22, sub_1D7E7701C);
      v15(a1, v20, a2, v13, v14);
      memcpy(v22, v20, sizeof(v22));
      OUTLINED_FUNCTION_0_159();
      sub_1D7E76F2C(v22, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    else
    {
      OUTLINED_FUNCTION_1_115();
      sub_1D7E76F2C(v23, v17);
    }

    sub_1D7E262C4(v21);
    memcpy(v22, (v5 + 32), sizeof(v22));
    memcpy((v5 + 32), v21, 0x80uLL);
    OUTLINED_FUNCTION_0_159();
    sub_1D7E76F2C(v22, v18);
    sub_1D818FD04();
    OUTLINED_FUNCTION_1_115();
    return sub_1D7E76F2C(v26, v19);
  }

  return result;
}

uint64_t sub_1D7E93C08(void *a1)
{
  sub_1D7E8A2B4();

  return sub_1D7E93C78(a1);
}

uint64_t sub_1D7E93C78(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1D7E8A2B4();
    return sub_1D81914E4();
  }

  else
  {
    sub_1D7E8A2B4();
    return sub_1D81914F4();
  }
}

uint64_t objectdestroy_34Tm()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t objectdestroy_48Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void objectdestroy_48Tm_0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_35(*(v0 + 40), *(v0 + 16));
  v1 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_20_19();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = v0 + v3;
  OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  v44 = v1;
  v45 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      if (*(v6 + 40))
      {
        v7 = v6 + 16;
        goto LABEL_8;
      }

      break;
    case 1u:
    case 3u:
      OUTLINED_FUNCTION_69_4();
      break;
    case 2u:
      OUTLINED_FUNCTION_69_4();
      if (*(v6 + 88))
      {
        v7 = v6 + 64;
        goto LABEL_8;
      }

      break;
    case 4u:
      v7 = v0 + v3;
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      break;
    case 5u:
      v43 = v5;

      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v12 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v13 + 8))(v6 + v12);
      OUTLINED_FUNCTION_17_23();
      type metadata accessor for BlueprintItem();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_23_16();
      OUTLINED_FUNCTION_123_0();
      sub_1D818F784();
      OUTLINED_FUNCTION_4_3();
      (*(v14 + 8))(v45 + v41);

      MEMORY[0x1EEE9AC00](v15);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_52(v16);
      v46 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_8_40(v46, qword_1EDBB68A8);
      v18 = OUTLINED_FUNCTION_15_31(v17, MEMORY[0x1E69E6370]);
      __swift_destroy_boxed_opaque_existential_1Tm(v45 + *(v18 + 48));
      v6 = v0 + v3;
      goto LABEL_15;
    case 6u:
      v43 = v5;

      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v19 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v20 + 8))(v6 + v19);
      OUTLINED_FUNCTION_17_23();
      v6 = type metadata accessor for BlueprintItem();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_18_26(v21);
      OUTLINED_FUNCTION_4_3();
      (*(v22 + 8))(v6 + v41);

      sub_1D7E0631C(255, &qword_1EDBBA670);
      v23 = OUTLINED_FUNCTION_41_10();
      __swift_destroy_boxed_opaque_existential_1Tm(v6 + *(v23 + 48));
      goto LABEL_19;
    case 7u:
      v43 = v5;

      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v8 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v9 + 8))(v6 + v8);
      OUTLINED_FUNCTION_17_23();
      v6 = type metadata accessor for BlueprintItem();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_18_26(v10);
      OUTLINED_FUNCTION_4_3();
      (*(v11 + 8))(v6 + v41);
LABEL_15:

LABEL_19:
      v1 = v44;
      v5 = v43;
      break;
    default:
      break;
  }

  v24 = v5 + v3;
  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_79_4();
  v25 = v6 + *(v1 + 60);
  type metadata accessor for BlueprintBookmark();
  switch(OUTLINED_FUNCTION_53_5())
  {
    case 0u:
      v26 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v26))
      {
        OUTLINED_FUNCTION_3_0();
        v27 = OUTLINED_FUNCTION_55_0();
        goto LABEL_25;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v28 = *(v29 + 8);
      v27 = v25;
LABEL_25:
      v28(v27);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  v30 = v24 + 7;
  v31 = v6 + *(v1 + 64);

  if (*(v31 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31 + 16);
  }

  v42 = v30 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_123_0();
  v32 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_72_6(*(v33 + 8));
  v34();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v35 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v37 = *(v36 + 8);
  v38 = OUTLINED_FUNCTION_47_10();
  v37(v38);
  OUTLINED_FUNCTION_65_7();
  v39 = v45 + *(v44 + 68);

  if (*(v39 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v39 + 16);
  }

  OUTLINED_FUNCTION_39_12();
  v40();
  (v37)(v39 + *(v32 + 60), v35);
  OUTLINED_FUNCTION_65_7();
  if (*(v0 + v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v42);
  }

  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E94540()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v3 = v2;
  v2[12] = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D80790AC;
  }

  else
  {

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D7E94658;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D7E94658()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);

  sub_1D7E946C0(v1);
  OUTLINED_FUNCTION_10_6();

  return v2();
}

uint64_t sub_1D7E94724()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  OUTLINED_FUNCTION_10_6();

  return v3();
}

uint64_t sub_1D7E94808()
{
  OUTLINED_FUNCTION_9_14();
  v2 = *v1;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 232) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_1D80207F8;
  }

  else
  {
    v7 = sub_1D7E94938;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D7E94938()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);

  (*(v4 + 16))(v2, v1, v3);
  v5 = OUTLINED_FUNCTION_112();
  v6(v5);
  OUTLINED_FUNCTION_87_0();
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    **(v0 + 80) = 0;
  }

  else
  {
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    **(v0 + 80) = 1;
    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_112_2();

  OUTLINED_FUNCTION_5_37();

  return v10();
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1D7E94A54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_93();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D7E94B4C()
{
  v1 = *(v0 + 120);
  CACurrentMediaTime();
  OUTLINED_FUNCTION_119_2();
  v21 = v2;
  sub_1D81921A4();
  *(v0 + 32) = 0;
  *(v0 + 40) = v21;
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_142_0();

  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_118_2();
  v3 = OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_56_5(v3, *(v0 + 32));

  sub_1D818FD94();
  OUTLINED_FUNCTION_115_2();
  sub_1D8191B24();
  if (sub_1D8191E34())
  {
    v4 = *(v0 + 216);
    if ((*(v0 + 274) & 1) == 0)
    {
      if (v4)
      {
LABEL_8:

        sub_1D818FE04();

        v6 = OUTLINED_FUNCTION_55_0();
        if (v7(v6) != *MEMORY[0x1E69E93E8])
        {
          (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
        }

        v8 = OUTLINED_FUNCTION_8_26();
        OUTLINED_FUNCTION_138_2(v8);
        OUTLINED_FUNCTION_47_7();
        _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v14, v15, 2u);
        OUTLINED_FUNCTION_77_0();
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v4))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_87_1();
      if (v5)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v4 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v16 = *(v0 + 232);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 96);

  v16(v17, v18);
  *v19 = *(v0 + 48);

  OUTLINED_FUNCTION_5_37();

  v20();
}

unint64_t BlueprintModifierTrait.description.getter()
{
  result = 0x754D617461446F6ELL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      v2 = 10;
      goto LABEL_8;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      v2 = 11;
LABEL_8:
      result = v2 | 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

void OUTLINED_FUNCTION_142_0()
{

  JUMPOUT(0x1DA713260);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI23BlueprintPipelineResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 OUTLINED_FUNCTION_138(__n128 *a1)
{
  result = *(v2 - 224);
  a1[1] = result;
  *(v2 - 120) = 0;
  *(v2 - 112) = 0xE000000000000000;
  *(v2 - 152) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_0()
{

  return BlueprintProviderType.blueprint.getter(v1, v0);
}

uint64_t OUTLINED_FUNCTION_138_1()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_138_2(_WORD *a1)
{
  *a1 = 0;

  return sub_1D818FD74();
}

uint64_t sub_1D7E94F7C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D7E9507C()
{
  OUTLINED_FUNCTION_9_14();
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = OUTLINED_FUNCTION_112();
  v2(v1);

  OUTLINED_FUNCTION_5_37();

  return v3();
}

uint64_t objectdestroy_14Tm()
{

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_0()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_1()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7E95210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  *(v18 + 24) = a9;
  *(v18 + 40) = a10;
  *(v18 + 48) = a2;
  *(v18 + 56) = v16;
  *(v18 + 64) = v17;
  *(v18 + 72) = a3;
  *(v18 + 80) = a4;
  *(v18 + 88) = a5;
  *(v18 + 96) = a6;
  *(v18 + 104) = a7;

  sub_1D7E95388(v16, v17);

  sub_1D7E19F24(a4);

  sub_1D818FD04();
}

uint64_t sub_1D7E95324()
{

  sub_1D7E98808(*(v0 + 56), *(v0 + 64));

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

id sub_1D7E95388(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1D7E95C90(a1);
  }
}

uint64_t sub_1D7E95394(uint64_t a1, void *a2, char a3, uint64_t a4, void (*a5)(unsigned __int8 *), uint64_t a6, uint64_t (*a7)(void *))
{
  sub_1D7E95504(a2, a3 & 1);
  if (a3)
  {
    return a7(a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = a2;
    sub_1D7E95D04(&v12, a5);
  }

  return result;
}

void sub_1D7E95504(void *a1, char a2)
{
  v22 = a1;
  v23 = a2 & 1;
  CACurrentMediaTime();
  v3 = *(v2 + 24);
  os_unfair_lock_lock((v3 + 24));
  sub_1D7E95C70((v3 + 16), &v20);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v20;
  v5 = v22;
  if (v23)
  {
    sub_1D7E95388(v22, 1);
    if (static BlueprintPipelineError.isCancelled(error:)(v5))
    {
      v6 = sub_1D81919A4();
    }

    else
    {
      v6 = sub_1D81919C4();
    }

    v14 = v6;
    v20 = v4;
    sub_1D7E52438(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D7E1B6BC();
    v15 = sub_1D8190E94();
    v17 = v16;

    v20 = v15;
    v21 = v17;
    v18 = sub_1D8191114();
    sub_1D7E51B50(11, v14, v18, v19);
    sub_1D7E98808(v5, 1);
  }

  else
  {
    sub_1D7E95388(v22, 0);
    sub_1D7E52438(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D7E1B6BC();
    v7 = sub_1D8190E94();
    v9 = v8;

    v20 = v7;
    v21 = v9;
    v10 = sub_1D8191114();
    v12 = v11;
    v13 = sub_1D81919E4();
    sub_1D7E51B50(11, v13, v10, v12);

    sub_1D7E95CA0(v5);
  }
}

uint64_t sub_1D7E9573C(uint64_t *a1, void *a2, char a3, uint64_t a4, Swift::Double a5)
{
  if (a3)
  {
    sub_1D7E95388(a2, 1);
    if (static BlueprintPipelineError.isCancelled(error:)(a2))
    {
      sub_1D7E2D320();
      v10 = v9;
      v11 = *(v9 + 16);
      if (v11 >= *(v9 + 24) >> 1)
      {
        sub_1D7E2D320();
        v10 = v52;
      }

      sub_1D7E98808(a2, 1);
      *(v10 + 16) = v11 + 1;
      v12 = v10 + 16 * v11;
      strcpy((v12 + 32), "cancelled=true");
      *(v12 + 47) = -18;
    }

    else
    {
      MEMORY[0x1DA713260](0x3D726F727265, 0xE600000000000000);
      sub_1D7E0631C(0, &qword_1EDBB2BC0);
      sub_1D8192334();
      sub_1D7E2D320();
      v10 = v13;
      v14 = *(v13 + 16);
      if (v14 >= *(v13 + 24) >> 1)
      {
        sub_1D7E2D320();
        v10 = v53;
      }

      sub_1D7E98808(a2, 1);
      *(v10 + 16) = v14 + 1;
      v15 = v10 + 16 * v14;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0xE000000000000000;
    }
  }

  else
  {
    sub_1D7E95388(a2, 0);
    sub_1D7E95CA0(a2);
    v10 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(a4 + 16);
  countAndFlagsBits = BlueprintPipelineRecorder.format(start:end:)(v16, a5)._countAndFlagsBits;
  MEMORY[0x1DA713260](countAndFlagsBits);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D7E2D320();
    v10 = v49;
  }

  v18 = *(v10 + 16);
  if (v18 >= *(v10 + 24) >> 1)
  {
    sub_1D7E2D320();
    v10 = v50;
  }

  *(v10 + 16) = v18 + 1;
  v19 = v10 + 16 * v18;
  *(v19 + 32) = 0x3D6C61746F74;
  *(v19 + 40) = 0xE600000000000000;
  v20 = *a1;
  v21 = sub_1D7E95CB0(1, v20);
  if ((v22 & 1) == 0)
  {
    v23 = *&v21;
    v24 = BlueprintPipelineRecorder.format(start:end:)(v16, *&v21)._countAndFlagsBits;
    MEMORY[0x1DA713260](v24);

    v25 = *(v10 + 16);
    if (v25 >= *(v10 + 24) >> 1)
    {
      sub_1D7E2D320();
      v10 = v51;
    }

    *(v10 + 16) = v25 + 1;
    v26 = v10 + 16 * v25;
    *(v26 + 32) = 0x3D646575657571;
    *(v26 + 40) = 0xE700000000000000;
    v27 = sub_1D7E95CB0(2, v20);
    if ((v28 & 1) == 0)
    {
      v29 = BlueprintPipelineRecorder.format(start:end:)(v23, *&v27)._countAndFlagsBits;
      MEMORY[0x1DA713260](v29);

      v30 = *(v10 + 16);
      if (v30 >= *(v10 + 24) >> 1)
      {
        sub_1D7E2D320();
        v10 = v54;
      }

      *(v10 + 16) = v30 + 1;
      v31 = v10 + 16 * v30;
      *(v31 + 32) = 0x3D796669646F6DLL;
      *(v31 + 40) = 0xE700000000000000;
      v32 = sub_1D7E95CB0(3, v20);
      if ((v33 & 1) == 0)
      {
        v34 = *&v32;
        v35 = sub_1D7E95CB0(4, v20);
        if ((v36 & 1) == 0)
        {
          v37 = BlueprintPipelineRecorder.format(start:end:)(v34, *&v35)._countAndFlagsBits;
          MEMORY[0x1DA713260](v37);

          v38 = *(v10 + 16);
          if (v38 >= *(v10 + 24) >> 1)
          {
            sub_1D7E2D320();
            v10 = v55;
          }

          *(v10 + 16) = v38 + 1;
          v39 = v10 + 16 * v38;
          *(v39 + 32) = 0x3D737365636F7270;
          *(v39 + 40) = 0xE800000000000000;
          v40 = sub_1D7E95CB0(9, v20);
          if ((v41 & 1) == 0)
          {
            v42 = *&v40;
            v43 = sub_1D7E95CB0(10, v20);
            if ((v44 & 1) == 0)
            {
              v45 = BlueprintPipelineRecorder.format(start:end:)(v42, *&v43)._countAndFlagsBits;
              MEMORY[0x1DA713260](v45);

              v46 = *(v10 + 16);
              if (v46 >= *(v10 + 24) >> 1)
              {
                sub_1D7E2D320();
                v10 = v56;
              }

              *(v10 + 16) = v46 + 1;
              v47 = v10 + 16 * v46;
              *(v47 + 32) = 0x7461726765746E69;
              *(v47 + 40) = 0xEA00000000003D65;
            }
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_1D7E95C34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, Swift::Double a5@<D0>)
{
  result = sub_1D7E9573C(a1, *a2, *(a2 + 8), a3, a5);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

id sub_1D7E95C90(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1D7E95CA0(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1D7E95CB0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E55F74(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_3_19(v2);
  }

  else
  {
    return 0;
  }
}

void *sub_1D7E95D04(uint64_t *a1, void (*a2)(unsigned __int8 *))
{
  v3 = *v2;
  v4 = *v2;
  v5 = *a1;
  if (a2)
  {
    *v17 = *a1;
    a2(v17);
    v3 = *v2;
  }

  if (v5 == 1)
  {
    (*(v4[12] + 48))(v4[10]);
    sub_1D818F114();

    v3 = *v2;
  }

  v6 = v3[19];
  v7 = *(v2 + v6);
  v8 = v4[12];
  v9 = v4[10];
  result = (*(v8 + 56))(v17, v9, v8);
  v11 = v17[0];
  *(v2 + v6) = v17[0];
  if (!v7)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v12 = v2[3];
    ObjectType = swift_getObjectType();
    v16 = 0;
    goto LABEL_16;
  }

  if (v7 == 1)
  {
    if (v11 == 2)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v12 = v2[3];
        ObjectType = swift_getObjectType();
        v14 = 1;
LABEL_15:
        v16 = v14;
LABEL_16:
        v15 = *(v2 + v6);
        (*(v12 + 8))(v2, &v16, &v15, v9, v4[11], v8, v4[13], ObjectType, v12);
        return swift_unknownObjectRelease();
      }
    }
  }

  else if (v11 == 1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = v2[3];
      ObjectType = swift_getObjectType();
      v14 = 2;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t static BlueprintPrewarmState.State.finished(_:)()
{
  type metadata accessor for Blueprint();
  swift_getWitnessTable();
  return sub_1D8191874() & 1 | 0x4000000000000000;
}

void Blueprint.item(for:)()
{
  OUTLINED_FUNCTION_120();
  v29 = v2;
  v30 = v0;
  v31 = v3;
  v5 = *(v4 + 40);
  v32 = *(v4 + 16);
  OUTLINED_FUNCTION_34_20(*(v4 + 24));
  v35 = v5;
  v6 = type metadata accessor for BlueprintSection();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v27 = v8;
  v28 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  OUTLINED_FUNCTION_2();
  v26 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21_11();
  v14 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v19 = swift_getWitnessTable();
  v32 = v6;
  v33 = v14;
  v34 = WitnessTable;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  OUTLINED_FUNCTION_24_30(v19);
  OUTLINED_FUNCTION_14_0();
  sub_1D818F794();
  OUTLINED_FUNCTION_43_0(v11, 1, v6);
  if (v20)
  {
    (*(v27 + 8))(v11, v28);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v14);
  }

  else
  {
    v24 = v26;
    (*(v26 + 32))(v1, v11, v6);
    OUTLINED_FUNCTION_14_0();
    BlueprintSection.subscript.getter();
    (*(v24 + 8))(v1, v6);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintSection.subscript.getter()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  OUTLINED_FUNCTION_14_0();
  return sub_1D818F3A4();
}

void Blueprint.indexPath(forItem:)()
{
  OUTLINED_FUNCTION_120();
  v34 = v0;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 40);
  v36 = *(v3 + 16);
  OUTLINED_FUNCTION_34_20(*(v3 + 24));
  v39 = v7;
  v8 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_107();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v28 = v10;
  v29 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_2();
  v30 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v28 - v14;
  v33 = *(v4 + 60);
  OUTLINED_FUNCTION_25_19();
  v15 = type metadata accessor for BlueprintItem();
  v32 = v6;
  BlueprintItem.identifier.getter();
  OUTLINED_FUNCTION_7_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v20 = swift_getWitnessTable();
  v36 = v8;
  v37 = v15;
  v38 = WitnessTable;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  OUTLINED_FUNCTION_24_30(v20);
  sub_1D818F794();

  OUTLINED_FUNCTION_43_0(v1, 1, v8);
  if (v21)
  {
    (*(v28 + 8))(v1, v29);
  }

  else
  {
    v22 = v30;
    v23 = v31;
    (*(v30 + 32))(v31, v1, v8);
    OUTLINED_FUNCTION_8_66();
    swift_getWitnessTable();
    sub_1D81918C4();
    if ((v37 & 1) == 0)
    {
      v24 = v36;
      sub_1D81918C4();
      if ((v37 & 1) == 0)
      {
        v26 = v35;
        MEMORY[0x1DA710B60](v36, v24);
        (*(v22 + 8))(v23, v8);
        v25 = 0;
        goto LABEL_8;
      }
    }

    (*(v22 + 8))(v23, v8);
  }

  v25 = 1;
  v26 = v35;
LABEL_8:
  v27 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(v26, v25, 1, v27);
  OUTLINED_FUNCTION_100();
}

uint64_t static BlueprintSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_66_0();
  type metadata accessor for BlueprintSection();
  v0 = BlueprintSection.identifier.getter();
  v2 = v1;
  if (v0 == BlueprintSection.identifier.getter() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_1D8192634();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  OUTLINED_FUNCTION_12_13();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  v6 = sub_1D818F2B4();
  return v6 & 1;
}

void (*sub_1D7E966E4(uint64_t *a1))(void *a1)
{
  v2 = type metadata accessor for BlueprintItem();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  a1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = OUTLINED_FUNCTION_14_0();
  BlueprintSection.subscript.getter(v4, v5);
  return sub_1D7E96864;
}

uint64_t BlueprintSection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = BlueprintSection.startIndex.getter(a2);
  result = BlueprintSection.endIndex.getter(a2);
  if (result < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 > a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result > a1)
  {
    type metadata accessor for BlueprintItem();
    OUTLINED_FUNCTION_0_44();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_6_17();
    return sub_1D818F3B4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D7E96864(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t KeyCommandFocusSelectionProvider.selectedIndexPath.setter(uint64_t a1)
{
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v2 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  return sub_1D7E73334(a1);
}

void UICollectionView.selectItem(at:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1D7E96ACC(0, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D7E54838(a1, &v11 - v7);
  v9 = sub_1D818E994();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_1D818E8E4();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  [v3 selectItemAtIndexPath:v10 animated:a2 & 1 scrollPosition:0];
}

void sub_1D7E96ACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Int __swiftcall BlueprintSection.index(after:)(Swift::Int after)
{
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_15();
  return sub_1D818F2F4();
}

uint64_t Blueprint.subscript.getter()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_16_50();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  OUTLINED_FUNCTION_14_0();
  return sub_1D818F3A4();
}

uint64_t sub_1D7E96C68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for Blueprint();
    swift_getWitnessTable();
    if (sub_1D8191874())
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    swift_beginAccess();
    *(v1 + 24) = v2;
  }

  return result;
}

void sub_1D7E96D88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x100);
    *v2 = 0;
    *(v2 + 1) = 0;
    v2[16] = 1;
    v3 = swift_unknownObjectUnownedLoadStrong();
    sub_1D7E499B0(v3, 0);
  }
}

void sub_1D7E96E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();

    KeyCommandManager.invalidate(clearState:)(0);

    sub_1D7E96F80();
    swift_beginAccess();
    v11 = *(a7 + 16);
    v12 = *(v11 + 8);
    swift_unknownObjectRetain();
    v12(a4, v11);
    swift_unknownObjectRelease();
  }
}

void sub_1D7E96F80()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v59 = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = (&v55 - v11);
  v12 = *v3;
  OUTLINED_FUNCTION_82();
  v14 = *(v13 + 168);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v72 = v14;
  v15 = *((v5 & v4) + 0x70);
  v16 = *(v15 + 56);
  v17 = v5 & v4;
  v18 = v15;
  v19 = *(v17 + 88);
  swift_unknownObjectRetain();
  v20 = OUTLINED_FUNCTION_15_5();
  v70 = v16;
  v71 = (v16)(v20);
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  v69 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = *(AssociatedConformanceWitness + 40);
  v23 = swift_checkMetadataState();
  v24 = v71;
  v68 = v23;
  v57 = v22;
  v58 = AssociatedConformanceWitness + 40;
  v25 = v22(v23, AssociatedConformanceWitness);

  v26 = *(v25 + 16);
  v71 = v15 + 56;
  if (v26)
  {
    v64 = *(AssociatedConformanceWitness + 80);
    v65 = AssociatedConformanceWitness + 80;
    v63 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0));
    v61 = *(v59 + 16);
    OUTLINED_FUNCTION_92_3();
    v56 = v25;
    v28 = v25 + v27;
    v60 = *(v29 + 56);
    v66 = AssociatedConformanceWitness;
    v62 = v29;
    v30 = (v29 - 8);
    v31 = v73;
    do
    {
      v61(v31, v28, v6);
      swift_unknownObjectRetain();
      v32 = v12;
      v33 = v1;
      v34 = v70(v69, v18);
      swift_unknownObjectRelease();
      v35 = v6;
      v36 = v18;
      v37 = v64(v73, v68, v66);

      v1 = v33;
      v12 = v32;
      v74 = v32;
      BlueprintImpressionManager.updateImpression(at:view:triggerSource:)(v73, v37, &v74, v38, v39, v40, v41, v42, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v31 = v73;

      v18 = v36;
      v6 = v35;
      (*v30)(v31, v35);
      v28 += v60;
      --v26;
    }

    while (v26);
    v43 = v66;
  }

  else
  {
    v43 = AssociatedConformanceWitness;
  }

  v45 = v69;
  v44 = v70;
  v74 = v12;
  BlueprintImpressionManager.updateImpressions(triggerSource:)();
  swift_unknownObjectRetain();
  v46 = v44(v45, v18);
  swift_unknownObjectRelease();
  v47 = v57(v68, v43);

  v48 = *(v47 + 16);
  if (v48)
  {
    LODWORD(v72) = v12;
    v73 = v1;
    v50 = v59 + 16;
    v49 = *(v59 + 16);
    OUTLINED_FUNCTION_92_3();
    v52 = v47 + v51;
    v53 = *(v50 + 56);
    v54 = v67;
    do
    {
      v49(v54, v52, v6);
      BlueprintImpressionManager.updateImpressionModel(at:)();
      v54 = v67;
      (*(v50 - 8))(v67, v6);
      v52 += v53;
      --v48;
    }

    while (v48);

    LOBYTE(v12) = v72;
  }

  else
  {
  }

  BlueprintImpressionManager.reloadImpressions()();
  v74 = v12;
  sub_1D7E72464();
  OUTLINED_FUNCTION_100();
}

uint64_t AppMonitor.isTracking.getter()
{
  v1 = OBJC_IVAR___TSAppMonitor_isTracking;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + v1);
}

void Blueprint.append(_:)()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_36_17(v0, v1);
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_56();
  sub_1D818F394();
  sub_1D818F314();
  OUTLINED_FUNCTION_18_40();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_24();
  sub_1D818F754();
  OUTLINED_FUNCTION_80_0();
}

Swift::Void __swiftcall BlueprintImpressionManager.reloadImpressions()()
{
  OUTLINED_FUNCTION_120();
  v168 = v1;
  v169 = v2;
  v3 = v0;
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  v128 = type metadata accessor for BlueprintImpressionManager.SectionContext();
  v6 = sub_1D8191E84();
  OUTLINED_FUNCTION_1_65(v6, &v158);
  v124 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v9);
  OUTLINED_FUNCTION_30_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_7();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_107();
  v13 = sub_1D8191E84();
  v14 = OUTLINED_FUNCTION_1_65(v13, &v166);
  v144 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v17);
  v150 = v12;
  OUTLINED_FUNCTION_32_5();
  v149 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v120 - v24;
  v26 = sub_1D818E994();
  v27 = OUTLINED_FUNCTION_1_65(v26, &v167);
  v151 = v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v33);
  OUTLINED_FUNCTION_30_8();
  v34 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_7();
  v35 = swift_getAssociatedConformanceWitness();
  v160 = v34;
  v161 = AssociatedTypeWitness;
  v125 = v35;
  v162 = v35;
  v163 = AssociatedConformanceWitness;
  v126 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_22_10();
  v154 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v37 = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v120 - v39;
  if (sub_1D7E481B0())
  {
    v120 = v37;
    v141 = v22;
    OUTLINED_FUNCTION_39_5();
    v153 = v40;
    BlueprintProviderType.blueprint.getter(v4, v5);
    OUTLINED_FUNCTION_42_0();
    sub_1D8190DB4();
    v137 = v4;
    v160 = v4;
    v161 = v34;
    v122 = AssociatedTypeWitness;
    v162 = AssociatedTypeWitness;
    v163 = v5;
    v123 = v5;
    v164 = v125;
    v165 = v126;
    OUTLINED_FUNCTION_22_10();
    v132 = type metadata accessor for BlueprintImpressionManager.StagedContext();
    OUTLINED_FUNCTION_0_87();
    v147 = sub_1D7E2491C(v41, v42);
    v43 = sub_1D8190DB4();

    v44 = v43 + 64;
    OUTLINED_FUNCTION_24();
    v47 = v46 & v45;
    v49 = (v48 + 63) >> 6;
    v50 = v151;
    v152 = v151 + 16;
    v148 = v151 + 32;
    v131 = v149 + 32;
    v130 = v149 + 8;
    v149 = v151 + 8;
    v129 = v144 + 8;
    v144 = v43;
    sub_1D8190DB4();
    v51 = 0;
    v121 = v34;
    v52 = v142;
    v143 = v25;
    while (v47)
    {
      v53 = v51;
LABEL_8:
      v54 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v55 = *(v144 + 48) + *(v50 + 72) * (v54 | (v53 << 6));
      v56 = v139;
      v57 = v146;
      v134 = *(v50 + 16);
      v134(v139, v55, v146);
      (*(v50 + 32))(v52, v56, v57);
      v58 = v140;
      v59 = v52;
      Blueprint.item(indexPath:)();
      v52 = v150;
      OUTLINED_FUNCTION_43_0(v58, 1, v150);
      if (v60)
      {
        OUTLINED_FUNCTION_22();
        v61(v58, v138);
        OUTLINED_FUNCTION_25_7();
        sub_1D8190E14();
        sub_1D8190D74();
        swift_endAccess();

        OUTLINED_FUNCTION_19_12();
        v62(v59, v57);
        v51 = v53;
        v52 = v59;
        v50 = v151;
      }

      else
      {
        OUTLINED_FUNCTION_22();
        v63(v143, v58, v52);
        OUTLINED_FUNCTION_59();
        sub_1D8190E24();
        v64 = v159;
        if (v159)
        {
          swift_endAccess();
          OUTLINED_FUNCTION_70_3();
          sub_1D7EA261C(v65, v66);
          v134(v135, v142, v57);
          v159 = v64;
          OUTLINED_FUNCTION_25_7();
          sub_1D8190E14();

          v52 = v3 + 56;
          sub_1D8190E34();
          swift_endAccess();

          OUTLINED_FUNCTION_22();
          v68 = v143;
          v69 = v150;
        }

        else
        {
          swift_endAccess();
          OUTLINED_FUNCTION_22();
          v68 = v143;
          v69 = v52;
        }

        v67(v68, v69);
        OUTLINED_FUNCTION_19_12();
        v70 = OUTLINED_FUNCTION_28_8();
        v71(v70, v57);
        v51 = v53;
        v50 = v151;
      }
    }

    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v53 >= v49)
      {
        break;
      }

      v47 = *(v44 + 8 * v53);
      ++v51;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_8_4();
    v145 = v3;
    sub_1D8190DB4();
    v72 = sub_1D8190DB4();

    v73 = v72 + 64;
    OUTLINED_FUNCTION_24();
    v76 = v75 & v74;
    v78 = (v77 + 63) >> 6;
    v79 = (v124 + 8);
    v143 = v72;
    sub_1D8190DB4();
    v80 = 0;
    v81 = v150;
    v82 = v150;
    v83 = v153;
    while (1)
    {
      v84 = v137;
      if (!v76)
      {
        break;
      }

      v85 = v80;
LABEL_21:
      OUTLINED_FUNCTION_80_2();
      v87 = (*(v143 + 6) + ((v85 << 10) | (16 * v86)));
      v88 = *v87;
      v89 = v87[1];
      sub_1D8190DB4();
      v90._countAndFlagsBits = v88;
      v90._object = v89;
      if (!Blueprint.contains(identifier:)(v90))
      {
        v156 = v88;
        v157 = v89;
        OUTLINED_FUNCTION_25_7();
        sub_1D8190E14();
        OUTLINED_FUNCTION_85_2();
        sub_1D8190D74();
        swift_endAccess();
        (*v79)(v88, v127);
      }

      v80 = v85;
      v81 = v82;
    }

    while (1)
    {
      v85 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v85 >= v78)
      {

        OUTLINED_FUNCTION_8_4();
        sub_1D8190DB4();
        v160 = v84;
        v161 = v121;
        v162 = v122;
        v163 = v123;
        v164 = v125;
        v165 = v126;
        OUTLINED_FUNCTION_22_10();
        v91 = type metadata accessor for BlueprintImpressionManager.Context();
        v92 = v146;
        v140 = v91;
        v93 = sub_1D8190DB4();

        v94 = v93 + 64;
        OUTLINED_FUNCTION_24();
        v97 = v96 & v95;
        v99 = (v98 + 63) >> 6;
        v142 = v93;
        sub_1D8190DB4();
        v100 = 0;
        v101 = v133;
        while (v97)
        {
          v102 = v81;
          v103 = v100;
LABEL_31:
          OUTLINED_FUNCTION_80_2();
          v105 = v151;
          v106 = *(v142 + 48) + *(v151 + 72) * (v104 | (v103 << 6));
          v107 = v136;
          v146 = *(v151 + 16);
          v146(v136, v106, v92);
          (*(v105 + 32))(v101, v107, v92);
          OUTLINED_FUNCTION_85_2();
          v83 = v153;
          v108 = v101;
          Blueprint.item(indexPath:)();
          v109 = v81;
          v110 = v81;
          v81 = v102;
          OUTLINED_FUNCTION_43_0(v110, 1, v102);
          if (v60)
          {
            OUTLINED_FUNCTION_19_12();
            v111(v108, v92);
            OUTLINED_FUNCTION_22();
            v112(v109, v138);
            v100 = v103;
            v101 = v108;
          }

          else
          {
            OUTLINED_FUNCTION_22();
            OUTLINED_FUNCTION_78();
            v113();
            OUTLINED_FUNCTION_59();
            sub_1D8190E24();
            v114 = v155;
            if (v155)
            {
              swift_endAccess();
              sub_1D7EA261C(v153, v141);
              v146(v135, v133, v92);
              v155 = v114;
              OUTLINED_FUNCTION_25_7();
              sub_1D8190E14();

              sub_1D8190E34();
              v101 = v133;
              swift_endAccess();

              OUTLINED_FUNCTION_22();
              v83 = v153;
              v81 = v150;
              v115(v141, v150);
              OUTLINED_FUNCTION_19_12();
              v116(v101, v92);
              v100 = v103;
            }

            else
            {
              v101 = v108;
              swift_endAccess();
              OUTLINED_FUNCTION_22();
              v81 = v150;
              v117(v141, v150);
              OUTLINED_FUNCTION_19_12();
              v118(v108, v92);
              v100 = v103;
              v83 = v153;
            }
          }
        }

        while (1)
        {
          v103 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_41;
          }

          if (v103 >= v99)
          {

            OUTLINED_FUNCTION_14_15();
            v119(v83, v154);
            goto LABEL_38;
          }

          v97 = *(v94 + 8 * v103);
          ++v100;
          if (v97)
          {
            v102 = v81;
            goto LABEL_31;
          }
        }
      }

      v76 = *(v73 + 8 * v85);
      ++v80;
      if (v76)
      {
        goto LABEL_21;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_38:
    OUTLINED_FUNCTION_100();
  }
}

Swift::Void __swiftcall BlueprintViewProvider.blueprintDidUpdate()()
{
  v1 = (*(*&(*v0)->super._minimumSafeAreaInsets.left + 112))(*(&(*v0)->super._viewFlags + 1));
  if (v1)
  {
    v2 = v1;
    BlueprintViewportMonitor.scrollViewDidScroll(_:)(v0[2]);
  }
}

void sub_1D7E9844C()
{
  OUTLINED_FUNCTION_14_5();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v3)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v7, v8, v9);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v2;
      v10[3] = 2 * v11 - 64;
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5E04(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v15 = OUTLINED_FUNCTION_7_9();
    memcpy(v15, v16, v17);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7E98510(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CardViewPresentationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1D7E9862CLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t - infix<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_18_25();
  v0[3] = type metadata accessor for Diff();
  OUTLINED_FUNCTION_7_50();
  v0[4] = sub_1D7E98CF4(v1, v2);
  __swift_allocate_boxed_opaque_existential_0(v0);
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8_39();
  type metadata accessor for BlueprintSection();
  v3 = OUTLINED_FUNCTION_11_37();
  return OUTLINED_FUNCTION_19_22(v3, v4, v5, v6, v7, v8, v3, v9, v11);
}

{
  OUTLINED_FUNCTION_18_25();
  v0[3] = type metadata accessor for Diff();
  OUTLINED_FUNCTION_7_50();
  v0[4] = sub_1D7E98CF4(v1, v2);
  __swift_allocate_boxed_opaque_existential_0(v0);
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8_39();
  type metadata accessor for BlueprintSection();
  v3 = OUTLINED_FUNCTION_11_37();
  return OUTLINED_FUNCTION_19_22(v3, v4, v5, v6, v7, v8, v3, v9, v11);
}

uint64_t type metadata accessor for Diff()
{
  result = qword_1EDBB3F08;
  if (!qword_1EDBB3F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PatternSectionDecorationItem.Anchor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1D7E98808(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    sub_1D7E95CA0(a1);
  }
}

void sub_1D7E98814()
{
  sub_1D818E8B4();
  if (v0 <= 0x3F)
  {
    sub_1D7E98A10(319, &qword_1EDBB3350, sub_1D7E989B8, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D7E98A10(319, &qword_1EDBB33E0, MEMORY[0x1E6969C28], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D7E98A10(319, &qword_1EDBB3358, sub_1D7E98BE0, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t objectdestroy_33Tm()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

void sub_1D7E989B8()
{
  if (!qword_1EDBB3DD0)
  {
    v0 = type metadata accessor for Move();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3DD0);
    }
  }
}

void sub_1D7E98A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t BlueprintPipelineRunOptions.deinit()
{
  memcpy(__dst, (v0 + 16), 0x235uLL);
  sub_1D7E52BA8(__dst);

  return v0;
}

uint64_t BlueprintPipelineRunOptions.__deallocating_deinit()
{
  BlueprintPipelineRunOptions.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E98B18()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t BlueprintPipelineRecorder.__deallocating_deinit()
{
  BlueprintPipelineRecorder.deinit();

  return swift_deallocClassInstance();
}

void sub_1D7E98BE0()
{
  if (!qword_1EDBB3DE0[0])
  {
    sub_1D818E994();
    sub_1D7E2DA28(&qword_1EDBBC6B0, MEMORY[0x1E6969C28]);
    v0 = type metadata accessor for Move();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB3DE0);
    }
  }
}

uint64_t BlueprintPipelineRecorder.deinit()
{

  v1 = OBJC_IVAR____TtC5TeaUI25BlueprintPipelineRecorder_signposter;
  v2 = sub_1D818FDB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D7E98CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7E98D3C()
{
  sub_1D7E98DC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E98D6C(uint64_t a1)
{
  result = sub_1D7E98CF4(&qword_1EDBB3F28, type metadata accessor for Diff);
  *(a1 + 8) = result;
  return result;
}

uint64_t BlueprintModifier.__deallocating_deinit()
{
  BlueprintModifier.deinit();

  return swift_deallocClassInstance();
}

uint64_t BlueprintModifier.deinit()
{

  return v0;
}

uint64_t sub_1D7E98EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, char *, uint64_t, unint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v92 = a7;
  v79 = a3;
  v80 = a4;
  v85 = a2;
  v71[1] = a8;
  v72 = type metadata accessor for Diff();
  MEMORY[0x1EEE9AC00](v72);
  v88 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = v71 - v17;
  v18 = sub_1D81923F4();
  MEMORY[0x1EEE9AC00](v18);
  v106[0] = MEMORY[0x1E69E7CC8];
  v97 = a5;
  v98 = a6;
  v99 = a7;
  v100 = v106;
  v93 = type metadata accessor for DiffRecord();
  v78 = a1;
  v20 = sub_1D7E6CDC0(sub_1D7E99968, v96, a5, v93, MEMORY[0x1E69E73E0], a6, MEMORY[0x1E69E7410], v19);
  MEMORY[0x1DA7133A0](a5, v13);
  swift_getWitnessTable();
  v103[0] = sub_1D8191244();
  v95[2] = a5;
  v95[3] = a6;
  v95[4] = v92;
  v95[5] = v106;
  v83 = a5;
  v84 = a6;
  v94[2] = a5;
  v94[3] = a6;
  v94[4] = v92;
  v94[5] = sub_1D7E99DC0;
  v94[6] = v95;
  v77 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata2();
  v21 = sub_1D8191484();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1D7E6CDC0(sub_1D7E99C5C, v94, v21, v93, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);

  v25 = sub_1D7E36AB8(v20);
  v86 = v24;
  v87 = v25;
  v26 = 0;
  v92 = v20 & 0xC000000000000001;
  v93 = v20;
  v74 = (v90 + 8);
  v75 = (v90 + 16);
  v90 = v24 & 0xC000000000000001;
  v91 = v20 & 0xFFFFFFFFFFFFFF8;
  v89 = v24 & 0xFFFFFFFFFFFFFF8;
  v73 = v24 + 32;
  while (v87 != v26)
  {
    if (v92)
    {
      v27 = MEMORY[0x1DA714420](v26, v93);
    }

    else
    {
      if (v26 >= *(v91 + 16))
      {
        goto LABEL_68;
      }

      v27 = *(v93 + 8 * v26 + 32);
    }

    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v28 = *(v27 + 16);
    if (*(v28 + 64) != 1)
    {
      v29 = *(v28 + 56);
      if (v29 < sub_1D8191774())
      {
        *&v101 = v26;
        v30 = sub_1D81918F4();
        v81 = *v75;
        v31 = v77;
        v81(v82);
        v30(v103, 0);
        *&v101 = v29;
        v32 = sub_1D81918F4();
        AssociatedTypeWitness = v76;
        v81(v76);
        v32(v103, 0);
        v33 = *(v27 + 16);

        v34 = v82;
        v79(v103, v82, AssociatedTypeWitness, v26);
        v35 = *v74;
        (*v74)(AssociatedTypeWitness, v31);
        v35(v34, v31);
        swift_beginAccess();
        sub_1D7E9A0D8(v103, v33 + 16);
        swift_endAccess();
      }

      if (*(*(v27 + 16) + 72) == 2)
      {
        *(v27 + 24) = v29;
        *(v27 + 32) = 0;
        if (v90)
        {
          v36 = MEMORY[0x1DA714420](v29, v86);
        }

        else
        {
          if (v29 < 0)
          {
            goto LABEL_80;
          }

          if (v29 >= *(v89 + 16))
          {
            goto LABEL_81;
          }

          v36 = *(v73 + 8 * v29);
        }

        *(v36 + 24) = v26;
        *(v36 + 32) = 0;
      }
    }

    ++v26;
  }

  v37 = v88;
  sub_1D818E8A4();
  v38 = v72;
  v83 = *(v72 + 20);
  sub_1D818E8A4();
  sub_1D818E8A4();
  sub_1D818E8A4();
  v39 = MEMORY[0x1E69E7CC0];
  v84 = v38[8];
  *&v37[v84] = MEMORY[0x1E69E7CC0];
  *&v37[v38[9]] = v39;
  *&v37[v38[10]] = v39;
  *&v37[v38[11]] = v39;
  *&v37[v38[12]] = v39;
  *&v37[v38[13]] = v39;
  v40 = sub_1D7E36AB8(v86);
  AssociatedTypeWitness = sub_1D7E9A340(0, v40);
  v41 = sub_1D7E36AB8(v93);
  v26 = sub_1D7E9A340(0, v41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_20;
  }

LABEL_82:
  sub_1D7E99BC0(AssociatedTypeWitness);
  AssociatedTypeWitness = v69;
LABEL_20:
  v42 = sub_1D7E36AB8(v86);
  v43 = 0;
  v44 = 0;
  v85 = AssociatedTypeWitness + 32;
  v45 = -v42;
  while (2)
  {
    for (i = v44 + 4; ; ++i)
    {
      if (v45 + i == 4)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7E99BC0(v26);
          v26 = v70;
        }

        v51 = 0;
        v89 = -v87;
        v90 = 0;
LABEL_36:
        for (j = v51 + 4; v89 + j != 4; ++j)
        {
          v53 = j - 4;
          if (v92)
          {
            v54 = MEMORY[0x1DA714420](j - 4, v93);
          }

          else
          {
            if (v53 >= *(v91 + 16))
            {
              goto LABEL_73;
            }

            v54 = *(v93 + 8 * j);
          }

          v51 = j - 3;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_72;
          }

          if (v53 >= *(v26 + 16))
          {
            goto LABEL_74;
          }

          *(v26 + 8 * j) = v90;
          if (*(v54 + 32))
          {
            sub_1D818E844();

            v50 = __OFADD__(v90++, 1);
            if (!v50)
            {
              goto LABEL_36;
            }

            __break(1u);
            break;
          }

          v55 = *(v54 + 24);
          swift_beginAccess();
          sub_1D7E9A4A8();
          if (v102)
          {
            sub_1D7E05450(&v101, v103);
            v56 = v104;
            v57 = v105;
            __swift_project_boxed_opaque_existential_1(v103, v104);
            if (((*(v57 + 8))(v56, v57) & 1) == 0)
            {
              v58 = v104;
              v59 = v105;
              __swift_project_boxed_opaque_existential_1(v103, v104);
              (*(v59 + 16))(v88, v55, j - 4, v58, v59);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v103);
          }

          else
          {
            sub_1D7E9A8A0();
          }

          if (v53 >= *(v26 + 16))
          {
            goto LABEL_75;
          }

          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_76;
          }

          if (v55 >= *(AssociatedTypeWitness + 16))
          {
            goto LABEL_77;
          }

          v60 = *(v85 + 8 * v55);
          v50 = __OFSUB__(v55, v60);
          v61 = v55 - v60;
          if (v50)
          {
            goto LABEL_78;
          }

          v62 = *(v26 + 8 * j);
          v50 = __OFADD__(v61, v62);
          v63 = v61 + v62;
          if (v50)
          {
            goto LABEL_79;
          }

          if (v53 == v63)
          {
          }

          else
          {
            v64 = *&v88[v84];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D7EE54C4();
              v64 = v67;
            }

            v65 = *(v64 + 16);
            if (v65 >= *(v64 + 24) >> 1)
            {
              sub_1D7EE54C4();
              v64 = v68;
            }

            *(v64 + 16) = v65 + 1;
            v66 = v64 + 16 * v65;
            *(v66 + 32) = v55;
            *(v66 + 40) = v53;
            *&v88[v84] = v64;
          }
        }

        sub_1D7E9A834();
      }

      v47 = i - 4;
      if (v90)
      {
        result = MEMORY[0x1DA714420](i - 4, v86);
        v48 = result;
      }

      else
      {
        if (v47 >= *(v89 + 16))
        {
          goto LABEL_70;
        }

        v48 = *(v86 + 8 * i);
      }

      v44 = i - 3;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_69;
      }

      if (v47 >= *(AssociatedTypeWitness + 16))
      {
        goto LABEL_71;
      }

      *(AssociatedTypeWitness + 8 * i) = v43;
      if (*(v48 + 32) == 1)
      {
        break;
      }
    }

    v50 = __OFADD__(v43++, 1);
    if (!v50)
    {
      sub_1D818E844();

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7E9998C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1D7E99A3C(a1, a2, AssociatedTypeWitness, *(a3 + 16));
  v10 = *(result + 72);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    *(result + 72) = v12;
    type metadata accessor for DiffRecord();
    result = swift_allocObject();
    *(result + 32) = 1;
    *(result + 16) = v13;
    *(result + 24) = 0;
    *a4 = result;
  }

  return result;
}

uint64_t sub_1D7E99A3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = sub_1D818EF94();
  v10 = sub_1D7E886A4(v8, v9, *a2);

  if (!v10)
  {
    type metadata accessor for DiffEntry();
    v10 = swift_allocObject();
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 1;
    *(v10 + 72) = 0;
    sub_1D818EF94();

    swift_isUniquelyReferenced_nonNull_native();
    v12 = *a2;
    sub_1D7E99BD4();

    *a2 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

unint64_t sub_1D7E99CB8()
{
  result = qword_1EDBB36E8;
  if (!qword_1EDBB36E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB36E8);
  }

  return result;
}

uint64_t sub_1D7E99D14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1D7E99A3C(a2, a3, AssociatedTypeWitness, *(a6 + 16));
  v12 = *(result + 72);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    *(result + 72) = v14;
    *(result + 56) = a1;
    *(result + 64) = 0;
    type metadata accessor for DiffRecord();
    result = swift_allocObject();
    *(result + 32) = 1;
    *(result + 16) = v15;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1D7E99DCC@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v6, &a1[*(TupleTypeMetadata2 + 48)]);
  *a3 = result;
  return result;
}

uint64_t sub_1D7E99E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v24[0] = a3;
  v24[1] = a6;
  v17 = type metadata accessor for Diff();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a4;
  v32 = a5;
  v33 = a7;
  v34 = a8;
  v20 = type metadata accessor for BlueprintSection();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for BlueprintItem();
  v22 = swift_getWitnessTable();
  sub_1D7E98EC8(a1, a2, sub_1D7E9A08C, v25, v20, WitnessTable, v22, v19);
  if ((sub_1D8190ED4() & 1) == 0)
  {
    sub_1D818E844();
  }

  a9[3] = v17;
  a9[4] = &protocol witness table for Diff;
  __swift_allocate_boxed_opaque_existential_0(a9);
  return sub_1D7E9A834();
}

uint64_t sub_1D7E9A08C@<X0>(uint64_t a1@<X8>)
{
  result = static BlueprintItem.== infix(_:_:)();
  *(a1 + 24) = MEMORY[0x1E69E6370];
  *(a1 + 32) = &protocol witness table for Bool;
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_1D7E9A0D8(uint64_t a1, uint64_t a2)
{
  sub_1D7E99C84(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void SelectionBehavior.style.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = &type metadata for ScaleContentSelectionStyle;
      *(a1 + 32) = &protocol witness table for ScaleContentSelectionStyle;
      *a1 = v6;
      break;
    case 2uLL:

      sub_1D7E0E768((v3 & 0x1FFFFFFFFFFFFFFFLL) + 16, a1);
      break;
    case 3uLL:
      *(a1 + 24) = &type metadata for KeyboardSelectionStyle;
      *(a1 + 32) = &protocol witness table for KeyboardSelectionStyle;
      *a1 = swift_allocObject();
      v5 = (SelectionBehavior.style.getter)();
      SelectionBehavior.style.getter(v5);
      break;
    case 4uLL:
      if (v3 == 0x8000000000000000)
      {
        *(a1 + 24) = &type metadata for NoneSelectionStyle;
        *(a1 + 32) = &protocol witness table for NoneSelectionStyle;
      }

      else
      {
        *(a1 + 24) = &type metadata for BackgroundSelectionStyle;
        *(a1 + 32) = &protocol witness table for BackgroundSelectionStyle;
        *a1 = 1;
      }

      break;
    default:
      v4 = *(v3 + 16);
      *(a1 + 24) = &type metadata for DimContentSelectionStyle;
      *(a1 + 32) = &protocol witness table for DimContentSelectionStyle;
      *a1 = v4;
      *(a1 + 8) = 1;
      break;
  }
}

uint64_t sub_1D7E9A2C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return swift_deallocObject();
}

uint64_t CollectionViewListCell.hasBeenTraversed.setter(char a1)
{
  v3 = qword_1EDBB8BD0;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D7E9A340(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1D81913D4();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1D819FAA0)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D7E9A3E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E9A440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7E9A4A8()
{
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_109();
  v4(v3);
  return v0;
}

void static Accessibility.Strings.delimitedAttributedString(_:_:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  OUTLINED_FUNCTION_0_170();
  sub_1D7E54994(0, v3, v4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  while (v10 != v8)
  {
    if (v8 >= v10)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_27;
    }

    v12 = *(v11 + 8 * v8);
    if (v12)
    {
      v13 = [v12 string];
      sub_1D8190F14();
    }

    sub_1D818E3E4();
    v14 = sub_1D818E3F4();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
    v15 = sub_1D818F004();

    v16 = sub_1D7E9A7A8(v7);
    if (v15)
    {

      goto LABEL_10;
    }

    if (v12)
    {
      MEMORY[0x1DA713500](v16);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
      v9 = v24;
      ++v8;
    }

    else
    {
LABEL_10:
      ++v8;
    }
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v18 = sub_1D7E36AB8(v9);
  v19 = 0;
  v20 = v23;
  while (v18 != v19)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA714420](v19, v9);
    }

    else
    {
      if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v21 = *(v9 + 8 * v19 + 32);
    }

    v22 = v21;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_28;
    }

    if (v18 < 0)
    {
      goto LABEL_30;
    }

    if (v19)
    {
      [v17 appendAttributedString_];
    }

    [v17 appendAttributedString_];

    ++v19;
  }
}

uint64_t sub_1D7E9A7A8(uint64_t a1)
{
  sub_1D7E54994(0, &qword_1EDBBC710, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7E9A834()
{
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_109();
  v4(v3);
  return v0;
}

uint64_t sub_1D7E9A8A0()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D7E9A8F4()
{
  sub_1D7E9A8A0();

  return swift_deallocClassInstance();
}

id sub_1D7E9A940()
{
  v1 = sub_1D818E2D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E284();
  if ([v0 isSelected])
  {
    sub_1D818E2C4();
    sub_1D7EE411C();
    v5 = OUTLINED_FUNCTION_0_132();
    v6(v5);
  }

  if ([v0 isHighlighted])
  {
    sub_1D818E294();
    sub_1D7EE411C();
    v7 = OUTLINED_FUNCTION_0_132();
    v8(v7);
  }

  result = [v0 isFocused];
  if (result)
  {
    sub_1D818E2A4();
    sub_1D7EE411C();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t TraitEnvironmentBackgroundSelectionStyle.setup(cell:selectedBackgroundView:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = a3;
  return v6(a3, ObjectType, a2);
}

BOOL Diff.isEmpty.getter()
{
  if ((sub_1D818E874() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Diff();
  if ((sub_1D818E874() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D818E874() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D818E874() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_18();
  if (v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_18();
  if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_18();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_18();
  if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_18();
  if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_18();
  return v6 == 0;
}

uint64_t sub_1D7E9AC18()
{
  v1 = v0;
  swift_beginAccess();
  SelectionBehavior.style.getter(v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v0 + qword_1EDBB8BE8);
  (*(v3 + 8))(v1, &protocol witness table for CollectionViewListCell<A>, *(v1 + qword_1EDBB8BE8), v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = CollectionViewListCell.isSelected.getter();
  if (result)
  {
    SelectionBehavior.style.getter(v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = CollectionViewListCell.isHighlighted.getter();
    v9 = qword_1EDBB8BD0;
    swift_beginAccess();
    (*(v7 + 16))(1, v8 & 1, *(v1 + v9), *(v1 + qword_1EDBB8BA8), v4, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return result;
}

uint64_t sub_1D7E9AD7C(void *a1)
{
  v1 = a1;
  v2 = CollectionViewListCell.isSelected.getter();

  return v2 & 1;
}

id sub_1D7E9ADB0()
{
  OUTLINED_FUNCTION_16_1();
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, *v0);
}

BOOL sub_1D7E9ADEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t When.when(block:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1D7E0E10C(v3);
}

uint64_t CollectionViewListCell.selectionBehavior.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1EDBB8BC0;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_1D7E9B848(v4);
  return sub_1D7E9AC18();
}

void SelectedBackgroundView.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1D7E9B700();
}

uint64_t get_enum_tag_for_layout_string_5TeaUI35BlueprintLayoutSectionFramePositionO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI35BlueprintLayoutSectionFramePositionO6SolverO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t CollectionViewListCell.forwardsAccessibilityLabelFromView.setter(char a1)
{
  v3 = qword_1EDBB8BE0;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D7E9B1A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(v2 + *(a1 + 60));
  v4 = type metadata accessor for BlueprintLayoutItem();

  return a2(v3, v4);
}

Swift::Void __swiftcall CollectionViewListCell.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  [(UICollectionViewLayoutAttributes *)&v17 applyLayoutAttributes:a1];
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
    swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
    swift_beginAccess();
    v11 = *(v7 + v10);
    v12 = *(v5 + 80);
    v13 = *(*(v5 + 88) + 8);
    v14 = *(v13 + 16);
    v15 = a1;
    v14(v9, v11, v12, v13);
    v16 = *(v2 + qword_1EDBB8BB8);
    if (v16)
    {

      v16(v2, v7);
      sub_1D7E0E10C(v16);
    }
  }
}

void sub_1D7E9B3B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CollectionViewListCell.apply(_:)(v4);
}

uint64_t sub_1D7E9B44C(void *a1)
{
  v1 = a1;
  v2 = CollectionViewListCell.isHighlighted.getter();

  return v2 & 1;
}

uint64_t UICollectionView.dequeue<A>(cell:at:name:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1D7E3ED28(a1, a3, a4);
  v8 = sub_1D8190EE4();

  v9 = sub_1D818E8E4();
  v10 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v9];

  return MEMORY[0x1EEE6BE48](v10, a5, 0, 0, 0);
}

uint64_t SelectedBackgroundView.insets.setter()
{
  OUTLINED_FUNCTION_155();
  v5 = (v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_insets);
  result = swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

unint64_t *sub_1D7E9B5BC(unint64_t *result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

id SelectedBackgroundView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_insets);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_cornerRadius) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling) = 0;
  v11 = ObjectType;
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, v11);
  v8 = qword_1EDBB2F78;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor_];

  return v9;
}

void sub_1D7E9B700()
{
  v1 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling;
  swift_beginAccess();
  if (v0[v1] == 1 || ((v2 = [v0 traitCollection], v3 = objc_msgSend(v2, sel_horizontalSizeClass), v2, v3) ? (v4 = v3 == 2) : (v4 = 1), v4))
  {
    v5 = [v0 layer];
    v6 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_cornerRadius;
    swift_beginAccess();
    [v5 setCornerRadius_];
LABEL_8:

    return;
  }

  if (v3 == 1)
  {
    v5 = [v0 layer];
    [v5 setCornerRadius_];
    goto LABEL_8;
  }
}

uint64_t sub_1D7E9B82C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1D7E9B848(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1D7E9B890(void *a1)
{
  [v1 setSelectedBackgroundView_];
}

uint64_t get_enum_tag_for_layout_string_5TeaUI32BlueprintPipelineProcessorResultO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

char *When.init(defaultValue:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(&v1[*(v2 + 96)], a1);
  return v1;
}

uint64_t sub_1D7E9B96C(void *a1)
{
  v2 = sub_1D818FED4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818FEA4();
  v6 = a1;
  CollectionViewListCell.updateConfiguration(using:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t CollectionViewListCell.updateConfiguration(using:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D818FE94();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel__bridgedUpdateConfigurationUsingState_, v5);

  v6 = *&v1[qword_1EDBB8BA8];
  v7 = sub_1D818FEC4();
  (*(*(*((v4 & v3) + 0x58) + 8) + 8))(v7 & 1, 1, *((v4 & v3) + 0x50));

  v8 = sub_1D818FE84();
  CollectionViewListCell.isHighlighted.setter(v8 & 1);
  if (sub_1D818FE74())
  {
    v9 = sub_1D818FEC4() ^ 1;
  }

  else
  {
    v9 = 0;
  }

  CollectionViewListCell.isSelected.setter(v9 & 1);
  v10 = sub_1D818FEB4();
  return CollectionViewListCell.isSwiped.setter(v10 & 1);
}

uint64_t sub_1D7E9BBB0()
{
  result = swift_checkMetadataState();
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

uint64_t When.optionalValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  if (v4)
  {

    v4(v5);
    sub_1D7E0E10C(v4);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v3 + 80);

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

void Editable.animateAlongsideEditAnimation(animated:block:)(char a1, uint64_t (*a2)(), uint64_t a3)
{
  v6 = objc_opt_self();
  if (a1)
  {
    v15 = a2;
    v16 = a3;
    OUTLINED_FUNCTION_2_1();
    v12 = 1107296256;
    v13 = sub_1D7E64940;
    v14 = &block_descriptor_3_3;
    v7 = _Block_copy(&v11);

    [v6 animateWithDuration:v7 animations:0.3];
    _Block_release(v7);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v15 = sub_1D7E74D6C;
    v16 = v8;
    OUTLINED_FUNCTION_2_1();
    v12 = 1107296256;
    v13 = sub_1D7E74D74;
    v14 = &block_descriptor_91;
    v9 = _Block_copy(&v11);

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t CollectionViewListCell.isHighlighted.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D7E9BFF8(a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_setHighlighted_, a1 & 1);
  return sub_1D7E9DA04();
}

uint64_t sub_1D7E9BFF8(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EDBB8BC0;
  swift_beginAccess();
  v11 = *(v2 + v4);
  SelectionBehavior.style.getter(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 24))(a1, *(v2 + qword_1EDBB8BA8), *(v2 + qword_1EDBB8BE8), v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1D7E9C128@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, void (*a4)(char *, uint64_t, uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v112 = a3;
  v113 = a4;
  v124 = a7;
  v125 = a2;
  v118 = a1;
  sub_1D7E1AE68(0, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v91 - v10;
  v115 = sub_1D818E994();
  v102 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v99 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v91 - v13;
  sub_1D7E1AE68(0, &qword_1EDBAE670, MEMORY[0x1E69DC190]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = &v91 - v15;
  v119 = sub_1D8190044();
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v101 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v91 - v20;
  v104 = type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0);
  MEMORY[0x1EEE9AC00](v104);
  v120 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v91 - v23;
  v117 = type metadata accessor for BlueprintCompositionalListItemSeparatorKind(0);
  MEMORY[0x1EEE9AC00](v117);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v91 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v128[0] = AssociatedTypeWitness;
  v128[1] = v31;
  v128[2] = AssociatedConformanceWitness;
  v128[3] = v33;
  v34 = type metadata accessor for Blueprint();
  swift_getWitnessTable();
  v35 = sub_1D8190E64();
  v109 = *(v35 - 8);
  v110 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v91 - v36;
  v116 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v91 - v39;
  v41 = sub_1D8190064();
  v126 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v123 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v126 + 16))(v124, v125, v41);
  }

  v44 = Strong;
  v100 = swift_unknownObjectWeakLoadStrong();
  if (!v100)
  {

    return (*(v126 + 16))(v124, v125, v41);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {

    return (*(v126 + 16))(v124, v125, v41);
  }

  v92 = v25;
  v45 = v44[5];
  v96 = v41;
  v97 = v45;
  (*(v126 + 16))(v123, v125, v41);
  v46 = v118;
  v93 = sub_1D818E964();
  v94 = sub_1D7E9F490(v44, v46);
  v95 = v44;
  BlueprintProviderType.blueprint.getter(a5, a6);
  sub_1D81918B4();
  (*(v116 + 8))(v40, v34);
  result = sub_1D818E974();
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v128[0] = result + 1;
  v48 = v110;
  swift_getWitnessTable();
  LODWORD(v116) = sub_1D8191254();
  (*(v109 + 8))(v37, v48);
  ObjectType = swift_getObjectType();
  (*(v97 + 8))(v127, ObjectType);
  memcpy(v128, v127, 0x235uLL);
  v50 = v128[17];
  sub_1D7E4C1A0(v128);
  v51 = swift_getObjectType();
  v52 = *(v113 + 1);
  v53 = v122;
  v125 = v50;
  v52(v50, v46, v51);
  v54 = v111;
  sub_1D7E9D3D0(v53, v111);
  LODWORD(v50) = swift_getEnumCaseMultiPayload();
  sub_1D7E9D498();
  v112 = v55;
  v56 = MEMORY[0x1E69DC178];
  v58 = v120;
  v57 = v121;
  if (v50 == 1)
  {
    sub_1D7E9D434(v54, v120);
    v59 = v123;
    sub_1D8190014();
    sub_1D8190034();
    v60 = *v56;
    v61 = v108;
    v62 = v119;
    v113 = *(v57 + 104);
    v113(v108, v60, v119);
    sub_1D8190004();
    v63 = v107;
    sub_1D7E9D50C(v58 + *(v104 + 24), v107);
    if (__swift_getEnumTagSinglePayload(v63, 1, v62) == 1)
    {
      sub_1D7E9D5E0(v63, &qword_1EDBAE670, MEMORY[0x1E69DC190]);
      if (v116 & 1 | ((v94 & 1) == 0))
      {
        v64 = v120;
        v59 = v123;
      }

      else
      {
        v113(v108, v60, v119);
        v59 = v123;
        sub_1D8190024();
        v64 = v120;
      }
    }

    else
    {
      v70 = v101;
      (*(v57 + 32))(v101, v63, v62);
      (*(v57 + 16))(v61, v70, v62);
      sub_1D8190024();
      (*(v57 + 8))(v70, v62);
      v64 = v58;
    }

    v69 = v114;
    v68 = v100;
  }

  else
  {
    v64 = v106;
    sub_1D7E9D434(v54, v106);
    v59 = v123;
    sub_1D8190014();
    sub_1D8190034();
    v65 = *(v57 + 104);
    v66 = MEMORY[0x1E69DC180];
    if (v93)
    {
      v66 = v56;
    }

    v67 = v119;
    (v65)(v105, *v66, v119);
    sub_1D8190004();
    v68 = v100;
    v113 = v65;
    if (v94)
    {
      (v65)(v108, *v56, v67);
      sub_1D8190024();
    }

    v69 = v114;
  }

  v71 = v122;
  sub_1D8190054();
  sub_1D7E9D92C(v64, type metadata accessor for BlueprintCompositionalListItemSeparatorOptions);
  v72 = [v68 indexPathsForSelectedItems];
  if (!v72)
  {
    sub_1D7E9D92C(v71, type metadata accessor for BlueprintCompositionalListItemSeparatorKind);

    swift_unknownObjectRelease();

    __swift_storeEnumTagSinglePayload(v69, 1, 1, v115);
    goto LABEL_24;
  }

  v73 = v72;
  v74 = v115;
  sub_1D8191314();

  sub_1D7E9D980();

  if (__swift_getEnumTagSinglePayload(v69, 1, v74) == 1)
  {
    sub_1D7E9D92C(v71, type metadata accessor for BlueprintCompositionalListItemSeparatorKind);

    swift_unknownObjectRelease();

LABEL_24:
    sub_1D7E9D5E0(v69, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
LABEL_29:
    v77 = v96;
    return (*(v126 + 32))(v124, v59, v77);
  }

  v75 = v102;
  v76 = v103;
  (*(v102 + 32))(v103, v69, v74);
  if (([v68 isEditing] & 1) != 0 || objc_msgSend(v125, sel_horizontalSizeClass) == 1)
  {

    swift_unknownObjectRelease();

    (*(v75 + 8))(v76, v74);
LABEL_28:
    sub_1D7E9D92C(v71, type metadata accessor for BlueprintCompositionalListItemSeparatorKind);
    goto LABEL_29;
  }

  v78 = v92;
  sub_1D7E9D3D0(v71, v92);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D7E9D92C(v78, type metadata accessor for BlueprintCompositionalListItemSeparatorKind);
    v79 = v108;
    v80 = v113;
    goto LABEL_37;
  }

  sub_1D7E9D92C(v78, type metadata accessor for BlueprintCompositionalListItemSeparatorOptions);
  v79 = v108;
  v80 = v113;
  if ((v94 & v116 & 1) == 0)
  {
    goto LABEL_37;
  }

  result = sub_1D818E974();
  if (!__OFADD__(result, 1))
  {
    v81 = v99;
    MEMORY[0x1DA710B60](0, result + 1);
    v82 = sub_1D818E914();
    (*(v75 + 8))(v81, v74);
    if (v82)
    {
      v80(v79, *MEMORY[0x1E69DC178], v119);
      sub_1D8190024();
    }

LABEL_37:
    if (sub_1D818E914())
    {
      v83 = *MEMORY[0x1E69DC178];
      v84 = v119;
      v80(v79, v83, v119);
      sub_1D8190024();
      v80(v79, v83, v84);
      sub_1D8190004();
    }

    result = sub_1D818E964();
    v85 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v86 = sub_1D818E974();
      v87 = v99;
      MEMORY[0x1DA710B60](v85, v86);
      v88 = v103;
      v89 = sub_1D818E914();
      v90 = *(v102 + 8);
      v90(v87, v74);
      if ((v89 & 1) == 0)
      {

        swift_unknownObjectRelease();

        v90(v88, v74);
        sub_1D7E9D92C(v71, type metadata accessor for BlueprintCompositionalListItemSeparatorKind);
        v77 = v96;
        v59 = v123;
        return (*(v126 + 32))(v124, v59, v77);
      }

      v80(v108, *MEMORY[0x1E69DC178], v119);
      v59 = v123;
      sub_1D8190024();

      swift_unknownObjectRelease();

      v90(v88, v74);
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_45:
  __break(1u);
  return result;
}

Swift::Void __swiftcall SelectedBackgroundView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  sub_1D7E9B700();
}

uint64_t sub_1D7E9D0CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1D7E9D134(v6, a3, type metadata accessor for BlueprintCompositionalListItemSeparatorOptions);
}

uint64_t sub_1D7E9D134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void Blueprint.item(indexPath:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = *(v2 + 40);
  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  v20 = v18;
  v21 = v3;
  v4 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  if (sub_1D818E974() < 0)
  {
    v14 = 1;
  }

  else
  {
    v17 = v1;
    v10 = sub_1D818E974();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_7();
    sub_1D818F394();
    OUTLINED_FUNCTION_9_11();
    swift_getWitnessTable();
    if (v10 >= sub_1D8191834())
    {
      v14 = 1;
      v1 = v17;
    }

    else
    {
      sub_1D818E974();
      sub_1D818F3B4();
      if (sub_1D818E964() < 0)
      {
        v14 = 1;
        v1 = v17;
      }

      else
      {
        v11 = sub_1D818E964();
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        v12 = sub_1D8191834();
        v1 = v17;
        if (v11 >= v12)
        {
          v14 = 1;
        }

        else
        {
          v13 = sub_1D818E964();
          BlueprintSection.subscript.getter(v13, v4);
          v14 = 0;
        }
      }

      (*(v6 + 8))(v9, v4);
    }
  }

  OUTLINED_FUNCTION_25_19();
  v15 = type metadata accessor for BlueprintItem();
  __swift_storeEnumTagSinglePayload(v1, v14, 1, v15);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E9D3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintCompositionalListItemSeparatorKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7E9D434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7E9D498()
{
  if (!qword_1EDBAEA40)
  {
    type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(255);
    sub_1D7E9F44C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBAEA40);
    }
  }
}

uint64_t sub_1D7E9D50C(uint64_t a1, uint64_t a2)
{
  sub_1D7E1AE68(0, &qword_1EDBAE670, MEMORY[0x1E69DC190]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7E9D58C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  CollectionViewListCell.isSelected.setter(a3);
}

uint64_t sub_1D7E9D5E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7E1AE68(0, a2, a3);
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t CollectionViewListCell.isSelected.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_setSelected_, a1 & 1);
  return sub_1D7E9D67C();
}

uint64_t sub_1D7E9D67C()
{
  v1 = v0;
  v2 = *(v0 + qword_1EDBB8BA8);
  v18 = v2;
  sub_1D7E0631C(0, qword_1EDBBB350);
  v3 = v2;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v19, v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    if ((*(v5 + 8))(v4, v5))
    {
      v6 = CollectionViewListCell.isSelected.getter();
      v7 = v22;
      v8 = v23;
      __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      (*(v8 + 24))(v6 & 1, v7, v8);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1D7E9DD24(v19, &unk_1EDBBB340, qword_1EDBBB350);
  }

  if ([v3 isAccessibilityElement])
  {
    v9 = CollectionViewListCell.isSelected.getter();
    v10 = [v3 accessibilityTraits];
    if (v9)
    {
      v11 = *MEMORY[0x1E69DDA08] | v10;
    }

    else
    {
      v11 = v10 & ~*MEMORY[0x1E69DDA08];
    }

    [v3 setAccessibilityTraits_];
  }

  swift_beginAccess();
  SelectionBehavior.style.getter(v21);
  v12 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v14 = CollectionViewListCell.isSelected.getter();
  v15 = CollectionViewListCell.isHighlighted.getter();
  v16 = qword_1EDBB8BD0;
  swift_beginAccess();
  (*(v13 + 16))(v14 & 1, v15 & 1, *(v1 + v16), v3, *(v1 + qword_1EDBB8BE8), v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  CollectionViewListCell.isSelected.getter();
  return sub_1D7E80824();
}

uint64_t sub_1D7E9D92C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E9D980()
{
  OUTLINED_FUNCTION_14_10();
  sub_1D818E994();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_29_3();
    v2(v1);
  }

  v3 = OUTLINED_FUNCTION_22_6();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1D7E9DA04()
{
  v1 = v0;
  v15 = *(v0 + qword_1EDBB8BA8);
  sub_1D7E0631C(0, qword_1EDBBA0F0);
  v2 = v15;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v13, v16);
    v3 = v17;
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    if ((*(v4 + 8))(v3, v4))
    {
      v5 = CollectionViewListCell.isHighlighted.getter();
      v6 = v17;
      v7 = v18;
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      (*(v7 + 24))(v5 & 1, v6, v7);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1D7E9DD24(v13, &unk_1EDBBA0E0, qword_1EDBBA0F0);
  }

  v8 = qword_1EDBB8BC0;
  swift_beginAccess();
  v15 = *(v1 + v8);
  SelectionBehavior.style.getter(v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = CollectionViewListCell.isHighlighted.getter();
  (*(v10 + 32))(v11 & 1, v2, *(v1 + qword_1EDBB8BE8), v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return sub_1D7E80824();
}

void sub_1D7E9DC10(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_29_1();
      sub_1D7E1B5C8(v15, v16, v18, v17);
      v19 = OUTLINED_FUNCTION_23_2();
      v20 = _swift_stdlib_malloc_size(v19);
      v19[2] = v13;
      v19[3] = 2 * ((v20 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v19 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v19 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1D7E9DD24(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D7E328A8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall TraitEnvironmentBackgroundSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  v4 = !_ && [(UIView *)selectedBackgroundView isHidden];

  [(UIView *)selectedBackgroundView setHidden:v4];
}

uint64_t Diff.insertedIndices.getter()
{
  OUTLINED_FUNCTION_30_16();
  type metadata accessor for Diff();
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_99();

  return v1(v0);
}

uint64_t Diff.deletedIndices.getter()
{
  OUTLINED_FUNCTION_30_16();
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_109();

  return v1(v0);
}

uint64_t Then.run(finished:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(*v1 + 10);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00]();
  v7 = &v10 - v6;
  v1[2](v5);
  v8 = (*(v4 + 8))(v7, v3);
  return a1(v8);
}

uint64_t sub_1D7E9DFE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D818F894();
    sub_1D7E80A18();
  }

  return result;
}

id static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:width:traits:traitCollection:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, double a6, double a7, double a8)
{
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v15 scaledValueForValue:a5 compatibleWithTraitCollection:a6];
  v17 = v16;

  if (v17 < a7)
  {
    a7 = v17;
  }

  sub_1D7E4E810();
  return static UIFont.systemFont(ofSize:weight:width:traits:)(a2, a3 & 1, a4, a7, a8);
}

id static UIFont.systemFont(ofSize:weight:width:traits:)(uint64_t a1, char a2, int a3, double a4, double a5)
{
  if (a2)
  {
    v8 = *MEMORY[0x1E69DB9B8];
  }

  else
  {
    v8 = *&a1;
  }

  v9 = objc_opt_self();
  result = [v9 systemFontOfSize:a4 weight:a5 width:v8];
  v11 = result;
  if (a3)
  {
    v12 = [result fontDescriptor];
    v13 = [v12 fontDescriptorWithSymbolicTraits_];
    if (!v13)
    {
      v13 = v12;
    }

    v14 = [v9 fontWithDescriptor:v13 size:a4];

    return v14;
  }

  return result;
}

Swift::Void __swiftcall TraitEnvironmentBackgroundSelectionStyle.select(_:isHighlighted:hasBeenTraversed:view:selectedBackgroundView:)(Swift::Bool _, Swift::Bool isHighlighted, Swift::Bool hasBeenTraversed, UIView *view, UIView *selectedBackgroundView)
{
  v6 = 0;
  if (!isHighlighted)
  {
    if (!_ || (Strong = swift_unknownObjectWeakLoadStrong()) == 0 || ((v8 = [Strong traitCollection], swift_unknownObjectRelease(), v9 = objc_msgSend(v8, sel_horizontalSizeClass), v10 = objc_msgSend(v8, sel_verticalSizeClass), v8, v9 != 1) ? (v11 = v10 == 1) : (v11 = 1), v11 || (v9 != 2 ? (v12 = v10 == 2) : (v12 = 1), !v12)))
    {
      v6 = 1;
    }
  }

  [(UIView *)selectedBackgroundView setHidden:v6, view];
}

uint64_t CollectionViewListCell.isSwiped.setter(char a1)
{
  v3 = qword_1EDBB8B90;
  OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return sub_1D7E9E3AC();
}

uint64_t When.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - v8;
  v10 = v2[2];
  if (v10)
  {
    v16 = v5;

    v10(v11);
    sub_1D7E0E10C(v10);
    return (*(v16 + 32))(a2, v9, v4);
  }

  else
  {
    v13 = *(v5 + 16);
    v14 = v2 + *(v6 + 96);

    return v13(a2, v14, v4, v7);
  }
}

char *BlueprintCollectionViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintImpressionManager:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = *v7;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_123(*((*MEMORY[0x1E69E7D40] & *v7) + 0xA8));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_123(*(v15 + 184));
  swift_weakInit();
  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v16 + 192) + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_123(*(v17 + 200));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v18 + 208)) = 0;
  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v19 + 216)) = 0;
  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v20 + 224)) = 0;
  OUTLINED_FUNCTION_2_79();
  v22 = (v7 + *(v21 + 232));
  *v22 = 0;
  v22[1] = 0;
  OUTLINED_FUNCTION_2_79();
  v24 = v7 + *(v23 + 248);
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = v7 + *((*v13 & *v7) + 0x100);
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = 1;
  OUTLINED_FUNCTION_2_79();
  v27 = *(v26 + 264);
  type metadata accessor for ViewControllerTransitionManager();
  OUTLINED_FUNCTION_0_8();
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x1E69E7CC8];
  *(v7 + v27) = v28;
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_123(*(v29 + 296));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v30 + 304)) = 0;
  OUTLINED_FUNCTION_2_79();
  v32 = (v7 + *(v31 + 312));
  v33 = *((v14 & v12) + 0x50);
  swift_getAssociatedTypeWitness();
  *v32 = sub_1D8192914();
  v32[1] = v34;
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_48_0();
  v36 = v35;
  (*(v35 + 16))(v7 + v37, a1, v33);
  OUTLINED_FUNCTION_2_79();
  v38 = *((v14 & v12) + 0x58);
  OUTLINED_FUNCTION_48_0();
  v40 = v39;
  (*(v39 + 16))(v7 + v41, a2, v38);
  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v42 + 152)) = a3;
  OUTLINED_FUNCTION_2_79();
  v44 = (v7 + *(v43 + 160));
  *v44 = a4;
  v44[1] = a5;
  OUTLINED_FUNCTION_2_79();
  v63 = a6;
  sub_1D7E25380(a6, v7 + *(v45 + 272));
  OUTLINED_FUNCTION_2_79();
  v47 = v7 + *(v46 + 280);
  *v47 = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 4) = 0;
  OUTLINED_FUNCTION_2_79();
  v49 = v7 + *(v48 + 288);
  *v49 = v50;
  *(v49 + 1) = v50;
  *(v49 + 4) = 0;
  sub_1D818EAF4();

  swift_unknownObjectRetain();
  sub_1D818EAE4();
  if (qword_1EDBBC5D0 != -1)
  {
    OUTLINED_FUNCTION_46_6();
  }

  sub_1D818EAD4();

  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v51 + 240)) = v52;
  [objc_allocWithZone(type metadata accessor for MultiCollectionViewDelegate()) init];
  OUTLINED_FUNCTION_2_79();
  *(v7 + *(v53 + 176)) = v54;
  v65.receiver = v7;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, sel_init);
  OUTLINED_FUNCTION_104_1();
  v57 = *&v56[*(v55 + 176)];
  v58 = v56;
  v59 = v57;
  MultiCollectionViewDelegate.addDelegate<A>(_:)(v58);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  (*(v40 + 8))(a2, v38);
  (*(v36 + 8))(a1, v33);
  return v58;
}

uint64_t sub_1D7E9EA44(double *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(a1 + 16);
  v5 = a1[46];
  v6 = *(a1 + 47);
  v7 = a1[48];
  if (sub_1D8190B24())
  {
    v12 = MEMORY[0x1E69E7CD0];
    v8 = [v4 userInterfaceIdiom];
    if (v8 == 6 || v8 == 1)
    {
      *&v13 = v2;
      *(&v13 + 1) = v3;
      v14 = v5;
      v15 = 0.0;
      v16 = v7;
      v17[0] = 0;
      sub_1D7F5A1F8(v25, &v13);
      if (v3 < v2)
      {
        v25[0] = v2;
        v25[1] = v3;
        v25[2] = v5;
        v25[3] = 240.0;
        v25[4] = v7;
        v25[5] = 0.0;
        sub_1D7F5A1F8(v24, v25);
      }

      v24[0] = v3;
      v24[1] = v2;
      v24[2] = v5;
      v24[3] = 0.0;
      v24[4] = v7;
      v24[5] = 0.0;
      sub_1D7F5A1F8(v23, v24);
      if (v2 < v3)
      {
        v23[0] = v3;
        v23[1] = v2;
        v23[2] = v5;
        v23[3] = 240.0;
        v23[4] = v7;
        v23[5] = 0.0;
        sub_1D7F5A1F8(v11, v23);
      }
    }

    return v12;
  }

  else
  {
    v13 = *a1;
    v14 = a1[2];
    v15 = v2;
    v16 = v3;
    memcpy(v17, a1 + 5, 0x58uLL);
    v17[11] = v4;
    memcpy(v18, a1 + 17, sizeof(v18));
    v19 = v5;
    v20 = v6;
    v21 = v7;
    memcpy(v22, a1 + 49, sizeof(v22));
    return sub_1D811B69C(&v13);
  }
}

void sub_1D7E9EBD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7E9EC28(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v49 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v42[0] = a1;
    v40 = *(a1 + 16);
    if (v40)
    {
      v4 = 0;
      v5 = a2 + 56;
      v6 = a1 + 32;
      while (1)
      {
        v7 = (v6 + 48 * v4);
        v8 = v7[1];
        v46 = *v7;
        v47 = v8;
        v48 = v7[2];
        v4 = (v4 + 1);
        sub_1D81927E4();
        sub_1D811B984();
        v9 = sub_1D8192824();
        v10 = -1 << *(v2 + 32);
        v11 = v9 & ~v10;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & *(v5 + 8 * (v11 >> 6))) != 0)
        {
          break;
        }

LABEL_12:
        if (v4 == v40)
        {
          return v2;
        }
      }

      while (1)
      {
        v14 = (*(v2 + 48) + 48 * v11);
        v15 = v14->f64[0] == *&v46 && v14->f64[1] == *(&v46 + 1);
        if (v15 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14[1], v47), vceqq_f64(v14[2], v48)))) & 1) != 0)
        {
          break;
        }

        v11 = (v11 + 1) & ~v10;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if ((*(v5 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_12;
        }
      }

      v42[1] = v4;
      v16 = (63 - v10) >> 6;
      v17 = 8 * v16;
      v39 = v16;
      if (v16 > 0x80)
      {
        goto LABEL_40;
      }

      for (i = sub_1D8190DB4(); ; i = )
      {
        v40 = &v39;
        MEMORY[0x1EEE9AC00](i);
        v20 = (&v39 - v19);
        memcpy(&v39 - v19, (v2 + 56), v17);
        v21 = *(v2 + 16);
        v20[v12] &= ~v13;
        v17 = v21 - 1;
        v22 = *(a1 + 16);
        if (v4 == v22)
        {
          break;
        }

        v13 = 48;
        v12 = 1;
        while (v4 < v22)
        {
          v23 = (v6 + 48 * v4);
          v24 = v23[1];
          v43 = *v23;
          v44 = v24;
          v45 = v23[2];
          sub_1D81927E4();
          sub_1D811B984();
          v11 = &v41;
          v25 = sub_1D8192824();
          v26 = -1 << *(v2 + 32);
          v27 = v25 & ~v26;
          v28 = v27 >> 6;
          v29 = 1 << v27;
          if (((1 << v27) & *(v5 + 8 * (v27 >> 6))) != 0)
          {
            v30 = ~v26;
            while (1)
            {
              v31 = (*(v2 + 48) + 48 * v27);
              v32 = v31->f64[0] == *&v43 && v31->f64[1] == *(&v43 + 1);
              if (v32 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v31[1], v44), vceqq_f64(v31[2], v45)))) & 1) != 0)
              {
                break;
              }

              v27 = (v27 + 1) & v30;
              v28 = v27 >> 6;
              v29 = 1 << v27;
              if ((*(v5 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
              {
                goto LABEL_33;
              }
            }

            v33 = v20[v28];
            v20[v28] = v33 & ~v29;
            if ((v33 & v29) != 0)
            {
              if (__OFSUB__(v17--, 1))
              {
                goto LABEL_39;
              }

              if (!v17)
              {

                v2 = MEMORY[0x1E69E7CD0];
                goto LABEL_35;
              }
            }
          }

LABEL_33:
          v4 = (v4 + 1);
          v22 = *(a1 + 16);
          if (v4 == v22)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:

        sub_1D8190DB4();
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v37 = swift_slowAlloc();
          v38 = sub_1D808CB18(v37, v39, (v2 + 56), v39, v2, v11, v42);

          MEMORY[0x1DA715D00](v37, -1, -1);

          return v38;
        }
      }

LABEL_34:
      sub_1D8065824(v20, v39, v17, v2);
      v2 = v35;
LABEL_35:
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void __swiftcall CollectionViewListCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes *__return_ptr retstr, UICollectionViewLayoutAttributes *a2)
{
  OUTLINED_FUNCTION_16_1();
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  v3 = [(UICollectionViewLayoutAttributes *)&v4 preferredLayoutAttributesFittingAttributes:?];
  [v3 frame];
  [v3 setFrame_];
}

id sub_1D7E9F0BC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CollectionViewListCell.preferredLayoutAttributesFitting(_:)(v6, v4);
  v8 = v7;

  return v8;
}

void sub_1D7E9F154()
{
  type metadata accessor for NSDirectionalEdgeInsets();
  if (v0 <= 0x3F)
  {
    sub_1D7E9F1D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7E9F1D8()
{
  if (!qword_1EDBAE670)
  {
    sub_1D8190044();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE670);
    }
  }
}

uint64_t sub_1D7E9F230(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 565))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t BlueprintSection.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

void sub_1D7E9F310()
{
  sub_1D7E9D498();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1D7E9F370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 564) = 0;
    *(result + 560) = 0;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 565) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 565) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7E9F44C()
{
  result = qword_1EDBB2F68;
  if (!qword_1EDBB2F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2F68);
  }

  return result;
}

uint64_t sub_1D7E9F490(void *a1, uint64_t a2)
{
  v2 = a1;
  v27 = *a1;
  v28 = a2;
  v3 = v27[11];
  v4 = v27[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for BlueprintSection();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - v6;
  v7 = type metadata accessor for Blueprint();
  swift_getWitnessTable();
  v8 = sub_1D8190E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = v27[15];
  v27 = v2;
  v23 = v16;
  BlueprintProviderType.blueprint.getter(v4, v3);
  sub_1D81918B4();
  v17 = *(v12 + 8);
  v17(v15, v7);
  AssociatedTypeWitness = sub_1D818E974();
  swift_getWitnessTable();
  LOBYTE(v2) = sub_1D8191254();
  (*(v9 + 8))(v11, v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v18 = sub_1D818E964();
  BlueprintProviderType.blueprint.getter(v4, v3);
  sub_1D818E974();
  v19 = v24;
  Blueprint.subscript.getter();
  v17(v15, v7);
  v20 = v26;
  v21 = BlueprintSection.endIndex.getter(v26);
  result = (*(v25 + 8))(v19, v20);
  if (!__OFSUB__(v21, 1))
  {
    return v18 == v21 - 1;
  }

  __break(1u);
  return result;
}

double sub_1D7E9F894()
{
  v0 = type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EDBAEA50);
  v1 = __swift_project_value_buffer(v0, qword_1EDBAEA50);
  if (sub_1D8190B24())
  {
    v2 = 16.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(v0 + 24);
  v4 = sub_1D8190044();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  result = 16.0;
  *(v1 + 40) = xmmword_1D81A1C50;
  *(v1 + 56) = v2;
  return result;
}