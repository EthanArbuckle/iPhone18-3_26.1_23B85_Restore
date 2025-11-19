uint64_t sub_1D4D91944()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 792) = v5;
  *(v3 + 800) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 224);
  if (v0)
  {

    OUTLINED_FUNCTION_152();
    v8 = sub_1D4D91FB8;
  }

  else
  {
    OUTLINED_FUNCTION_152();
    v8 = sub_1D4D91A68;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

void sub_1D4D91A68()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 792);
  *(v0 + 136) = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v4 = v1 + 32;
    do
    {
      OUTLINED_FUNCTION_4();
      sub_1D4DA190C(v4, v0 + 16);
      v5 = *(v0 + 80);
      v6 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v5);
      (*(v6 + 32))(v5, v6);
      OUTLINED_FUNCTION_16();
      if (*(v0 + 328))
      {
        sub_1D4D8C458((v0 + 304), v0 + 264);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_115();
          sub_1D4D9C860();
          v3 = v9;
        }

        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          OUTLINED_FUNCTION_76(v7);
          OUTLINED_FUNCTION_77();
          sub_1D4D9C860();
          v3 = v10;
        }

        *(v3 + 16) = v8 + 1;
        sub_1D4D8C458((v0 + 264), v3 + 40 * v8 + 32);
      }

      else
      {
        sub_1D4DA1814(v0 + 304, &qword_1EC7E3758, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
      }

      v4 += 80;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_3();
  sub_1D4D94288();
  swift_endAccess();
  OUTLINED_FUNCTION_2();
  sub_1D4D9E598();
  v11 = *(v0 + 776) + 1;
  *(v0 + 776) = v11;
  if (v11 == *(v0 + 760))
  {
    v12 = *(v0 + 768);
    v13 = *(v0 + 616);

    OUTLINED_FUNCTION_95();
    v14 = *(v13 + v12);
    v15 = sub_1D4E0CA10();
    sub_1D4D95354(v15);
    OUTLINED_FUNCTION_134();
    sub_1D4E0CC50();
    OUTLINED_FUNCTION_109();

    v16 = sub_1D4D95480(v14);

    OUTLINED_FUNCTION_93();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_113();
    if (v17)
    {
      OUTLINED_FUNCTION_131();
    }

    else
    {
      OUTLINED_FUNCTION_145();
      *(v12 + v3) = sub_1D4D9C0B8(0, v26, &qword_1EC7E3A48, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
    }

    swift_endAccess();
    v27 = *(v16 + 16);
    if (!v27)
    {
LABEL_34:

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_3();
      sub_1D4D94288();
      swift_endAccess();
      OUTLINED_FUNCTION_129();

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_156();

      __asm { BRAA            X1, X16 }
    }

    v28 = MEMORY[0x1E69E7CC0];
    v29 = v16 + 32;
    while (1)
    {
      sub_1D4DA1A88(v29, v0 + 344);
      v30 = OUTLINED_FUNCTION_42();
      v31(v30);
      v32 = OUTLINED_FUNCTION_149();
      sub_1D4DA1130(v32, &qword_1EC7E3760);
      v33 = OUTLINED_FUNCTION_96();

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 344);
      OUTLINED_FUNCTION_112();
      if (v34)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v13 > *(v28 + 24) >> 1)
      {
        OUTLINED_FUNCTION_144();
        sub_1D4D9C860();
        v28 = v35;
      }

      if (*(v33 + 16))
      {
        OUTLINED_FUNCTION_70();
        if (v36 != v34)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_53();

        if (v14)
        {
          v37 = *(v28 + 16);
          v34 = __OFADD__(v37, v14);
          v38 = v37 + v14;
          if (v34)
          {
            goto LABEL_40;
          }

          *(v28 + 16) = v38;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_38;
        }
      }

      v29 += 40;
      if (!--v27)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = *(v0 + 752);
  if (v11 >= *(v18 + 16))
  {
LABEL_41:
    __break(1u);
    return;
  }

  sub_1D4DA1A88(v18 + 40 * v11 + 32, v0 + 224);
  OUTLINED_FUNCTION_124();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 784) = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_156();

  sub_1D4D94374(v21, v22, v23, v24);
}

uint64_t sub_1D4D91F40()
{
  OUTLINED_FUNCTION_1();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  OUTLINED_FUNCTION_37();

  return v1();
}

uint64_t sub_1D4D91FB8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t FacetBuilding.value.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_142(v1, v2, v3);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_30();
  v0[6] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_101(AssociatedTypeWitness);
  v0[8] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_153();
  v5 = swift_checkMetadataState();
  OUTLINED_FUNCTION_141(v5);
  v0[10] = v6;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D92148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v13 = OUTLINED_FUNCTION_85();
  v11(v13);
  v14 = OUTLINED_FUNCTION_58();
  v16 = v15(v14);
  v10[13] = v16;
  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_30();
  v17(v18);
  if (v16)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v10[14] = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_137(v19);
    OUTLINED_FUNCTION_32();

    return sub_1D4D929C8();
  }

  else
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_135();
    v10[16] = type metadata accessor for FacetBuildingPlan();
    (v11)(a9, a10);
    v23 = OUTLINED_FUNCTION_98();
    v24(v23);
    v25 = OUTLINED_FUNCTION_30();
    v17(v25);
    sub_1D4E0C870();
    v10[17] = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_0_0();
    sub_1D4DA1560(v26, v27);
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32();

    return MEMORY[0x1EEE6DFA0](v28, v29, v30);
  }
}

uint64_t sub_1D4D922E8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D923E0()
{
  OUTLINED_FUNCTION_31();

  *(v0 + 144) = FacetBuildingPlan.__allocating_init(system:)();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_118(v1);

  return FacetBuildingPlan.addFacet<A>(_:)();
}

uint64_t sub_1D4D92490()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_5();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v3;
  v4[1] = sub_1D4D925C0;

  return FacetBuildingPlan.optimize()();
}

uint64_t sub_1D4D925C0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 176) = v10;
    *v10 = v5;
    v10[1] = sub_1D4D92710;

    return FacetBuildingPlan.execute()();
  }
}

uint64_t sub_1D4D92710()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v3 + 192) = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_119(v10);

    return sub_1D4D929C8();
  }
}

uint64_t sub_1D4D92858()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D92950()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4D929C8()
{
  OUTLINED_FUNCTION_1();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[23] = v5;
  v1[28] = *v0;
  OUTLINED_FUNCTION_6(v5, &qword_1EC7E3700);
  v1[29] = v6;
  OUTLINED_FUNCTION_101(v6);
  v1[30] = OUTLINED_FUNCTION_117();
  sub_1D4E0C870();
  v1[31] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v7, v8);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[32] = v9;
  v1[33] = v10;
  v11 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4D92ABC()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 216);
  if (*(v1 + *(*v1 + 136)) == 1)
  {
    if (*(v1 + *(*v1 + 152)) == 1)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v0 + 272) = v2;
      *v2 = v3;
      v2[1] = sub_1D4D92CFC;
      v4 = *(v0 + 208);
      v5 = *(v0 + 192);
      v6 = *(v0 + 200);

      return sub_1D4D94374(v0 + 16, v5, v6, v4);
    }

    OUTLINED_FUNCTION_127();
    sub_1D4D9C5A8();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_50();
    *(v0 + 313) = 3;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_62();
    sub_1D4E0C890();
  }

  else
  {
    OUTLINED_FUNCTION_127();
    sub_1D4D9C5A8();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_50();
    *(v0 + 312) = 2;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_62();
    sub_1D4E0C890();
  }

  v8 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_1_0(v8, &qword_1EC7E3768);
  sub_1D4D9E650();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_47();
  sub_1D4E0C8E0();
  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_1D4D92CFC()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_25();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v5[35] = v0;

  if (v0)
  {
    v9 = v5[32];
    v10 = v5[33];
    v11 = sub_1D4D932DC;
  }

  else
  {
    v5[36] = v3;
    v9 = v5[32];
    v10 = v5[33];
    v11 = sub_1D4D92E0C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

void sub_1D4D92E0C()
{
  OUTLINED_FUNCTION_125();
  *(v0 + 56) = *(v0 + 288);
  sub_1D4DA190C(v0 + 16, v0 + 64);

  if (*(v0 + 88))
  {
    sub_1D4D8C458((v0 + 64), v0 + 112);
    __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_39();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_78();
    swift_getAssociatedConformanceWitness();
    *(v0 + 176) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 152));
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v0 + 296) = v1;
    *v1 = v2;
    v1[1] = sub_1D4D930E8;
    OUTLINED_FUNCTION_161();

    __asm { BRAA            X6, X16 }
  }

  OUTLINED_FUNCTION_127();
  sub_1D4DA1814(v0 + 64, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder);
  sub_1D4D9C5A8();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_50();
  *(v0 + 314) = 4;
  sub_1D4E0C880();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_62();
  sub_1D4E0C890();
  v5 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_1_0(v5, &qword_1EC7E3768);
  sub_1D4D9E650();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_47();
  sub_1D4E0C8E0();
  swift_willThrow();
  OUTLINED_FUNCTION_2();
  sub_1D4D9E598();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_161();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D4D930E8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 304) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_1D4D93340;
  }

  else
  {
    v7 = sub_1D4D93218;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D4D93218()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_2();
  sub_1D4D9E598();
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_1D4D932DC()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4D93340()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2();
  sub_1D4D9E598();
  __swift_deallocate_boxed_opaque_existential_0(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);

  OUTLINED_FUNCTION_37();

  return v1();
}

uint64_t FacetBuildingPlan.execute()()
{
  OUTLINED_FUNCTION_1();
  v1[6] = v0;
  v1[7] = sub_1D4E0C870();
  v1[8] = sub_1D4E0C860();
  OUTLINED_FUNCTION_0_0();
  v1[9] = sub_1D4DA1560(v2, v3);
  sub_1D4E0CD30();
  OUTLINED_FUNCTION_120();
  v1[10] = v4;
  v1[11] = v5;
  v6 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4D93474()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[9];
  v2 = sub_1D4DA1130(0, &qword_1EC7E3760);
  v3 = sub_1D4E0C860();
  v0[12] = v3;
  OUTLINED_FUNCTION_60();
  sub_1D4D9E438(0, v4, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest, v5);
  v7 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[13] = v8;
  *v8 = v9;
  v8[1] = sub_1D4D935A0;
  v10 = v0[6];

  return MEMORY[0x1EEE6DD58](v0 + 5, v2, v7, v3, v1, &unk_1D4E0DB48, v10, v2);
}

uint64_t sub_1D4D935A0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4D93754;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4D936A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4D936A4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 48);

  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_79();
  v4 = *(v3 + 128);
  swift_beginAccess();
  *(v1 + v4) = v2;

  OUTLINED_FUNCTION_79();
  *(v1 + *(v5 + 152)) = 1;
  OUTLINED_FUNCTION_8();

  return v6();
}

uint64_t sub_1D4D93754()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

SonicKit::FacetBuildingError_optional __swiftcall FacetBuildingError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 1;
  switch(rawValue)
  {
    case 'e':
      break;
    case 'f':
      v2 = 2;
      break;
    case 'g':
      v2 = 3;
      break;
    case 'h':
      v2 = 4;
      break;
    case 'i':
      v2 = 5;
      break;
    case 'j':
      v2 = 6;
      break;
    default:
      if (rawValue == 203)
      {
        v3 = 9;
      }

      else
      {
        v3 = 10;
      }

      if (rawValue == 202)
      {
        v4 = 8;
      }

      else
      {
        v4 = v3;
      }

      if (rawValue == 201)
      {
        v2 = 7;
      }

      else
      {
        v2 = v4;
      }

      if (!rawValue)
      {
        v2 = 0;
      }

      break;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D4D938A8@<X0>(uint64_t *a1@<X8>)
{
  result = FacetBuildingError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t *FacetBuildingPlan.init(system:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + *(*v2 + 112)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_88();
  *(v2 + *(v6 + 120)) = v5;
  OUTLINED_FUNCTION_88();
  *(v2 + *(v7 + 128)) = v5;
  OUTLINED_FUNCTION_88();
  *(v2 + *(v8 + 136)) = 0;
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 144);
  sub_1D4D9E368();
  *(v2 + v10) = sub_1D4E0C9F0();
  OUTLINED_FUNCTION_88();
  *(v2 + *(v11 + 152)) = 0;
  OUTLINED_FUNCTION_88();
  v13 = *(v4 + 80);
  (*(*(v13 - 8) + 16))(v2 + *(v12 + 96), a1, v13);
  v14 = (*(*(v4 + 88) + 64))(v13);
  v15 = OUTLINED_FUNCTION_63();
  v16(v15);
  OUTLINED_FUNCTION_88();
  *(v2 + *(v17 + 104)) = v14;
  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D4D93AFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a4;
  v6[15] = a6;
  v6[12] = a1;
  v6[13] = a2;
  v6[16] = *a2;
  v6[17] = *(a4 - 8);
  v6[18] = swift_task_alloc();
  sub_1D4E0C870();
  v6[19] = sub_1D4E0C860();
  sub_1D4DA1560(&qword_1EC7E3660, MEMORY[0x1E69D38C0]);
  v8 = sub_1D4E0CD30();
  v6[20] = v8;
  v6[21] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D4D93C40, v8, v7);
}

uint64_t sub_1D4D93C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = v14[18];
  v16 = v14[14];
  v17 = v14[15];
  v18 = v14[13];
  v46 = v14[12];
  v19 = *(*v18 + 112);
  OUTLINED_FUNCTION_93();
  sub_1D4D9C3A8();
  v20 = *(*(v18 + v19) + 16);
  sub_1D4D9C480(v20);
  OUTLINED_FUNCTION_148();
  v21();
  sub_1D4D9E25C(v20, v15, (v18 + v19), v16, v17, sub_1D4DA1B44);
  swift_endAccess();
  v22 = OUTLINED_FUNCTION_30();
  v14[22] = v23(v22);
  v14[11] = v16;
  OUTLINED_FUNCTION_64();
  v14[23] = swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_58();
  v24 = sub_1D4E0CC20();
  v14[10] = v24;
  OUTLINED_FUNCTION_58();
  if (v24 == sub_1D4E0CCB0())
  {

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_32();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v46, a12, a13, a14);
  }

  else
  {
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_130();
    if (v15)
    {
      sub_1D4DA1A88(v14[22] + 40 * v24 + 32, (v14 + 2));
      sub_1D4E0CCF0();
      v34 = OUTLINED_FUNCTION_78();
      __swift_project_boxed_opaque_existential_1(v34, v35);
      OUTLINED_FUNCTION_18();
      v47 = v36 + *v36;
      v37 = swift_task_alloc();
      v14[24] = v37;
      *v37 = v14;
      OUTLINED_FUNCTION_44(v37);
      OUTLINED_FUNCTION_32();

      return v43(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, v47, a12, a13, a14);
    }

    else
    {
      result = sub_1D4E0CF80();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D4D93F20()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_138();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  v4 = *(v0 + 168);
  v5 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D4D94030, v5, v4);
}

uint64_t sub_1D4D94030()
{
  OUTLINED_FUNCTION_123();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  OUTLINED_FUNCTION_91();
  v2 = sub_1D4E0CCB0();
  v3 = v0[10];
  if (v3 == v2)
  {

    OUTLINED_FUNCTION_37();

    return v4();
  }

  else
  {
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_130();
    if (v1)
    {
      v6 = OUTLINED_FUNCTION_140(v0[22] + 40 * v3);
      sub_1D4DA1A88(v6, v7);
      sub_1D4E0CCF0();
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_18();
      v11 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[24] = v9;
      *v9 = v0;
      v10 = OUTLINED_FUNCTION_44();

      return v11(v10);
    }

    else
    {
      result = sub_1D4E0CF80();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D4D941F8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_93();
  sub_1D4E0CA10();
  sub_1D4D94288();
  return swift_endAccess();
}

void sub_1D4D94288()
{
  OUTLINED_FUNCTION_165();
  v2 = v1;
  v3 = *(v1 + 16);
  if (__OFADD__(*(*v0 + 16), v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D4D9C52C();
  v4 = *v0;
  if (!*(v2 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = OUTLINED_FUNCTION_153();
  sub_1D4DA1130(v5, v6);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v0 = v4;
    OUTLINED_FUNCTION_166();
    return;
  }

  v7 = *(v4 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v4 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1D4D94374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[77] = v4;
  v5[76] = a4;
  v5[75] = a3;
  v5[74] = a2;
  v5[73] = a1;
  v5[78] = *v4;
  sub_1D4E0C870();
  v5[79] = sub_1D4E0C860();
  sub_1D4DA1560(&qword_1EC7E3660, MEMORY[0x1E69D38C0]);
  v7 = sub_1D4E0CD30();
  v5[80] = v7;
  v5[81] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D4D94478, v7, v6);
}

uint64_t sub_1D4D94478()
{
  *(v0 + 656) = *(*(v0 + 608) + 16);
  sub_1D4E0CF60();
  OUTLINED_FUNCTION_87();
  *(v0 + 664) = *(v1 + 144);
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_105();
  sub_1D4DD0F04(v2, v3, v4, v5);

  v6 = *(v0 + 136);
  if (v6)
  {
    v7 = *(v0 + 584);
    v27 = *(v0 + 96);
    v28 = *(v0 + 112);
    v29 = *(v0 + 128);
    swift_endAccess();

    *v7 = v27;
    *(v7 + 16) = v28;
    *(v7 + 32) = v29;
LABEL_5:
    OUTLINED_FUNCTION_106();

    return v21(v6);
  }

  v8 = *(v0 + 600);
  sub_1D4DA17C0();
  swift_endAccess();
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  v9 = OUTLINED_FUNCTION_136();
  v11 = v10(v9);
  v12 = v11;
  *(v0 + 672) = v11;
  sub_1D4E0CA10();
  *(v0 + 560) = v8;
  OUTLINED_FUNCTION_64();
  *(v0 + 680) = swift_getExtendedExistentialTypeMetadata();
  v13 = sub_1D4E0CC20();

  *(v0 + 552) = v13;
  *(v0 + 465) = 0;
  *(v0 + 704) = 0xEB00000000737265;
  *(v0 + 696) = 0x646C697562206F4ELL;
  v14 = MEMORY[0x1E69E7CC0];
  *(v0 + 688) = MEMORY[0x1E69E7CC0];
  if (v13 == sub_1D4E0CCB0())
  {
    v15 = *(v0 + 584);

    sub_1D4D9EA38(0x646C697562206F4ELL, 0xEB00000000737265, 0);

    sub_1D4DA187C(v0 + 240, v0 + 144);
    *(v0 + 184) = v14;
    OUTLINED_FUNCTION_136();
    sub_1D4E0CF60();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_89();
    sub_1D4DD0FD4(v16, v17, v18);
    swift_endAccess();
    sub_1D4DA1814(v0 + 240, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder);
    v19 = *(v0 + 144);
    v20 = *(v0 + 160);
    v6 = *(v0 + 184);
    *(v15 + 32) = *(v0 + 176);
    *v15 = v19;
    *(v15 + 16) = v20;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_78();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_114();
  sub_1D4E0CC60();
  if (v12)
  {
    sub_1D4DA1A88(*(v0 + 672) + 40 * v13 + 32, v0 + 280);
    OUTLINED_FUNCTION_47();
    sub_1D4E0CCF0();
    sub_1D4D8C458((v0 + 280), v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_15();
    v26 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 712) = v24;
    *v24 = v0;
    v25 = OUTLINED_FUNCTION_40(v24);

    return v26(v25);
  }

  else
  {
    result = sub_1D4E0CF80();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4D948B8()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 720) = v5;
  *(v3 + 728) = v0;

  if (v0)
  {
    v6 = *(v3 + 465);

    v7 = OUTLINED_FUNCTION_90();
    sub_1D4D9EA38(v7, v8, v6);

    v9 = *(v3 + 648);
    v10 = *(v3 + 640);
    v11 = sub_1D4D94F48;
  }

  else
  {
    v9 = *(v3 + 648);
    v10 = *(v3 + 640);
    v11 = sub_1D4D94A04;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1D4D94A04()
{
  v1 = (v0 + 576);
  v2 = *(v0 + 720);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    *(v0 + 568) = MEMORY[0x1E69E7CC0];
    sub_1D4DD82FC(0, v3, 0);
    v4 = *(v0 + 568);
    v5 = v2 + 32;
    do
    {
      OUTLINED_FUNCTION_4();
      sub_1D4DA190C(v5, v0 + 16);
      v6 = *(v0 + 80);
      v7 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
      (*(v7 + 24))(v6, v7);
      OUTLINED_FUNCTION_16();
      v8 = *(v0 + 448);
      v9 = *(v0 + 464);
      *(v0 + 568) = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = OUTLINED_FUNCTION_76(v10);
        v51 = v14;
        sub_1D4DD82FC(v13, v11 + 1, 1);
        v8 = v51;
        v4 = *(v0 + 568);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 24 * v11;
      *(v12 + 32) = v8;
      *(v12 + 48) = v9;
      v5 += 80;
      --v3;
    }

    while (v3);
  }

  v15 = *(v0 + 728);
  *(v0 + 576) = v4;
  sub_1D4E0CA10();
  sub_1D4D9CD10((v0 + 576));
  if (v15)
  {

    OUTLINED_FUNCTION_157();
  }

  else
  {
    v18 = *v1;
    if (*(*v1 + 16))
    {
      v20 = *(v18 + 32);
      v19 = *(v18 + 40);
      v21 = *(v18 + 48);
      v22 = OUTLINED_FUNCTION_78();
      sub_1D4D9E764(v22, v23, v21);
    }

    else
    {
      v21 = 0;
      v19 = 0x80000001D4E323F0;
      v20 = 0xD000000000000011;
    }

    v24 = *(v0 + 465);
    v25 = *(v0 + 704);
    v26 = *(v0 + 696);

    *(v0 + 472) = v20;
    *(v0 + 480) = v19;
    *(v0 + 488) = v21;
    *(v0 + 496) = v26;
    *(v0 + 504) = v25;
    *(v0 + 512) = v24;
    if (static FacetAvailability.< infix(_:_:)((v0 + 496), (v0 + 472)))
    {
      v27 = (v0 + 720);
      v28 = *(v0 + 465);

      v29 = OUTLINED_FUNCTION_107();
      sub_1D4D9EA38(v29, v30, v28);
      v52 = *(v0 + 344);
      __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
      *(v0 + 384) = v52;
      __swift_allocate_boxed_opaque_existential_1Tm((v0 + 360));
      OUTLINED_FUNCTION_36();
      (*(v31 + 16))();
      sub_1D4DA1814(v0 + 240, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder);
      v32 = *(v0 + 376);
      *(v0 + 240) = *(v0 + 360);
      *(v0 + 256) = v32;
      *(v0 + 272) = *(v0 + 392);
    }

    else
    {

      v33 = OUTLINED_FUNCTION_78();
      sub_1D4D9EA38(v33, v34, v21);
      v21 = *(v0 + 465);
      v19 = *(v0 + 704);
      v27 = (v0 + 688);
      v20 = *(v0 + 696);
    }

    v35 = *v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 320);
    v36 = *(v0 + 552);
    *(v0 + 465) = v21;
    *(v0 + 704) = v19;
    *(v0 + 696) = v20;
    *(v0 + 688) = v35;
    if (v36 == sub_1D4E0CCB0())
    {
      v37 = *(v0 + 584);

      v38 = OUTLINED_FUNCTION_78();
      sub_1D4D9EA38(v38, v39, v21);

      sub_1D4DA187C(v0 + 240, v0 + 144);
      *(v0 + 184) = v35;
      OUTLINED_FUNCTION_107();
      sub_1D4E0CF60();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_89();
      sub_1D4DD0FD4(v40, v41, v42);
      swift_endAccess();
      sub_1D4DA1814(v0 + 240, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder);
      v43 = *(v0 + 176);
      v44 = *(v0 + 160);
      *v37 = *(v0 + 144);
      *(v37 + 16) = v44;
      *(v37 + 32) = v43;
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_157();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_91();
    v47 = sub_1D4E0CCA0();
    sub_1D4E0CC60();
    if (v47)
    {
      sub_1D4DA1A88(*(v0 + 672) + 40 * v36 + 32, v0 + 280);
      sub_1D4E0CCF0();
      sub_1D4D8C458((v0 + 280), v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_15();
      v48 = swift_task_alloc();
      *(v0 + 712) = v48;
      *v48 = v0;
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_157();

      __asm { BRAA            X5, X16 }
    }

    result = sub_1D4E0CF80();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4D94F48()
{
  OUTLINED_FUNCTION_1();

  sub_1D4DA1814(v0 + 240, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 320);
  OUTLINED_FUNCTION_37();

  return v1();
}

uint64_t sub_1D4D94FCC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  sub_1D4E0CA10();
  sub_1D4D9CD10(&v7);
  if (*(v7 + 2))
  {
    v4 = *(v7 + 4);
    v3 = *(v7 + 5);
    v5 = v7[48];
    sub_1D4D9E764(v4, v3, v5);
  }

  else
  {

    v5 = 0;
    v3 = 0x80000001D4E323F0;
    v4 = 0xD000000000000011;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  return result;
}

void Collection<>.worst.getter(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = sub_1D4E0CC00();
  if (*(v4 + 16))
  {
    v1 = *(v4 + 32);
    v3 = *(v4 + 40);
    v5 = *(v4 + 48);
    sub_1D4D9E764(v1, v3, v5);
  }

  else
  {

    v5 = 0;
    OUTLINED_FUNCTION_143();
  }

  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
}

uint64_t sub_1D4D9513C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4E0CF60();
  v2 = *(*v1 + 144);
  swift_beginAccess();
  sub_1D4DD0F04(v7, v8, *(v1 + v2), &v5);

  v3 = v6;
  if (v6)
  {
    sub_1D4E0CA10();
  }

  sub_1D4DA17C0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1D4D9523C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D4DD82DC(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1D4DA190C(v4, v8);
      sub_1D4DA1398();
      sub_1D4D9E504();
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D4DD82DC((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      memcpy((v2 + 80 * v6 + 32), __src, 0x50uLL);
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D4D95354(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_73();
    v12 = v3;
    sub_1D4DD8410(0, v2, 0);
    v4 = v1 + 32;
    do
    {
      sub_1D4DA1A88(v4, v10);
      OUTLINED_FUNCTION_47();
      sub_1D4DA1130(v5, v6);
      sub_1D4DA1130(0, &qword_1EC7E3710);
      swift_dynamicCast();
      v12 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D4DD8410((v7 > 1), v8 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v8 + 1;
      sub_1D4D8C458(&v11, v3 + 40 * v8 + 32);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1D4D95480(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D4DD83D8(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1D4DA1A88(v4, v8);
      sub_1D4DA1130(0, &qword_1EC7E3710);
      sub_1D4DA1130(0, &qword_1EC7E3760);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D4DD83D8((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D4D8C458(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D4D955C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  sub_1D4DA15F8();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  sub_1D4D9E4A0(0, &qword_1EC7E3A40, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = sub_1D4E0C870();
  v3[37] = sub_1D4E0C860();
  v3[38] = sub_1D4DA1560(&qword_1EC7E3660, MEMORY[0x1E69D38C0]);
  v6 = sub_1D4E0CD30();
  v3[39] = v6;
  v3[40] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D4D95758, v6, v5);
}

uint64_t sub_1D4D95758()
{
  v1 = *(v0 + 240);
  OUTLINED_FUNCTION_79();
  v3 = *(v2 + 128);
  OUTLINED_FUNCTION_100();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v22 = **(v0 + 232);
    v6 = v4 + 32;
    v7 = sub_1D4E0CD50();
    sub_1D4E0CA10();
    do
    {
      v8 = *(v0 + 272);
      __swift_storeEnumTagSinglePayload(*(v0 + 280), 1, 1, v7);
      sub_1D4DA1A88(v6, v0 + 16);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      sub_1D4D8C458((v0 + 16), v9 + 32);
      v10 = OUTLINED_FUNCTION_105();
      sub_1D4DA172C(v10, v11);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v7);
      v13 = *(v0 + 272);
      if (EnumTagSinglePayload == 1)
      {
        sub_1D4DA17C0();
      }

      else
      {
        sub_1D4E0CD40();
        (*(*(v7 - 8) + 8))(v13, v7);
      }

      if (*(v9 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = sub_1D4E0CD30();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      sub_1D4DA1130(0, &qword_1EC7E3760);

      if (v16 | v14)
      {
        v17 = v0 + 136;
        *(v0 + 136) = 0;
        *(v0 + 144) = 0;
        *(v0 + 152) = v14;
        *(v0 + 160) = v16;
      }

      else
      {
        v17 = 0;
      }

      *(v0 + 192) = 1;
      *(v0 + 200) = v17;
      *(v0 + 208) = v22;
      swift_task_create();

      sub_1D4DA17C0();
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  sub_1D4DA1130(0, &qword_1EC7E3760);
  sub_1D4DA1130(0, &qword_1EE08A670);
  OUTLINED_FUNCTION_30();
  sub_1D4E0CD80();
  *(v0 + 328) = MEMORY[0x1E69E7CC0];
  *(v0 + 336) = sub_1D4E0C860();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 344) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_33(v18);

  return MEMORY[0x1EEE6DAD8](v20);
}

uint64_t sub_1D4D95B08()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 312);
    v8 = *(v3 + 320);
    v9 = sub_1D4D95DF0;
  }

  else
  {

    v7 = *(v3 + 312);
    v8 = *(v3 + 320);
    v9 = sub_1D4D95C18;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4D95C18()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 328);
  if (*(v0 + 80))
  {
    sub_1D4D8C458((v0 + 56), v0 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 328);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_115();
      sub_1D4D9C860();
      v3 = v10;
    }

    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_11();
      sub_1D4D9C860();
      v3 = v11;
    }

    *(v3 + 16) = v4 + 1;
    sub_1D4D8C458((v0 + 96), v3 + 40 * v4 + 32);
    *(v0 + 328) = v3;
    *(v0 + 336) = sub_1D4E0C860();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v0 + 344) = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_33();

    return MEMORY[0x1EEE6DAD8](v7);
  }

  else
  {
    v8 = *(v0 + 224);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    *v8 = v1;

    OUTLINED_FUNCTION_8();

    return v9();
  }
}

uint64_t sub_1D4D95DF0()
{
  OUTLINED_FUNCTION_51();

  v0 = OUTLINED_FUNCTION_58();
  v1(v0);

  OUTLINED_FUNCTION_37();

  return v2();
}

uint64_t sub_1D4D95E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D4D95EB4, 0, 0);
}

uint64_t sub_1D4D95EB4()
{
  OUTLINED_FUNCTION_51();
  sub_1D4DA1A88(v0[3], v0[2]);
  v1 = OUTLINED_FUNCTION_105();
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_18();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D4D95FCC;
  v5 = OUTLINED_FUNCTION_30();

  return v7(v5);
}

uint64_t sub_1D4D95FCC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_37();

    return v10();
  }
}

uint64_t sub_1D4D960E0()
{
  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 16));
  OUTLINED_FUNCTION_37();

  return v1();
}

uint64_t FacetBuildingPlan.deinit()
{
  OUTLINED_FUNCTION_36();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  return v0;
}

uint64_t FacetBuildingPlan.__deallocating_deinit()
{
  FacetBuildingPlan.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t FacetBuilder.init<A>(facet:elements:transform:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v54 = a2;
  v55 = a3;
  OUTLINED_FUNCTION_13();
  v16 = v15;
  v60 = a9;
  MEMORY[0x1EEE9AC00](v17);
  v57 = v18;
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FacetBuilder();
  v20 = v59[9];
  v56 = v16;
  v53 = *(v16 + 16);
  v53(a8 + v20, a1, a5);
  v21 = a7;
  v58 = a1;
  v22 = a5;
  sub_1D4E0CF60();
  v63 = v61;
  v64 = v62;
  v23 = MEMORY[0x1DA6E08D0](45, 0xE100000000000000);
  if (a4 == 1)
  {
    TupleTypeMetadata = *(a6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_48();
    v27 = v26 - v25;
    for (i = 0; a4 != i; ++i)
    {
      *(v27 + 8 * i) = *((a6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v61 = TupleTypeMetadata;
  swift_getMetatypeMetadata();
  v29 = sub_1D4E0CB00();
  MEMORY[0x1DA6E08D0](v29);

  v30 = v64;
  v31 = a8;
  *a8 = v63;
  a8[1] = v30;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = v22;
  v51 = a6;
  v32[4] = swift_allocateMetadataPack();
  v32[5] = v21;
  v33 = v21;
  v52 = v21;
  WitnessTablePack = swift_allocateWitnessTablePack();
  v36 = v54;
  v35 = v55;
  v32[6] = WitnessTablePack;
  v32[7] = v36;
  v32[8] = v35;
  v37 = v58;
  v38 = (a8 + v59[10]);
  *v38 = &unk_1D4E0DB70;
  v38[1] = v32;
  v53(v19, v37, v22);
  v39 = v56;
  v40 = (*(v56 + 80) + 56) & ~*(v56 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = a4;
  *(v41 + 3) = v22;
  *(v41 + 4) = swift_allocateMetadataPack();
  *(v41 + 5) = v33;
  *(v41 + 6) = swift_allocateWitnessTablePack();
  v42 = *(v39 + 32);
  v42(v41 + v40, v19, v22);
  v43 = v58;
  v44 = v59;
  v45 = (v31 + v59[11]);
  *v45 = sub_1D4D9E868;
  v45[1] = v41;
  v42(v19, v43, v22);
  v46 = swift_allocObject();
  *(v46 + 2) = a4;
  *(v46 + 3) = v22;
  MetadataPack = swift_allocateMetadataPack();
  v48 = v52;
  *(v46 + 4) = MetadataPack;
  *(v46 + 5) = v48;
  *(v46 + 6) = swift_allocateWitnessTablePack();
  result = (v42)(v46 + v40, v19, v22);
  v50 = (v31 + v44[12]);
  *v50 = sub_1D4D9E928;
  v50[1] = v46;
  return result;
}

uint64_t sub_1D4D966A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v18;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  if (a5 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = 16;
  }

  else
  {
    v10 = (8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0;
    v12 = swift_task_alloc();
    for (i = 0; a5 != i; ++i)
    {
      *(v12 + 8 * i) = swift_getAssociatedTypeWitness();
    }

    AssociatedTypeWitness = swift_getTupleTypeMetadata();
  }

  v8[12] = v10;
  v8[13] = AssociatedTypeWitness;
  v8[14] = *(AssociatedTypeWitness - 8);
  v8[15] = swift_task_alloc();
  sub_1D4E0C870();
  v8[16] = sub_1D4E0C860();
  sub_1D4DA1560(&qword_1EC7E3660, MEMORY[0x1E69D38C0]);
  v15 = sub_1D4E0CD30();
  v8[17] = v15;
  v8[18] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D4D968BC, v15, v14);
}

uint64_t sub_1D4D968BC()
{
  OUTLINED_FUNCTION_66();
  v0[2] = 0;
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[19] = v2;
  if (v1)
  {
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = v0[7];
      if (v5 == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(v0[13] + v4);
      }

      v7 = v0[15] + v6;
      OUTLINED_FUNCTION_126();
      sub_1D4D96C70(v8, v9, v10);
      *(v2 + 8 * v3++) = v7;
      v4 += 16;
    }

    while (v3 != v5);
  }

  v15 = (v0[5] + *v0[5]);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[20] = v11;
  *v11 = v12;
  v11[1] = sub_1D4D96A60;
  v13 = v0[3];

  return v15(v13, v2);
}

uint64_t sub_1D4D96A60()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1D4D96BE0;
  }

  else
  {
    (*(v3[14] + 8))(v3[15], v3[13]);
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1D4D96B74;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4D96B74()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4D96BE0()
{
  OUTLINED_FUNCTION_31();

  v0 = OUTLINED_FUNCTION_30();
  v1(v0);

  OUTLINED_FUNCTION_37();

  return v2();
}

uint64_t sub_1D4D96C70(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = swift_beginAccess();
  v6 = *a3;
  if ((*a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(a2 + 16))
  {
    sub_1D4D9E980(a2 + 32 * v6 + 32, v7);
    swift_getAssociatedTypeWitness();
    swift_dynamicCast();
    result = swift_beginAccess();
    *a3 = v6 + 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4D96D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v12 = 0;
    v13 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v14 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      sub_1D4D96E1C(*(v13 + 8 * v12), &v16, a1, a2, a3, a4, *(v13 + 8 * v12), a5, a6, *(v14 + 8 * v12));
      ++v12;
    }

    while (a2 != v12);
  }

  swift_beginAccess();
  return v16;
}

uint64_t sub_1D4D96E1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (MEMORY[0x1EEE9AC00])();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  (*(v24 + 16))(v16, v25, v26);
  v29 = a10;
  (*(v29 + 48))(v16, a5, a8, a7, v29);
  swift_beginAccess();
  sub_1D4D9C3A8();
  v27 = *(*a2 + 16);
  sub_1D4D9C480(v27);
  (*(v18 + 16))(v21, v23, a7);
  sub_1D4D9E25C(v27, v21, a2, a7, v29, sub_1D4DA1B44);
  (*(v18 + 8))(v23, a7);
  return swift_endAccess();
}

uint64_t sub_1D4D970A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v14 = a5 & 0xFFFFFFFFFFFFFFFELL;
  v15 = a7 & 0xFFFFFFFFFFFFFFFELL;
  while (a3 != v13)
  {
    sub_1D4D97188(*(v14 + 8 * v13), a1, a2, &v19, a3, a4, a5, *(v14 + 8 * v13), a6, a7, *(v15 + 8 * v13));
    ++v13;
    if (v7)
    {
    }
  }

  swift_beginAccess();
  return v19;
}

uint64_t sub_1D4D97188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a7;
  v58 = a6;
  v48 = a4;
  v57 = a3;
  v61 = a11;
  v52 = a9;
  sub_1D4D9E5EC(0, &qword_1EC7E3700, MEMORY[0x1E69D38D0]);
  v47 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v43 - v17;
  v46 = *(a8 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v44 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v43 - v20;
  v21 = sub_1D4E0CEE0();
  v59 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v55 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v43 - v24;
  v79 = a2;
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = swift_allocateMetadataPack();
  v25[5] = a8;
  v26 = v52;
  v25[6] = v52;
  WitnessTablePack = swift_allocateWitnessTablePack();
  v28 = v61;
  v25[7] = WitnessTablePack;
  v25[8] = v28;
  sub_1D4DA143C();
  sub_1D4DA1560(&qword_1EC7E3A30, sub_1D4DA143C);
  sub_1D4E0CA10();
  v29 = v21;
  sub_1D4E0D0B0();

  v54 = v75;
  v53 = v76;
  v71 = v75;
  v72 = v76;
  v51 = v77;
  v73 = v77;
  v74 = v78;
  v62 = a5;
  v63 = v58;
  v64 = v50;
  v65 = a8;
  v66 = v26;
  v67 = a10;
  v68 = v61;
  v69 = v57;
  sub_1D4D9E438(255, &qword_1EC7E3A20, &qword_1EC7E3748, &protocol descriptor for FacetElement, MEMORY[0x1E69E62F8]);
  sub_1D4DA14FC(&qword_1EC7E3A28, &qword_1EC7E3A20, &qword_1EC7E3748, &protocol descriptor for FacetElement);
  sub_1D4E0D010();
  swift_getWitnessTable();
  sub_1D4E0D090();
  swift_getWitnessTable();
  sub_1D4E0D010();
  swift_getWitnessTable();
  v30 = v60;
  v31 = v56;
  sub_1D4E0CBE0();
  v32 = v55;

  v33 = *(v59 + 16);
  v56 = v29;
  v33(v32, v30, v29);
  if (__swift_getEnumTagSinglePayload(v32, 1, a8) == 1)
  {
    v34 = *(v59 + 8);
    v35 = v56;
    v34(v32, v56);
    sub_1D4D9C5A8();
    sub_1D4E0C8D0();
    sub_1D4E0C8C0();
    v70 = 7;
    sub_1D4E0C880();
    sub_1D4E0C8C0();
    sub_1D4E0C8B0();
    sub_1D4E0C8C0();
    sub_1D4E0C890();
    sub_1D4E0C8C0();
    sub_1D4D9E5EC(0, &qword_1EC7E3768, MEMORY[0x1E69D38D8]);
    sub_1D4D9E650();
    swift_allocError();
    sub_1D4E0C8E0();
    swift_willThrow();
    return (v34)(v60, v35);
  }

  else
  {
    v37 = v46;
    v38 = *(v46 + 32);
    v58 = v31;
    v39 = v45;
    v38(v45, v32, a8);
    v40 = v48;
    swift_beginAccess();
    sub_1D4D9C3A8();
    v41 = *(*v40 + 16);
    sub_1D4D9C480(v41);
    v42 = v44;
    (*(v37 + 16))(v44, v39, a8);
    sub_1D4D9E25C(v41, v42, v40, a8, v61, sub_1D4DA1B44);
    swift_endAccess();
    (*(v37 + 8))(v39, a8);
    return (*(v59 + 8))(v60, v56);
  }
}

uint64_t sub_1D4D979C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_1D4DA1A88(a1, v7);
  sub_1D4DA1130(0, &qword_1EC7E3748);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t FacetBuilder.addElements<A>(to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_69();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4D97A68()
{
  OUTLINED_FUNCTION_1();
  v0[5] = (*(v0[4] + *(v0[3] + 44)))();
  sub_1D4E0C870();
  v0[6] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v1, v2);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_99();
  v3 = OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4D97B18()
{
  OUTLINED_FUNCTION_1();

  sub_1D4D941F8();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t FacetBuilder.availability<A>(in:)(void *a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *a1;
  OUTLINED_FUNCTION_69();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4D97BDC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[14];
  v2 = (v0[16] + *(v0[15] + 48));
  v0[18] = *v2;
  v0[19] = v2[1];
  v0[20] = *(*v1 + 120);
  sub_1D4E0C870();
  v0[21] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v3, v4);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_99();
  v5 = OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4D97CA8()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[20];
  v2 = v0[14];

  OUTLINED_FUNCTION_100();
  v0[22] = *(v2 + v1);
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4D97D28()
{
  OUTLINED_FUNCTION_51();
  v2 = (*(v1 + 144))(*(v1 + 176));
  *(v1 + 184) = v2;

  *(v1 + 104) = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  *(v1 + 192) = v4;
  *(v1 + 200) = 0;
  if (v4)
  {
    v5 = *(v1 + 184);
    if (*(v5 + 16))
    {
      v6 = OUTLINED_FUNCTION_140(v5);
      sub_1D4DA1A88(v6, v7);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v8 = swift_task_alloc();
      *(v1 + 208) = v8;
      *v8 = v1;
      v9 = OUTLINED_FUNCTION_38(v8);

      return sub_1D4D98134(v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_100();
    sub_1D4D9523C(*(v1 + 104));
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_106();

    return v16(v0);
  }

  return result;
}

uint64_t sub_1D4D97EBC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D4D97FD4()
{
  OUTLINED_FUNCTION_51();
  v2 = v1[24];
  v3 = v1[25] + 1;
  v1[25] = v3;
  if (v3 == v2)
  {

    OUTLINED_FUNCTION_100();
    sub_1D4D9523C(v1[13]);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_106();

    v4(v0);
  }

  else
  {
    v5 = v1[23];
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = OUTLINED_FUNCTION_140(v5 + 40 * v3);
      sub_1D4DA1A88(v6, v7);
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      v8 = swift_task_alloc();
      v1[26] = v8;
      *v8 = v1;
      v9 = OUTLINED_FUNCTION_38();

      sub_1D4D98134(v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

uint64_t sub_1D4D98134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = v19;
  v7[25] = a1;
  v7[26] = a3;
  v12 = type metadata accessor for FacetElementAvailability();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v13 = swift_task_alloc();
  v7[31] = v13;
  v7[32] = sub_1D4E0C870();
  v7[33] = sub_1D4E0C860();
  v14 = *(type metadata accessor for FacetBuilder() + 36);
  v17 = (*(v19 + 64) + **(v19 + 64));
  v15 = swift_task_alloc();
  v7[34] = v15;
  *v15 = v7;
  v15[1] = sub_1D4D9832C;

  return v17(v13, a2 + v14, a4, a7, a6);
}

uint64_t sub_1D4D9832C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v7, v8);
  v10 = sub_1D4E0CD30();
  if (v0)
  {
    v11 = sub_1D4D9862C;
  }

  else
  {
    v11 = sub_1D4D98490;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1D4D98490()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v15 = *(v0 + 216);

  *(v0 + 120) = v15;
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_36();
  (*(v3 + 16))();
  *(v0 + 160) = v1;
  *(v0 + 168) = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 136));
  OUTLINED_FUNCTION_89();
  v4();
  sub_1D4D8C458((v0 + 96), v0 + 16);
  sub_1D4D8C458((v0 + 136), v0 + 56);
  OUTLINED_FUNCTION_93();
  sub_1D4D9C428(sub_1D4D9C614);
  v5 = *(*v2 + 16);
  v6 = OUTLINED_FUNCTION_136();
  sub_1D4D9C4E4(v6, v7);
  v8 = *v2;
  *(v8 + 16) = v5 + 1;
  v9 = OUTLINED_FUNCTION_140(v8 + 80 * v5);
  memcpy(v9, v10, 0x50uLL);
  swift_endAccess();
  v11 = OUTLINED_FUNCTION_30();
  v12(v11);

  OUTLINED_FUNCTION_8();

  return v13();
}

uint64_t sub_1D4D9862C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t FacetBuilder.value<A>(in:)()
{
  OUTLINED_FUNCTION_1();
  v1[75] = v0;
  v1[74] = v2;
  v1[73] = v3;
  v1[72] = v4;
  OUTLINED_FUNCTION_6(v4, &qword_1EC7E3700);
  v1[76] = v5;
  OUTLINED_FUNCTION_101(v5);
  v1[77] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4D98724()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 592);
  *(v0 + 556) = *(v1 + 36);
  v2 = *(v1 + 16);
  *(v0 + 624) = v2;
  *(v0 + 200) = v2;
  v3 = *(v1 + 24);
  *(v0 + 632) = v3;
  *(v0 + 208) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 176));
  OUTLINED_FUNCTION_36();
  (*(v4 + 16))();
  sub_1D4E0C870();
  *(v0 + 640) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v5, v6);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_99();
  v7 = OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D9881C()
{
  OUTLINED_FUNCTION_1();

  *(v0 + 648) = sub_1D4D9513C((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1D4D98894()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + 648);
  if (v2)
  {
    v3 = sub_1D4D9C998(0, *(v2 + 16), 0, MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = *(v2 + 16);
    for (*(v0 + 656) = v5; ; v5 = *(v0 + 656))
    {
      *(v0 + 664) = v3;
      if (v4 == v5)
      {
        OUTLINED_FUNCTION_150();
      }

      else
      {
        if (v4 >= *(*(v0 + 648) + 16))
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_4();
        sub_1D4DA190C(v7 + 32, v0 + 96);
        v6 = v4 + 1;
      }

      *(v0 + 672) = v6;
      memcpy((v0 + 16), (v0 + 96), 0x50uLL);
      if (!*(v0 + 40))
      {
        break;
      }

      sub_1D4D8C458((v0 + 16), v0 + 216);
      sub_1D4D8C458((v0 + 56), v0 + 256);
      OUTLINED_FUNCTION_67();
      v8 = OUTLINED_FUNCTION_58();
      v9(v8);
      if (!*(v0 + 552))
      {
        OUTLINED_FUNCTION_92();

        sub_1D4D9C5A8();
        OUTLINED_FUNCTION_160();
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_46();
        sub_1D4E0C890();
        OUTLINED_FUNCTION_133();
        *(v0 + 560) = v1;
        *(v0 + 568) = 80;
        sub_1D4E0C8A0();
        v22 = OUTLINED_FUNCTION_107();
        sub_1D4D9EA38(v22, v23, 0);
        v24 = sub_1D4E0C8C0();
        OUTLINED_FUNCTION_1_0(v24, &qword_1EC7E3768);
        sub_1D4D9E650();
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_19();
        sub_1D4E0C8E0();
        swift_willThrow();
        OUTLINED_FUNCTION_122();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_67();
      v10 = OUTLINED_FUNCTION_58();
      v11(v10);
      if (!*(v0 + 432))
      {
        OUTLINED_FUNCTION_61();
        sub_1D4DA17C0();
        __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
        v27 = OUTLINED_FUNCTION_30();
        v28(v27);
        if (*(v0 + 360))
        {
          OUTLINED_FUNCTION_94();
          swift_task_alloc();
          OUTLINED_FUNCTION_24();
          *(v0 + 680) = v29;
          *v29 = v30;
          OUTLINED_FUNCTION_29(v29);
          OUTLINED_FUNCTION_32();

          sub_1D4D994D8(v31, v32, v33, v34, v35, v36, v37, v38);
        }

        else
        {
          sub_1D4DA1814(v0 + 336, &qword_1EC7E3758, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
          OUTLINED_FUNCTION_104();
          OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_68();
        }

        return;
      }

      sub_1D4D9EA28((v0 + 408), (v0 + 376));
      sub_1D4D9E980(v0 + 376, v0 + 504);
      v12 = *(v3 + 24);
      if (*(v3 + 16) >= v12 >> 1)
      {
        OUTLINED_FUNCTION_76(v12);
        OUTLINED_FUNCTION_77();
        v3 = sub_1D4D9C998(v13, v14, v15, v16);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_122();
      v4 = *(v0 + 672);
    }

    OUTLINED_FUNCTION_28();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v0 + 696) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_43(v18);
    OUTLINED_FUNCTION_68();

    v20();
  }

  else
  {
    sub_1D4D9C5A8();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_50();
    *(v0 + 553) = 9;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_136();
    sub_1D4E0C890();
    v17 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_1_0(v17, &qword_1EC7E3768);
    sub_1D4D9E650();
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();
LABEL_18:

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_68();

    v25();
  }
}

uint64_t sub_1D4D98D70()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 688) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D4D98E7C()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + 664);
  sub_1D4D9E980(v0 + 440, v0 + 472);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v4 + 1;
  v6 = *(v0 + 664);
  if (v4 >= v3 >> 1)
  {
LABEL_25:
    OUTLINED_FUNCTION_76(v3);
    OUTLINED_FUNCTION_77();
    v6 = sub_1D4D9C998(v39, v40, v41, v42);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 440);
  *(v6 + 16) = v5;
  sub_1D4D9EA28((v0 + 472), (v6 + 32 * v4 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  while (1)
  {
    OUTLINED_FUNCTION_122();
    v5 = *(v0 + 672);
    *(v0 + 664) = v6;
    if (v5 == *(v0 + 656))
    {
      OUTLINED_FUNCTION_150();
    }

    else
    {
      v3 = *(v0 + 648);
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_4();
      sub_1D4DA190C(v7 + 32, v0 + 96);
      ++v5;
    }

    *(v0 + 672) = v5;
    memcpy((v0 + 16), (v0 + 96), 0x50uLL);
    if (!*(v0 + 40))
    {
      break;
    }

    sub_1D4D8C458((v0 + 16), v0 + 216);
    sub_1D4D8C458((v0 + 56), v0 + 256);
    OUTLINED_FUNCTION_67();
    v8 = OUTLINED_FUNCTION_58();
    v9(v8);
    if (!*(v0 + 552))
    {
      OUTLINED_FUNCTION_92();

      sub_1D4D9C5A8();
      OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_46();
      sub_1D4E0C890();
      OUTLINED_FUNCTION_133();
      *(v0 + 560) = v1;
      *(v0 + 568) = 80;
      sub_1D4E0C8A0();
      v21 = OUTLINED_FUNCTION_107();
      sub_1D4D9EA38(v21, v22, 0);
      v23 = sub_1D4E0C8C0();
      OUTLINED_FUNCTION_1_0(v23, &qword_1EC7E3768);
      sub_1D4D9E650();
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_19();
      sub_1D4E0C8E0();
      swift_willThrow();
      OUTLINED_FUNCTION_122();

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_68();

      v24();
      return;
    }

    OUTLINED_FUNCTION_67();
    v10 = OUTLINED_FUNCTION_58();
    v11(v10);
    if (!*(v0 + 432))
    {
      OUTLINED_FUNCTION_61();
      sub_1D4DA17C0();
      __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
      v26 = OUTLINED_FUNCTION_30();
      v27(v26);
      if (*(v0 + 360))
      {
        OUTLINED_FUNCTION_94();
        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        *(v0 + 680) = v28;
        *v28 = v29;
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_32();

        sub_1D4D994D8(v30, v31, v32, v33, v34, v35, v36, v37);
      }

      else
      {
        sub_1D4DA1814(v0 + 336, &qword_1EC7E3758, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_68();
      }

      return;
    }

    sub_1D4D9EA28((v0 + 408), (v0 + 376));
    sub_1D4D9E980(v0 + 376, v0 + 504);
    v4 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v4 >= v12 >> 1)
    {
      OUTLINED_FUNCTION_76(v12);
      OUTLINED_FUNCTION_77();
      v6 = sub_1D4D9C998(v13, v14, v15, v16);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
    OUTLINED_FUNCTION_162();
  }

  OUTLINED_FUNCTION_28();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 696) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_43(v17);
  OUTLINED_FUNCTION_68();

  v19();
}

uint64_t sub_1D4D992E4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 704) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v10();
  }
}

uint64_t sub_1D4D9940C()
{
  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  OUTLINED_FUNCTION_122();

  OUTLINED_FUNCTION_37();

  return v1();
}

uint64_t sub_1D4D99474()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4D994D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v15;
  *(v8 + 216) = v14;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a2;
  *(v8 + 176) = a4;
  *(v8 + 160) = a1;
  *(v8 + 240) = *a4;
  sub_1D4D9E5EC(0, &qword_1EC7E3700, MEMORY[0x1E69D38D0]);
  *(v8 + 248) = v10;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = *(a8 - 8);
  *(v8 + 272) = swift_task_alloc();
  v11 = sub_1D4E0CEE0();
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4D99694, 0, 0);
}

uint64_t sub_1D4D99694()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 312) = *(**(v0 + 176) + 128);
  sub_1D4E0C870();
  *(v0 + 320) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v1, v2);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_99();
  v3 = OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4D99744()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[39];
  v2 = v0[22];

  OUTLINED_FUNCTION_100();
  v0[41] = *(v2 + v1);
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4D997C4()
{
  v32 = *(v0 + 296);
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v29 = v7;
  v30 = *(v0 + 168);
  *(v0 + 152) = *(v0 + 328);
  v8 = swift_allocObject();
  v8[2] = v7;
  v9 = *(v1 + 80);
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v4;
  v10 = *(v1 + 88);
  v8[7] = v10;
  v8[8] = v3;
  v8[9] = v2;
  sub_1D4DA11E8();
  sub_1D4DA1560(&qword_1EC7E39F8, sub_1D4DA11E8);
  sub_1D4E0D0B0();

  *(v0 + 72) = *(v0 + 16);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  *(v0 + 88) = *(v0 + 32);
  *(v0 + 104) = v12;
  *(v0 + 120) = v11;
  v13 = swift_task_alloc();
  v13[2] = v29;
  v13[3] = v9;
  v13[4] = v5;
  v13[5] = v6;
  v13[6] = v4;
  v13[7] = v10;
  v13[8] = v3;
  v13[9] = v2;
  v13[10] = v30;
  OUTLINED_FUNCTION_60();
  v14 = OUTLINED_FUNCTION_39();
  sub_1D4D9E438(v14, v15, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest, v16);
  sub_1D4DA14FC(&qword_1EC7E39F0, &qword_1EC7E3778, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
  sub_1D4E0D010();
  swift_getWitnessTable();
  sub_1D4E0D090();
  swift_getWitnessTable();
  sub_1D4E0D010();
  OUTLINED_FUNCTION_78();
  swift_getWitnessTable();
  sub_1D4E0CBE0();

  OUTLINED_FUNCTION_62();
  v17();
  if (__swift_getEnumTagSinglePayload(v32, 1, v6) != 1)
  {
    v24 = *(v0 + 224);
    v25 = *(v0 + 160);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 296), *(v0 + 208));
    OUTLINED_FUNCTION_153();
    type metadata accessor for FacetBuilder();
    v26 = *(v24 + 80);
    v25[3] = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1Tm(v25);
    v31 = v26 + *v26;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v0 + 336) = v27;
    *v27 = v28;
    v27[1] = sub_1D4D99D74;

    __asm { BRAA            X8, X16 }
  }

  v18 = *(v0 + 304);
  v19 = *(v0 + 280);
  v20 = *(*(v0 + 288) + 8);
  v20(*(v0 + 296), v19);
  sub_1D4D9C5A8();
  sub_1D4E0C8D0();
  sub_1D4E0C8C0();
  *(v0 + 352) = 8;
  sub_1D4E0C880();
  v21 = sub_1D4E0C8C0();
  OUTLINED_FUNCTION_1_0(v21, &qword_1EC7E3768);
  sub_1D4D9E650();
  swift_allocError();
  sub_1D4E0C8E0();
  swift_willThrow();
  v20(v18, v19);

  OUTLINED_FUNCTION_37();

  return v22();
}

uint64_t sub_1D4D99D74()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D99E6C()
{
  OUTLINED_FUNCTION_51();
  (*(v0[33] + 8))(v0[34], v0[26]);
  v1 = OUTLINED_FUNCTION_52();
  v2(v1);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_1D4D99F28()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[20];
  (*(v0[33] + 8))(v0[34], v0[26]);
  v2 = OUTLINED_FUNCTION_105();
  v3(v2);
  __swift_deallocate_boxed_opaque_existential_0(v1);

  OUTLINED_FUNCTION_37();

  return v4();
}

uint64_t sub_1D4D99FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_1D4DA1A88(a1, v7);
  sub_1D4DA1130(0, &qword_1EC7E3760);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_1D4D9A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1D4D9A10C;

  return FacetBuilder.addElements<A>(to:)(a1, a4);
}

uint64_t sub_1D4D9A10C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_1D4D9A1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1D4D9A290;

  return FacetBuilder.availability<A>(in:)(a1, a4);
}

uint64_t sub_1D4D9A290()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_25();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_106();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D4D9A37C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D9A10C;

  return FacetBuilder.value<A>(in:)();
}

uint64_t FacetElementAvailability.availability.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_48();
  v5 = OUTLINED_FUNCTION_102(v4);
  v6(v5);
  OUTLINED_FUNCTION_90();
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v8 = *(v1 + 16);
      *a1 = *v1;
      *(a1 + 16) = v8;
      return __swift_destroy_boxed_opaque_existential_1Tm(v1 + 24);
    }

    else
    {
      v11 = *(v1 + 8);
      *a1 = *v1;
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *a1 = xmmword_1D4E0DAA0;
    *(a1 + 16) = 3;
    v9 = OUTLINED_FUNCTION_90();
    return v10(v9);
  }

  return result;
}

void FacetElementAvailability.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_165();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v25 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v28 = v27;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  OUTLINED_FUNCTION_13();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_48();
  v37 = v36 - v35;
  (*(v33 + 16))(v36 - v35, v21, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D4D9EA38(*v37, *(v37 + 8), *(v37 + 16));
      OUTLINED_FUNCTION_151();
      __swift_destroy_boxed_opaque_existential_1Tm(v37 + 24);
    }

    else
    {
      (*(v33 + 8))(v37, v23);
      OUTLINED_FUNCTION_151();
    }
  }

  else
  {
    v39 = *(v28 + 32);
    v39(v31, v37, AssociatedTypeWitness);
    v25[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v25);
    v39(boxed_opaque_existential_1Tm, v31, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_166();
}

double FacetElementAvailability.request.getter@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_48();
  v5 = OUTLINED_FUNCTION_102(v4);
  v6(v5);
  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D4D9EA38(*v1, *(v1 + 8), *(v1 + 16));
      sub_1D4D8C458((v1 + 24), a1);
    }

    else
    {
      v11 = OUTLINED_FUNCTION_90();
      v12(v11);
      *(a1 + 32) = 0;
      return OUTLINED_FUNCTION_151();
    }
  }

  else
  {
    *(a1 + 32) = 0;
    OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_90();
    v10(v9);
  }

  return result;
}

uint64_t FacetElementRequest.split()(uint64_t a1)
{
  sub_1D4D9BF48(a1, a1);
  swift_allocObject();
  v1 = sub_1D4E0CC40();
  OUTLINED_FUNCTION_148();
  v2();
  sub_1D4E0CD00();
  return v1;
}

void Collection<>.best.getter(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = sub_1D4E0CC00();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v1 = *(v6 + 8);
    v3 = *(v6 + 16);
    v7 = *(v6 + 24);
    sub_1D4D9E764(v1, v3, v7);
  }

  else
  {

    v7 = 0;
    OUTLINED_FUNCTION_143();
  }

  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v7;
}

BOOL sub_1D4D9A974(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return static FacetAvailability.< infix(_:_:)(&v7, &v5);
}

uint64_t Facet.availableValue.getter()
{
  OUTLINED_FUNCTION_51();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  OUTLINED_FUNCTION_18();
  v9 = (v5 + *v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v1[9] = v6;
  *v6 = v7;
  v6[1] = sub_1D4D9AAE0;
  OUTLINED_FUNCTION_45_0();

  return v9();
}

uint64_t sub_1D4D9AAE0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D9ABD8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v13 = *(v0 + 56);
    sub_1D4D9EA38(v1, v2, *(v0 + 32));
    v12 = (*(v13 + 24) + **(v13 + 24));
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v0 + 88) = v3;
    *v3 = v4;
    v3[1] = sub_1D4D9AD58;
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);

    return v12(v6, v7, v5);
  }

  else
  {
    sub_1D4D9EA38(v1, v2, 0);
    v9 = *(v0 + 40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, AssociatedTypeWitness);
    OUTLINED_FUNCTION_8();

    return v11();
  }
}

uint64_t sub_1D4D9AD58()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D9AE50()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t FacetCollection.contentRegistration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_135();
  type metadata accessor for ContentRegistration();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_166();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t FacetCollection.contentRegistration.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_135();
  type metadata accessor for ContentRegistration();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_166();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t FacetCollection.environment.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_166();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t FacetCollection.environment.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_166();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t FacetCollection.plan.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t FacetCollection.contentID.getter()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_91();

  return v1(v0);
}

uint64_t FacetCollection.init(contentRegistration:environment:system:plan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for FacetCollection();
  v15 = v10[11];
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_148();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_154();
  type metadata accessor for ContentRegistration();
  OUTLINED_FUNCTION_12();
  (*(v11 + 32))(a6, a1);
  v12 = v10[9];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  (*(v13 + 32))(a6 + v12, a2);
  result = (*(*(a5 - 8) + 32))(a6 + v10[10], a3, a5);
  *(a6 + v15) = a4;
  return result;
}

BOOL static FacetAvailability.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  switch(*(a1 + 16))
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_11;
      }

      v13 = OUTLINED_FUNCTION_63();
      sub_1D4D9EA38(v13, v14, 1);
      v8 = OUTLINED_FUNCTION_30();
      v10 = 1;
      goto LABEL_10;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_11;
      }

      v6 = OUTLINED_FUNCTION_63();
      sub_1D4D9EA38(v6, v7, 2);
      v8 = OUTLINED_FUNCTION_30();
      v10 = 2;
      goto LABEL_10;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      v11 = OUTLINED_FUNCTION_63();
      sub_1D4D9EA38(v11, v12, 3);
      v8 = OUTLINED_FUNCTION_30();
      v10 = 3;
LABEL_10:
      sub_1D4D9EA38(v8, v9, v10);
      v15 = v2 >= v4;
      return !v15;
    default:
      if (*(a2 + 16))
      {
        sub_1D4E0CA10();
LABEL_11:
        v16 = OUTLINED_FUNCTION_30();
        sub_1D4D9E764(v16, v17, v5);
        v18 = OUTLINED_FUNCTION_63();
        sub_1D4D9EA38(v18, v19, v3);
        v20 = OUTLINED_FUNCTION_30();
        sub_1D4D9EA38(v20, v21, v5);
        v15 = v3 >= v5;
        return !v15;
      }

      else
      {
        v23 = v2 == v4 && a1[1] == a2[1];
        if (v23 || (OUTLINED_FUNCTION_63(), OUTLINED_FUNCTION_126(), (sub_1D4E0D170() & 1) != 0))
        {
          v24 = OUTLINED_FUNCTION_30();
          sub_1D4D9E764(v24, v25, 0);
          v26 = OUTLINED_FUNCTION_63();
          sub_1D4D9E764(v26, v27, 0);
          v28 = OUTLINED_FUNCTION_63();
          sub_1D4D9EA38(v28, v29, 0);
          v30 = OUTLINED_FUNCTION_30();
          sub_1D4D9EA38(v30, v31, 0);
          return 0;
        }

        else
        {
          OUTLINED_FUNCTION_63();
          OUTLINED_FUNCTION_126();
          v32 = sub_1D4E0D170();
          v33 = OUTLINED_FUNCTION_30();
          sub_1D4D9E764(v33, v34, 0);
          v35 = OUTLINED_FUNCTION_63();
          sub_1D4D9E764(v35, v36, 0);
          v37 = OUTLINED_FUNCTION_63();
          sub_1D4D9EA38(v37, v38, 0);
          v39 = OUTLINED_FUNCTION_30();
          sub_1D4D9EA38(v39, v40, 0);
          return v32 & 1;
        }
      }
  }
}

uint64_t static FacetAvailability.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      v14 = OUTLINED_FUNCTION_80();
      sub_1D4D9EA38(v14, v15, 1);
      v9 = OUTLINED_FUNCTION_52();
      v11 = 1;
      goto LABEL_10;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_11;
      }

      v7 = OUTLINED_FUNCTION_80();
      sub_1D4D9EA38(v7, v8, 2);
      v9 = OUTLINED_FUNCTION_52();
      v11 = 2;
      goto LABEL_10;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_11;
      }

      v12 = OUTLINED_FUNCTION_80();
      sub_1D4D9EA38(v12, v13, 3);
      v9 = OUTLINED_FUNCTION_52();
      v11 = 3;
LABEL_10:
      sub_1D4D9EA38(v9, v10, v11);
      result = v5 == v2;
      break;
    default:
      if (*(a2 + 16))
      {
        sub_1D4E0CA10();
LABEL_11:
        v17 = OUTLINED_FUNCTION_52();
        sub_1D4D9E764(v17, v18, v6);
        v19 = OUTLINED_FUNCTION_80();
        sub_1D4D9EA38(v19, v20, v4);
        v21 = OUTLINED_FUNCTION_52();
        sub_1D4D9EA38(v21, v22, v6);
        result = 0;
      }

      else
      {
        v23 = *a1;
        if (v2 == v5 && v3 == a2[1])
        {
          sub_1D4D9E764(v23, v3, 0);
          v36 = OUTLINED_FUNCTION_49();
          sub_1D4D9E764(v36, v37, v38);
          v39 = OUTLINED_FUNCTION_49();
          sub_1D4D9EA38(v39, v40, v41);
          v42 = OUTLINED_FUNCTION_49();
          sub_1D4D9EA38(v42, v43, v44);
          result = 1;
        }

        else
        {
          v25 = sub_1D4E0D170();
          v26 = OUTLINED_FUNCTION_52();
          sub_1D4D9E764(v26, v27, 0);
          v28 = OUTLINED_FUNCTION_49();
          sub_1D4D9E764(v28, v29, v30);
          v31 = OUTLINED_FUNCTION_49();
          sub_1D4D9EA38(v31, v32, v33);
          v34 = OUTLINED_FUNCTION_52();
          sub_1D4D9EA38(v34, v35, 0);
          result = v25 & 1;
        }
      }

      break;
  }

  return result;
}

BOOL sub_1D4D9BAF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return !static FacetAvailability.< infix(_:_:)(v7, v9);
}

BOOL sub_1D4D9BB48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return !static FacetAvailability.< infix(_:_:)(v9, v7);
}

BOOL sub_1D4D9BBD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return static FacetAvailability.< infix(_:_:)(v7, v9);
}

uint64_t FacetAvailability.description.getter()
{
  result = 0x616C696176616E75;
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_146();
      v2 = 0x796C656B696C6E75;
      v3 = 0xE900000000000028;
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_146();
      v2 = 0x28796C656B696CLL;
      v3 = 0xE700000000000000;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_146();
      v2 = 0x6C62616C69617661;
      v3 = 0xEA00000000002865;
LABEL_5:
      MEMORY[0x1DA6E08D0](v2, v3);
      sub_1D4E0D030();
      MEMORY[0x1DA6E08D0](41, 0xE100000000000000);
      result = v4;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FacetSpeed.hashValue.getter()
{
  v1 = *v0;
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](v1);
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4D9BDB0()
{
  v1 = *v0;
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](v1);
  return sub_1D4E0D1F0();
}

uint64_t NetworkReachability.facetAvailability.getter@<X0>(uint64_t a1@<X8>)
{
  switch(*(v1 + 8) >> 6)
  {
    case 1:
      *a1 = 0;
      *(a1 + 8) = 0;
      v4 = 1;
      goto LABEL_6;
    case 2:
      *a1 = xmmword_1D4E0DAB0;
      v4 = 2;
      goto LABEL_6;
    case 3:
      *a1 = xmmword_1D4E0DAB0;
      v4 = 3;
LABEL_6:
      *(a1 + 16) = v4;
      break;
    default:
      OUTLINED_FUNCTION_146();
      sub_1D4E0CF50();
      MEMORY[0x1DA6E08D0](0xD000000000000016, 0x80000001D4E324F0);
      result = sub_1D4E0D030();
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = 0;
      break;
  }

  return result;
}

void sub_1D4D9BF48(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {
    sub_1D4DA1348(0, &qword_1EC7E39E0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {

    sub_1D4E0D150();
  }
}

uint64_t sub_1D4D9BFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D4E0D170() & 1;
  }
}

BOOL sub_1D4D9C008(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_1D4E0CA10();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void *sub_1D4D9C0B8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D4D9E438(0, a3, a4, a5, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  v7[2] = a1;
  v7[3] = 2 * ((v8 - 32) / 40);
  return v7;
}

uint64_t sub_1D4D9C150(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D4D9C52C();
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * v5);
  sub_1D4DA1130(0, &qword_1EC7E3760);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D4DD96BC((v9 + 40 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D4D9C27C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D4D9C52C();
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * v5);
  sub_1D4DA1130(0, &qword_1EC7E3748);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D4DD96BC((v9 + 40 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1D4D9C3A8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_132();
    *v0 = v3;
  }
}

uint64_t sub_1D4D9C428(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    OUTLINED_FUNCTION_144();
    result = a1();
    *v1 = result;
  }

  return result;
}

void sub_1D4D9C480(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    OUTLINED_FUNCTION_76(v2);
    sub_1D4D9C860();
    *v1 = v3;
  }
}

uint64_t sub_1D4D9C4E4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1D4D9C52C()
{
  OUTLINED_FUNCTION_165();
  v2 = v1;
  v3 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v3;
  if (!isUniquelyReferenced_nonNull_native || v2 > *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_132();
    *v0 = v5;
  }

  OUTLINED_FUNCTION_166();
}

unint64_t sub_1D4D9C5A8()
{
  result = qword_1EC7E3708;
  if (!qword_1EC7E3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3708);
  }

  return result;
}

uint64_t sub_1D4D9C614(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D4D9E4A0(0, &qword_1EC7E3A10, sub_1D4DA1398, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_1D4DD822C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1D4DA1398();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4D9C744(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D4D9E4A0(0, &qword_1EC7E3A58, sub_1D4DA1A30, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D4DD8278((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D4D9C860()
{
  OUTLINED_FUNCTION_165();
  v7 = v6;
  v8 = v4;
  v9 = v2;
  v10 = v0;
  if ((v11 & 1) == 0)
  {
    v13 = v1;
    goto LABEL_8;
  }

  v12 = *(v2 + 24);
  v13 = v12 >> 1;
  if ((v12 >> 1) >= v1)
  {
    goto LABEL_8;
  }

  if (v13 + 0x4000000000000000 >= 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v1)
    {
      v13 = v1;
    }

LABEL_8:
    v14 = *(v2 + 16);
    if (v13 <= v14)
    {
      v15 = *(v2 + 16);
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_1D4D9E438(0, v3, v4, v5, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 40);
      if (v10)
      {
LABEL_13:
        v7(v9 + 32, v14, v16 + 4);
        *(v9 + 16) = 0;
LABEL_16:

        OUTLINED_FUNCTION_166();
        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v0)
      {
        goto LABEL_13;
      }
    }

    sub_1D4DA1130(0, v8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1D4D9C998(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D4DA1348(0, qword_1EC7E3668, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1D4DD8298((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4D9CAB8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D4D9E4A0(0, &qword_1EC7E39D0, sub_1D4DA10B4, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1D4DD82B8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1D4DA10B4();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4D9CBE8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D4D9E4A0(0, &qword_1EC7E39C0, sub_1D4DA1068, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D4DD8278((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1D4D9F944();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4D9CD10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D4D9E1CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1D4D9CD7C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D4D9CD7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D4E0D140();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1D4E0CC90();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1D4D9D118(v7, v8, a1, v4);
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
    return sub_1D4D9CE70(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D4D9CE70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v26 = *a4;
  v4 = *a4 + 24 * a3;
  v5 = result - a3;
LABEL_3:
  v24 = v4;
  v25 = a3;
  v23 = v5;
  v6 = v4;
  while (2)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(v4 + 16);
    v11 = *(v6 - 24);
    v6 -= 24;
    v10 = v11;
    v12 = *(v4 - 16);
    v13 = *(v4 - 8);
    switch(*(v4 + 16))
    {
      case 1:
        if (v13 != 1)
        {
          goto LABEL_15;
        }

        sub_1D4D9EA38(*v4, *(v4 + 8), 1);
        v14 = v10;
        v15 = v12;
        v16 = 1;
        goto LABEL_13;
      case 2:
        if (v13 != 2)
        {
          goto LABEL_15;
        }

        sub_1D4D9EA38(*v4, *(v4 + 8), 2);
        v14 = v10;
        v15 = v12;
        v16 = 2;
        goto LABEL_13;
      case 3:
        if (v13 != 3)
        {
          goto LABEL_15;
        }

        sub_1D4D9EA38(*v4, *(v4 + 8), 3);
        v14 = v10;
        v15 = v12;
        v16 = 3;
LABEL_13:
        result = sub_1D4D9EA38(v14, v15, v16);
        if (v7 >= v10)
        {
          goto LABEL_29;
        }

        goto LABEL_16;
      default:
        if (*(v4 - 8))
        {
          sub_1D4E0CA10();
LABEL_15:
          sub_1D4D9E764(v10, v12, v13);
          sub_1D4D9EA38(v7, v8, v9);
          result = sub_1D4D9EA38(v10, v12, v13);
          if (v9 >= v13)
          {
            goto LABEL_29;
          }

          goto LABEL_16;
        }

        if (v7 != v10 || v8 != v12)
        {
          if (sub_1D4E0D170())
          {
            goto LABEL_28;
          }

          v21 = sub_1D4E0D170();
          sub_1D4D9E764(v7, v8, 0);
          sub_1D4D9E764(v10, v12, 0);
          sub_1D4D9EA38(v7, v8, 0);
          result = sub_1D4D9EA38(v10, v12, 0);
          if ((v21 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_16:
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v17 = *(v4 + 16);
          v18 = *v4;
          *v4 = *v6;
          *(v4 + 16) = *(v6 + 16);
          *(v4 - 24) = v18;
          *(v4 - 8) = v17;
          v4 = v6;
          if (__CFADD__(v5++, 1))
          {
            goto LABEL_29;
          }

          continue;
        }

        v10 = *v4;
        v12 = *(v4 + 8);
LABEL_28:
        sub_1D4D9E764(v7, v8, 0);
        sub_1D4D9E764(v10, v12, 0);
        sub_1D4D9EA38(v7, v8, 0);
        result = sub_1D4D9EA38(v10, v12, 0);
LABEL_29:
        a3 = v25 + 1;
        v4 = v24 + 24;
        v5 = v23 - 1;
        if (v25 + 1 != a2)
        {
          goto LABEL_3;
        }

        return result;
    }
  }
}

uint64_t sub_1D4D9D118(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v109 = result;
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v114 = v6;
      if (v5 + 1 >= v4)
      {
        v4 = v5 + 1;
        goto LABEL_43;
      }

      v7 = &(*a3)[24 * v5 + 24];
      v8 = *(v7 + 16);
      v9 = 24 * v5;
      v10 = &(*a3)[24 * v5];
      v11 = *(v10 + 16);
      v121 = *v7;
      v122 = v8;
      v119 = *v10;
      v120 = v11;
      result = static FacetAvailability.< infix(_:_:)(&v121, &v119);
      LODWORD(v123) = result;
      v107 = v5;
      v12 = v5 + 2;
      v13 = (v10 + 64);
      v116 = v4;
      while (2)
      {
        if (v12 >= v4)
        {
          goto LABEL_33;
        }

        v15 = *(v13 - 2);
        v14 = *(v13 - 1);
        v16 = *v13;
        v17 = *(v13 - 5);
        v18 = *(v13 - 4);
        v19 = *(v13 - 24);
        switch(*v13)
        {
          case 1:
            if (v19 != 1)
            {
              goto LABEL_17;
            }

            sub_1D4D9EA38(*(v13 - 2), *(v13 - 1), 1);
            v20 = v17;
            v21 = v18;
            v22 = 1;
            goto LABEL_15;
          case 2:
            if (v19 != 2)
            {
              goto LABEL_17;
            }

            sub_1D4D9EA38(*(v13 - 2), *(v13 - 1), 2);
            v20 = v17;
            v21 = v18;
            v22 = 2;
            goto LABEL_15;
          case 3:
            if (v19 != 3)
            {
              goto LABEL_17;
            }

            sub_1D4D9EA38(*(v13 - 2), *(v13 - 1), 3);
            v20 = v17;
            v21 = v18;
            v22 = 3;
LABEL_15:
            result = sub_1D4D9EA38(v20, v21, v22);
            if (v15 == v17)
            {
              goto LABEL_29;
            }

            v23 = v15 >= v17;
            goto LABEL_18;
          default:
            if (!*(v13 - 24))
            {
              v25 = v15 == v17 && v14 == v18;
              if (!v25 && (sub_1D4E0D170() & 1) == 0)
              {
                v24 = sub_1D4E0D170();
                sub_1D4D9E764(v15, v14, 0);
                sub_1D4D9E764(v17, v18, 0);
                sub_1D4D9EA38(v15, v14, 0);
                result = sub_1D4D9EA38(v17, v18, 0);
                goto LABEL_21;
              }

              sub_1D4D9E764(v15, v14, 0);
              sub_1D4D9E764(v17, v18, 0);
              sub_1D4D9EA38(v15, v14, 0);
              result = sub_1D4D9EA38(v17, v18, 0);
LABEL_29:
              v6 = v114;
              if (v123)
              {
                v4 = v12;
                v5 = v107;
                goto LABEL_36;
              }

LABEL_30:
              ++v12;
              v13 += 24;
              v4 = v116;
              continue;
            }

            sub_1D4E0CA10();
LABEL_17:
            sub_1D4D9E764(v17, v18, v19);
            sub_1D4D9EA38(v15, v14, v16);
            result = sub_1D4D9EA38(v17, v18, v19);
            v23 = v16 >= v19;
LABEL_18:
            v24 = !v23;
LABEL_21:
            v6 = v114;
            if (((v123 ^ v24) & 1) == 0)
            {
              goto LABEL_30;
            }

            v4 = v12;
LABEL_33:
            v5 = v107;
            if (v123)
            {
LABEL_36:
              if (v4 < v5)
              {
                goto LABEL_168;
              }

              if (v5 < v4)
              {
                v26 = 0;
                v27 = 24 * v4;
                v28 = v5;
                do
                {
                  if (v28 != v4 + v26 - 1)
                  {
                    v29 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_175;
                    }

                    v30 = &v29[v9];
                    v31 = &v29[v27];
                    v32 = v30[16];
                    v33 = *v30;
                    v34 = *(v31 - 1);
                    *v30 = *(v31 - 24);
                    *(v30 + 2) = v34;
                    *(v31 - 24) = v33;
                    *(v31 - 8) = v32;
                  }

                  ++v28;
                  --v26;
                  v27 -= 24;
                  v9 += 24;
                }

                while (v28 < v4 + v26);
              }
            }

LABEL_43:
            v35 = a3[1];
            if (v4 >= v35)
            {
              goto LABEL_52;
            }

            if (__OFSUB__(v4, v5))
            {
              goto LABEL_167;
            }

            if (v4 - v5 >= a4)
            {
LABEL_52:
              v37 = v4;
              goto LABEL_53;
            }

            if (__OFADD__(v5, a4))
            {
              goto LABEL_169;
            }

            if (v5 + a4 >= v35)
            {
              v36 = a3[1];
            }

            else
            {
              v36 = v5 + a4;
            }

            if (v36 < v5)
            {
LABEL_170:
              __break(1u);
              goto LABEL_171;
            }

            if (v4 == v36)
            {
              goto LABEL_52;
            }

            v123 = *a3;
            v81 = &v123[24 * v4];
            v108 = v5;
            v82 = v5 - v4;
            v111 = v36;
LABEL_105:
            v117 = v4;
            v112 = v82;
            v113 = v81;
            v83 = v81;
            v84 = v81;
            while (2)
            {
              v85 = *v83;
              v86 = *(v83 + 1);
              v87 = v83[16];
              v89 = *(v84 - 3);
              v84 -= 24;
              v88 = v89;
              v90 = *(v83 - 2);
              v91 = *(v83 - 8);
              switch(v83[16])
              {
                case 1:
                  if (v91 != 1)
                  {
                    goto LABEL_117;
                  }

                  sub_1D4D9EA38(*v83, *(v83 + 1), 1);
                  v92 = v88;
                  v93 = v90;
                  v94 = 1;
                  goto LABEL_115;
                case 2:
                  if (v91 != 2)
                  {
                    goto LABEL_117;
                  }

                  sub_1D4D9EA38(*v83, *(v83 + 1), 2);
                  v92 = v88;
                  v93 = v90;
                  v94 = 2;
                  goto LABEL_115;
                case 3:
                  if (v91 != 3)
                  {
                    goto LABEL_117;
                  }

                  sub_1D4D9EA38(*v83, *(v83 + 1), 3);
                  v92 = v88;
                  v93 = v90;
                  v94 = 3;
LABEL_115:
                  result = sub_1D4D9EA38(v92, v93, v94);
                  if (v85 >= v88)
                  {
                    goto LABEL_131;
                  }

                  goto LABEL_118;
                default:
                  if (*(v83 - 8))
                  {
                    sub_1D4E0CA10();
LABEL_117:
                    sub_1D4D9E764(v88, v90, v91);
                    sub_1D4D9EA38(v85, v86, v87);
                    result = sub_1D4D9EA38(v88, v90, v91);
                    if (v87 >= v91)
                    {
                      goto LABEL_131;
                    }

LABEL_118:
                    if (v123)
                    {
                      v95 = v83[16];
                      v96 = *v83;
                      *v83 = *v84;
                      *(v83 + 2) = *(v84 + 2);
                      *(v83 - 24) = v96;
                      *(v83 - 8) = v95;
                      v83 = v84;
                      v23 = __CFADD__(v82++, 1);
                      if (v23)
                      {
                        goto LABEL_131;
                      }

                      continue;
                    }

                    __break(1u);
LABEL_173:
                    __break(1u);
LABEL_174:
                    __break(1u);
LABEL_175:
                    __break(1u);
                    goto LABEL_176;
                  }

                  if (v85 != v88 || v86 != v90)
                  {
                    if (sub_1D4E0D170())
                    {
                      goto LABEL_130;
                    }

                    v98 = sub_1D4E0D170();
                    sub_1D4D9E764(v85, v86, 0);
                    sub_1D4D9E764(v88, v90, 0);
                    sub_1D4D9EA38(v85, v86, 0);
                    result = sub_1D4D9EA38(v88, v90, 0);
                    if ((v98 & 1) == 0)
                    {
                      goto LABEL_131;
                    }

                    goto LABEL_118;
                  }

                  v88 = *v83;
                  v90 = *(v83 + 1);
LABEL_130:
                  sub_1D4D9E764(v85, v86, 0);
                  sub_1D4D9E764(v88, v90, 0);
                  sub_1D4D9EA38(v85, v86, 0);
                  sub_1D4D9EA38(v88, v90, 0);
LABEL_131:
                  v4 = v117 + 1;
                  v81 = v113 + 24;
                  v82 = v112 - 1;
                  v37 = v111;
                  if (v117 + 1 != v111)
                  {
                    goto LABEL_105;
                  }

                  v6 = v114;
                  v5 = v108;
LABEL_53:
                  if (v37 < v5)
                  {
                    goto LABEL_166;
                  }

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_1D4D9C744(0, *(v6 + 16) + 1, 1, v6);
                    v6 = result;
                  }

                  v39 = *(v6 + 16);
                  v38 = *(v6 + 24);
                  v40 = v39 + 1;
                  v110 = v37;
                  if (v39 >= v38 >> 1)
                  {
                    result = sub_1D4D9C744(v38 > 1, v39 + 1, 1, v6);
                    v6 = result;
                  }

                  *(v6 + 16) = v40;
                  v41 = v6 + 32;
                  v42 = (v6 + 32 + 16 * v39);
                  *v42 = v5;
                  v42[1] = v110;
                  v43 = *v109;
                  if (!*v109)
                  {
LABEL_176:
                    __break(1u);
                    goto LABEL_177;
                  }

                  if (v39)
                  {
                    while (1)
                    {
                      v44 = v40 - 1;
                      v45 = (v41 + 16 * (v40 - 1));
                      v46 = (v6 + 16 * v40);
                      if (v40 >= 4)
                      {
                        break;
                      }

                      if (v40 == 3)
                      {
                        v47 = *(v6 + 32);
                        v48 = *(v6 + 40);
                        v57 = __OFSUB__(v48, v47);
                        v49 = v48 - v47;
                        v50 = v57;
LABEL_73:
                        if (v50)
                        {
                          goto LABEL_153;
                        }

                        v62 = *v46;
                        v61 = v46[1];
                        v63 = __OFSUB__(v61, v62);
                        v64 = v61 - v62;
                        v65 = v63;
                        if (v63)
                        {
                          goto LABEL_156;
                        }

                        v66 = v45[1];
                        v67 = v66 - *v45;
                        if (__OFSUB__(v66, *v45))
                        {
                          goto LABEL_159;
                        }

                        if (__OFADD__(v64, v67))
                        {
                          goto LABEL_161;
                        }

                        if (v64 + v67 >= v49)
                        {
                          if (v49 < v67)
                          {
                            v44 = v40 - 2;
                          }

                          goto LABEL_95;
                        }

                        goto LABEL_88;
                      }

                      if (v40 < 2)
                      {
                        goto LABEL_155;
                      }

                      v69 = *v46;
                      v68 = v46[1];
                      v57 = __OFSUB__(v68, v69);
                      v64 = v68 - v69;
                      v65 = v57;
LABEL_88:
                      if (v65)
                      {
                        goto LABEL_158;
                      }

                      v71 = *v45;
                      v70 = v45[1];
                      v57 = __OFSUB__(v70, v71);
                      v72 = v70 - v71;
                      if (v57)
                      {
                        goto LABEL_160;
                      }

                      if (v72 < v64)
                      {
                        goto LABEL_102;
                      }

LABEL_95:
                      if (v44 - 1 >= v40)
                      {
                        __break(1u);
LABEL_148:
                        __break(1u);
LABEL_149:
                        __break(1u);
LABEL_150:
                        __break(1u);
LABEL_151:
                        __break(1u);
LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        __break(1u);
LABEL_156:
                        __break(1u);
LABEL_157:
                        __break(1u);
LABEL_158:
                        __break(1u);
LABEL_159:
                        __break(1u);
LABEL_160:
                        __break(1u);
LABEL_161:
                        __break(1u);
LABEL_162:
                        __break(1u);
LABEL_163:
                        __break(1u);
LABEL_164:
                        __break(1u);
LABEL_165:
                        __break(1u);
LABEL_166:
                        __break(1u);
LABEL_167:
                        __break(1u);
LABEL_168:
                        __break(1u);
LABEL_169:
                        __break(1u);
                        goto LABEL_170;
                      }

                      if (!*a3)
                      {
                        goto LABEL_173;
                      }

                      v76 = (v41 + 16 * (v44 - 1));
                      v77 = *v76;
                      v78 = (v41 + 16 * v44);
                      v79 = v78[1];
                      sub_1D4D9DAE8(&(*a3)[24 * *v76], &(*a3)[24 * *v78], &(*a3)[24 * v79], v43);
                      if (v118)
                      {
                      }

                      if (v79 < v77)
                      {
                        goto LABEL_148;
                      }

                      v80 = *(v6 + 16);
                      if (v44 > v80)
                      {
                        goto LABEL_149;
                      }

                      *v76 = v77;
                      v76[1] = v79;
                      if (v44 >= v80)
                      {
                        goto LABEL_150;
                      }

                      v118 = 0;
                      v40 = v80 - 1;
                      result = memmove((v41 + 16 * v44), v78 + 2, 16 * (v80 - 1 - v44));
                      *(v6 + 16) = v80 - 1;
                      if (v80 <= 2)
                      {
                        goto LABEL_102;
                      }
                    }

                    v51 = v41 + 16 * v40;
                    v52 = *(v51 - 64);
                    v53 = *(v51 - 56);
                    v57 = __OFSUB__(v53, v52);
                    v54 = v53 - v52;
                    if (v57)
                    {
                      goto LABEL_151;
                    }

                    v56 = *(v51 - 48);
                    v55 = *(v51 - 40);
                    v57 = __OFSUB__(v55, v56);
                    v49 = v55 - v56;
                    v50 = v57;
                    if (v57)
                    {
                      goto LABEL_152;
                    }

                    v58 = v46[1];
                    v59 = v58 - *v46;
                    if (__OFSUB__(v58, *v46))
                    {
                      goto LABEL_154;
                    }

                    v57 = __OFADD__(v49, v59);
                    v60 = v49 + v59;
                    if (v57)
                    {
                      goto LABEL_157;
                    }

                    if (v60 >= v54)
                    {
                      v74 = *v45;
                      v73 = v45[1];
                      v57 = __OFSUB__(v73, v74);
                      v75 = v73 - v74;
                      if (v57)
                      {
                        goto LABEL_165;
                      }

                      if (v49 < v75)
                      {
                        v44 = v40 - 2;
                      }

                      goto LABEL_95;
                    }

                    goto LABEL_73;
                  }

LABEL_102:
                  v4 = a3[1];
                  v5 = v110;
                  if (v110 >= v4)
                  {
                    goto LABEL_135;
                  }

                  break;
              }

              break;
            }

            break;
        }

        break;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_135:
  v123 = *v109;
  if (!v123)
  {
LABEL_177:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_171:
    result = sub_1D4D9E094(v6);
    v6 = result;
  }

  v99 = (v6 + 16);
  v100 = *(v6 + 16);
  while (v100 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_174;
    }

    v101 = v6;
    v102 = (v6 + 16 * v100);
    v103 = *v102;
    v104 = &v99[2 * v100];
    v6 = v104[1];
    sub_1D4D9DAE8(&(*a3)[24 * *v102], &(*a3)[24 * *v104], &(*a3)[24 * v6], v123);
    if (v118)
    {
      break;
    }

    if (v6 < v103)
    {
      goto LABEL_162;
    }

    if (v100 - 2 >= *v99)
    {
      goto LABEL_163;
    }

    *v102 = v103;
    v102[1] = v6;
    v105 = *v99 - v100;
    if (*v99 < v100)
    {
      goto LABEL_164;
    }

    v118 = 0;
    v100 = *v99 - 1;
    result = memmove(v104, v104 + 2, 16 * v105);
    *v99 = v100;
    v6 = v101;
  }
}

uint64_t sub_1D4D9DAE8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v51 = a3;
  v4 = a4;
  v5 = a2;
  v7 = (a2 - a1) / 24;
  v8 = (a3 - a2) / 24;
  if (v7 >= v8)
  {
    sub_1D4DD8254(a2, (a3 - a2) / 24, a4);
    v50 = &v4[3 * v8];
    v48 = v4;
LABEL_33:
    v26 = 0;
    v47 = v5 - 24;
    v27 = a1;
    while (1)
    {
      v9 = &v50[v26 / 8];
      if (&v50[v26 / 8] <= v4 || v5 <= v27)
      {
        break;
      }

      v31 = *(v9 - 3);
      v29 = *(v9 - 2);
      v30 = (v9 - 3);
      v32 = *(v9 - 8);
      v33 = *(v5 - 3);
      v34 = *(v5 - 2);
      v35 = *(v5 - 8);
      switch(*(v9 - 8))
      {
        case 1:
          if (v35 != 1)
          {
            goto LABEL_50;
          }

          sub_1D4D9EA38(v31, v29, 1);
          v36 = v33;
          v37 = v34;
          v38 = 1;
          goto LABEL_48;
        case 2:
          if (v35 != 2)
          {
            goto LABEL_50;
          }

          sub_1D4D9EA38(v31, v29, 2);
          v36 = v33;
          v37 = v34;
          v38 = 2;
          goto LABEL_48;
        case 3:
          if (v35 != 3)
          {
            goto LABEL_50;
          }

          sub_1D4D9EA38(v31, v29, 3);
          v36 = v33;
          v37 = v34;
          v38 = 3;
LABEL_48:
          sub_1D4D9EA38(v36, v37, v38);
          if (v31 < v33)
          {
            goto LABEL_61;
          }

          goto LABEL_51;
        default:
          if (*(v5 - 8))
          {
            sub_1D4E0CA10();
LABEL_50:
            sub_1D4D9E764(v33, v34, v35);
            sub_1D4D9EA38(v31, v29, v32);
            sub_1D4D9EA38(v33, v34, v35);
            if (v32 < v35)
            {
LABEL_61:
              v42 = (v51 + v26);
              v51 = v51 + v26 - 24;
              v50 = (v50 + v26);
              v23 = v42 == v5;
              v4 = v48;
              v5 -= 24;
              if (!v23)
              {
                v43 = *v47;
                *(v51 + 16) = *(v47 + 2);
                *v51 = v43;
              }

              goto LABEL_33;
            }
          }

          else
          {
            v40 = v31 == v33 && v29 == v34;
            if (v40 || (sub_1D4E0D170() & 1) != 0)
            {
              sub_1D4D9E764(v31, v29, 0);
              sub_1D4D9E764(v33, v34, 0);
              sub_1D4D9EA38(v31, v29, 0);
              sub_1D4D9EA38(v33, v34, 0);
            }

            else
            {
              v41 = sub_1D4E0D170();
              sub_1D4D9E764(v31, v29, 0);
              sub_1D4D9E764(v33, v34, 0);
              sub_1D4D9EA38(v31, v29, 0);
              sub_1D4D9EA38(v33, v34, 0);
              if (v41)
              {
                goto LABEL_61;
              }
            }
          }

LABEL_51:
          if (&v50[v26 / 8] != (v51 + v26))
          {
            v39 = *v30;
            *(v51 + v26 - 8) = *(v30 + 2);
            *(v51 + v26 - 24) = v39;
          }

          v26 -= 24;
          v4 = v48;
          v27 = a1;
          break;
      }
    }
  }

  else
  {
    sub_1D4DD8254(a1, (a2 - a1) / 24, a4);
    v9 = &v4[3 * v7];
    v10 = a1;
    v52 = v9;
    while (v4 < v9 && v5 < v51)
    {
      v12 = *v5;
      v13 = *(v5 + 1);
      v14 = v5;
      v15 = v5[16];
      v16 = *v4;
      v17 = v4[1];
      v18 = *(v4 + 16);
      switch(v15)
      {
        case 1:
          if (v18 != 1)
          {
            goto LABEL_18;
          }

          sub_1D4D9EA38(v12, v13, 1);
          v19 = v16;
          v20 = v17;
          v21 = 1;
          goto LABEL_16;
        case 2:
          if (v18 != 2)
          {
            goto LABEL_18;
          }

          sub_1D4D9EA38(v12, v13, 2);
          v19 = v16;
          v20 = v17;
          v21 = 2;
          goto LABEL_16;
        case 3:
          if (v18 != 3)
          {
            goto LABEL_18;
          }

          sub_1D4D9EA38(v12, v13, 3);
          v19 = v16;
          v20 = v17;
          v21 = 3;
LABEL_16:
          sub_1D4D9EA38(v19, v20, v21);
          if (v12 >= v16)
          {
            goto LABEL_27;
          }

          goto LABEL_19;
        default:
          if (*(v4 + 16))
          {
            sub_1D4E0CA10();
LABEL_18:
            sub_1D4D9E764(v16, v17, v18);
            sub_1D4D9EA38(v12, v13, v15);
            sub_1D4D9EA38(v16, v17, v18);
            if (v15 < v18)
            {
LABEL_19:
              v22 = v14;
              v5 = v14 + 24;
              if (v10 == v14)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }
          }

          else
          {
            v23 = v12 == v16 && v13 == v17;
            if (v23 || (sub_1D4E0D170() & 1) != 0)
            {
              sub_1D4D9E764(v12, v13, 0);
              sub_1D4D9E764(v16, v17, 0);
              sub_1D4D9EA38(v12, v13, 0);
              sub_1D4D9EA38(v16, v17, 0);
            }

            else
            {
              v25 = sub_1D4E0D170();
              sub_1D4D9E764(v12, v13, 0);
              sub_1D4D9E764(v16, v17, 0);
              sub_1D4D9EA38(v12, v13, 0);
              sub_1D4D9EA38(v16, v17, 0);
              if (v25)
              {
                goto LABEL_19;
              }
            }
          }

LABEL_27:
          v22 = v4;
          v23 = v10 == v4;
          v4 += 3;
          v5 = v14;
          if (v23)
          {
            goto LABEL_29;
          }

LABEL_28:
          v24 = *v22;
          *(v10 + 2) = v22[2];
          *v10 = v24;
LABEL_29:
          v10 += 24;
          v9 = v52;
          break;
      }
    }

    v5 = v10;
  }

  v44 = 3 * ((v9 - v4) / 24);
  if (v5 != v4 || v5 >= &v4[v44])
  {
    memmove(v5, v4, v44 * 8);
  }

  return 1;
}

char *sub_1D4D9E0A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D4D9E4A0(0, &qword_1EC7E3A58, sub_1D4DA1A30, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D4D9E25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v12[3] = a4;
  v12[4] = a5;
  __swift_allocate_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_36();
  (*(v9 + 32))();
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return a6(v12, v10 + 40 * a1 + 32);
}

void sub_1D4D9E300()
{
  if (!qword_1EC7E3718)
  {
    sub_1D4D9E368();
    v0 = sub_1D4E0CA60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3718);
    }
  }
}

void sub_1D4D9E368()
{
  if (!qword_1EC7E3720)
  {
    sub_1D4D9E438(255, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder, MEMORY[0x1E69E6720]);
    sub_1D4D9E4A0(255, &qword_1EC7E3738, sub_1D4D9E504, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7E3720);
    }
  }
}

void sub_1D4D9E438(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D4DA1130(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D4D9E4A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D4D9E504()
{
  if (!qword_1EC7E3740)
  {
    sub_1D4DA1130(255, &qword_1EC7E3748);
    sub_1D4DA1130(255, &qword_1EC7E3750);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7E3740);
    }
  }
}

uint64_t sub_1D4D9E598()
{
  v1 = OUTLINED_FUNCTION_154();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1D4D9E5EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D4D9C5A8();
    v7 = a3(a1, &type metadata for FacetBuildingError, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D4D9E650()
{
  result = qword_1EC7E3770;
  if (!qword_1EC7E3770)
  {
    sub_1D4D9E5EC(255, &qword_1EC7E3768, MEMORY[0x1E69D38D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3770);
  }

  return result;
}

uint64_t sub_1D4D9E6C4()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v6[1] = sub_1D4DA1B3C;

  return sub_1D4D955C0(v4, v2, v0);
}

uint64_t sub_1D4D9E764(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_1D4E0CA10();
  }

  return result;
}

uint64_t sub_1D4D9E790()
{
  OUTLINED_FUNCTION_125();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_1D4D9A10C;
  OUTLINED_FUNCTION_156();

  return sub_1D4D966A8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_21Tm()
{
  OUTLINED_FUNCTION_36();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4D9E980(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

_OWORD *sub_1D4D9EA28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D4D9EA38(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1D4D9EAB0()
{
  result = qword_1EC7E3788;
  if (!qword_1EC7E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3788);
  }

  return result;
}

unint64_t sub_1D4D9EB08()
{
  result = qword_1EC7E3790;
  if (!qword_1EC7E3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3790);
  }

  return result;
}

unint64_t sub_1D4D9EB60()
{
  result = qword_1EE08A680;
  if (!qword_1EE08A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A680);
  }

  return result;
}

unint64_t sub_1D4D9EBB8()
{
  result = qword_1EC7E3798;
  if (!qword_1EC7E3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3798);
  }

  return result;
}

unint64_t sub_1D4D9EC0C()
{
  result = qword_1EC7E37A0[0];
  if (!qword_1EC7E37A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7E37A0);
  }

  return result;
}

uint64_t dispatch thunk of Facet.availability.getter()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_45_0();

  return v5();
}

uint64_t dispatch thunk of Facet.value.getter()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_45_0();

  return v5();
}

uint64_t getEnumTagSinglePayload for FacetBuildingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FacetBuildingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D4D9F04C()
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

uint64_t dispatch thunk of _FacetBuilder.addElements<A>(to:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_108(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_15();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_55(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_81(v6);

  return v9(v8);
}

uint64_t dispatch thunk of _FacetBuilder.availability<A>(in:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_108(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_15();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_55(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_81(v6);

  return v9(v8);
}

uint64_t sub_1D4D9F34C()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5(v2);
}

void dispatch thunk of _FacetBuilder.value<A>(in:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_86(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_18();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_71(v7);
  OUTLINED_FUNCTION_161();

  __asm { BRAA            X6, X16 }
}

unint64_t sub_1D4D9F534()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D4D9F944();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4D9F5D4(uint64_t result, unsigned int a2, uint64_t a3)
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

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D4D9F754(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D4D9F944()
{
  result = qword_1EC7E38A8[0];
  if (!qword_1EC7E38A8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1EC7E38A8);
  }

  return result;
}

void sub_1D4D9F9C8()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    sub_1D4D9FDB0();
    if (v1 <= 0x3F)
    {
      sub_1D4D9FE28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D4D9FA60(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = 64;
  if (v4 > 0x40)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1D4D9FBB8(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 0x40)
  {
    v6 = 64;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v7] = 0;
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
          a1[v6] = -a2;
        }

        break;
    }
  }
}

void sub_1D4D9FDB0()
{
  if (!qword_1EC7E3930)
  {
    sub_1D4DA1130(255, &qword_1EC7E3760);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7E3930);
    }
  }
}

uint64_t sub_1D4D9FE28()
{
  result = qword_1EC7E3938[0];
  if (!qword_1EC7E3938[0])
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], qword_1EC7E3938);
  }

  return result;
}

uint64_t dispatch thunk of FacetElement.prepare(in:)()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_55(v1);
  *v2 = v3;
  v2[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_47();

  return v5();
}

void dispatch thunk of FacetElement.availability<A>(of:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_86(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_18();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_71(v7);
  OUTLINED_FUNCTION_161();

  __asm { BRAA            X6, X16 }
}

uint64_t dispatch thunk of FacetElement.value<A, B>(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v32 = v15;
  OUTLINED_FUNCTION_15();
  v31 = v16 + *v16;
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_17(v17);
  *v18 = v19;
  v18[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_32();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14, a15);
}

uint64_t dispatch thunk of FacetElementRequest.perform()()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_18();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_55(v1);
  *v2 = v3;
  v2[1] = sub_1D4DA1B3C;
  v4 = OUTLINED_FUNCTION_78();

  return v6(v4);
}

uint64_t sub_1D4DA0338()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = type metadata accessor for ContentRegistration();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for FacetBuildingPlan();
        AssociatedTypeWitness = sub_1D4E0CEE0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1D4DA0520(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v11 = v9 + 16;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v4 - 8);
  if (v7 <= v15)
  {
    v17 = *(v14 + 84);
  }

  else
  {
    v17 = v7;
  }

  v18 = *(v16 + 84);
  if (v17 <= v18)
  {
    v17 = *(v16 + 84);
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  v19 = *(v14 + 80);
  v20 = *(*(v4 - 8) + 80);
  v21 = *(v16 + 64);
  if (!a2)
  {
    return 0;
  }

  v22 = v19 + ((v8 + (*(v6 + 80) & 0xF8 | 7)) & ~(*(v6 + 80) & 0xF8 | 7)) + v12 + 1;
  v23 = *(*(v13 - 8) + 64) + v20;
  v24 = v21 + 7;
  result = a1;
  if (v17 >= a2)
  {
LABEL_34:
    if (v7 == v17)
    {
      v15 = v7;
      v13 = AssociatedTypeWitness;
    }

    else
    {
      result = (a1 + v22) & ~v19;
      if (v15 != v17)
      {
        result = (v23 + result) & ~v20;
        if (v18 != v17)
        {
          v33 = *((v24 + result) & 0xFFFFFFFFFFFFFFF8);
          if (v33 >= 0xFFFFFFFF)
          {
            LODWORD(v33) = -1;
          }

          if ((v33 + 1) >= 2)
          {
            return v33;
          }

          else
          {
            return 0;
          }
        }

        v15 = v18;
        v13 = v4;
      }
    }

    return __swift_getEnumTagSinglePayload(result, v15, v13);
  }

  v26 = ((v24 + ((v23 + (v22 & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v26 & 0xFFFFFFF8) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = a2 - v17 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  switch(v29)
  {
    case 1:
      v30 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 2:
      v30 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 3:
      __break(1u);
      return result;
    case 4:
      v30 = *(a1 + v26);
      if (!v30)
      {
        goto LABEL_34;
      }

LABEL_31:
      v31 = v30 - 1;
      if ((v26 & 0xFFFFFFF8) != 0)
      {
        v31 = 0;
        v32 = *a1;
      }

      else
      {
        v32 = 0;
      }

      result = v17 + (v32 | v31) + 1;
      break;
    default:
      goto LABEL_34;
  }

  return result;
}

void sub_1D4DA0938(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v11 = v9 + 16;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  if (v7 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v6 + 84);
  }

  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  v18 = *(v5 - 8);
  v19 = *(v18 + 84);
  if (v19 > v17)
  {
    v17 = *(v18 + 84);
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  v20 = *(v6 + 80) & 0xF8 | 7;
  v21 = (((v8 + v20) & ~v20) + v12) | 1;
  v22 = *(v15 + 80);
  v23 = v21 + v22;
  v24 = *(v18 + 80);
  v25 = *(*(v14 - 8) + 64) + v24;
  v26 = *(*(v5 - 8) + 64) + 7;
  v27 = ((v26 + ((v25 + ((v21 + v22) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 >= a3)
  {
    v30 = 0;
  }

  else
  {
    if (((v26 + ((v25 + ((v21 + v22) & ~v22)) & ~v24)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a3 - v17 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  if (a2 <= v17)
  {
    v33 = ~v22;
    switch(v30)
    {
      case 1:
        a1[v27] = 0;
        if (a2)
        {
          goto LABEL_44;
        }

        return;
      case 2:
        *&a1[v27] = 0;
        if (a2)
        {
          goto LABEL_44;
        }

        return;
      case 3:
LABEL_71:
        __break(1u);
        return;
      case 4:
        *&a1[v27] = 0;
        goto LABEL_43;
      default:
LABEL_43:
        if (!a2)
        {
          return;
        }

LABEL_44:
        if (v7 == v17)
        {
          if (v13 < a2)
          {
            if (v21 <= 3)
            {
              v34 = ~(-1 << (8 * v21));
            }

            else
            {
              v34 = -1;
            }

            v35 = v34 & (~v13 + a2);
            if (v21 <= 3)
            {
              v36 = v21;
            }

            else
            {
              v36 = 4;
            }

            bzero(a1, v21);
            switch(v36)
            {
              case 2:
                *a1 = v35;
                break;
              case 3:
                *a1 = v35;
                a1[2] = BYTE2(v35);
                break;
              case 4:
                *a1 = v35;
                break;
              default:
                *a1 = v35;
                break;
            }

            return;
          }

          v37 = a1;
          v38 = a2;
          v16 = v7;
          v14 = AssociatedTypeWitness;
        }

        else
        {
          v37 = &a1[v23] & v33;
          if (v16 == v17)
          {
            v38 = a2;
          }

          else
          {
            v37 = (v25 + v37) & ~v24;
            if (v19 != v17)
            {
              v39 = ((v26 + v37) & 0xFFFFFFFFFFFFFFF8);
              if (a2 > 0x7FFFFFFE)
              {
                *v39 = 0;
                *v39 = a2 - 0x7FFFFFFF;
              }

              else
              {
                *v39 = a2;
              }

              return;
            }

            v38 = a2;
            v16 = v19;
            v14 = v5;
          }
        }

        __swift_storeEnumTagSinglePayload(v37, v38, v16, v14);
        break;
    }
  }

  else
  {
    if (((v26 + ((v25 + ((v21 + v22) & ~v22)) & ~v24)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v31 = a2 - v17;
    }

    else
    {
      v31 = 1;
    }

    if (((v26 + ((v25 + ((v21 + v22) & ~v22)) & ~v24)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v32 = ~v17 + a2;
      bzero(a1, ((v26 + ((v25 + ((v21 + v22) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v32;
    }

    switch(v30)
    {
      case 1:
        a1[v27] = v31;
        break;
      case 2:
        *&a1[v27] = v31;
        break;
      case 3:
        goto LABEL_71;
      case 4:
        *&a1[v27] = v31;
        break;
      default:
        return;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D4DA0E68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1D4DA0EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTagSinglePayload for FacetSpeed(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FacetSpeed(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4DA1068()
{
  result = qword_1EC7E39C8;
  if (!qword_1EC7E39C8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC7E39C8);
  }

  return result;
}

void sub_1D4DA10B4()
{
  if (!qword_1EC7E39D8)
  {
    sub_1D4DA1130(255, &qword_1EE08A670);
    v0 = sub_1D4E0D210();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E39D8);
    }
  }
}

uint64_t sub_1D4DA1130(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1D4DA11E8()
{
  if (!qword_1EC7E39E8)
  {
    sub_1D4D9E438(255, &qword_1EC7E3778, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest, MEMORY[0x1E69E62F8]);
    sub_1D4DA14FC(&qword_1EC7E39F0, &qword_1EC7E3778, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
    v0 = sub_1D4E0CF70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E39E8);
    }
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA6E1620);
  }

  return result;
}

void sub_1D4DA1348(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D4DA1398()
{
  if (!qword_1EC7E3A08)
  {
    sub_1D4DA1130(255, &qword_1EC7E3748);
    sub_1D4DA1130(255, &qword_1EC7E3750);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7E3A08);
    }
  }
}

void sub_1D4DA143C()
{
  if (!qword_1EC7E3A18)
  {
    sub_1D4D9E438(255, &qword_1EC7E3A20, &qword_1EC7E3748, &protocol descriptor for FacetElement, MEMORY[0x1E69E62F8]);
    sub_1D4DA14FC(&qword_1EC7E3A28, &qword_1EC7E3A20, &qword_1EC7E3748, &protocol descriptor for FacetElement);
    v0 = sub_1D4E0CF70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3A18);
    }
  }
}

uint64_t sub_1D4DA14FC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D4D9E438(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4DA1560(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D4DA15F8()
{
  if (!qword_1EC7E3A38)
  {
    sub_1D4DA1130(255, &qword_1EC7E3760);
    sub_1D4DA1130(255, &qword_1EE08A670);
    v0 = sub_1D4E0CDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3A38);
    }
  }
}

uint64_t sub_1D4DA1688()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v6[1] = sub_1D4DA1B3C;

  return sub_1D4D95E94(v2, v3, v4, v0 + 32);
}

uint64_t sub_1D4DA172C(uint64_t a1, uint64_t a2)
{
  sub_1D4D9E4A0(0, &qword_1EC7E3A40, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4DA17C0()
{
  v1 = OUTLINED_FUNCTION_154();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D4DA1814(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D4D9E438(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D4DA187C(uint64_t a1, uint64_t a2)
{
  sub_1D4D9E438(0, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4DA190C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_149();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_91();
  v6(v5);
  return a2;
}

void sub_1D4DA1964()
{
  if (!qword_1EC7E3A50)
  {
    sub_1D4D9E438(255, &qword_1EC7E3728, &qword_1EC7E3730, &protocol descriptor for _FacetBuilder, MEMORY[0x1E69E6720]);
    sub_1D4D9E4A0(255, &qword_1EC7E3738, sub_1D4D9E504, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7E3A50);
    }
  }
}

void sub_1D4DA1A30()
{
  if (!qword_1EC7E3A60)
  {
    v0 = sub_1D4E0CED0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3A60);
    }
  }
}

uint64_t sub_1D4DA1A88(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_36();
  (*v3)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_1D4D9E598();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{
  *(a1 + 8) = sub_1D4D98D70;
  v5 = *(v1 + 632);
  v4[3] = v2;
  v4[4] = v3;
  result = v1 + 440;
  v4[2] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1)
{
  *(a1 + 8) = sub_1D4D97EBC;
  *(v3 + 16) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_42()
{
  v1 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 344), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_46()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_1D4DA190C(v0 + 144, v0 + 192);
}

uint64_t OUTLINED_FUNCTION_72()
{
  v3 = *(v1 + 720) + 40 * v0 + 32;

  return sub_1D4DA1A88(v3, v1 + 144);
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_1D4E0C8D0();
}

uint64_t OUTLINED_FUNCTION_92()
{
}

uint64_t OUTLINED_FUNCTION_93()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_94()
{
  sub_1D4D8C458((v0 + 336), v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  return __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
}

uint64_t OUTLINED_FUNCTION_95()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_1D4E0D020();
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return sub_1D4E0CD30();
}

uint64_t OUTLINED_FUNCTION_111()
{

  return sub_1D4E0C860();
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_1D4E0D080();
}

uint64_t OUTLINED_FUNCTION_117()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_122()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
}

uint64_t OUTLINED_FUNCTION_127()
{
}

uint64_t OUTLINED_FUNCTION_128()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_129()
{
  *(v1 + v0) = 1;
}

uint64_t OUTLINED_FUNCTION_130()
{

  return sub_1D4E0CC60();
}

uint64_t OUTLINED_FUNCTION_131()
{
  v2 = *(v0 + 16);

  return sub_1D4D9C150(0, v2);
}

void OUTLINED_FUNCTION_132()
{

  sub_1D4D9C860();
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_134()
{
}

uint64_t OUTLINED_FUNCTION_142(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = result;
  v4[3] = a2;
  return result;
}

double OUTLINED_FUNCTION_150()
{
  result = 0.0;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[6] = 0u;
  return result;
}

double OUTLINED_FUNCTION_151()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_158()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_159()
{
  *(v0 + 554) = 4;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_160()
{

  return sub_1D4E0C8D0();
}

_OWORD *OUTLINED_FUNCTION_162()
{
  *(v0 + 16) = v1;

  return sub_1D4D9EA28((v3 + 504), (v0 + 32 * v2 + 32));
}

uint64_t OUTLINED_FUNCTION_163()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_167()
{
}

SonicKit::ContentPlanningError_optional __swiftcall ContentPlanningError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D4DA2A90@<X0>(uint64_t *a1@<X8>)
{
  result = ContentPlanningError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static ContentManagementPlan.withPlan<A>(in:buildPlan:)()
{
  OUTLINED_FUNCTION_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v0[3] = v7;
  v0[10] = *(v4 - 8);
  v0[11] = OUTLINED_FUNCTION_117();
  v8 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D4DA2B64()
{
  OUTLINED_FUNCTION_1();
  (*(v0[10] + 16))(v0[11], v0[4], v0[7]);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[12] = v1;
  *v1 = v2;
  v1[1] = sub_1D4DA2C18;
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[7];

  return sub_1D4DA2FAC((v0 + 2), v3, v5, v4);
}

uint64_t sub_1D4DA2C18()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DA2CFC()
{
  OUTLINED_FUNCTION_31();
  (*(v0 + 40))(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  OUTLINED_FUNCTION_47();
  type metadata accessor for ContentManagementPlan();
  *v1 = v0;
  v1[1] = sub_1D4DA2DBC;

  return sub_1D4DA3124();
}

uint64_t sub_1D4DA2DBC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DA2EB4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DA2F18()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36();
  (*(v0 + 8))();

  OUTLINED_FUNCTION_37();

  return v1();
}

uint64_t sub_1D4DA2FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DA3064, 0, 0);
}

uint64_t sub_1D4DA3064()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_171();
  type metadata accessor for ContentManagementPlan.Execution();
  v2 = OUTLINED_FUNCTION_87_0();
  v3(v2);
  v4 = sub_1D4DA32CC();
  v5 = OUTLINED_FUNCTION_170();
  v6(v5);
  *v1 = v4;

  OUTLINED_FUNCTION_37();

  return v7();
}

uint64_t sub_1D4DA3144()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D4DA31D4;

  return sub_1D4DA3854();
}

uint64_t sub_1D4DA31D4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_1D4DA32CC()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_109();
  sub_1D4DA3308(v1);
  return v0;
}

uint64_t sub_1D4DA3308(uint64_t a1)
{
  OUTLINED_FUNCTION_246();
  v3 = *(v2 + 104);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_155_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_263();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_208();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_140_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_233();
  sub_1D4E0CE50();
  OUTLINED_FUNCTION_112_0();
  *(v1 + v3) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_141_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_153();
  *(v1 + v7) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v9 = *(v8 + 120);
  OUTLINED_FUNCTION_307();
  sub_1D4E0CD00();
  sub_1D4DBD70C();
  OUTLINED_FUNCTION_185();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_112_0();
  *(v1 + v9) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v11 = *(v10 + 128);
  OUTLINED_FUNCTION_141_0();
  sub_1D4E0CEE0();
  *(v1 + v11) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v13 = *(v12 + 136);
  OUTLINED_FUNCTION_141_0();
  *(v1 + v13) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v15 = *(v14 + 144);
  OUTLINED_FUNCTION_214();
  type metadata accessor for ContentRegistration();
  *(v1 + v15) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v17 = *(v16 + 152);
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_108_0();
  type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_264();
  type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_185();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_112_0();
  *(v1 + v17) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v19 = *(v18 + 160);
  OUTLINED_FUNCTION_99_0();
  swift_getAssociatedTypeWitness();
  sub_1D4DB94C8();
  OUTLINED_FUNCTION_264();
  type metadata accessor for FacetCollection();
  OUTLINED_FUNCTION_261();
  swift_getFunctionTypeMetadata1();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_112_0();
  *(v1 + v19) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  v21 = *(v20 + 168);
  OUTLINED_FUNCTION_264();
  type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_112_0();
  *(v1 + v21) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_79();
  *(v1 + *(v22 + 176)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_79();
  *(v1 + *(v23 + 184)) = v24;
  OUTLINED_FUNCTION_79();
  v26 = *(v25 + 192);
  OUTLINED_FUNCTION_224();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CC80();
  *(v1 + v26) = sub_1D4E0C9F0();
  OUTLINED_FUNCTION_79();
  v28 = *(v27 + 200);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_224();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CC80();
  OUTLINED_FUNCTION_207();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_206();
  *(v1 + v28) = sub_1D4E0C9F0();
  OUTLINED_FUNCTION_79();
  v30 = *(v29 + 208);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_224();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CC80();
  *(v1 + v30) = sub_1D4E0C9F0();
  OUTLINED_FUNCTION_79();
  *(v1 + *(v31 + 216)) = 0;
  OUTLINED_FUNCTION_79();
  (*(*(v5 - 8) + 32))(v1 + *(v32 + 96), a1, v5);
  return v1;
}

uint64_t sub_1D4DA3854()
{
  v1[124] = v0;
  OUTLINED_FUNCTION_246();
  v1[125] = *(v2 + 80);
  v1[126] = *(v3 + 88);
  OUTLINED_FUNCTION_307();
  swift_getAssociatedTypeWitness();
  v1[127] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_202();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_157_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_211();
  v1[128] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52();
  v1[129] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  v1[130] = swift_getAssociatedTypeWitness();
  v4 = sub_1D4E0CEE0();
  v1[131] = v4;
  OUTLINED_FUNCTION_141_0();
  v1[132] = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_10();
  v1[133] = v5;
  v1[134] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_141_0();
  v1[135] = type metadata accessor for FacetCollection();
  OUTLINED_FUNCTION_10();
  v1[136] = v6;
  v1[137] = OUTLINED_FUNCTION_288();
  v1[138] = swift_task_alloc();
  OUTLINED_FUNCTION_164_0();
  v7 = sub_1D4E0CEE0();
  v1[139] = v7;
  OUTLINED_FUNCTION_45(v7);
  v1[140] = v8;
  v1[141] = OUTLINED_FUNCTION_288();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  OUTLINED_FUNCTION_110_0();
  v1[144] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_215();
  v9 = sub_1D4E0CEE0();
  v1[145] = v9;
  OUTLINED_FUNCTION_45(v9);
  v1[146] = v10;
  v1[147] = OUTLINED_FUNCTION_288();
  v1[148] = swift_task_alloc();
  OUTLINED_FUNCTION_13();
  v1[149] = v11;
  v1[150] = OUTLINED_FUNCTION_288();
  v1[151] = swift_task_alloc();
  OUTLINED_FUNCTION_13();
  v1[152] = v12;
  v1[153] = OUTLINED_FUNCTION_117();
  v13 = OUTLINED_FUNCTION_22_1();
  sub_1D4DBA13C(v13, v14, v15);
  v1[154] = v16;
  OUTLINED_FUNCTION_101(v16);
  v1[155] = OUTLINED_FUNCTION_117();
  sub_1D4D9F944();
  OUTLINED_FUNCTION_153();
  v1[156] = OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_10();
  v18 = v17;
  v1[157] = v17;
  v20 = *(v19 + 64);
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = v18;
  v1[161] = v20;
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  OUTLINED_FUNCTION_153();
  v21 = sub_1D4E0CEE0();
  v1[164] = v21;
  OUTLINED_FUNCTION_45(v21);
  v23 = v22;
  v1[165] = OUTLINED_FUNCTION_276();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = v23;
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = sub_1D4E0CD00();
  OUTLINED_FUNCTION_209();
  v1[176] = type metadata accessor for ContentManagementPlan.Link();
  v1[177] = OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_10();
  v25 = v24;
  v1[178] = v24;
  v27 = *(v26 + 64);
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v1[181] = v25;
  v1[182] = v27;
  v1[183] = swift_task_alloc();
  v1[184] = swift_task_alloc();
  OUTLINED_FUNCTION_171();
  v28 = sub_1D4E0CEE0();
  v1[185] = v28;
  OUTLINED_FUNCTION_45(v28);
  v30 = v29;
  v1[186] = OUTLINED_FUNCTION_276();
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = v30;
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v31 = swift_checkMetadataState();
  v1[196] = v31;
  OUTLINED_FUNCTION_45(v31);
  v1[197] = v32;
  v1[198] = OUTLINED_FUNCTION_276();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v1[201] = *(v4 - 8);
  v1[202] = OUTLINED_FUNCTION_276();
  v1[203] = swift_task_alloc();
  v1[204] = swift_task_alloc();
  v1[205] = swift_task_alloc();
  v1[206] = swift_task_alloc();
  OUTLINED_FUNCTION_148();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[207] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45(AssociatedTypeWitness);
  v1[208] = v34;
  v1[209] = *(v35 + 64);
  v1[210] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_110_0();
  v36 = type metadata accessor for ContentRegistration();
  v1[211] = v36;
  OUTLINED_FUNCTION_185();
  v37 = sub_1D4E0CEE0();
  v1[212] = v37;
  OUTLINED_FUNCTION_45(v37);
  v1[213] = v38;
  v1[214] = OUTLINED_FUNCTION_276();
  v1[215] = swift_task_alloc();
  v1[216] = swift_task_alloc();
  OUTLINED_FUNCTION_13();
  v1[217] = v39;
  v1[218] = *(v40 + 64);
  v1[219] = OUTLINED_FUNCTION_276();
  v1[220] = swift_task_alloc();
  v1[221] = swift_task_alloc();
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v1[224] = swift_task_alloc();
  v1[225] = swift_task_alloc();
  v1[226] = swift_task_alloc();
  v1[227] = swift_task_alloc();
  v1[228] = swift_task_alloc();
  v41 = *(v36 - 8);
  v1[229] = v41;
  v1[230] = *(v41 + 64);
  v1[231] = OUTLINED_FUNCTION_276();
  v1[232] = swift_task_alloc();
  v1[233] = swift_task_alloc();
  v1[234] = swift_task_alloc();
  v1[235] = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v42, v43, v44);
}

uint64_t sub_1D4DA4210()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  sub_1D4E0CD60();
  v1 = *(v0 + 992);
  v2 = *(*v1 + 104);
  *(v0 + 1888) = v2;
  v7 = *(v0 + 1000);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  *(v0 + 880) = *(v1 + v2);
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  *(v0 + 1896) = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_91();
  *(v0 + 848) = sub_1D4E0C990();
  *(swift_task_alloc() + 16) = v7;
  OUTLINED_FUNCTION_110_0();
  *(v0 + 1904) = sub_1D4E0CE50();
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_228();
  sub_1D4E0CBF0();

  *(v0 + 736) = *(v0 + 776);
  swift_getWitnessTable();
  *(v0 + 1912) = sub_1D4E0CD10();
  v3 = swift_task_alloc();
  *(v0 + 1920) = v3;
  *v3 = v0;
  v3[1] = sub_1D4DA4710;
  OUTLINED_FUNCTION_156();

  return sub_1D4DB03FC(v4);
}

uint64_t sub_1D4DA4710()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1928) = v5;
  *(v3 + 1936) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4DA481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 1024);
  v14 = *(v12 + 992);
  OUTLINED_FUNCTION_58();
  sub_1D4E0CCB0();
  OUTLINED_FUNCTION_88();
  v16 = *(v15 + 200);
  *(v12 + 1944) = v16;
  OUTLINED_FUNCTION_93();
  *(v12 + 1952) = *(swift_getAssociatedConformanceWitness() + 16);
  OUTLINED_FUNCTION_147_0();
  *(v12 + 1960) = sub_1D4E0CA60();
  v17 = v14 + v16;
  sub_1D4E0C9E0();
  swift_endAccess();
  sub_1D4E0CA10();
  sub_1D4E0CC20();
  OUTLINED_FUNCTION_59();

  v215 = v14 + v16;
  OUTLINED_FUNCTION_58();
  if (v14 + v16 != sub_1D4E0CCB0())
  {
    v198 = *(v12 + 1840);
    v24 = *(v12 + 1832);
    v199 = *(v12 + 1672);
    v25 = *(v12 + 1664);
    v26 = (v24 + 16);
    v201 = (v24 + 16);
    v202 = (v24 + 32);
    *&v213 = *(v12 + 1736) + 16;
    v200 = v24;
    while (2)
    {
      OUTLINED_FUNCTION_58();
      sub_1D4E0CCA0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_211();
      sub_1D4E0CC60();
      if (v13)
      {
        v27 = *(v200 + 16);
        v27(*(v12 + 1880), *(v12 + 1928) + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v17, *(v12 + 1688));
      }

      else
      {
        v46 = sub_1D4E0CF80();
        if (v198 != 8)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v54 = v46;
        v55 = *(v12 + 1880);
        v56 = *(v12 + 1688);
        *(v12 + 928) = v54;
        v27 = *v26;
        (*v26)(v55, v12 + 928, v56);
        swift_unknownObjectRelease();
      }

      v28 = *(v12 + 1880);
      v29 = *(v12 + 1872);
      v30 = *(v12 + 1824);
      v31 = *(v12 + 1728);
      v32 = *(v12 + 1688);
      v33 = *(v12 + 1040);
      sub_1D4E0CCF0();
      (*v202)(v29, v28, v32);
      v210 = *v213;
      (*v213)(v30, v29, v33);
      v27(v31, v29, v32);
      OUTLINED_FUNCTION_121_0();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_314();
      sub_1D4E0CA80();
      swift_endAccess();
      v37 = ContentRegistration.rawIdentifiers.getter(v32);
      v38 = sub_1D4E0CC20();
      v217 = v38;
      OUTLINED_FUNCTION_58();
      v39 = sub_1D4E0CCB0();
      while (v38 != v39)
      {
        OUTLINED_FUNCTION_58();
        sub_1D4E0CCA0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_211();
        sub_1D4E0CC60();
        if (v32)
        {
          (*(v25 + 16))(*(v12 + 1680), v37 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v38, *(v12 + 1656));
        }

        else
        {
          OUTLINED_FUNCTION_52();
          v46 = sub_1D4E0CF80();
          if (v199 != 8)
          {
            __break(1u);
            goto LABEL_77;
          }

          v49 = v46;
          v50 = *(v12 + 1680);
          v51 = *(v12 + 1656);
          *(v12 + 744) = v49;
          (*(v25 + 16))(v50, v12 + 744, v51);
          swift_unknownObjectRelease();
        }

        v40 = *(v12 + 1872);
        v32 = *(v12 + 1680);
        v41 = *(v12 + 1648);
        v42 = *(v12 + 1040);
        OUTLINED_FUNCTION_267();
        sub_1D4E0CCF0();
        v210(v41, v40, v42);
        OUTLINED_FUNCTION_121_0();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
        OUTLINED_FUNCTION_93();
        OUTLINED_FUNCTION_269();
        sub_1D4E0CA60();
        sub_1D4E0CA80();
        swift_endAccess();
        v39 = sub_1D4E0CCB0();
        v38 = v217;
      }

      v13 = *(v12 + 1688);

      v52 = OUTLINED_FUNCTION_146_0();
      v53(v52);
      v17 = v215;
      v26 = v201;
      if (v215 != sub_1D4E0CCB0())
      {
        continue;
      }

      break;
    }
  }

  sub_1D4E0CA10();
  v18 = sub_1D4E0CC20();
  v216 = v18;
  OUTLINED_FUNCTION_30();
  if (v18 == sub_1D4E0CCB0())
  {
    v19 = *(v12 + 1936);
  }

  else
  {
    OUTLINED_FUNCTION_116_0();
    v205 = v57;
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    v19 = *(v12 + 1936);
    do
    {
      OUTLINED_FUNCTION_192();
      v58 = sub_1D4E0CCA0();
      OUTLINED_FUNCTION_41_0();
      sub_1D4E0CC60();
      if (v58)
      {
        sub_1D4E0CA10();
      }

      else
      {
        OUTLINED_FUNCTION_105();
        sub_1D4E0CF80();
      }

      *&v213 = *(v12 + 1904);
      v209 = *(v12 + 1000);
      sub_1D4E0CCF0();
      LOBYTE(v13) = v205;
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_144_0();
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_109();

      *(v12 + 968) = v18;
      OUTLINED_FUNCTION_233();
      OUTLINED_FUNCTION_144_0();
      sub_1D4E0CA00();
      swift_getWitnessTable();
      v59 = sub_1D4E0CE00();

      v60 = swift_task_alloc();
      *(v60 + 16) = v209;
      *(v60 + 32) = v59;
      sub_1D4E0CA10();
      sub_1D4E0CA40();
      OUTLINED_FUNCTION_109();

      OUTLINED_FUNCTION_144_0();
      v61 = sub_1D4E0CA50();

      *(v12 + 952) = v61;
      OUTLINED_FUNCTION_233();
      OUTLINED_FUNCTION_144_0();
      sub_1D4E0CA30();
      sub_1D4E0CA10();
      swift_getWitnessTable();
      *(v12 + 936) = sub_1D4E0CD10();
      OUTLINED_FUNCTION_93();
      sub_1D4E0CD00();
      sub_1D4E0CCD0();
      swift_endAccess();

      v18 = v216;
    }

    while (v216 != sub_1D4E0CCB0());
  }

  v208 = v19;
  v20 = *(v12 + 992);

  OUTLINED_FUNCTION_88();
  v22 = *(v21 + 120);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  *(v12 + 1968) = *(v20 + v22);
  OUTLINED_FUNCTION_156_0();
  *(v12 + 1976) = sub_1D4E0CD00();
  sub_1D4DBD70C();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_148();
  *(v12 + 1984) = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_130_0();
  v23 = sub_1D4E0CC20();
  *(v12 + 920) = v23;
  OUTLINED_FUNCTION_130_0();
  if (v23 != sub_1D4E0CCB0())
  {
    OUTLINED_FUNCTION_116_0();
    *(v12 + 1992) = *(v62 + 192);
    OUTLINED_FUNCTION_116_0();
    *(v12 + 2000) = *(v63 + 96);
    OUTLINED_FUNCTION_116_0();
    *(v12 + 2008) = *(v64 + 128);
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    while (1)
    {
      OUTLINED_FUNCTION_130_0();
      sub_1D4E0CCA0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_202();
      sub_1D4E0CC60();
      if ((v13 & 1) == 0)
      {
        sub_1D4E0CF80();
        __break(1u);
        goto LABEL_72;
      }

      v65 = *(v12 + 1640);
      v66 = *(v12 + 1040);
      v67 = (*(v12 + 1968) + 24 * v23);
      v68 = v67[4];
      *(v12 + 2016) = v68;
      *(v12 + 2024) = v67[5];
      *(v12 + 2032) = v67[6];
      sub_1D4E0CA10();
      sub_1D4E0CA10();
      sub_1D4E0CCF0();
      *(v12 + 904) = v68;
      sub_1D4E0CA10();
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_5_0();
      swift_getWitnessTable();
      sub_1D4E0C9D0();

      OUTLINED_FUNCTION_118_0(v65, 1, v66);
      if (v69)
      {
        break;
      }

      v13 = *(v12 + 1816);
      *&v213 = *(v12 + 1048);
      v70 = *(v12 + 1040);

      OUTLINED_FUNCTION_237();
      OUTLINED_FUNCTION_267();
      v71();
      OUTLINED_FUNCTION_258();
      OUTLINED_FUNCTION_162_0();
      v72();
      v73 = OUTLINED_FUNCTION_93_0();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v70);
      OUTLINED_FUNCTION_93();
      sub_1D4E0CD00();
      sub_1D4E0CCD0();
      swift_endAccess();
      v76 = OUTLINED_FUNCTION_180();
      v77(v76);
      v78 = sub_1D4E0CCB0();
      v23 = *(v12 + 920);
      if (v23 == v78)
      {
        goto LABEL_30;
      }
    }

    v124 = *(v12 + 1640);
    v125 = *(v12 + 1608);
    v126 = *(v12 + 1048);
    v127 = *(v125 + 8);
    *(v12 + 2040) = v127;
    *(v12 + 2048) = (v125 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v127(v124, v126);
    sub_1D4E0CD60();
    if (v208)
    {
      v121 = *(v12 + 992);

      goto LABEL_54;
    }

    v185 = *(v12 + 1008);
    *(v12 + 2056) = *(v185 + 56);
    *(v12 + 2064) = (v185 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;
    sub_1D4E0C870();
    *(v12 + 2072) = OUTLINED_FUNCTION_111();
    sub_1D4D8E454();
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_152_0();
LABEL_64:
    OUTLINED_FUNCTION_156();

    return MEMORY[0x1EEE6DFA0](v46, v47, v48);
  }

LABEL_30:

  v79 = *(v12 + 1152);
  v80 = *(v12 + 992);
  OUTLINED_FUNCTION_200();
  *(v80 + *(v81 + 216)) = 1;
  *(v12 + 864) = sub_1D4E0CC80();
  OUTLINED_FUNCTION_200();
  v83 = *(v82 + 160);
  *(v12 + 2104) = v83;
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  *(v12 + 2112) = *(v80 + v83);
  sub_1D4DB94C8();
  OUTLINED_FUNCTION_261();
  *(v12 + 2120) = swift_getFunctionTypeMetadata1();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_211();
  *(v12 + 2128) = OUTLINED_FUNCTION_221();
  *(v12 + 856) = sub_1D4E0CC20();
  if (*(v12 + 856) != sub_1D4E0CCB0())
  {
    OUTLINED_FUNCTION_91();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_277();
    if (v79)
    {
      OUTLINED_FUNCTION_19_0();
      v84();
LABEL_33:
      OUTLINED_FUNCTION_148_0();
      (*(v85 + 32))();
      OUTLINED_FUNCTION_113_0();
      sub_1D4E0CCF0();
      goto LABEL_34;
    }

LABEL_72:
    v193 = *(v12 + 1456);
    v46 = sub_1D4E0CF80();
    if (v193 == 8)
    {
      v194 = v46;
      OUTLINED_FUNCTION_148_0();
      *(v12 + 840) = v194;
      (*(v195 + 16))();
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_34:
  v86 = *(v12 + 1416);
  OUTLINED_FUNCTION_172();
  v90 = OUTLINED_FUNCTION_82_0(v87, v88, v89, v86);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, v91, v86);
  v93 = *(v12 + 1552);
  if (EnumTagSinglePayload == 1)
  {
    v94 = OUTLINED_FUNCTION_69_0();
  }

  else
  {
    v98 = *(v12 + 1504);
    v99 = *(v12 + 1440);
    v100 = *(v12 + 1416);
    v101 = *(v12 + 1192);
    v102 = *(v12 + 1152);
    v103 = *(v100 + 48);
    *&v213 = *(v100 + 64);
    v104 = v98[1].n128_u8[0];
    v211 = *(v12 + 1000);
    *v99 = *v98;
    v99[1].n128_u8[0] = v104;
    v105 = *(v100 + 48);
    v106 = *(v101 + 32);
    v106(v99 + v105, v98 + v103, v102);
    OUTLINED_FUNCTION_115_0();
    v107 = swift_allocObject();
    v108 = *(v98 + v213);
    *(v107 + 16) = v211;
    *(v107 + 32) = v108;
    OUTLINED_FUNCTION_193();
    v110 = (v93 + v109);
    v112 = OUTLINED_FUNCTION_95_0(v111, *v99);
    v106(v112, v99 + v105, v102);
    *v110 = sub_1D4DBE048;
    v110[1] = v107;
    v94 = OUTLINED_FUNCTION_66_0();
  }

  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v113 = *(v12 + 1560);
  v114 = *(v12 + 1416);
  OUTLINED_FUNCTION_257(*(v12 + 1512));
  v115(v113);
  OUTLINED_FUNCTION_30_0();
  if (v69)
  {
    v116 = *(v12 + 992);

    v117 = *(*v116 + 168);
    *(v12 + 2168) = v117;
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    *(v12 + 2176) = *(v116 + v117);
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_47();
    *(v12 + 2184) = OUTLINED_FUNCTION_221();
    *(v12 + 784) = sub_1D4E0CC20();
    if (*(v12 + 784) == sub_1D4E0CCB0())
    {
      v118 = 1;
LABEL_48:
      v132 = *(v12 + 1248);
      v133 = 1;
      v134 = OUTLINED_FUNCTION_82_0(*(v12 + 1336), v118, 1, v132);
      OUTLINED_FUNCTION_118_0(v134, v135, v132);
      if (!v69)
      {
        v133 = *(v12 + 1384);
        v136 = *(v12 + 1336);
        v137 = *(v12 + 1272);
        v138 = *(v12 + 1248);
        v139 = *(v12 + 1192);
        v140 = *(v12 + 1152);
        v203 = *(v138 + 48);
        v204 = v140;
        v206 = *(v138 + 64);
        v212 = *(*(v12 + 1064) + 32);
        v207 = *(v12 + 1000);
        v141 = OUTLINED_FUNCTION_78();
        v142(v141);
        v143 = *(v138 + 48);
        v144 = *(v139 + 32);
        v144(v137 + v143, v136 + v203, v140);
        OUTLINED_FUNCTION_115_0();
        v145 = swift_allocObject();
        v146 = *(v136 + v206);
        *(v145 + 16) = v207;
        *(v145 + 32) = v146;
        v147 = *(v138 + 48);
        v148 = (v133 + *(v138 + 64));
        v149 = OUTLINED_FUNCTION_52();
        v212(v149);
        v144(v133 + v147, v137 + v143, v204);
        OUTLINED_FUNCTION_50_0();
        *v148 = v150;
        v148[1] = v145;
      }

      v151 = *(v12 + 1392);
      v152 = *(v12 + 1344);
      v153 = *(v12 + 1248);
      OUTLINED_FUNCTION_172();
      __swift_storeEnumTagSinglePayload(v154, v155, v156, v153);
      v158 = *(v152 + 32);
      v157 = v152 + 32;
      *(v12 + 2192) = v158;
      *(v12 + 2200) = v157 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v159 = OUTLINED_FUNCTION_30();
      v160(v159);
      v161 = OUTLINED_FUNCTION_100_0();
      OUTLINED_FUNCTION_118_0(v161, v162, v153);
      if (!v69)
      {
        OUTLINED_FUNCTION_243();
        v174 = *(v12 + 1192);
        v175 = *(v12 + 1152);
        OUTLINED_FUNCTION_61_0();
        v214 = OUTLINED_FUNCTION_242(v176);
        v177 = OUTLINED_FUNCTION_91();
        v178(v177);
        (*(v174 + 32))(v151 + v153, v133 + v153, v175);
        *(v151 + v157) = v214;
        sub_1D4E0CD60();
        if (v208)
        {
          v179 = OUTLINED_FUNCTION_91_0();
          v180(v179);

          v164 = v151;
          goto LABEL_56;
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        *(v12 + 2208) = v190;
        *v190 = v191;
        OUTLINED_FUNCTION_25_0(v190);
        OUTLINED_FUNCTION_240();
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_200();
      *(v12 + 2224) = *(v163 + 136);
      OUTLINED_FUNCTION_106_0();
      swift_beginAccess();
      *(v12 + 2232) = *(v12 + 864);
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_113_0();
      sub_1D4E0CC70();
      OUTLINED_FUNCTION_59();

      *(v12 + 752) = v133;
      OUTLINED_FUNCTION_10_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_168();
      *(v12 + 2240) = sub_1D4E0CFA0();
      sub_1D4E0CD60();
      if (v208)
      {
        v121 = *(v12 + 992);

LABEL_54:

        goto LABEL_55;
      }

      OUTLINED_FUNCTION_177();
      v187 = OUTLINED_FUNCTION_149_0(v186);
      *(v12 + 2280) = OUTLINED_FUNCTION_284(v187);
      v188 = sub_1D4D8E454();
      OUTLINED_FUNCTION_283(v188);
      OUTLINED_FUNCTION_23_0();
      goto LABEL_64;
    }

    v128 = *(v12 + 2184);
    OUTLINED_FUNCTION_78();
    v129 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0CC60();
    if (v129)
    {
      OUTLINED_FUNCTION_19_0();
      v130();
LABEL_47:
      OUTLINED_FUNCTION_65();
      v131();
      OUTLINED_FUNCTION_113_0();
      sub_1D4E0CCF0();
      v118 = 0;
      goto LABEL_48;
    }

    v46 = OUTLINED_FUNCTION_326();
    if (v128 == 8)
    {
      v196 = OUTLINED_FUNCTION_212(v46);
      v197(v196);
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

LABEL_79:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v46, v47, v48);
  }

  v119 = OUTLINED_FUNCTION_123_0();
  v120(v119);
  *(v113 + v114) = v213;
  sub_1D4E0CD60();
  if (v208)
  {
    v121 = *(v12 + 992);

    v122 = OUTLINED_FUNCTION_105();
    v123(v122);
LABEL_55:
    v164 = v121;
LABEL_56:
    sub_1D4DAFEE8(v164);
    OUTLINED_FUNCTION_289();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_227();
    OUTLINED_FUNCTION_129_0();

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_156();

    return v166(v165, v166, v167, v168, v169, v170, v171, v172, a9, a10, a11, a12);
  }

  v181 = *(v12 + 1432);
  v182 = *(v181 + 16);
  *(v12 + 712) = *v181;
  *(v12 + 728) = v182;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v12 + 2152) = v183;
  *v183 = v184;
  OUTLINED_FUNCTION_47_0(v183);
LABEL_68:
  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DA5D54()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 2056);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_170();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DA5DD4()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 2032);
  v18 = *(v0 + 2016);
  v20 = *(v0 + 1016);
  v2 = swift_task_alloc();
  *(v0 + 2080) = v2;
  *(v2 + 16) = *(v0 + 1000);
  *(v2 + 32) = v18;
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v18, *(&v18 + 1), v20);
  v19 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 2088) = v11;
  *v11 = v12;
  v11[1] = sub_1D4DA5F30;
  v13 = *(v0 + 1632);
  v14 = *(v0 + 1568);
  v15 = *(v0 + 1048);
  v16 = *(v0 + 1016);

  return v19(v13, &unk_1D4E0E548, v2, v15, v14, v16);
}