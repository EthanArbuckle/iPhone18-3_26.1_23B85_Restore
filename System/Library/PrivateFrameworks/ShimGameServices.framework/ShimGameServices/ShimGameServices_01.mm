uint64_t sub_266013ED4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_266013C78(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266014194(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_266039C24();
      sub_2660398F4();
      result = sub_266039C34();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_266039BE4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26601403C();
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
    result = sub_266039C04();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_26601403C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583B0, &qword_26603C010);
  v2 = *v0;
  v3 = sub_266039AD4();
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

uint64_t sub_266014194(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583B0, &qword_26603C010);
  result = sub_266039AE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_266039C24();

        sub_2660398F4();
        result = sub_266039C34();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2660143C8(void *a1)
{
  v1 = [a1 groupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2660398E4();

  return v3;
}

uint64_t sub_26601442C(id *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = [*a1 identifier];
  sub_2660398E4();

  sub_266039494();

  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2660144D4()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return sub_2660115D0(v6, v2, v1);
}

uint64_t sub_26601456C()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  OUTLINED_FUNCTION_31_0();

  return v7(v2);
}

uint64_t sub_266014654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660146BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26601471C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_2660128AC(v5, v1);
}

uint64_t sub_2660147A8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_266039A94();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2660147E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_266014838(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_266039A94();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_266014878(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t dispatch thunk of GCFGameStatServiceAchievements.getAchievementDescriptions(gameDescriptor:)()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_6_2();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2(v11);

  return v14(v5, v3, v1);
}

uint64_t dispatch thunk of GCFGameStatServiceAchievements.getAchievements(gameDescriptor:player:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  OUTLINED_FUNCTION_6_2();
  v13 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2(v9);
  v11 = OUTLINED_FUNCTION_29_0();

  return v13(v11);
}

uint64_t sub_266014AEC()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_16(v2);
  v4 = *(v3 + 80);
  if (v0)
  {
    v5 = sub_266039224();
    sub_265FFE434();
    v6 = OUTLINED_FUNCTION_44_0();
    *v7 = v0;
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D0CE60], v5);
    v8 = v0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
    OUTLINED_FUNCTION_19_1(v9, v10, v11, v12, v13, v14, v15, v16, v28, v6);
    return sub_2660399C4();
  }

  else
  {
    v18 = sub_26600DB04(v1);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v19 = v18;
    }

    v29 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
    OUTLINED_FUNCTION_19_1(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    return sub_2660399D4();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_5(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266014CD8()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_16(v2);
  v4 = *(v3 + 80);
  if (v0)
  {
    v5 = sub_266039224();
    sub_265FFE434();
    v6 = OUTLINED_FUNCTION_44_0();
    *v7 = v0;
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D0CE60], v5);
    v29 = v6;
    v8 = v0;
LABEL_3:
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
    OUTLINED_FUNCTION_19_1(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29);
    return sub_2660399C4();
  }

  v18 = sub_26600D4B4(v1);
  if (!v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058218, &qword_26603BFF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
    sub_266039224();
    sub_265FFE434();
    v27 = OUTLINED_FUNCTION_44_0();
    sub_2660391D4();
    v29 = v27;
    goto LABEL_3;
  }

  v30 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_19_1(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30);
  return sub_2660399D4();
}

uint64_t sub_266014E7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_45_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_52();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t result)
{
  *(result + 8) = sub_26600F308;
  v2 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_0()
{
  *(v1 + 160) = *(v0 + 16);
  *(v1 + 168) = (v0 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_30()
{
  v1 = v0[15];
  v2 = v0[12];
  result = v0[11];
  v4 = v0[7];
  v5 = v0[13] + 8;
  v6 = *(v0[8] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_42()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  return v0[14];
}

uint64_t OUTLINED_FUNCTION_49()
{
  result = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = **(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{
  v1 = v0[11];
  result = v0[9];
  v3 = v0[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_55()
{
  v2 = *(v0 + 72);
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = *(v1 + 8);
  return result;
}

uint64_t sub_266015328(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_2660398E4();

  return v3;
}

uint64_t sub_266015380(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266015394()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058290, &qword_26603C6A0);
  *v3 = v0;
  v3[1] = sub_266015490;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_266015490()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266015590()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  v5 = OUTLINED_FUNCTION_2_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - v10;
  v12 = objc_opt_self();
  v13 = sub_266039954();
  (*(v7 + 16))(v11, v3, v4);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v4);
  OUTLINED_FUNCTION_13_2();
  v17[1] = 1107296256;
  v17[2] = sub_266015750;
  v17[3] = &block_descriptor_41;
  v16 = _Block_copy(v17);

  [v12 getProfilesForPlayerIDs:v13 fetchOptions:1 from:v1 handler:v16];
  _Block_release(v16);

  OUTLINED_FUNCTION_42_0();
}

void sub_266015748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_266015590();
}

uint64_t sub_266015750(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
    v4 = sub_266039964();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_2660157F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26601580C()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v3[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i64[1] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058298, &qword_26603C068);
  *v5 = v0;
  v5[1] = sub_266015914;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_266015914()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266015A14()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 72);

  return v2();
}

void sub_266015A70()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v22 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - v13;
  v15 = sub_266039954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DC8, &qword_26603CCA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26603B720;
  *(v16 + 32) = v3;
  *(v16 + 40) = v1;

  v17 = sub_266039954();

  (*(v10 + 16))(v14, v6, v7);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v18, v14, v7);
  OUTLINED_FUNCTION_13_2();
  v23[1] = 1107296256;
  v23[2] = sub_266015E84;
  v23[3] = &block_descriptor_35;
  v20 = _Block_copy(v23);

  [v22 loadScopedPlayerIDs:v15 gameBundleIDs:v17 handler:v20];
  _Block_release(v20);

  OUTLINED_FUNCTION_42_0();
}

void sub_266015C78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_266015A70();
}

void *sub_266015C84(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_266039BB4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_26601B428(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x266777030](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = sub_265FFFCFC(0, &qword_280058428, 0x277D0C200);
      v19 = v8;
      v9 = sub_26601E15C();
      v20 = v9;
      v21 = v3;
      v18[0] = v7;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_26601B428((v10 > 1), v11 + 1, 1);
        v8 = v19;
        v12 = v20;
      }

      else
      {
        v12 = v9;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
      v14 = *(*(v8 - 8) + 64);
      MEMORY[0x28223BE20](v13);
      v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_26601DB6C(v11, v16, &v21, v8, v12);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v3 = v21;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_266015E84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_265FFFCFC(0, &qword_280058428, 0x277D0C200);
  v6 = sub_266039964();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_266015F34()
{
  OUTLINED_FUNCTION_1();
  v0[19] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800582A0, &qword_26603C078);
  v0[20] = v2;
  OUTLINED_FUNCTION_3_0(v2);
  v0[21] = v3;
  v5 = *(v4 + 64) + 15;
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266015FF0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2660161A4;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800582A8, &qword_26603C080);
  sub_2660399B4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2660162D0;
  v1[13] = &block_descriptor_2;
  [v9 getContextualPromptStatesWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2660161A4()
{
  OUTLINED_FUNCTION_1();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266016274()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = OUTLINED_FUNCTION_9_2();

  return v4(v3);
}

uint64_t sub_2660162D0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_265FFFCFC(0, &qword_280058418, 0x277CCABB0);
  sub_266039884();

  return sub_266016378();
}

uint64_t sub_2660163C4()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2(v5);

  return sub_266015380(v2, v3);
}

uint64_t sub_266016454()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return sub_266015F34();
}

uint64_t sub_2660164DC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_9_2();

  return v6(v5);
}

uint64_t sub_2660165C0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_24_1();
  v4 = *v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);

  return sub_2660157F4(v3, v2, v0, v4);
}

uint64_t sub_266016660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  sub_266005E54(a1, a4);
  a4[8] = &type metadata for ShimProfileService.GCFProfileServiceAdapter;
  a4[9] = sub_266008044();
  a4[5] = a2;
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_2660021E4(a3, (a4 + 10));
}

uint64_t sub_2660166D4@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2660021E4(a1, a4);
  sub_2660021E4(a2, a4 + 40);

  return sub_2660021E4(a3, a4 + 80);
}

uint64_t ShimProfileService.describeProfiles(players:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800582B8, &qword_26603C090);
  OUTLINED_FUNCTION_3_0(v3);
  v1[4] = v4;
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_2(v7);

  return sub_266017058();
}

uint64_t sub_26601681C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 56) = v8;

  if (v0)
  {
    v9 = *(v3 + 40);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_266016954()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);

  v0[8] = sub_2660176D8(v4);
  v5 = *(v3 + 16);
  OUTLINED_FUNCTION_6_2();
  v13 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_2(v9);
  v10 = OUTLINED_FUNCTION_31_1();

  return v11(v10);
}

uint64_t sub_266016A88()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[9];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[10] = v8;
  v3[11] = v0;

  v9 = v2[8];
  if (v0)
  {
    v10 = v3[7];

    v11 = v3[5];

    v12 = v6[1];

    return v12();
  }

  else
  {

    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_266016BE8()
{
  v59 = v0;
  v1 = *(v0 + 80);
  sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
  v2 = sub_2660398A4();
  v3 = sub_266003570(v1);
  v4 = 0;
  v55 = v1 & 0xFFFFFFFFFFFFFF8;
  v56 = v1 & 0xC000000000000001;
  v54 = v1 + 32;
  while (1)
  {
    if (v3 == v4)
    {
      v24 = v53;
      v25 = v53[10];
      v26 = v53[2];

      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = v53[4];
        v29 = v53[2];
        v57 = MEMORY[0x277D84F90];
        sub_26601B448();
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
        OUTLINED_FUNCTION_3_0(v30);
        v32 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
        v33 = v53;
        v35 = *(v34 + 72);
        v36 = v53[11];
        do
        {
          sub_2660177F8(v32, v33[7], v2, &v58, v33[5]);
          if (v36)
          {
            v44 = v33[7];

            v45 = v33[5];

            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_38_0();

            __asm { BRAA            X1, X16 }
          }

          v38 = *(v57 + 16);
          v37 = *(v57 + 24);
          if (v38 >= v37 >> 1)
          {
            OUTLINED_FUNCTION_38_1(v37);
            sub_26601B448();
          }

          v39 = v53[5];
          *(v57 + 16) = v38 + 1;
          v33 = v53;
          v40 = v57 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
          v41 = *(v28 + 72);
          sub_26601DED0();
          v36 = 0;
          v32 += v35;
          --v27;
        }

        while (v27);
        v48 = v53[7];

        v24 = v53;
      }

      else
      {
        v43 = v53[7];
      }

      v49 = v24[5];

      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X2, X16 }
    }

    if (v56)
    {
      v5 = MEMORY[0x266777030](v4, v53[10]);
    }

    else
    {
      if (v4 >= *(v55 + 16))
      {
        goto LABEL_35;
      }

      v5 = *(v54 + 8 * v4);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return MEMORY[0x2821FE290]();
    }

    v7 = [v5 playerID];
    v8 = sub_2660398E4();
    v10 = v9;

    v11 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v58 = v2;
    v12 = sub_26601BA28(v8, v10);
    if (__OFADD__(*(v2 + 16), (v13 & 1) == 0))
    {
      goto LABEL_36;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800582C8, &unk_26603C0A0);
    if (sub_266039BA4())
    {
      break;
    }

LABEL_11:
    if (v15)
    {

      v2 = v58;
      v18 = *(v58 + 56);
      v19 = *(v18 + 8 * v14);
      *(v18 + 8 * v14) = v11;
    }

    else
    {
      v2 = v58;
      OUTLINED_FUNCTION_28_1(v58 + 8 * (v14 >> 6));
      v20 = (*(v58 + 48) + 16 * v14);
      *v20 = v8;
      v20[1] = v10;
      *(*(v2 + 56) + 8 * v14) = v11;

      v21 = *(v2 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v2 + 16) = v23;
    }

    ++v4;
  }

  v16 = sub_26601BA28(v8, v10);
  if ((v15 & 1) == (v17 & 1))
  {
    v14 = v16;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE290]();
}

uint64_t sub_266017058()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v1[2] = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[3] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v1[4] = v5;
  v7 = *(v6 + 64) + 15;
  v1[5] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058408, &qword_26603C348);
  v1[6] = v8;
  OUTLINED_FUNCTION_16(v8);
  v10 = *(v9 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_2660171B0;

  return sub_26600029C(v0 + 80, v3);
}

uint64_t sub_2660171B0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  *v4 = *v1;
  v3[11] = v7;

  if (v0)
  {
    v9 = v3[8];
    v8 = v3[9];
    v10 = v3[7];
    v11 = v3[5];

    OUTLINED_FUNCTION_11();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_266017300()
{
  v1 = v0[11];
  v2 = v0[4];
  v57 = *(v0[2] + 16);
  v52 = v0[8] + 8;
  v53 = v0[6];
  v51 = (v2 + 32);
  v54 = (v2 + 8);
  v55 = v2;

  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v56 = v1;
  v5 = (v1 + 40);
  while (1)
  {
    if (v57 == v3)
    {
      v36 = v0[11];
      v37 = v0[2];

      goto LABEL_16;
    }

    v6 = *(v55 + 72);
    v7 = *(v55 + 16);
    v8 = (v7)(v0[5], v0[2] + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v6 * v3, v0[3]);
    v9 = *(v56 + 16);
    if (v3 == v9)
    {
      break;
    }

    if (v3 >= v9)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return MEMORY[0x2821FE290](v8);
    }

    v58 = v6;
    v59 = v7;
    v60 = v5;
    v10 = v0[8];
    v11 = v0[7];
    v12 = *(v5 - 1);
    v13 = *v5;
    v14 = (v0[9] + *(v53 + 48));
    (*v51)(v0[9], v0[5], v0[3]);
    *v14 = v12;
    v14[1] = v13;
    sub_26601DF7C();
    v15 = *(v52 + *(v53 + 48));

    sub_26601DF7C();
    v16 = (v11 + *(v53 + 48));
    v18 = *v16;
    v17 = v16[1];
    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_26601B980(v10);
    if (__OFADD__(v4[2], (v19 & 1) == 0))
    {
      goto LABEL_23;
    }

    v20 = v8;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058410, &qword_26603C350);
    if (sub_266039BA4())
    {
      v22 = sub_26601B980(v0[8]);
      if ((v21 & 1) != (v23 & 1))
      {
        v8 = v0[3];

        return MEMORY[0x2821FE290](v8);
      }

      v20 = v22;
    }

    v24 = v0[9];
    if (v21)
    {
      v25 = (v4[7] + 16 * v20);
      v26 = v25[1];
      *v25 = v18;
      v25[1] = v17;

      sub_2660078E8(v24, &qword_280058408, &qword_26603C348);
    }

    else
    {
      v27 = v0[8];
      v28 = v0[3];
      OUTLINED_FUNCTION_28_1(&v4[v20 >> 6]);
      v59(v4[6] + v20 * v58);
      v29 = (v4[7] + 16 * v20);
      *v29 = v18;
      v29[1] = v17;
      v8 = sub_2660078E8(v24, &qword_280058408, &qword_26603C348);
      v30 = v4[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      v4[2] = v32;
    }

    v33 = v0[7];
    v34 = v0[3];
    v35 = *v54;
    (*v54)(v0[8], v34);
    v35(v33, v34);
    v5 = v60 + 2;
    ++v3;
  }

  v38 = v0[11];
  v39 = v0[5];
  v40 = v0[2];
  v41 = v0[3];

  v42 = OUTLINED_FUNCTION_27_0();
  v43(v42, v41);
LABEL_16:
  v45 = v0[8];
  v44 = v0[9];
  v46 = v0[7];
  v47 = v0[5];

  v48 = OUTLINED_FUNCTION_9_2();

  return v49(v48);
}

void *sub_2660176D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26601B1C4(*(a1 + 16), 0);
  v4 = sub_26601DC04(&v6, v3 + 4, v2, a1);
  sub_26601DF74();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_266017768(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26601B1C4(*(a1 + 16), 0);
  v4 = sub_26601DD60(&v6, v3 + 4, v2, a1);
  sub_26601DF74();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2660177F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v6 = v5;
  v131 = a5;
  v10 = sub_266039864();
  v11 = OUTLINED_FUNCTION_2_0(v10);
  v116 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800583C0, &unk_26603C320);
  OUTLINED_FUNCTION_16(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26_0();
  v118 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  OUTLINED_FUNCTION_16(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26_0();
  v122 = v27;
  OUTLINED_FUNCTION_37_1();
  v28 = sub_266039654();
  v29 = OUTLINED_FUNCTION_2_0(v28);
  v119 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_23_0();
  v121 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0(v35);
  v123 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_26_0();
  v124 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F8, &qword_26603BD40);
  v42 = OUTLINED_FUNCTION_16(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_2();
  v120 = v45 - v46;
  OUTLINED_FUNCTION_21_0();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v113 - v49;
  MEMORY[0x28223BE20](v48);
  v125 = &v113 - v51;
  if (!*(a2 + 16))
  {
    goto LABEL_10;
  }

  v52 = sub_26601B980(a1);
  if ((v53 & 1) == 0 || (v54 = (*(a2 + 56) + 16 * v52), v56 = *v54, v55 = v54[1], , v57 = OUTLINED_FUNCTION_15_0(), v59 = sub_2660181F8(v57, v58, a3), , !v59))
  {
LABEL_10:
    sub_266039674();
    OUTLINED_FUNCTION_34_0();
    return __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  v115 = v59;
  v64 = sub_26601DA9C(v59);
  if (!v64)
  {
    v129 = 0u;
    v130 = 0u;
    v66 = v6;
    goto LABEL_12;
  }

  v65 = v64;
  v126 = 0x6574616C706D6574;
  v127 = 0xE800000000000000;
  sub_266039AC4();
  sub_266006E54(&v128, v65, &v129);

  sub_266007894(&v128);
  v66 = v6;
  if (!*(&v130 + 1))
  {
LABEL_12:
    sub_2660078E8(&v129, &unk_280057F50, &qword_26603B9C0);
    v85 = v121;
    v68 = v124;
    goto LABEL_17;
  }

  v67 = swift_dynamicCast();
  v68 = v124;
  if ((v67 & 1) == 0)
  {
LABEL_14:
    v85 = v121;
    goto LABEL_17;
  }

  v69 = v66;
  sub_266039534();
  if (!v66)
  {
    sub_2660078E8(v125, &qword_2800580F8, &qword_26603BD40);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v60);
    sub_26601DED0();
    goto LABEL_14;
  }

  sub_266039844();
  v70 = v66;
  v71 = sub_266039854();
  v72 = sub_266039A14();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v114 = v71;
    v75 = v74;
    *v73 = 138412290;
    v76 = v69;
    v77 = _swift_stdlib_bridgeErrorToNSError();
    *(v73 + 4) = v77;
    *v75 = v77;
    v78 = v72;
    v79 = v114;
    _os_log_impl(&dword_265FFB000, v114, v78, "Encountered an error while attempting to create a profile image: %@", v73, 0xCu);
    sub_2660078E8(v75, &qword_2800583F0, &qword_26603C340);
    MEMORY[0x266777640](v75, -1, -1);
    MEMORY[0x266777640](v73, -1, -1);

    v68 = v124;
  }

  else
  {
  }

  v85 = v121;
  (*(v116 + 8))(v17, v10);
  v66 = 0;
LABEL_17:
  (*(v123 + 16))(v68, a1, v35);
  if ([v115 isArcadeSubscriber])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583E8, &qword_26603C338);
    v86 = *(v119 + 72);
    v87 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_26603B720;
    sub_266039644();
    v128 = v88;
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  sub_26601C208(&qword_2800583D0, MEMORY[0x277D0D550]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583D8, &qword_26603C330);
  sub_26601DF2C(&qword_2800583E0, &qword_2800583D8, &qword_26603C330);
  sub_266039A84();
  sub_26601DB08(v115);
  v89 = v122;
  if (v90)
  {
    swift_bridgeObjectRetain_n();
    sub_2660395C4();
    if (v66)
    {
      swift_bridgeObjectRelease_n();

      (*(v119 + 8))(v85, v28);
      (*(v123 + 8))(v68, v35);
      result = sub_2660078E8(v125, &qword_2800580F8, &qword_26603BD40);
      *v117 = v66;
      return result;
    }

    swift_bridgeObjectRelease_n();
    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  __swift_storeEnumTagSinglePayload(v89, v91, 1, v92);
  v93 = v115;
  v94 = [v115 displayNameWithOptions_];
  v119 = sub_2660398E4();
  v123 = v95;

  v96 = [v93 contact];
  v97 = v96;
  if (v96)
  {
    v98 = [v96 _gkCompositeName];

    sub_2660398E4();
  }

  sub_26601DF7C();
  v99 = [v115 avatarArtwork];
  if (v99)
  {
    v100 = v99;
    v101 = [v99 metadata];
    v102 = [v101 templateURL];

    sub_2660398E4();
    v104 = v103;

    v105 = [v100 metadata];
    Artwork.init(templateURL:metadata:)(v104, v105, v118);
  }

  else
  {
    sub_266039634();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
  }

  v110 = v115;
  [v115 isChallengeable];
  [v110 supportsMultiplayerActivities];
  v111 = v131;
  sub_266039664();

  sub_2660078E8(v125, &qword_2800580F8, &qword_26603BD40);
  v112 = sub_266039674();
  return __swift_storeEnumTagSinglePayload(v111, 0, 1, v112);
}

void *sub_2660181F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26601BA28(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_266018240(uint64_t a1, uint64_t *a2)
{
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v39 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  v58 = *(v47 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - v11;
  v12 = sub_266039264();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058350, &qword_26603C2E0);
  v17 = *(v60 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v39 - v19;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
    return v21;
  }

  v64 = MEMORY[0x277D84F90];
  sub_26601B488();
  v21 = v64;
  v22 = *(v13 + 16);
  v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v56 = (v13 + 88);
  v57 = v22;
  v55 = *MEMORY[0x277D0CEC0];
  v43 = *MEMORY[0x277D0CEB8];
  v50 = (v13 + 96);
  v40 = (v9 + 32);
  v39 = v9 + 8;
  v42 = (v58 + 32);
  v41 = v58 + 8;
  v58 = v13 + 16;
  v48 = *(v13 + 72);
  v49 = v17 + 32;
  v53 = v13;
  v54 = v12;
  v51 = v17;
  v52 = v16;
  while (1)
  {
    v24 = *v62;
    v57(v16, v23, v12);
    v25 = (*v56)(v16, v12);
    if (v25 == v55)
    {
      (*v50)(v16, v12);
      v26 = v46;
      v27 = v16;
      v28 = v47;
      v29 = (*v42)(v46, v27, v47);
      MEMORY[0x28223BE20](v29);
      *(&v39 - 2) = v26;
      swift_bridgeObjectRetain_n();
      v30 = sub_26601A94C(sub_26601C0C8, (&v39 - 4), v24);
      v31 = &v66;
    }

    else
    {
      if (v25 != v43)
      {
        sub_266039224();
        sub_26601C208(&qword_2800584E0, MEMORY[0x277D0CE80]);
        swift_allocError();

        sub_266039204();
        swift_willThrow();
        (*(v13 + 8))(v16, v12);

        return v21;
      }

      (*v50)(v16, v12);
      v26 = v44;
      v32 = v16;
      v28 = v45;
      v33 = (*v40)(v44, v32, v45);
      MEMORY[0x28223BE20](v33);
      *(&v39 - 2) = v26;
      swift_bridgeObjectRetain_n();
      v30 = sub_26601A94C(sub_26601C250, (&v39 - 4), v24);
      v31 = &v65;
    }

    (**(v31 - 32))(v26, v28);

    v63[0] = v30;

    sub_26601C160(v63);
    if (v2)
    {
      break;
    }

    v34 = sub_2660395F4();
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v34);
    sub_266039444();
    v35 = MEMORY[0x277D0D358];
    sub_26601C208(&qword_280058360, MEMORY[0x277D0D358]);
    sub_26601C208(&qword_280058368, v35);
    v36 = v59;
    sub_2660395E4();
    v64 = v21;
    v37 = *(v21 + 16);
    if (v37 >= *(v21 + 24) >> 1)
    {
      sub_26601B488();
      v21 = v64;
    }

    *(v21 + 16) = v37 + 1;
    (*(v51 + 32))(v21 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v37, v36, v60);
    v23 += v48;
    --v20;
    v13 = v53;
    v12 = v54;
    v16 = v52;
    if (!v20)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShimProfileService.listInteractions(player:participants:after:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660189B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v1[13];
  v4 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(v4 + 32);
  OUTLINED_FUNCTION_6_2();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800582D8, &qword_26603C0C8);
  *v10 = v0;
  v10[1] = sub_266018B3C;
  v12 = v0[3];

  return (v14)(v0 + 2, v12, &unk_26603C0C0, v5, v11, v3, v4);
}

uint64_t sub_266018B3C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266018C3C()
{
  OUTLINED_FUNCTION_1();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[3] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v0[8] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v0[9] = v7;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v10 = sub_266039264();
  v0[13] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v0[14] = v11;
  v13 = *(v12 + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266018D78()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = *(v3 + 56);
    v43 = (v3 + 16);
    v42 = *MEMORY[0x277D0CEB8];
    v39 = v0[9];
    v41 = (v39 + 32);
    v8 = MEMORY[0x277D84F90];
    v37 = v7;
    v38 = v5;
    do
    {
      v9 = v0[15];
      v10 = v0[13];
      v4(v0[16], v6, v10);
      v11 = *v43;
      v12 = OUTLINED_FUNCTION_15_0();
      v13(v12);
      v14 = OUTLINED_FUNCTION_27_0();
      v16 = v15(v14, v10);
      v17 = v0[15];
      v18 = v0[13];
      if (v16 == v42)
      {
        v19 = v0[11];
        v40 = v0[12];
        v20 = v8;
        v21 = v0[10];
        v22 = v0[8];
        v23 = OUTLINED_FUNCTION_27_0();
        v24(v23);
        v25 = *v41;
        (*v41)(v21, v17, v22);
        v26 = v21;
        v8 = v20;
        v25(v19, v26, v22);
        v25(v40, v19, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26601AFBC(0, *(v20 + 16) + 1, 1, v20);
        }

        v28 = *(v8 + 16);
        v27 = *(v8 + 24);
        v7 = v37;
        v4 = v38;
        if (v28 >= v27 >> 1)
        {
          v33 = OUTLINED_FUNCTION_38_1(v27);
          v8 = sub_26601AFBC(v33, v28 + 1, 1, v8);
        }

        v29 = v0[12];
        v30 = v0[8];
        *(v8 + 16) = v28 + 1;
        v25(v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v28, v29, v30);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_27_0();
        v32(v31);
      }

      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v0[17] = v8;
  v34 = swift_task_alloc();
  v0[18] = v34;
  *v34 = v0;
  v34[1] = sub_26601904C;
  v35 = v0[6];

  return sub_266017058();
}

uint64_t sub_26601904C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[19] = v0;

  if (!v0)
  {
    v11 = v5[17];

    v5[20] = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26601915C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[6];
  v2 = sub_2660199CC(v0[20]);
  v0[21] = sub_266017768(v2);
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_6_2();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_2(v8);
  v9 = OUTLINED_FUNCTION_31_1();

  return v10(v9);
}

uint64_t sub_26601928C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v8 + 184) = v7;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

id sub_2660193AC()
{
  v31 = v0;
  v1 = v0[23];
  v28 = MEMORY[0x277D84F90];
  result = sub_266003570(v1);
  v3 = result;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v0[24];
  v8 = v1 + 32;
  while (v3 != v4)
  {
    if (v5)
    {
      result = MEMORY[0x266777030](v4, v0[23]);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_17;
      }

      result = *(v8 + 8 * v4);
    }

    v9 = result;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v29 = result;
    sub_266019AE8(&v29, v30);
    if (v7)
    {
      v20 = v0[23];

      v22 = v0[15];
      v21 = v0[16];
      v24 = v0[11];
      v23 = v0[12];
      v25 = v0[10];

      OUTLINED_FUNCTION_11();

      return v26();
    }

    result = sub_26601A320(v30[0]);
    ++v4;
  }

  v10 = v0[23];
  v11 = v0[6];

  v0[25] = v28;
  v0[2] = v28;
  v12 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v11[13]);
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_6_2();
  v27 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  v17[1] = sub_266019610;
  v18 = v0[5];
  v19 = OUTLINED_FUNCTION_34_1(v0[4]);

  return v27(v19);
}

uint64_t sub_266019610()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 208);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266019718()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 216);
  v2 = *(v0 + 56);
  sub_26601A320(*(v0 + 224));
  v3 = sub_266018240(v2, (v0 + 16));
  if (v1)
  {
    v4 = *(v0 + 16);

    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
  }

  else
  {
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);
    **(v0 + 24) = v3;
    v16 = *(v0 + 16);
  }

  OUTLINED_FUNCTION_11();

  return v10();
}

uint64_t sub_266019824()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_33_1();

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_2660198B4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_33_1();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_26601993C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 200);

  v2 = *(v0 + 216);
  OUTLINED_FUNCTION_33_1();

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_2660199CC(uint64_t a1)
{
  result = MEMORY[0x266776F10](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_266013B2C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_266019AE8(void **a1@<X0>, size_t *a2@<X8>)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_0();
  v124 = v7;
  OUTLINED_FUNCTION_37_1();
  v8 = sub_2660393F4();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v120 = v10;
  v121 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_0();
  v119 = v14 - v13;
  OUTLINED_FUNCTION_37_1();
  v128 = sub_266039444();
  v15 = OUTLINED_FUNCTION_2_0(v128);
  v123 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_2();
  v115 = v19 - v20;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v21);
  v117 = &v111 - v22;
  OUTLINED_FUNCTION_37_1();
  v129 = sub_266039154();
  v23 = OUTLINED_FUNCTION_2_0(v129);
  v127 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_2();
  v125 = v27 - v28;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v29);
  v122 = &v111 - v30;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v31);
  v118 = &v111 - v32;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v33);
  v114 = &v111 - v34;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  v116 = &v111 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v38 = OUTLINED_FUNCTION_2_0(v37);
  v130 = v39;
  v131 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_2();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v111 - v46;
  v48 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  v50 = *(*(v49 - 8) + 72);
  v51 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26603B720;
  v53 = (v52 + v51);
  v54 = [v48 playerID];
  v55 = sub_2660398E4();
  v57 = v56;

  *v53 = v55;
  v53[1] = v57;
  swift_storeEnumTagMultiPayload();
  v58 = v132;
  sub_266039584();
  if (!v58)
  {
    v113 = v44;
    v132 = v47;
    v59 = v123;
    v60 = v128;
    v61 = [v48 lastPlayedGame];
    v62 = v48;
    if (v61)
    {
      v63 = v61;
      v112 = v48;
      v64 = [v48 lastPlayedDate];
      if (v64)
      {
        v65 = v64;
        v66 = v114;
        sub_266039144();

        v67 = v127;
        v68 = v116;
        v69 = v66;
        v70 = v129;
        (*(v127 + 32))(v116, v69, v129);
        (*(v67 + 16))(v118, v68, v70);
        v71 = v63;
        v72 = v119;
        GKGameDescriptor.ref.getter();
        v114 = v71;

        (*(v120 + 104))(v72, *MEMORY[0x277D0D348], v121);
        v73 = v113;
        (*(v130 + 16))(v113, v132, v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
        OUTLINED_FUNCTION_34_0();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
        v78 = v73;
        sub_266039414();
        v79 = sub_26600CA88(0, 1, 1, MEMORY[0x277D84F90]);
        v81 = *(v79 + 16);
        v80 = *(v79 + 24);
        if (v81 >= v80 >> 1)
        {
          v109 = OUTLINED_FUNCTION_38_1(v80);
          v79 = sub_26600CA88(v109, v81 + 1, 1, v79);
        }

        (*(v67 + 8))(v116, v129);
        *(v79 + 16) = v81 + 1;
        (*(v59 + 32))(v79 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v81, v117, v60);
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
        v78 = v113;
      }

      v62 = v112;
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
      v78 = v113;
    }

    v82 = [v62 lastChallengedGame];
    v83 = v125;
    if (v82)
    {
      v84 = v82;
      v85 = [v62 lastChallengedDate];
      if (v85)
      {
        v86 = v85;
        sub_266039144();

        v87 = v127;
        v88 = v122;
        v89 = v83;
        v90 = v129;
        (*(v127 + 32))(v122, v89, v129);
        (*(v87 + 16))(v118, v88, v90);
        v91 = v84;
        v92 = v119;
        GKGameDescriptor.ref.getter();

        (*(v120 + 104))(v92, *MEMORY[0x277D0D350], v121);
        (*(v130 + 16))(v78, v132, v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
        OUTLINED_FUNCTION_34_0();
        __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
        v97 = v115;
        OUTLINED_FUNCTION_35_1();
        sub_266039414();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v126;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = sub_26600CA88(0, *(v79 + 16) + 1, 1, v79);
        }

        v100 = v128;
        v102 = *(v79 + 16);
        v101 = *(v79 + 24);
        if (v102 >= v101 >> 1)
        {
          v110 = OUTLINED_FUNCTION_38_1(v101);
          v79 = sub_26600CA88(v110, v102 + 1, 1, v79);
        }

        (*(v127 + 8))(v122, v129);
        v103 = OUTLINED_FUNCTION_25_1();
        v104(v103);
        *(v79 + 16) = v102 + 1;
        (*(v59 + 32))(v79 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v102, v97, v100);
        goto LABEL_20;
      }

      v107 = OUTLINED_FUNCTION_25_1();
      v108(v107);
    }

    else
    {
      v105 = OUTLINED_FUNCTION_25_1();
      v106(v105);
    }

    v99 = v126;
LABEL_20:
    *v99 = v79;
  }
}

int64_t sub_26601A320(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26601C0F8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_266039444();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ShimProfileService.listSuggestedNicknames(player:count:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26601A438()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[4];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(MEMORY[0x277D0D378] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26601A4E4;
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_34_1(v0[2]);

  return MEMORY[0x282165118](v6);
}

uint64_t sub_26601A4E4()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26601A5D4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimProfileService.describeProfiles(players:)();
}

uint64_t sub_26601A65C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return ShimProfileService.listInteractions(player:participants:after:)(v1, v0);
}

uint64_t sub_26601A6F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return ShimProfileService.listSuggestedNicknames(player:count:)(v1, v0);
}

uint64_t sub_26601A784()
{
  OUTLINED_FUNCTION_36_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_266039424();
  v8 = sub_26601A85C();
  (*(v2 + 8))(v7, v0);
  return v8 & 1;
}

uint64_t sub_26601A85C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  sub_26601DF2C(&qword_280058370, &unk_280057F70, &unk_26603B960);
  sub_266039934();
  sub_266039934();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_266039BE4();
  }

  return v1 & 1;
}

uint64_t sub_26601A94C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_266039444();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        sub_26601B4C8(0, *(v18 + 16) + 1, 1);
        v20 = v35;
      }

      a3 = v16;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v29 = v22 + 1;
        v25 = v22;
        sub_26601B4C8(v21 > 1, v22 + 1, 1);
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      *(v20 + 16) = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

void sub_26601AC10()
{
  OUTLINED_FUNCTION_41_1();
  v41 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  OUTLINED_FUNCTION_2_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_0();
  v40 = v7;
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058388, &qword_26603C2F8) - 8);
  v9 = *(*v8 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  v14 = OUTLINED_FUNCTION_16(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_2();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v40 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  sub_266039434();
  v26 = v3;
  (*(v3 + 16))(v23, v41, v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v27 = v8[14];
  sub_26601DF7C();
  sub_26601DF7C();
  OUTLINED_FUNCTION_43_1(v12);
  if (!v28)
  {
    sub_26601DF7C();
    OUTLINED_FUNCTION_43_1(&v12[v27]);
    if (!v28)
    {
      v29 = v40;
      (*(v26 + 32))(v40, &v12[v27], v1);
      sub_26601DF2C(&qword_280058398, &qword_280057DB8, &unk_26603B760);
      sub_2660398C4();
      v30 = *(v26 + 8);
      v30(v29, v1);
      OUTLINED_FUNCTION_35_1();
      sub_2660078E8(v31, v32, v33);
      OUTLINED_FUNCTION_35_1();
      sub_2660078E8(v34, v35, v36);
      v30(v19, v1);
      OUTLINED_FUNCTION_35_1();
      sub_2660078E8(v37, v38, v39);
      goto LABEL_10;
    }

    sub_2660078E8(v23, &qword_280058390, &qword_26603C300);
    sub_2660078E8(v25, &qword_280058390, &qword_26603C300);
    (*(v26 + 8))(v19, v1);
LABEL_9:
    sub_2660078E8(v12, &qword_280058388, &qword_26603C2F8);
    goto LABEL_10;
  }

  sub_2660078E8(v23, &qword_280058390, &qword_26603C300);
  sub_2660078E8(v25, &qword_280058390, &qword_26603C300);
  OUTLINED_FUNCTION_43_1(&v12[v27]);
  if (!v28)
  {
    goto LABEL_9;
  }

  sub_2660078E8(v12, &qword_280058390, &qword_26603C300);
LABEL_10:
  OUTLINED_FUNCTION_42_0();
}

size_t sub_26601AFBC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_26601B240(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_26601B348(a4 + v11, v8, v9 + v11, &unk_280057F70, &unk_26603B960);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_26601B0C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058378, &qword_26603C2E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_26601B1C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DC8, &qword_26603CCA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

size_t sub_26601B240(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058230, &unk_26603CC50);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26601B348(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_36_1();
  if (v11 < v10 || (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_5(v12), v6 + *(v14 + 72) * v5 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_15_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    OUTLINED_FUNCTION_15_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_26601B428(void *a1, int64_t a2, char a3)
{
  result = sub_26601B4E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26601B448()
{
  v1 = *v0;
  sub_26601B620();
  *v0 = v2;
}

void sub_26601B488()
{
  v1 = *v0;
  sub_26601B620();
  *v0 = v2;
}

size_t sub_26601B4C8(size_t a1, int64_t a2, char a3)
{
  result = sub_26601B7CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26601B4E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058438, &qword_26603C360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058440, &qword_26603C368);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26601B620()
{
  OUTLINED_FUNCTION_41_1();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = OUTLINED_FUNCTION_15_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_3_0(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_24;
  }

  v23[2] = v14;
  v23[3] = 2 * ((v24 - v22) / v20);
LABEL_19:
  v26 = OUTLINED_FUNCTION_15_0();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v26, v27) - 8);
  if (v10)
  {
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    sub_26601B348(v8 + v29, v14, v23 + v29, v7, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_42_0();
}

size_t sub_26601B7CC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058380, &qword_26603C2F0);
  v10 = *(sub_266039444() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266039444() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26600CC70(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_26601B980(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  sub_26601DF2C(&qword_2800583F8, &unk_280057F70, &unk_26603B960);
  v5 = sub_2660398B4();

  return sub_26601BAA0(a1, v5);
}

unint64_t sub_26601BA28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_266039C24();
  sub_2660398F4();
  v6 = sub_266039C34();

  return sub_26601BC60(a1, a2, v6);
}

unint64_t sub_26601BAA0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_26601DF2C(&qword_280058400, &unk_280057F70, &unk_26603B960);
    v10 = sub_2660398C4();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26601BC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266039BE4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26601BD14()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3(v3);
  *v4 = v5;
  v4[1] = sub_265FFD52C;

  return sub_266018C3C();
}

unint64_t sub_26601BDC8(uint64_t a1)
{
  result = sub_266007ED4();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of GCFProfileService.getProfiles(playerIDs:)()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_24_1();
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_6_2();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2(v9);

  return v12(v2, v1, v0);
}

uint64_t dispatch thunk of GCFProfileService.getContextualPromptStates()()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_6_2();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2(v8);

  return v11(v1, v0);
}

uint64_t sub_26601C00C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26601C04C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26601C0C8()
{
  v1 = *(v0 + 16);
  sub_26601AC10();
  return v2 & 1;
}

size_t sub_26601C0F8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_26600CA88(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_26601C160(size_t *a1)
{
  v2 = *(sub_266039444() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26601DEBC(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26601C280(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26601C208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26601C280(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_266039BC4();
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
        sub_266039444();
        v6 = sub_266039984();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_266039444() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26601C748(v8, v9, a1, v4);
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
    return sub_26601C3B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26601C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_266039154();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_266039444();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_266039404();
        v34 = v61;
        sub_266039404();
        v64 = sub_266039124();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_26601C748(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v159 = sub_266039154();
  v8 = *(v159 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v159);
  v158 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v157 = &v132 - v12;
  v13 = sub_266039444();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v138 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v132 - v21;
  result = MEMORY[0x28223BE20](v20);
  v160 = &v132 - v23;
  v144 = a3;
  v24 = a3[1];
  v139 = v14;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v125 = (v26 + 16);
      v126 = *(v26 + 16);
      while (v126 >= 2)
      {
        if (!*v144)
        {
          goto LABEL_139;
        }

        v127 = v26;
        v128 = (v26 + 16 * v126);
        v129 = *v128;
        v130 = &v125[2 * v126];
        v26 = v130[1];
        sub_26601D33C(*v144 + v139[9] * *v128, *v144 + v139[9] * *v130, *v144 + v139[9] * v26, v161);
        if (v5)
        {
          break;
        }

        if (v26 < v129)
        {
          goto LABEL_127;
        }

        if (v126 - 2 >= *v125)
        {
          goto LABEL_128;
        }

        *v128 = v129;
        v128[1] = v26;
        v131 = *v125 - v126;
        if (*v125 < v126)
        {
          goto LABEL_129;
        }

        v126 = *v125 - 1;
        result = memmove(v130, v130 + 2, 16 * v131);
        *v125 = v126;
        v26 = v127;
      }
    }

LABEL_136:
    result = sub_26601D9A8(v26);
    v26 = result;
    goto LABEL_103;
  }

  v133 = a4;
  v25 = 0;
  v153 = (v8 + 8);
  v154 = v14 + 2;
  v151 = v14 + 4;
  v152 = (v14 + 1);
  v26 = MEMORY[0x277D84F90];
  v155 = v13;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v134 = v26;
      v29 = v25;
      v136 = v25;
      v145 = v5;
      v146 = v25 + 1;
      v30 = *v144;
      v161 = v30;
      v31 = v14;
      v32 = v14[9];
      v147 = v24;
      v148 = v32;
      v33 = v30 + v32 * v28;
      v34 = v13;
      v35 = v31[2];
      v35(v160, v33, v13);
      v36 = v156;
      v142 = v35;
      v35(v156, v30 + v32 * v29, v34);
      v5 = v157;
      v26 = v160;
      sub_266039404();
      v37 = v158;
      sub_266039404();
      LODWORD(v143) = sub_266039124();
      v38 = *v153;
      v39 = v159;
      (*v153)(v37, v159);
      v141 = v38;
      (v38)(v5, v39);
      v40 = v139[1];
      v40(v36, v34);
      v140 = v40;
      result = (v40)(v26, v34);
      v41 = v147;
      v42 = v136 + 2;
      v43 = v161 + v148 * (v136 + 2);
      while (1)
      {
        v44 = v42;
        if (++v146 >= v41)
        {
          break;
        }

        v5 = v160;
        v45 = v155;
        v46 = v142;
        v161 = v42;
        (v142)(v160, v43, v155);
        v26 = v156;
        v46(v156, v33, v45);
        v47 = v157;
        sub_266039404();
        v48 = v158;
        sub_266039404();
        LOBYTE(v150) = sub_266039124() & 1;
        LODWORD(v150) = v150;
        v49 = v48;
        v50 = v159;
        v51 = v141;
        (v141)(v49, v159);
        v51(v47, v50);
        v52 = v140;
        v140(v26, v45);
        result = (v52)(v5, v45);
        v44 = v161;
        v41 = v147;
        v43 += v148;
        v33 += v148;
        v42 = v161 + 1;
        if ((v143 & 1) != v150)
        {
          goto LABEL_9;
        }
      }

      v146 = v41;
LABEL_9:
      if (v143)
      {
        v28 = v146;
        v27 = v136;
        v13 = v155;
        if (v146 < v136)
        {
          goto LABEL_133;
        }

        if (v136 >= v146)
        {
          v5 = v145;
          v14 = v139;
          v26 = v134;
          goto LABEL_32;
        }

        if (v41 >= v44)
        {
          v53 = v44;
        }

        else
        {
          v53 = v41;
        }

        v54 = v148 * (v53 - 1);
        v55 = v148 * v53;
        v56 = v136;
        v57 = v136 * v148;
        v5 = v145;
        v14 = v139;
        do
        {
          if (v56 != --v28)
          {
            v58 = v5;
            v59 = *v144;
            if (!*v144)
            {
              goto LABEL_140;
            }

            v161 = *v151;
            (v161)(v138, v59 + v57, v13);
            v60 = v57 < v54 || v59 + v57 >= v59 + v55;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v161)(v59 + v54, v138, v13);
            v5 = v58;
            v14 = v139;
          }

          ++v56;
          v54 -= v148;
          v55 -= v148;
          v57 += v148;
        }

        while (v56 < v28);
        v26 = v134;
      }

      else
      {
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v13 = v155;
      }

      v28 = v146;
      v27 = v136;
    }

LABEL_32:
    v61 = v144[1];
    if (v28 < v61)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_132;
      }

      if (v28 - v27 < v133)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26601B0C4(0, *(v26 + 16) + 1, 1, v26);
      v26 = result;
    }

    v82 = *(v26 + 16);
    v81 = *(v26 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      result = sub_26601B0C4((v81 > 1), v82 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 16) = v83;
    v84 = (v26 + 32);
    v85 = (v26 + 32 + 16 * v82);
    *v85 = v27;
    v85[1] = v28;
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_141;
    }

    v146 = v28;
    if (v82)
    {
      v150 = (v26 + 32);
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = (v26 + 16 * v83);
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v26 + 32);
          v90 = *(v26 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_118;
          }

          v104 = *v88;
          v103 = v88[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_121;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_126;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v83 < 2)
        {
          goto LABEL_120;
        }

        v111 = *v88;
        v110 = v88[1];
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_84:
        if (v107)
        {
          goto LABEL_123;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_125;
        }

        if (v114 < v106)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v86 - 1 >= v83)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v144)
        {
          goto LABEL_138;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v122 = *(v121 + 1);
        sub_26601D33C(*v144 + v14[9] * *v118, *v144 + v14[9] * *v121, *v144 + v14[9] * v122, v161);
        if (v5)
        {
        }

        if (v122 < v119)
        {
          goto LABEL_113;
        }

        v145 = 0;
        v5 = v14;
        v123 = v26;
        v26 = *(v26 + 16);
        if (v120 > v26)
        {
          goto LABEL_114;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v26)
        {
          goto LABEL_115;
        }

        v83 = v26 - 1;
        result = memmove(v121, v121 + 16, 16 * (v26 - 1 - v120));
        *(v123 + 16) = v26 - 1;
        v124 = v26 > 2;
        v26 = v123;
        v14 = v5;
        v5 = v145;
        v84 = v150;
        if (!v124)
        {
          goto LABEL_98;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_116;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_117;
      }

      v100 = v88[1];
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_119;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_122;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_130;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v144[1];
    v25 = v146;
    if (v146 >= v24)
    {
      goto LABEL_101;
    }
  }

  v62 = (v27 + v133);
  if (__OFADD__(v27, v133))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v144[1];
  }

  if (v62 < v27)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v28 == v62)
  {
    goto LABEL_48;
  }

  v134 = v26;
  v145 = v5;
  v63 = *v144;
  v64 = v14[9];
  v150 = v14[2];
  v65 = v63 + v64 * (v28 - 1);
  v147 = -v64;
  v136 = v27;
  v66 = (v27 - v28);
  v148 = v63;
  v137 = v64;
  v67 = (v63 + v28 * v64);
  v140 = v62;
LABEL_41:
  v146 = v28;
  v141 = v67;
  v142 = v66;
  v143 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v160;
    v70 = v150;
    (v150)(v160, v67, v13);
    v71 = v156;
    (v70)(v156, v68, v13);
    v72 = v157;
    sub_266039404();
    v73 = v158;
    sub_266039404();
    LODWORD(v161) = sub_266039124();
    v74 = *v153;
    v75 = v73;
    v76 = v159;
    (*v153)(v75, v159);
    v77 = v72;
    v13 = v155;
    v74(v77, v76);
    v78 = *v152;
    (*v152)(v71, v13);
    result = v78(v69, v13);
    if ((v161 & 1) == 0)
    {
LABEL_46:
      v28 = v146 + 1;
      v65 = v143 + v137;
      v66 = v142 - 1;
      v67 = &v141[v137];
      if ((v146 + 1) == v140)
      {
        v28 = v140;
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v27 = v136;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v148)
    {
      break;
    }

    v79 = *v151;
    v80 = v149;
    (*v151)(v149, v67, v13);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v13);
    v68 += v147;
    v67 += v147;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

uint64_t sub_26601D33C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_266039154();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v85 = sub_266039444();
  v12 = *(*(v85 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_26600CC70(a2, v21 / v19, v86);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_266039404();
      v59 = v80;
      sub_266039404();
      LODWORD(v74) = sub_266039124();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_26600CC70(a1, (a2 - a1) / v19, v86);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_266039404();
      v32 = v80;
      sub_266039404();
      v33 = sub_266039124();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_26601D9BC(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_26601D9BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_266039444();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26601DA9C(void *a1)
{
  v1 = [a1 photos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266039884();

  return v3;
}

uint64_t sub_26601DB08(void *a1)
{
  v1 = [a1 contactsAssociationID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2660398E4();

  return v3;
}

uint64_t sub_26601DB6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2660021E4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_26601DC04(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26601DD60(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26601DED0()
{
  OUTLINED_FUNCTION_36_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26601DF2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26601DF7C()
{
  OUTLINED_FUNCTION_36_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26601DFEC()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
  OUTLINED_FUNCTION_16(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  if (v0)
  {
    v5 = sub_266039224();
    OUTLINED_FUNCTION_3_4();
    sub_26601C208(v6, v7);
    OUTLINED_FUNCTION_47();
    *v8 = v0;
    (*(*(v5 - 8) + 104))(v8, *MEMORY[0x277D0CE60], v5);
    v9 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
    return sub_2660399C4();
  }

  else
  {
    sub_266015C84(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
    return sub_2660399D4();
  }
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26601E15C()
{
  result = qword_280058430;
  if (!qword_280058430)
  {
    sub_265FFFCFC(255, &qword_280058428, 0x277D0C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058430);
  }

  return result;
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

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26601E2A4()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  OUTLINED_FUNCTION_16(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  if (v0)
  {
    v5 = sub_266039224();
    OUTLINED_FUNCTION_3_4();
    sub_26601C208(v6, v7);
    v8 = OUTLINED_FUNCTION_47();
    *v9 = v0;
    (*(*(v5 - 8) + 104))(v9, *MEMORY[0x277D0CE60], v5);
    *&v15[0] = v8;
    v10 = v0;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
    return sub_2660399C4();
  }

  if (!v1)
  {
    sub_266039224();
    OUTLINED_FUNCTION_3_4();
    sub_26601C208(v12, v13);
    memset(v15, 0, sizeof(v15));
    v14 = swift_allocError();
    sub_266039214();
    sub_2660078E8(v15, &unk_280057F50, &qword_26603B9C0);
    *&v15[0] = v14;
    goto LABEL_3;
  }

  *&v15[0] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  return sub_2660399D4();
}

void OUTLINED_FUNCTION_13_2()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = MEMORY[0x277D85DD0];
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  v1 = *(v0 - 96);
  v2 = *(*(v0 - 104) + 8);
  return *(v0 - 72);
}

uint64_t OUTLINED_FUNCTION_33_1()
{
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
}

uint64_t sub_26601E60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0(sub_26601E628);
}

uint64_t sub_26601E628()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584B0, &qword_26603C388);
  *v5 = v0;
  v5[1] = sub_26600D774;
  v6 = OUTLINED_FUNCTION_79();

  return MEMORY[0x2822008A0](v6);
}

void sub_26601E724()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v19 - v14;
  (*(v11 + 16))(v19 - v14, v7, v8);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v8);
  v19[4] = sub_2660277D4;
  v19[5] = v17;
  OUTLINED_FUNCTION_29_1();
  v19[1] = 1107296256;
  v19[2] = sub_26601E8C8;
  v19[3] = &block_descriptor_52;
  v18 = _Block_copy(v19);

  [v5 getLeaderboardsForGameDescriptor:v3 player:v1 setIdentifier:0 handler:v18];
  _Block_release(v18);
  OUTLINED_FUNCTION_42_0();
}

void sub_26601E8BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_26601E724();
}

void sub_26601E8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_265FFFCFC(0, &qword_2800585B8, 0x277D0C118);
  v6 = sub_266039964();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_26601E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  v9 = OUTLINED_FUNCTION_41_0();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26601E9B8()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584B8, &qword_26603C398);
  *v7 = v0;
  v7[1] = sub_26601EAC4;
  v8 = OUTLINED_FUNCTION_79();

  return MEMORY[0x2822008A0](v8);
}

uint64_t sub_26601EAC4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26601EBC4()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 112);

  return v2();
}

void sub_26601EC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_41_1();
  v55 = v23;
  v56 = v22;
  v59 = v24;
  v60 = v25;
  v57 = v26;
  v58 = v27;
  v53 = v28;
  v54 = a22;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
  v30 = OUTLINED_FUNCTION_2_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = &v53 - v35;
  v37 = OUTLINED_FUNCTION_54_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  v40 = OUTLINED_FUNCTION_16(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v53 - v43;
  sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
  v45 = sub_266039954();
  sub_2660275DC(a21, v44, &qword_2800584F8, &qword_26603C3F8);
  v46 = sub_266039184();
  v47 = 0;
  if (__swift_getEnumTagSinglePayload(v44, 1, v46) != 1)
  {
    v47 = sub_266039164();
    OUTLINED_FUNCTION_5_1(v46);
    (*(v48 + 8))(v44, v46);
  }

  v49 = objc_opt_self();
  (*(v32 + 16))(v36, v53, v29);
  v50 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v51 = swift_allocObject();
  (*(v32 + 32))(v51 + v50, v36, v29);
  v61[4] = sub_266027650;
  v61[5] = v51;
  OUTLINED_FUNCTION_29_1();
  v61[1] = 1107296256;
  v61[2] = sub_26601EF18;
  v61[3] = &block_descriptor_3;
  v52 = _Block_copy(v61);

  [v49 getEntriesForLeaderboard:v57 gameDescriptor:v58 localPlayer:0 playerScope:v59 timeScope:v60 range:v56 players:v55 locale:v45 from:v47 handler:{v54, v52}];
  _Block_release(v52);

  OUTLINED_FUNCTION_42_0();
}

uint64_t sub_26601EF18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_265FFFCFC(0, &qword_2800585A8, 0x277D0C110);
    v7 = sub_266039964();
  }

  v11 = a2;
  v12 = a5;
  v10(a2, v7, a4, a5);
}

uint64_t sub_26601EFE0()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2(v7);

  return sub_26601E60C(v4, v2, v5);
}

uint64_t sub_26601F080()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v3[1] = sub_26600DCB0;
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_45_1();

  return sub_26601E978(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_26601F120@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for ShimLeaderboardService.GCFGameStatServiceLeaderboardsAdapter;
  a3[4] = &off_2877B8970;
  *a3 = a1;
  return sub_2660021E4(a2, (a3 + 5));
}

uint64_t ShimLeaderboardService.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_266039154();
  v1[4] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_43_0();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_266039384();
  OUTLINED_FUNCTION_16(v7);
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F0, &qword_26603BD38);
  OUTLINED_FUNCTION_16(v10);
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_28_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F8, &qword_26603BD40);
  OUTLINED_FUNCTION_16(v13);
  v15 = *(v14 + 64);
  v1[12] = OUTLINED_FUNCTION_28_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800584C0, &qword_26603C3A8);
  OUTLINED_FUNCTION_16(v16);
  v18 = *(v17 + 64);
  v1[13] = OUTLINED_FUNCTION_43_0();
  v1[14] = swift_task_alloc();
  v19 = sub_2660393D4();
  v1[15] = v19;
  OUTLINED_FUNCTION_3_0(v19);
  v1[16] = v20;
  v22 = *(v21 + 64);
  v1[17] = OUTLINED_FUNCTION_43_0();
  v1[18] = swift_task_alloc();
  v23 = sub_2660392C4();
  v1[19] = v23;
  OUTLINED_FUNCTION_3_0(v23);
  v1[20] = v24;
  v26 = *(v25 + 64);
  v1[21] = OUTLINED_FUNCTION_43_0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  OUTLINED_FUNCTION_16(v27);
  v29 = *(v28 + 64);
  v1[24] = OUTLINED_FUNCTION_28_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[25] = v30;
  OUTLINED_FUNCTION_3_0(v30);
  v1[26] = v31;
  v33 = *(v32 + 64);
  v1[27] = OUTLINED_FUNCTION_28_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v1[28] = v34;
  OUTLINED_FUNCTION_3_0(v34);
  v1[29] = v35;
  v37 = *(v36 + 64);
  v1[30] = OUTLINED_FUNCTION_28_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v38);
  v40 = *(v39 + 64);
  v1[31] = OUTLINED_FUNCTION_28_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[32] = v41;
  OUTLINED_FUNCTION_3_0(v41);
  v1[33] = v42;
  v44 = *(v43 + 64);
  v1[34] = OUTLINED_FUNCTION_28_0();
  v45 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v45, v46, v47);
}

uint64_t sub_26601F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_99();
  v24 = v22[31];
  v23 = v22[32];
  v25 = v22[3];
  v26 = v25[9];
  __swift_project_boxed_opaque_existential_1(v25 + 5, v25[8]);
  v27 = *(v26 + 8);
  v28 = OUTLINED_FUNCTION_52_0();
  v29(v28);
  v30 = OUTLINED_FUNCTION_73();
  if (__swift_getEnumTagSinglePayload(v30, v31, v23) == 1)
  {
    sub_266027184(v22[31], &unk_280057F60);
    sub_266039224();
    OUTLINED_FUNCTION_0_2();
    sub_266027598(v32, v33);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_15();
    v66 = swift_allocError();
    sub_2660391E4();
    swift_willThrow();
    v34 = v22[34];
    v36 = v22[30];
    v35 = v22[31];
    v37 = v22[27];
    v39 = v22[23];
    v38 = v22[24];
    v41 = v22[21];
    v40 = v22[22];
    v43 = v22[17];
    v42 = v22[18];
    v57 = v22[14];
    v58 = v22[13];
    v59 = v22[12];
    v60 = v22[11];
    v61 = v22[10];
    v62 = v22[9];
    v63 = v22[8];
    v64 = v22[7];
    v65 = v22[6];

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_62();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, a19, a20, a21, a22);
  }

  else
  {
    (*(v22[33] + 32))(v22[34], v22[31], v22[32]);
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    v22[35] = v53;
    *v53 = v54;
    v53[1] = sub_26601F76C;
    v55 = v22[34];
    OUTLINED_FUNCTION_62();

    return sub_265FFF2B8();
  }
}

uint64_t sub_26601F76C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 280);
  v10 = *v1;
  *(v3 + 288) = v5;
  *(v3 + 296) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26601F874()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[36];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_26601F940;
  v5 = v0[2];

  return sub_266020DA4();
}

uint64_t sub_26601F940()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 312);
  v4 = *(v2 + 304);
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v9[40] = v7;
  v9[41] = v8;
  v9[42] = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_26601FA64()
{
  v1 = 0;
  v2 = v0[29];
  v3 = v0[20];
  v4 = v0[5];
  v171 = (v0[26] + 32);
  v148 = (v3 + 104);
  v179 = (v3 + 8);
  v142 = (v4 + 16);
  v143 = (v4 + 8);
  v147 = (v0[16] + 16);
  v149 = v0[16];
  v185 = MEMORY[0x277D84F90];
  v5 = *(v0[2] + 16);
  v145 = *MEMORY[0x277D0CFF0];
  v6 = v0[42];
  v150 = v2;
  v146 = v5;
  while (v1 != v5)
  {
    (*(v2 + 16))(v0[30], v0[2] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1, v0[28]);
    v7 = sub_266039544();
    if (v6)
    {
      v123 = v0[40];
      v124 = v0[41];
      v126 = v0[33];
      v125 = v0[34];
      v127 = v0[32];
      v128 = v0[30];
      v129 = v0[28];

      OUTLINED_FUNCTION_70();
      v130 = OUTLINED_FUNCTION_54_0();
      v131(v130);
      (*(v126 + 8))(v125, v127);

      goto LABEL_33;
    }

    v9 = v7;
    v10 = v8;
    v11 = v0[25];
    sub_266021C44(v0[30], v0[40], v0[24]);
    v12 = OUTLINED_FUNCTION_73();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);
    v15 = v0[41];
    if (EnumTagSinglePayload == 1)
    {
      v132 = v0[40];
      v133 = v0[24];

      sub_266027184(v133, &unk_280058150);
      goto LABEL_32;
    }

    v16 = v0[27];
    (*v171)(v16, v0[24], v0[25]);
    v17 = sub_266021D40(v16, v15);
    if (!v17)
    {
      v134 = v0[40];
      v135 = v0[41];
      v136 = v0[27];
      v137 = v0[25];
      OUTLINED_FUNCTION_71();
      v138();

LABEL_31:

LABEL_32:
      v92 = v0[36];
      v94 = v0[33];
      v93 = v0[34];
      v95 = v0[32];
      v96 = v0[30];
      v97 = v0[28];
      sub_266039224();
      OUTLINED_FUNCTION_0_2();
      sub_266027598(v98, v99);
      OUTLINED_FUNCTION_47();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584E8, &unk_26603C3D0);
      sub_2660391F4();
      swift_willThrow();

      OUTLINED_FUNCTION_70();
      v100(v96, v97);
      (*(v94 + 8))(v93, v95);
LABEL_33:
      v101 = v0[34];
      v103 = v0[30];
      v102 = v0[31];
      v104 = v0[27];
      v106 = v0[23];
      v105 = v0[24];
      v108 = v0[21];
      v107 = v0[22];
      v110 = v0[17];
      v109 = v0[18];
      v165 = v0[14];
      v167 = v0[13];
      v169 = v0[12];
      v172 = v0[11];
      v175 = v0[10];
      v177 = v0[9];
      v180 = v0[8];
      v186 = v0[7];
      v188 = v0[6];

      OUTLINED_FUNCTION_11();

      v111();
      return;
    }

    v18 = v17;
    v174 = v1 + 1;
    v19 = sub_266003570(v17);
    for (i = 0; ; ++i)
    {
      if (v19 == i)
      {
        v0 = v182;
        v87 = v182[40];
        v88 = v182[41];
        v89 = v182[27];
        v90 = v182[25];

        OUTLINED_FUNCTION_71();
        v91(v89, v90);
        goto LABEL_31;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x266777030](i, v18);
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v21 = *(v18 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      v187 = v21;
      v22 = [v21 identifier];
      v23 = sub_2660398E4();
      v25 = v24;

      if (v23 == v9 && v25 == v10)
      {
        break;
      }

      v27 = sub_266039BE4();

      if (v27)
      {
        goto LABEL_20;
      }
    }

LABEL_20:

    v0 = v182;
    v28 = v182[23];

    sub_266000FE8([v187 type], v28);
    v29 = v182[22];
    v30 = v182[14];
    v31 = [v187 baseLeaderboardID];
    sub_2660398E4();

    v32 = [v187 groupIdentifier];
    sub_2660398E4();

    v33 = sub_266039474();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
    v37 = [v187 title];
    sub_2660398E4();

    sub_266000FE8([v187 type], v29);
    v144 = v33;
    v161 = v182[23];
    v157 = v182[22];
    v38 = v182[21];
    v159 = v182[19];
    v153 = v182[18];
    v155 = v182[14];
    v40 = v182[11];
    v39 = v182[12];
    v41 = v182[10];
    v151 = [v187 supportsChallenges];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    sub_26600FD7C([v187 releaseState], v40);
    sub_266001934(v187, &selRef_visibility);
    sub_266039374();

    v140 = sub_266001934(v187, &selRef_leaderboardDescription);
    v141 = v46;
    LOBYTE(v139) = v151;
    sub_2660393B4();
    (*v148)(v38, v145, v159);
    LOBYTE(v32) = sub_266021DB0();
    v47 = *v179;
    v48 = OUTLINED_FUNCTION_53();
    v183 = v49;
    v49(v48);
    if (v32)
    {
      v50 = [v187 startDate];
      if (v50)
      {
        v51 = v50;
        v52 = v182[9];
        sub_266039144();

        v53 = [v187 nextStartDate];
        if (v53)
        {
          v54 = v53;
          v55 = v182[18];
          v56 = v182[13];
          v58 = v182[8];
          v57 = v182[9];
          v60 = v182[6];
          v59 = v182[7];
          v61 = v182[4];
          sub_266039144();

          v62 = *v142;
          (*v142)(v59, v57, v61);
          v62(v60, v58, v61);
          [v187 duration];
          OUTLINED_FUNCTION_74();
          sub_266039464();
          OUTLINED_FUNCTION_88();
          __swift_storeEnumTagSinglePayload(v63, v64, v65, v144);
          sub_2660393C4();
          v66 = *v143;
          (*v143)(v58, v61);
          v66(v57, v61);
        }

        else
        {
          (*v143)(v182[9], v182[4]);
        }
      }
    }

    (*v147)(v182[17], v182[18], v182[15]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = *(v185 + 16);
      v81 = OUTLINED_FUNCTION_68();
      v185 = sub_266026DEC(v81, v82, v83, v84);
    }

    v68 = *(v185 + 16);
    v67 = *(v185 + 24);
    if (v68 >= v67 >> 1)
    {
      v85 = OUTLINED_FUNCTION_38_1(v67);
      v185 = sub_266026DEC(v85, v86, 1, v185);
    }

    v70 = v182[27];
    v69 = v182[28];
    v71 = v182[25];
    v72 = v182[23];
    v74 = v182[18];
    v73 = v182[19];
    v162 = v182[30];
    v164 = v182[17];
    v75 = v182[15];

    (*(v149 + 8))(v74, v75);
    v76 = OUTLINED_FUNCTION_74();
    v183(v76);
    OUTLINED_FUNCTION_71();
    v77 = OUTLINED_FUNCTION_52_0();
    v78(v77);
    OUTLINED_FUNCTION_70();
    v79(v162, v69);
    *(v185 + 16) = v68 + 1;
    (*(v149 + 32))(v185 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v68, v164, v75);
    v6 = 0;
    v1 = v174;
    v2 = v150;
    v5 = v146;
  }

  v112 = v0[40];
  v113 = v0[41];
  v114 = v0[36];
  v115 = v0[33];
  v116 = v0[34];
  v117 = v0[31];
  v118 = v0[32];
  v119 = v0[30];
  v120 = v0[27];
  v121 = v0[24];
  v152 = v0[23];
  v154 = v0[22];
  v156 = v0[21];
  v158 = v0[18];
  v160 = v0[17];
  v163 = v0[14];
  v166 = v0[13];
  v168 = v0[12];
  v170 = v0[11];
  v173 = v0[10];
  v176 = v0[9];
  v178 = v0[8];
  v184 = v0[7];
  v189 = v0[6];

  v181 = sub_266021E90(v185);

  (*(v115 + 8))(v116, v118);

  OUTLINED_FUNCTION_31_0();

  v122(v181);
}

uint64_t sub_2660207C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_99();
  (*(v22[33] + 8))(v22[34], v22[32]);
  v23 = v22[37];
  OUTLINED_FUNCTION_26_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_62();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2660208D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_99();
  v24 = *(v22 + 264);
  v23 = *(v22 + 272);
  v25 = *(v22 + 256);

  v26 = *(v24 + 8);
  v27 = OUTLINED_FUNCTION_12_0();
  v28(v27);
  v29 = *(v22 + 336);
  OUTLINED_FUNCTION_26_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_62();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2660209F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0(sub_266020A10);
}

uint64_t sub_266020A10()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_6_2();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_266020B38;
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v9, v2, v3);
}

uint64_t sub_266020B38()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  OUTLINED_FUNCTION_31_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_266020C24()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);

  return sub_2660209F4(v2, v4, v3);
}

uint64_t sub_266020CC0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_39_1();

  return v6(v5);
}

uint64_t sub_266020DA4()
{
  OUTLINED_FUNCTION_1();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v0[7] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v0[8] = v5;
  v7 = *(v6 + 64);
  v0[9] = OUTLINED_FUNCTION_43_0();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v0[12] = v8;
  OUTLINED_FUNCTION_3_0(v8);
  v0[13] = v9;
  v11 = *(v10 + 64);
  v0[14] = OUTLINED_FUNCTION_43_0();
  v0[15] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266020ED4()
{
  OUTLINED_FUNCTION_89();
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = *(v0[4] + 16);
  v0[16] = v3;
  v4 = v2;
  while (1)
  {
    v0[18] = v1;
    v0[19] = v2;
    v0[17] = v2;
    v5 = v0[15];
    if (v1 == v3)
    {
      v46 = v0[14];
      v48 = v0[10];
      v47 = v0[11];
      v49 = v0[9];
      v50 = v0[15];

      v51 = v0[1];
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X3, X16 }
    }

    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[11];
    v9 = v0[4];
    v11 = *(v7 + 16);
    v7 += 16;
    v10 = v11;
    v12 = *(v7 + 56);
    v13 = *(v7 + 64);
    v14 = OUTLINED_FUNCTION_39_0();
    (v11)(v14);
    v15 = OUTLINED_FUNCTION_104();
    v16 = v0[12];
    if (v8)
    {
      v54 = *(v0[13] + 8);
      v55 = OUTLINED_FUNCTION_45_0(v15, v0[15]);
      v56(v55);

      v58 = v0[14];
      v57 = v0[15];
      v60 = v0[10];
      v59 = v0[11];
      v61 = v0[9];

      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X1, X16 }
    }

    v17 = OUTLINED_FUNCTION_48_0();
    v74 = v10;
    (v10)(v17);
    v18 = OUTLINED_FUNCTION_24_0();
    v72 = v19;
    v19(v18);
    swift_isUniquelyReferenced_nonNull_native();
    v0[2] = v4;
    sub_2660266C4(v5, &unk_2800584D8, &unk_26603C3B0, &qword_280058578);
    if (__OFADD__(*(v4 + 16), (v21 & 1) == 0))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return MEMORY[0x2821FE290](v20);
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058588, &qword_26603C668);
    if (sub_266039BA4())
    {
      break;
    }

LABEL_8:
    v27 = v0[2];
    v0[22] = v27;
    v28 = v0[13];
    v29 = v0[14];
    v30 = v0[12];
    v32 = v0[7];
    v31 = v0[8];
    v75 = v27;
    if (v23)
    {
      v33 = *(v31 + 72);
      (*(v31 + 40))(*(v27 + 56) + v33 * v22, v0[10], v32);
      v34 = *(v28 + 8);
      v34(v29, v30);
    }

    else
    {
      OUTLINED_FUNCTION_51(v27 + 8 * (v22 >> 6));
      v73 = v36;
      v74(v35 + v22 * v12, v29, v30);
      v33 = *(v31 + 72);
      (*(v31 + 32))(*(v75 + 56) + v33 * v22, v73, v32);
      v34 = *(v28 + 8);
      v20 = (v34)(v29, v30);
      v37 = *(v75 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_29;
      }

      *(v75 + 16) = v39;
    }

    v0[23] = v33;
    v0[24] = v34;
    v2 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16) || (v40 = v0[11], , sub_2660266C4(v40, &qword_2800584D0, &unk_26603B740, &qword_280058258), LOBYTE(v40) = v41, , (v40 & 1) == 0))
    {
      v45 = OUTLINED_FUNCTION_50();
      v72(v45);
      v0[25] = sub_265FFEED4();
      OUTLINED_FUNCTION_7_4();
      v65 = *(v64 + 4);
      v66 = swift_task_alloc();
      v0[26] = v66;
      *v66 = v0;
      OUTLINED_FUNCTION_25_2(v66);
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X1, X16 }
    }

    v42 = OUTLINED_FUNCTION_30();
    v43(v42);
    v44 = OUTLINED_FUNCTION_53();
    (v34)(v44);
    v4 = v0[22];
    v1 = v0[18] + 1;
    v3 = v0[16];
  }

  v24 = v0[2];
  sub_2660266C4(v0[14], &unk_2800584D8, &unk_26603C3B0, &qword_280058578);
  if ((v23 & 1) == (v26 & 1))
  {
    v22 = v25;
    goto LABEL_8;
  }

  v69 = v0[12];
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE290](v20);
}

uint64_t sub_266021410()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[26];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[27] = v8;
  v3[28] = v0;

  v9 = v2[25];
  if (v0)
  {
    v10 = v3[22];
    v11 = v3[19];
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];
    v15 = *(v13 + 8);
    v3[29] = v15;
    v3[30] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v14);
  }

  else
  {
  }

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_266021570()
{
  v1 = v0[17];
  v2 = v0[9];
  swift_isUniquelyReferenced_nonNull_native();
  v0[3] = v1;
  sub_2660266C4(v2, &qword_2800584D0, &unk_26603B740, &qword_280058258);
  if (__OFADD__(*(v1 + 16), (v4 & 1) == 0))
  {
    goto LABEL_40;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058590, &qword_26603C670);
  if ((sub_266039BA4() & 1) == 0)
  {
LABEL_6:
    v11 = v0[3];
    v12 = v0[27];
    v102 = v11;
    if (v6)
    {
      v13 = v11[7];
      v14 = *(v13 + 8 * v5);
      *(v13 + 8 * v5) = v12;
    }

    else
    {
      v15 = v0[23];
      v17 = v0[20];
      v16 = v0[21];
      v18 = v0[9];
      v19 = v0[7];
      v11[(v5 >> 6) + 8] |= 1 << v5;
      v3 = v17(v11[6] + v15 * v5, v18, v19);
      *(v11[7] + 8 * v5) = v12;
      v20 = v11[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
LABEL_41:
        __break(1u);
        return MEMORY[0x2821FE290](v3);
      }

      v11[2] = v22;
    }

    v23 = v0[12];
    v24 = v0[24];
    v25 = v0[15];
    v26 = v0[11];
    v27 = v0[13] + 8;
    v28 = *(v0[8] + 8);
    (v28)(v0[9], v0[7]);
    v29 = OUTLINED_FUNCTION_52_0();
    v28(v29);
    v30 = OUTLINED_FUNCTION_15_0();
    v24(v30);
    v31 = v0[28];
    v32 = v102;
    while (1)
    {
      v33 = v0[22];
      v34 = v0[18] + 1;
      v0[18] = v34;
      v0[19] = v32;
      v0[17] = v32;
      v35 = v0[15];
      if (v34 == v0[16])
      {
        v75 = v0[14];
        v77 = v0[10];
        v76 = v0[11];
        v78 = v0[9];
        v79 = v0[15];

        v80 = v0[1];
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X3, X16 }
      }

      v36 = v0[12];
      v37 = v0[13];
      v38 = v0[11];
      v39 = v0[4];
      v41 = *(v37 + 16);
      v37 += 16;
      v40 = v41;
      v42 = *(v37 + 56);
      v43 = *(v37 + 64);
      v44 = OUTLINED_FUNCTION_39_0();
      v41(v44);
      v45 = sub_266039554();
      v46 = v0[12];
      if (v31)
      {
        v83 = *(v0[13] + 8);
        v84 = OUTLINED_FUNCTION_45_0(v45, v0[15]);
        v85(v84);

        v87 = v0[14];
        v86 = v0[15];
        v89 = v0[10];
        v88 = v0[11];
        v90 = v0[9];

        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v47 = OUTLINED_FUNCTION_48_0();
      v40(v47);
      v48 = OUTLINED_FUNCTION_24_0();
      v101 = v49;
      v49(v48);
      swift_isUniquelyReferenced_nonNull_native();
      v0[2] = v33;
      sub_2660266C4(v35, &unk_2800584D8, &unk_26603C3B0, &qword_280058578);
      if (__OFADD__(*(v33 + 16), (v50 & 1) == 0))
      {
        break;
      }

      v51 = v3;
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058588, &qword_26603C668);
      if (sub_266039BA4())
      {
        v53 = v0[2];
        sub_2660266C4(v0[14], &unk_2800584D8, &unk_26603C3B0, &qword_280058578);
        if ((v52 & 1) != (v55 & 1))
        {
          v10 = v0 + 12;
          goto LABEL_35;
        }

        v51 = v54;
      }

      v56 = v0[2];
      v0[22] = v56;
      v57 = v0[13];
      v58 = v0[14];
      v59 = v0[12];
      v61 = v0[7];
      v60 = v0[8];
      v104 = v56;
      if (v52)
      {
        v62 = *(v60 + 72);
        (*(v60 + 40))(*(v56 + 56) + v62 * v51, v0[10], v61);
        v63 = *(v57 + 8);
        v63(v58, v59);
      }

      else
      {
        OUTLINED_FUNCTION_51(v56 + 8 * (v51 >> 6));
        v103 = v65;
        v66(v64 + v51 * v42, v58, v59);
        v62 = *(v60 + 72);
        (*(v60 + 32))(*(v104 + 56) + v62 * v51, v103, v61);
        v63 = *(v57 + 8);
        v3 = (v63)(v58, v59);
        v67 = *(v104 + 16);
        v21 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v21)
        {
          goto LABEL_39;
        }

        *(v104 + 16) = v68;
      }

      v0[23] = v62;
      v0[24] = v63;
      v32 = v102;
      if (!v102[2] || (v69 = v0[11], , sub_2660266C4(v69, &qword_2800584D0, &unk_26603B740, &qword_280058258), LOBYTE(v69) = v70, , (v69 & 1) == 0))
      {
        v74 = OUTLINED_FUNCTION_50();
        v101(v74);
        v0[25] = sub_265FFEED4();
        OUTLINED_FUNCTION_7_4();
        v94 = *(v93 + 4);
        v95 = swift_task_alloc();
        v0[26] = v95;
        *v95 = v0;
        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v71 = OUTLINED_FUNCTION_30();
      v72(v71);
      v73 = OUTLINED_FUNCTION_53();
      (v63)(v73);
      v31 = 0;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v0[3];
  sub_2660266C4(v0[9], &qword_2800584D0, &unk_26603B740, &qword_280058258);
  if ((v6 & 1) == (v9 & 1))
  {
    v5 = v8;
    goto LABEL_6;
  }

  v10 = v0 + 7;
LABEL_35:
  v98 = *v10;
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x2821FE290](v3);
}

uint64_t sub_266021C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_2660266C4(a1, &unk_2800584D8, &unk_26603C3B0, &qword_280058578), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_266021D40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2660266C4(a1, &qword_2800584D0, &unk_26603B740, &qword_280058258);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_266021DB0()
{
  sub_2660392C4();
  sub_266027598(&qword_280058570, MEMORY[0x277D0CFF8]);
  sub_266039934();
  sub_266039934();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_266039BE4();
  }

  return v1 & 1;
}

uint64_t sub_266021E90(uint64_t a1)
{
  v2 = sub_2660393D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058558, &qword_26603C650);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v20);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v21 = MEMORY[0x277D84F90];
    sub_26602676C();
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v21;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v18 = *(v13 + 56);
    v19 = v14;
    do
    {
      v19(v6, v15, v2);
      swift_dynamicCast();
      v21 = v12;
      v16 = *(v12 + 16);
      if (v16 >= *(v12 + 24) >> 1)
      {
        sub_26602676C();
        v12 = v21;
      }

      *(v12 + 16) = v16 + 1;
      sub_266027528(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v15 += v18;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t ShimLeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_1();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v7);
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F0, &qword_26603C3F0);
  v1[16] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_28_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F8, &qword_26603C3F8);
  OUTLINED_FUNCTION_16(v14);
  v16 = *(v15 + 64);
  v1[19] = OUTLINED_FUNCTION_28_0();
  v17 = sub_266039364();
  v1[20] = v17;
  OUTLINED_FUNCTION_3_0(v17);
  v1[21] = v18;
  v20 = *(v19 + 64);
  v1[22] = OUTLINED_FUNCTION_28_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058500, &unk_26603C400);
  OUTLINED_FUNCTION_16(v21);
  v23 = *(v22 + 64);
  v1[23] = OUTLINED_FUNCTION_28_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[24] = v24;
  OUTLINED_FUNCTION_3_0(v24);
  v1[25] = v25;
  v27 = *(v26 + 64);
  v1[26] = OUTLINED_FUNCTION_28_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v1[27] = v28;
  OUTLINED_FUNCTION_3_0(v28);
  v1[28] = v29;
  v31 = *(v30 + 64);
  v1[29] = OUTLINED_FUNCTION_28_0();
  v32 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

id sub_2660222FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_89();
  v20 = *(*(v18 + 72) + 16);
  *(v18 + 304) = *MEMORY[0x277D0D298];
  v21 = *(v18 + 224);
  *(v18 + 308) = *MEMORY[0x277D0D2A0];
  *(v18 + 312) = *MEMORY[0x277D0D290];
  v22 = MEMORY[0x277D84F90];
  *(v18 + 248) = 0;
  *(v18 + 256) = v22;
  *(v18 + 240) = v20;
  if (v20)
  {
    v23 = OUTLINED_FUNCTION_43_2();
    v24(v23);
    sub_266039554();
    v25 = *(v18 + 208);
    v26 = sub_265FFEED4();
    *(v18 + 264) = v26;
    v36 = v26;
    v37 = *(v18 + 232);
    v38 = OUTLINED_FUNCTION_22_0();
    v39(v38);
    result = sub_265FFF154();
    *(v18 + 272) = result;
    v58 = *(v18 + 80);
    v57 = *(v18 + 88);
    v59 = v57 - v58;
    if (__OFSUB__(v57, v58))
    {
      __break(1u);
      return result;
    }

    v60 = result;
    v61 = *(v18 + 160);
    sub_2660275DC(*(v18 + 104), *(v18 + 184), &qword_280058500, &unk_26603C400);
    v62 = OUTLINED_FUNCTION_73();
    if (__swift_getEnumTagSinglePayload(v62, v63, v61) == 1)
    {
      sub_266027184(*(v18 + 184), &qword_280058500);
LABEL_15:
      OUTLINED_FUNCTION_100();
      v71 = *(v18 + 48);
      __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
      v72 = sub_266039184();
      OUTLINED_FUNCTION_5(v72);
      (*(v73 + 16))(v59, v19, v72);
      OUTLINED_FUNCTION_88();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v72);
      v77 = *(v71 + 16);
      OUTLINED_FUNCTION_6_2();
      v105 = v78 + *v78;
      v80 = *(v79 + 4);
      v81 = swift_task_alloc();
      *(v18 + 280) = v81;
      *v81 = v18;
      OUTLINED_FUNCTION_24_2(v81);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_38_0();

      return v90(v82, v83, v84, v85, v86, v87, v88, v89, a9, v71 + 16, v105, v59, a13, a14, a15, a16, a17, a18);
    }

    v64 = *(v18 + 304);
    v65 = *(v18 + 176);
    v66 = *(v18 + 160);
    v67 = *(v18 + 168);
    (*(v67 + 16))(v65, *(v18 + 184), v66);
    v68 = (*(v67 + 88))(v65, v66);
    if (v68 == v64 || v68 == *(v18 + 308))
    {
      v69 = OUTLINED_FUNCTION_12_3();
      v70(v69);
      goto LABEL_15;
    }

    v92 = *(v18 + 184);
    if (v68 == *(v18 + 312))
    {
      (*(*(v18 + 168) + 8))(*(v18 + 184), *(v18 + 160));
      goto LABEL_15;
    }

    v93 = *(v18 + 168);
    v106 = *(v18 + 176);
    v94 = *(v18 + 160);
    v95 = sub_266039224();
    OUTLINED_FUNCTION_0_2();
    sub_266027598(v96, v97);
    OUTLINED_FUNCTION_47();
    v99 = v98;
    OUTLINED_FUNCTION_50_0();
    *(v18 + 56) = a13;
    *(v18 + 64) = a14;
    OUTLINED_FUNCTION_40_0();
    sub_266039B94();
    v100 = *(v18 + 64);
    *v99 = *(v18 + 56);
    v99[1] = v100;
    v101 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_5_1(v95);
    (*(v102 + 104))(v99);
    swift_willThrow();
    v103 = *(v93 + 8);
    v103(v106, v94);

    v104 = OUTLINED_FUNCTION_74();
    (v103)(v104);
    OUTLINED_FUNCTION_67();
    v42 = *(v18 + 176);
    v41 = *(v18 + 184);
    v44 = *(v18 + 144);
    v43 = *(v18 + 152);
    v45 = *(v18 + 120);
    v47 = OUTLINED_FUNCTION_76(v46);
    v48(v47);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_1();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, v106, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_84();
    v27 = *(v18 + 120);

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_42_1();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_266022868()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 280);
  *v4 = *v1;
  v3[36] = v7;
  v3[37] = v0;

  if (v0)
  {
    v8 = v3[32];
    sub_266027184(v3[19], &qword_2800584F8);
  }

  else
  {
    sub_266027184(v3[19], &qword_2800584F8);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

id sub_2660229A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_89();
  v20 = *(v18 + 288);
  v21 = *(v18 + 296);
  v22 = *(v18 + 232);
  __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  v23 = swift_task_alloc();
  *(v23 + 16) = v22;
  sub_26602377C(sub_2660271D8, v23, v20);
  v24 = *(v18 + 288);
  if (v21)
  {
    v26 = *(v18 + 264);
    v25 = *(v18 + 272);
    v27 = *(v18 + 256);

LABEL_14:
    OUTLINED_FUNCTION_67();
    v79 = *(v18 + 176);
    v78 = *(v18 + 184);
    v81 = *(v18 + 144);
    v80 = *(v18 + 152);
    v82 = *(v18 + 120);
    v84 = OUTLINED_FUNCTION_76(v83);
    v85(v84);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_1();

    return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v28 = *(v18 + 256);
  v29 = *(v18 + 144);
  v30 = *(v18 + 120);

  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_266039334();
  OUTLINED_FUNCTION_31_2();
  sub_266027598(v35, v19);
  OUTLINED_FUNCTION_7_5();
  sub_266027598(v36, v19);
  OUTLINED_FUNCTION_61();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v18 + 256);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v140 = *(v38 + 16);
    OUTLINED_FUNCTION_68();
    sub_266026EEC();
    v38 = v141;
  }

  v40 = *(v38 + 16);
  v39 = *(v38 + 24);
  a12 = v40 + 1;
  if (v40 >= v39 >> 1)
  {
    OUTLINED_FUNCTION_38_1(v39);
    sub_266026EEC();
    v38 = v142;
  }

  v41 = *(v18 + 264);
  v43 = *(v18 + 224);
  v42 = *(v18 + 232);
  v44 = *(v18 + 216);
  v45 = *(v18 + 136);
  v46 = *(v18 + 144);
  v47 = *(v18 + 128);

  *(v38 + 16) = a12;
  OUTLINED_FUNCTION_57();
  v50(v48 + v49 * v40, v46, v47);
  (*(v43 + 8))(v42, v44);
  v51 = *(v18 + 240);
  v52 = *(v18 + 248) + 1;
  *(v18 + 248) = v52;
  *(v18 + 256) = v38;
  v53 = *(v18 + 232);
  if (v52 == v51)
  {
    v54 = *(v18 + 208);
    v56 = *(v18 + 176);
    v55 = *(v18 + 184);
    v58 = *(v18 + 144);
    v57 = *(v18 + 152);
    v59 = *(v18 + 120);
    v60 = *(v18 + 232);

    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_42_1();

    return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v70 = OUTLINED_FUNCTION_5_4(v52);
    v71(v70);
    OUTLINED_FUNCTION_104();
    if (v42)
    {

      goto LABEL_14;
    }

    v72 = *(v18 + 208);
    v73 = sub_265FFEED4();
    *(v18 + 264) = v73;
    v74 = v73;
    v75 = *(v18 + 232);
    v76 = OUTLINED_FUNCTION_22_0();
    v77(v76);
    result = sub_265FFF154();
    *(v18 + 272) = result;
    v95 = *(v18 + 80);
    v94 = *(v18 + 88);
    v96 = v94 - v95;
    if (__OFSUB__(v94, v95))
    {
      __break(1u);
      return result;
    }

    v97 = result;
    v98 = *(v18 + 160);
    sub_2660275DC(*(v18 + 104), *(v18 + 184), &qword_280058500, &unk_26603C400);
    v99 = OUTLINED_FUNCTION_73();
    if (__swift_getEnumTagSinglePayload(v99, v100, v98) == 1)
    {
      sub_266027184(*(v18 + 184), &qword_280058500);
    }

    else
    {
      v101 = *(v18 + 304);
      v102 = *(v18 + 176);
      v103 = *(v18 + 160);
      v104 = *(v18 + 168);
      (*(v104 + 16))(v102, *(v18 + 184), v103);
      v105 = *(v104 + 88);
      v40 = v104 + 88;
      v106 = v105(v102, v103);
      if (v106 == v101 || v106 == *(v18 + 308))
      {
        v107 = OUTLINED_FUNCTION_12_3();
        v108(v107);
      }

      else
      {
        v40 = *(v18 + 184);
        if (v106 != *(v18 + 312))
        {
          v130 = *(v18 + 168);
          a11 = *(v18 + 160);
          a12 = *(v18 + 176);
          a10 = *(v18 + 184);
          v131 = sub_266039224();
          OUTLINED_FUNCTION_0_2();
          sub_266027598(v132, v133);
          OUTLINED_FUNCTION_47();
          v135 = v134;
          OUTLINED_FUNCTION_50_0();
          *(v18 + 56) = a13;
          *(v18 + 64) = a14;
          OUTLINED_FUNCTION_40_0();
          sub_266039B94();
          v136 = *(v18 + 64);
          *v135 = *(v18 + 56);
          v135[1] = v136;
          v137 = *MEMORY[0x277D0CE68];
          OUTLINED_FUNCTION_5_1(v131);
          (*(v138 + 104))(v135);
          swift_willThrow();
          v139 = *(v130 + 8);
          v139(a12, a11);

          v139(v40, a11);
          goto LABEL_14;
        }

        (*(*(v18 + 168) + 8))(*(v18 + 184), *(v18 + 160));
      }
    }

    OUTLINED_FUNCTION_100();
    v109 = *(v18 + 48);
    __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
    v110 = sub_266039184();
    OUTLINED_FUNCTION_5(v110);
    (*(v111 + 16))(v40, v96, v110);
    OUTLINED_FUNCTION_88();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v110);
    v115 = *(v109 + 16);
    OUTLINED_FUNCTION_6_2();
    v143 = v116 + *v116;
    v118 = *(v117 + 4);
    v119 = swift_task_alloc();
    *(v18 + 280) = v119;
    *v119 = v18;
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_38_0();

    return v128(v120, v121, v122, v123, v124, v125, v126, v127, a9, v109 + 16, v143, v96, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2660230C8()
{
  OUTLINED_FUNCTION_36();
  v1 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 296);
  v3 = *(v0 + 208);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 120);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  OUTLINED_FUNCTION_11();

  return v9();
}

uint64_t sub_2660231A8()
{
  v1 = sub_266039364();
  v2 = OUTLINED_FUNCTION_2_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = OUTLINED_FUNCTION_35_2(v7, v23);
  v9(v8);
  v10 = *(v4 + 88);
  v11 = OUTLINED_FUNCTION_69();
  v13 = v12(v11);
  result = 0;
  if (v13 != *MEMORY[0x277D0D298])
  {
    if (v13 == *MEMORY[0x277D0D2A0])
    {
      return 1;
    }

    else if (v13 == *MEMORY[0x277D0D290])
    {
      return 2;
    }

    else
    {
      v15 = sub_266039224();
      OUTLINED_FUNCTION_0_2();
      sub_266027598(v16, v17);
      OUTLINED_FUNCTION_15();
      swift_allocError();
      OUTLINED_FUNCTION_75();
      sub_266039B04();
      MEMORY[0x266776E20](0xD00000000000001CLL, 0x800000026603B0E0);
      sub_266039B94();
      *v0 = v24;
      v0[1] = v25;
      v18 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_5_1(v15);
      (*(v19 + 104))(v0);
      swift_willThrow();
      v20 = *(v4 + 8);
      v21 = OUTLINED_FUNCTION_69();
      return v22(v21);
    }
  }

  return result;
}

uint64_t sub_2660233B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v37[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v4 = OUTLINED_FUNCTION_2_0(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = v37 - v8;
  v9 = sub_266039154();
  v10 = OUTLINED_FUNCTION_16(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v14 = OUTLINED_FUNCTION_2_0(v44);
  v42 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v37 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  v24 = *(*(v23 - 8) + 72);
  v25 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26603B720;
  v27 = (v26 + v25);
  v28 = [v2 player];
  v29 = [v28 playerID];

  v30 = sub_2660398E4();
  v32 = v31;

  *v27 = v30;
  v27[1] = v32;
  swift_storeEnumTagMultiPayload();
  v33 = v45;
  result = sub_266039584();
  if (!v33)
  {
    v45 = [v2 context];
    v35 = [v2 date];
    sub_266039144();

    v36 = [v2 formattedScore];
    sub_2660398E4();

    (*(v38 + 16))(v41, v40, v39);
    (*(v42 + 16))(v20, v22, v44);
    result = [v2 rank];
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      [v2 score];
      sub_266039324();
      return (*(v42 + 8))(v22, v44);
    }
  }

  return result;
}

size_t sub_26602377C(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = sub_266039334();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266039BB4())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v27 = MEMORY[0x277D84F90];
    result = sub_2660267AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v10 = v27;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v18[1] = v6 + 32;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x266777030](v12, a3);
      }

      else
      {
        if (v12 >= *(v18[0] + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a3 + 8 * v12 + 32);
      }

      v15 = v14;
      v26 = v14;
      v22(&v26, &v25);
      if (v4)
      {

        return v10;
      }

      v4 = 0;

      v27 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2660267AC(v16 > 1, v17 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v17 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v24, v21);
      ++v12;
      if (v13 == v19)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void sub_2660239C4(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v16 - v8;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266039BB4())
  {
    v25 = MEMORY[0x277D84F90];
    sub_2660267CC();
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v25;
    v17 = i;
    v18 = a3 & 0xC000000000000001;
    v16[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v16[1] = v6 + 32;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18)
      {
        v13 = MEMORY[0x266777030](v10, a3);
      }

      else
      {
        if (v10 >= *(v16[0] + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      v14 = v13;
      v24 = v13;
      v20(&v24, &v23);
      if (v4)
      {

        return;
      }

      v4 = 0;

      v25 = v11;
      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        sub_2660267CC();
        v11 = v25;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v22, v19);
      ++v10;
      if (v12 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t ShimLeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_1();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[9] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v6);
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_28_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F0, &qword_26603C3F0);
  v1[15] = v9;
  OUTLINED_FUNCTION_3_0(v9);
  v1[16] = v10;
  v12 = *(v11 + 64);
  v1[17] = OUTLINED_FUNCTION_43_0();
  v1[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F8, &qword_26603C3F8);
  OUTLINED_FUNCTION_16(v13);
  v15 = *(v14 + 64);
  v1[19] = OUTLINED_FUNCTION_28_0();
  v16 = sub_266039364();
  v1[20] = v16;
  OUTLINED_FUNCTION_3_0(v16);
  v1[21] = v17;
  v19 = *(v18 + 64);
  v1[22] = OUTLINED_FUNCTION_28_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058500, &unk_26603C400);
  OUTLINED_FUNCTION_16(v20);
  v22 = *(v21 + 64);
  v1[23] = OUTLINED_FUNCTION_28_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[24] = v23;
  OUTLINED_FUNCTION_3_0(v23);
  v1[25] = v24;
  v26 = *(v25 + 64);
  v1[26] = OUTLINED_FUNCTION_28_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v1[27] = v27;
  OUTLINED_FUNCTION_3_0(v27);
  v1[28] = v28;
  v30 = *(v29 + 64);
  v1[29] = OUTLINED_FUNCTION_28_0();
  v31 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_266023E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();
  v13 = *(*(v12 + 72) + 16);
  *(v12 + 328) = *MEMORY[0x277D0D298];
  v14 = *(v12 + 224);
  *(v12 + 332) = *MEMORY[0x277D0D2A0];
  *(v12 + 336) = *MEMORY[0x277D0D290];
  v15 = MEMORY[0x277D84F90];
  *(v12 + 248) = 0;
  *(v12 + 256) = v15;
  *(v12 + 240) = v13;
  if (v13)
  {
    v16 = OUTLINED_FUNCTION_43_2();
    v17(v16);
    sub_266039554();
    v18 = *(v12 + 208);
    *(v12 + 264) = sub_265FFEED4();
    v30 = *(v12 + 104);
    (*(*(v12 + 200) + 8))(*(v12 + 208), *(v12 + 192));
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v12 + 272) = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_4_3(v31);
    OUTLINED_FUNCTION_45_1();

    return sub_266000818(v33, v34, v35);
  }

  else
  {
    OUTLINED_FUNCTION_84();
    v19 = *(v12 + 136);
    v20 = *(v12 + 112);

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_45_1();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t sub_266024094()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 272);
  *v4 = *v1;
  v3[35] = v7;
  v3[36] = v0;

  if (v0)
  {
    v8 = v3[32];
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26602419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_89();
  v23 = *(v20 + 288);
  v24 = *(v20 + 232);
  v25 = sub_265FFF154();
  *(v20 + 296) = v25;
  if (v23)
  {
    v26 = *(v20 + 280);
    v28 = *(v20 + 256);
    v27 = *(v20 + 264);

LABEL_3:

LABEL_4:
    OUTLINED_FUNCTION_67();
    v30 = *(v20 + 176);
    v29 = *(v20 + 184);
    v32 = *(v20 + 144);
    v31 = *(v20 + 152);
    v33 = *(v20 + 136);
    v34 = *(v20 + 112);
    v36 = OUTLINED_FUNCTION_76(v35);
    v37(v36);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_1();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v47 = v25;
  v48 = *(v20 + 184);
  v49 = *(v20 + 160);
  sub_2660275DC(*(v20 + 96), v48, &qword_280058500, &unk_26603C400);
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_266027184(*(v20 + 184), &qword_280058500);
  }

  else
  {
    v50 = *(v20 + 328);
    v51 = *(v20 + 168);
    (*(v51 + 16))(*(v20 + 176), *(v20 + 184), *(v20 + 160));
    v52 = *(v51 + 88);
    v53 = OUTLINED_FUNCTION_53();
    v55 = v54(v53);
    if (v55 != v50 && v55 != *(v20 + 332) && v55 != *(v20 + 336))
    {
      a10 = *(v20 + 280);
      a11 = *(v20 + 264);
      a12 = *(v20 + 256);
      v124 = *(v20 + 176);
      v123 = *(v20 + 184);
      v125 = *(v20 + 160);
      v126 = *(v20 + 168);
      v127 = sub_266039224();
      OUTLINED_FUNCTION_0_2();
      sub_266027598(v128, v129);
      OUTLINED_FUNCTION_47();
      v131 = v130;
      OUTLINED_FUNCTION_50_0();
      *(v20 + 56) = a13;
      *(v20 + 64) = a14;
      OUTLINED_FUNCTION_40_0();
      sub_266039B94();
      v132 = *(v20 + 64);
      *v131 = *(v20 + 56);
      v131[1] = v132;
      v133 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_5_1(v127);
      (*(v134 + 104))(v131);
      swift_willThrow();
      v135 = *(v126 + 8);
      v135(v124, v125);

      v136 = OUTLINED_FUNCTION_54_0();
      (v135)(v136);
      goto LABEL_4;
    }

    v56 = OUTLINED_FUNCTION_12_3();
    v57(v56);
  }

  if (*(*(v20 + 80) + 16))
  {
    v58 = *(v20 + 152);
    v59 = *(v20 + 88);
    sub_266005E54(*(v20 + 104), v20 + 16);
    v60 = *(v20 + 48);
    __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
    v61 = sub_266039184();
    OUTLINED_FUNCTION_5(v61);
    v63 = *(v62 + 16);
    v64 = OUTLINED_FUNCTION_54_0();
    v65(v64);
    OUTLINED_FUNCTION_88();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v61);
    v69 = *(v60 + 16);
    OUTLINED_FUNCTION_6_2();
    v147 = v70 + *v70;
    v72 = *(v71 + 4);
    v73 = swift_task_alloc();
    *(v20 + 304) = v73;
    *v73 = v20;
    v73[1] = sub_2660248DC;
    v74 = *(v20 + 280);
    v75 = *(v20 + 264);
    v76 = *(v20 + 152);
    OUTLINED_FUNCTION_38_0();

    return v85(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, v60 + 16, v147, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v87 = *(v20 + 280);
    v88 = *(v20 + 256);
    v89 = *(v20 + 136);
    v90 = *(v20 + 112);

    sub_2660395F4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
    sub_266039334();
    v95 = MEMORY[0x277D0D080];
    sub_266027598(&qword_280058508, MEMORY[0x277D0D080]);
    OUTLINED_FUNCTION_7_5();
    sub_266027598(v96, v95);
    sub_2660395E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v20 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v144 = *(v98 + 16);
      OUTLINED_FUNCTION_68();
      sub_266026EEC();
      v98 = v145;
    }

    v99 = *(v98 + 24);
    a12 = v98;
    if (*(v98 + 16) >= v99 >> 1)
    {
      OUTLINED_FUNCTION_38_1(v99);
      sub_266026EEC();
      a12 = v146;
    }

    v100 = *(v20 + 128);
    v101 = *(v20 + 136);
    OUTLINED_FUNCTION_94();
    v102 = *(v20 + 120);

    v104 = OUTLINED_FUNCTION_32_1(a12);
    v105(v104);
    v106 = *(v22 + 8);
    v107 = OUTLINED_FUNCTION_52_0();
    v108(v107);
    OUTLINED_FUNCTION_77();
    if (v110)
    {
      v111 = *(v20 + 208);
      OUTLINED_FUNCTION_8_2();

      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_42_1();

      return v114(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    else
    {
      v120 = OUTLINED_FUNCTION_5_4(v109);
      v121(v120);
      OUTLINED_FUNCTION_104();
      if (v101)
      {
        goto LABEL_3;
      }

      v122 = *(v20 + 208);
      *(v20 + 264) = sub_265FFEED4();
      v137 = *(v20 + 104);
      (*(*(v20 + 200) + 8))(*(v20 + 208), *(v20 + 192));
      swift_task_alloc();
      OUTLINED_FUNCTION_26();
      *(v20 + 272) = v138;
      *v138 = v139;
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_42_1();

      return sub_266000818(v140, v141, v142);
    }
  }
}

uint64_t sub_2660248DC()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[38];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[39] = v8;
  v3[40] = v0;

  v9 = v2[35];
  if (v0)
  {
    v10 = v3[32];
    sub_266027184(v3[19], &qword_2800584F8);
  }

  else
  {
    sub_266027184(v3[19], &qword_2800584F8);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266024A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  v18 = v14[39];
  v19 = v14[40];
  v20 = v14[29];
  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  v21 = swift_task_alloc();
  *(v21 + 16) = v20;
  sub_26602377C(sub_266027920, v21, v18);
  v22 = v14[39];
  if (v19)
  {
    v23 = v14[37];
    v24 = v14[32];
    v25 = v14[33];

LABEL_15:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_8_2();
    v63 = OUTLINED_FUNCTION_76(v62);
    v64(v63);

    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_34_2();

    return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
  }

  v26 = v14[32];
  v27 = v14[18];
  v28 = v14[14];

  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_266039334();
  OUTLINED_FUNCTION_31_2();
  sub_266027598(v33, v15);
  OUTLINED_FUNCTION_7_5();
  sub_266027598(v34, v15);
  OUTLINED_FUNCTION_61();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v14[32];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v80 = *(v36 + 16);
    OUTLINED_FUNCTION_68();
    sub_266026EEC();
    v36 = v81;
  }

  v37 = *(v36 + 24);
  a10 = v36;
  if (*(v36 + 16) >= v37 >> 1)
  {
    OUTLINED_FUNCTION_38_1(v37);
    sub_266026EEC();
    a10 = v82;
  }

  v38 = v14[18];
  OUTLINED_FUNCTION_94();
  v40 = v14[15];
  v39 = v14[16];

  v42 = OUTLINED_FUNCTION_32_1(a10);
  v43(v42);
  v44 = *(v17 + 8);
  v45 = OUTLINED_FUNCTION_52_0();
  v46(v45);
  OUTLINED_FUNCTION_77();
  if (v48)
  {
    v49 = v14[26];
    OUTLINED_FUNCTION_8_2();

    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_34_2();

    return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v59 = OUTLINED_FUNCTION_5_4(v47);
    v60(v59);
    OUTLINED_FUNCTION_104();
    if (v38)
    {

      goto LABEL_15;
    }

    v61 = v14[26];
    v14[33] = sub_265FFEED4();
    v73 = v14[13];
    (*(v14[25] + 8))(v14[26], v14[24]);
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    v14[34] = v74;
    *v74 = v75;
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_34_2();

    return sub_266000818(v76, v77, v78);
  }
}

uint64_t sub_266024DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();

  v13 = *(v12 + 288);
  v14 = *(v12 + 224);
  v15 = *(v12 + 232);
  v17 = *(v12 + 208);
  v16 = *(v12 + 216);
  OUTLINED_FUNCTION_8_2();
  (*(v18 + 8))(v15);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_266024EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();
  v13 = *(v12 + 264);

  __swift_destroy_boxed_opaque_existential_0((v12 + 16));
  v14 = *(v12 + 320);
  v15 = *(v12 + 224);
  v16 = *(v12 + 232);
  v18 = *(v12 + 208);
  v17 = *(v12 + 216);
  OUTLINED_FUNCTION_8_2();
  (*(v19 + 8))(v16);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t ShimLeaderboardService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_1();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_28_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058518, &qword_26603C420);
  v1[11] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_43_0();
  v1[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[15] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v1[16] = v12;
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_43_0();
  v1[18] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058520, &qword_26603C428);
  v1[19] = v15;
  OUTLINED_FUNCTION_16(v15);
  v17 = *(v16 + 64);
  v1[20] = OUTLINED_FUNCTION_28_0();
  v18 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_266025110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  v15 = *(v14 + 128);
  v16 = *(v14 + 64);
  v17 = *(*(v14 + 56) + 16);
  v18 = MEMORY[0x277D84F90];
  *(v14 + 176) = 0;
  *(v14 + 184) = v18;
  *(v14 + 168) = v17;
  if (v17)
  {
    v19 = *(v14 + 144);
    v20 = *(v14 + 120);
    OUTLINED_FUNCTION_92(v15);
    v21();
    if (*(v16 + 16))
    {
      v23 = *(v14 + 152);
      v22 = *(v14 + 160);
      v24 = *(v14 + 144);
      v25 = *(v14 + 120);
      v26 = *(v14 + 128);
      v52 = *(v14 + 136);
      v53 = *(v14 + 72);
      v51 = *(v14 + 64);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
      *(v14 + 192) = v27;
      v28 = *(v27 - 8);
      *(v14 + 200) = v28;
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = *(v23 + 48);
      *(v14 + 264) = v30;
      v31 = *(v26 + 32);
      v32 = OUTLINED_FUNCTION_12_0();
      v31(v32);
      (*(v28 + 16))(v22 + v30, v51 + v29, v27);
      (v31)(v52, v22, v25);
      swift_task_alloc();
      OUTLINED_FUNCTION_26();
      *(v14 + 208) = v33;
      *v33 = v34;
      OUTLINED_FUNCTION_28_2(v33);
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_34_2();

      return sub_265FFF2B8();
    }

    (*(*(v14 + 128) + 8))(*(v14 + 144), *(v14 + 120));
  }

  v37 = *(v14 + 160);
  v38 = *(v14 + 136);
  v39 = *(v14 + 144);
  v41 = *(v14 + 104);
  v40 = *(v14 + 112);
  v42 = *(v14 + 80);

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_34_2();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26602532C()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[26];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[27] = v8;
  v3[28] = v0;

  v9 = *(v3 + 66);
  v10 = v2[25];
  v11 = v2[24];
  if (v0)
  {
    v12 = v3[23];
    (*(v10 + 8))(v3[20] + v9, v11);
  }

  else
  {
    (*(v10 + 8))(v3[20] + v9, v11);
  }

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26602549C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  sub_266005E54(*(v0 + 72), v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = sub_265FFEED4();
  *(v0 + 232) = v5;
  if (v1)
  {
    v6 = *(v0 + 184);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v7 = *(v0 + 160);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = OUTLINED_FUNCTION_10_2();
    v11(v10);

    OUTLINED_FUNCTION_14_3();

    return v12();
  }

  else
  {
    v14 = v5;
    v15 = *(v4 + 8);
    OUTLINED_FUNCTION_6_2();
    v21 = (v16 + *v16);
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    *(v0 + 240) = v19;
    *v19 = v0;
    v19[1] = sub_266025694;
    v20 = *(v0 + 216);

    return v21(v14, v20, v3, v4);
  }
}

uint64_t sub_266025694()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[30];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[31] = v8;
  v3[32] = v0;

  v9 = v2[29];
  if (v0)
  {
    v10 = v3[23];
  }

  else
  {
  }

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660257C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  v15 = *(v14 + 248);
  v16 = *(v14 + 256);
  v17 = *(v14 + 136);
  __swift_destroy_boxed_opaque_existential_0((v14 + 16));
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  sub_2660239C4(sub_26602722C, v18, v15);
  v19 = *(v14 + 248);
  if (v16)
  {
    v20 = *(v14 + 184);

    v21 = *(v14 + 160);
    v23 = *(v14 + 136);
    v22 = *(v14 + 144);
    v24 = OUTLINED_FUNCTION_10_2();
    v25(v24);

    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_34_2();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  v35 = *(v14 + 112);
  v106 = *(v14 + 104);
  v108 = *(v14 + 184);
  v37 = *(v14 + 88);
  v36 = *(v14 + 96);
  v38 = *(v14 + 80);

  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_74();
  __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  sub_266014E7C(&qword_280058528, &qword_2800584D8);
  sub_266014E7C(&qword_280058530, &qword_2800584D8);
  sub_2660395E4();
  (*(v36 + 16))(v106, v35, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v14 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v102 = *(v46 + 16);
    OUTLINED_FUNCTION_68();
    sub_266026EEC();
    v46 = v103;
  }

  v48 = *(v46 + 16);
  v47 = *(v46 + 24);
  if (v48 >= v47 >> 1)
  {
    OUTLINED_FUNCTION_38_1(v47);
    v49 = v104;
    sub_266026EEC();
    v46 = v105;
  }

  else
  {
    v49 = v48 + 1;
  }

  v50 = *(v14 + 128);
  v109 = *(v14 + 136);
  v52 = *(v14 + 112);
  v51 = *(v14 + 120);
  v53 = *(v14 + 96);
  v54 = *(v14 + 104);
  v55 = *(v14 + 88);

  (*(v53 + 8))(v52, v55);
  *(v46 + 16) = v49;
  OUTLINED_FUNCTION_57();
  v58(v56 + v57 * v48, v54, v55);
  (*(v50 + 8))(v109, v51);
  v59 = *(v14 + 168);
  v60 = *(v14 + 176) + 1;
  *(v14 + 176) = v60;
  *(v14 + 184) = v46;
  if (v60 == v59)
  {
    goto LABEL_12;
  }

  v61 = *(v14 + 144);
  v62 = *(v14 + 120);
  v63 = *(v14 + 56);
  v64 = *(v14 + 64);
  OUTLINED_FUNCTION_92(*(v14 + 128));
  v68 = v65 + v66 + *(v67 + 56) * v60;
  result = v69();
  v70 = *(v64 + 16);
  if (v60 == v70)
  {
    (*(*(v14 + 128) + 8))(*(v14 + 144), *(v14 + 120));
LABEL_12:
    v71 = *(v14 + 160);
    v73 = *(v14 + 136);
    v72 = *(v14 + 144);
    v75 = *(v14 + 104);
    v74 = *(v14 + 112);
    v76 = *(v14 + 80);

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_34_2();

    return v79(v77, v78, v79, v80, v81, v82, v83, v84, v106, v109, a11, a12, a13, a14);
  }

  if (v60 >= v70)
  {
    __break(1u);
  }

  else
  {
    v86 = *(v14 + 152);
    v85 = *(v14 + 160);
    v87 = *(v14 + 144);
    v88 = *(v14 + 120);
    v89 = *(v14 + 128);
    v90 = *(v14 + 64);
    v107 = *(v14 + 136);
    v110 = *(v14 + 72);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    *(v14 + 192) = v91;
    OUTLINED_FUNCTION_2_0(v91);
    v93 = v92;
    *(v14 + 200) = v92;
    v95 = v90 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v94 + 72) * v60;
    v96 = *(v86 + 48);
    *(v14 + 264) = v96;
    v97 = *(v89 + 32);
    v98 = OUTLINED_FUNCTION_12_0();
    v97(v98);
    (*(v93 + 16))(v85 + v96, v95, v91);
    (v97)(v107, v85, v88);
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v14 + 208) = v99;
    *v99 = v100;
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_34_2();

    return sub_265FFF2B8();
  }

  return result;
}

uint64_t sub_266025CD0()
{
  OUTLINED_FUNCTION_36();
  v1 = v0[28];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = OUTLINED_FUNCTION_10_2();
  v6(v5);

  OUTLINED_FUNCTION_11();

  return v7();
}

uint64_t sub_266025D84()
{
  OUTLINED_FUNCTION_36();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 256);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = OUTLINED_FUNCTION_10_2();
  v6(v5);

  OUTLINED_FUNCTION_11();

  return v7();
}

uint64_t sub_266025E84()
{
  OUTLINED_FUNCTION_8();
  sub_266039224();
  OUTLINED_FUNCTION_0_2();
  sub_266027598(v0, v1);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_15();
  swift_allocError();
  sub_266039204();
  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_266025F68()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.describe(leaderboards:)();
}

uint64_t sub_266025FF0()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_2660260A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_40();

  return ShimLeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_266026140()
{
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboards(games:players:)();
}

uint64_t sub_2660261D8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.previousOcurrences(leaderboards:players:)();
}

uint64_t sub_266026258()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.submit(entries:)();
}

uint64_t sub_2660262D8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.reset(leaderboards:)();
}

uint64_t sub_266026358()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.describe(leaderboardSets:)();
}

uint64_t sub_2660263D8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboardSets(games:)();
}

uint64_t sub_266026458()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_2660264D8()
{
  v1 = sub_2660393E4();
  v2 = OUTLINED_FUNCTION_2_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = OUTLINED_FUNCTION_35_2(v7, v23);
  v9(v8);
  v10 = *(v4 + 88);
  v11 = OUTLINED_FUNCTION_69();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D0D340])
  {
    return 1;
  }

  if (v13 == *MEMORY[0x277D0D338])
  {
    return 0;
  }

  v15 = sub_266039224();
  OUTLINED_FUNCTION_0_2();
  sub_266027598(v16, v17);
  OUTLINED_FUNCTION_15();
  swift_allocError();
  OUTLINED_FUNCTION_75();
  sub_266039B04();
  MEMORY[0x266776E20](0xD00000000000001ELL, 0x800000026603B100);
  sub_266039B94();
  *v0 = v24;
  v0[1] = v25;
  v18 = *MEMORY[0x277D0CE68];
  OUTLINED_FUNCTION_5_1(v15);
  (*(v19 + 104))(v0);
  swift_willThrow();
  v20 = *(v4 + 8);
  v21 = OUTLINED_FUNCTION_69();
  return v22(v21);
}

void sub_2660266C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *(v4 + 40);
  v8 = OUTLINED_FUNCTION_45_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  sub_266014E7C(a4, a2);
  OUTLINED_FUNCTION_74();
  sub_2660398B4();
  OUTLINED_FUNCTION_52();
  sub_266026FF4();
}

void sub_26602676C()
{
  v1 = *v0;
  sub_266026AD0();
  *v0 = v2;
}

size_t sub_2660267AC(size_t a1, int64_t a2, char a3)
{
  result = sub_266026908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2660267CC()
{
  v1 = *v0;
  sub_266026AD0();
  *v0 = v2;
}

size_t sub_26602680C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058568, &qword_26603C660);
  v4 = *(sub_2660393D4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_266026908(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058550, &qword_26603C648);
  v10 = *(sub_266039334() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266039334() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_266026C70(a4 + v16, v8, v13 + v16, MEMORY[0x277D0D080]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_266026AD0()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_15_0();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_266026D24(v0 + v25, v10, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_42_0();
}

uint64_t sub_266026C70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_81();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_5(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_15_1();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_15_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_266026D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_81();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_5(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_15_1();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_15_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

size_t sub_266026DEC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_26602680C(v8, v7);
  v10 = *(sub_2660393D4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_266026C70(a4 + v11, v8, v9 + v11, MEMORY[0x277D0D320]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_266026EEC()
{
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_266013318(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) - 8);
  if (v3)
  {
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_266026D24(v0 + v15, v10, v11 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266026FF4()
{
  OUTLINED_FUNCTION_41_1();
  v21 = v1;
  v22 = v2;
  v4 = v3;
  v18 = v5;
  v20 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v1);
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v18 - v13;
  v23 = v0 + 64;
  v19 = v0;
  v15 = ~(-1 << *(v0 + 32));
  for (i = v4 & v15; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v19 + 48) + *(v10 + 72) * i, v7);
    sub_266014E7C(v22, v20);
    v17 = sub_2660398C4();
    (*(v10 + 8))(v14, v7);
    if (v17)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_42_0();
}

uint64_t sub_266027184(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_45_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_2660271F0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  result = sub_2660233B0(v6, a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_26602722C(id *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = [*a1 identifier];
  sub_2660398E4();

  sub_2660394A4();

  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t dispatch thunk of GCFGameStatServiceLeaderboards.getLeaderboardsForGameDescriptor(gameDescriptor:player:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_6_2();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);
  v8 = OUTLINED_FUNCTION_40();

  return v10(v8);
}

uint64_t dispatch thunk of GCFGameStatServiceLeaderboards.loadEntriesForLeaderboard(leaderboard:gameDescriptor:playerScope:timeScope:range:players:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_0();
  v10 = *(a10 + 16);
  OUTLINED_FUNCTION_6_2();
  v19 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  v15[1] = sub_266027938;
  v17 = OUTLINED_FUNCTION_44_1();

  return v19(v17);
}

uint64_t sub_266027528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058558, &qword_26603C650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266027598(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_52();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2660275DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266027650(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
  OUTLINED_FUNCTION_16(v6);
  v8 = *(v7 + 80);
  if (a4)
  {
    v9 = sub_266039224();
    OUTLINED_FUNCTION_0_2();
    sub_266027598(v10, v11);
    v12 = OUTLINED_FUNCTION_47();
    *v13 = a4;
    v14 = *MEMORY[0x277D0CE60];
    OUTLINED_FUNCTION_5_1(v9);
    (*(v15 + 104))();
    v16 = a4;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
    OUTLINED_FUNCTION_19_1(v17, v18, v19, v20, v21, v22, v23, v24, v35, v12);
    return sub_2660399C4();
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
    if (a2)
    {
      v26 = a2;
    }

    v36 = v26;

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
    OUTLINED_FUNCTION_19_1(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    return sub_2660399D4();
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2660277D4(char a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
  OUTLINED_FUNCTION_16(v4);
  v6 = *(v5 + 80);
  if (a2)
  {
    v7 = sub_266039224();
    OUTLINED_FUNCTION_0_2();
    sub_266027598(v8, v9);
    v10 = OUTLINED_FUNCTION_47();
    *v11 = a2;
    v12 = *MEMORY[0x277D0CE60];
    OUTLINED_FUNCTION_5_1(v7);
    (*(v13 + 104))();
    v14 = a2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
    OUTLINED_FUNCTION_19_1(v15, v16, v17, v18, v19, v20, v21, v22, v32, v10);
    return sub_2660399C4();
  }

  else
  {

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
    OUTLINED_FUNCTION_19_1(v24, v25, v26, v27, v28, v29, v30, v31, v32, a1);
    return sub_2660399D4();
  }
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{
  *(a1 + 8) = sub_266024094;
  v3 = *(v2 + 80);
  return v1 + 40;
}

uint64_t OUTLINED_FUNCTION_5_4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2[27];
  v4 = v2[28];
  v5 = v2[26];
  v6 = *(v4 + 16);
  v7 = v2[9] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a1;
  return v1;
}

void OUTLINED_FUNCTION_8_2()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
}

uint64_t OUTLINED_FUNCTION_10_2()
{
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = *(v0[16] + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  result = v0[23];
  v2 = v0[20];
  v3 = *(v0[21] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  result = v0[26];
  v2 = v0[24];
  v3 = *(v0[25] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t result)
{
  *(result + 8) = sub_266022868;
  v5 = *(v2 + 152);
  v6 = *(v2 + 80);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t result)
{
  *(result + 8) = sub_266021410;
  v2 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_1()
{
  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v19 = v0[8];
  v20 = v0[7];
  v21 = v0[6];
}

unint64_t OUTLINED_FUNCTION_32_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1;
  v4 = *(v2 + 32);
  return a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v3;
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x266776E20);
}

uint64_t OUTLINED_FUNCTION_43_2()
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);
  return v1[29];
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return sub_266039B04();
}

void OUTLINED_FUNCTION_57()
{
  v3 = *(v0 + 32);
  v2 = v0 + 32;
  v4 = v1 + ((*(v2 + 48) + 32) & ~*(v2 + 48));
  v5 = *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return sub_2660395E4();
}

void OUTLINED_FUNCTION_67()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
}

void OUTLINED_FUNCTION_77()
{
  v2 = v1[30];
  ++v1[31];
  v1[32] = v0;
  v3 = v1[29];
}

uint64_t OUTLINED_FUNCTION_84()
{
  result = v0[29];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  return result;
}

void OUTLINED_FUNCTION_94()
{
  v1 = v0[37];
  v2 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[12];

  return sub_266005E54(v3, (v0 + 2));
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_266039554();
}

char *sub_266027F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      if (!*v2)
      {
        break;
      }

      v5 = *(v2 - 1);
      v6 = *v2;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2660016D4(0, *(v3 + 2) + 1, 1, v3);
      }

      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        v3 = sub_2660016D4((v7 > 1), v8 + 1, 1, v3);
      }

      *(v3 + 2) = v8 + 1;
      v9 = &v3[16 * v8];
      *(v9 + 4) = v5;
      *(v9 + 5) = v4;
      v2 += 2;
      if (!--v1)
      {
        return v3;
      }
    }

    sub_266039224();
    sub_265FFE434();
    OUTLINED_FUNCTION_6();
    sub_2660391E4();
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_266028038(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v2;
  swift_getWitnessTable();
  result = sub_266039924();
  if ((result & 1) == 0)
  {
    (*(v5 + 16))(v8, a1, v4);
    return sub_2660399A4();
  }

  return result;
}

uint64_t sub_266028160()
{
  v1 = sub_2660395F4();
  result = __swift_getEnumTagSinglePayload(v0, 1, v1);
  if (result != 1)
  {
    v3 = sub_266039224();
    sub_265FFE434();
    OUTLINED_FUNCTION_6();
    *v4 = 0xD00000000000001FLL;
    v4[1] = 0x800000026603B180;
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D0CE68], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26602821C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, a1);
  if (sub_266039A64() < 65)
  {
    sub_266039A74();
    sub_266039A54();
  }

  else
  {
    sub_2660283C0();
    sub_266028414();
    sub_266039874();
  }

  (*(v3 + 8))(v6, a1);
  return sub_266039134();
}

unint64_t sub_2660283C0()
{
  result = qword_2800585C0;
  if (!qword_2800585C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800585C0);
  }

  return result;
}

unint64_t sub_266028414()
{
  result = qword_2800585C8;
  if (!qword_2800585C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800585C8);
  }

  return result;
}

uint64_t sub_266028468(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 112) = a3;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  return MEMORY[0x2822009F8](sub_266028490, 0, 0);
}

uint64_t sub_266028490()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_266028CD8();
  OUTLINED_FUNCTION_12_0();
  v3 = sub_265FFFD3C();
  *(v0 + 80) = v3;

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_2660285B8;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 112);

  return sub_266028F68(v3, v7, v5, v6);
}

uint64_t sub_2660285B8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

char *sub_2660286B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_86();
  v17 = sub_266003570(*(v14 + 96));
  if (v17)
  {
    v18 = v17;
    a11 = MEMORY[0x277D84F90];
    v19 = OUTLINED_FUNCTION_118();
    result = sub_266034CC8(v19, v20, 0);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v22 = *(v14 + 96);
    OUTLINED_FUNCTION_117();
    do
    {
      if (v15)
      {
        v23 = MEMORY[0x266777030](0, *(v14 + 96));
      }

      else
      {
        v23 = *a10;
      }

      v24 = v23;
      v25 = [v24 *(v16 + 280)];
      sub_2660398E4();

      OUTLINED_FUNCTION_149();
      if (v27)
      {
        sub_266034CC8((v26 > 1), v24, 1);
      }

      OUTLINED_FUNCTION_116();
    }

    while (!v28);
    v29 = *(v14 + 96);
  }

  else
  {
    v30 = *(v14 + 96);
    v31 = *(v14 + 80);
  }

  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_34_2();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26602880C()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_266028868(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 120) = a3;
  *(v6 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266028888()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  v15 = *(v0 + 72);
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_266028CD8();
  OUTLINED_FUNCTION_12_0();
  v3 = sub_265FFFD3C();
  *(v0 + 88) = v3;

  v4 = *(v15 + 16);
  OUTLINED_FUNCTION_3_1();
  v14 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_266028A28;
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = *(v0 + 120);

  return v14(v3, v12, v11, v9);
}

uint64_t sub_266028A28()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  *(v2 + 104) = v6;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

char *sub_266028B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_86();
  v17 = sub_266003570(*(v14 + 104));
  if (v17)
  {
    v18 = v17;
    a11 = MEMORY[0x277D84F90];
    v19 = OUTLINED_FUNCTION_118();
    result = sub_266034CC8(v19, v20, 0);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v22 = *(v14 + 104);
    OUTLINED_FUNCTION_117();
    do
    {
      if (v15)
      {
        v23 = MEMORY[0x266777030](0, *(v14 + 104));
      }

      else
      {
        v23 = *a10;
      }

      v24 = v23;
      v25 = [v24 *(v16 + 280)];
      sub_2660398E4();

      OUTLINED_FUNCTION_149();
      if (v27)
      {
        sub_266034CC8((v26 > 1), v24, 1);
      }

      OUTLINED_FUNCTION_116();
    }

    while (!v28);
    v29 = *(v14 + 104);
  }

  else
  {
    v30 = *(v14 + 104);
    v31 = *(v14 + 88);
  }

  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_34_2();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266028C7C()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_11();

  return v2();
}

unint64_t sub_266028CD8()
{
  result = qword_280058210;
  if (!qword_280058210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280058210);
  }

  return result;
}

uint64_t sub_266028D4C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_49_1();
}

uint64_t sub_266028D78()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_49_1();
}

uint64_t sub_266028DA4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_49_1();
}

uint64_t sub_266028DD8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_49_1();
}

uint64_t sub_266028E34()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_49_1();
}

__n128 InvitationMailboxEntry.init(issueTimestamp:issuingPlayerID:receivingPlayerId:issuingPlayerCAID:addressedToCAID:lastPlayedGame:lastPlayedTimestamp:lastChallengedGame:lastChallengedTimestamp:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_2660021E4(a1, a9);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  v21 = *(a12 + 16);
  *(a9 + 112) = *a12;
  *(a9 + 128) = v21;
  *(a9 + 144) = *(a12 + 32);
  *(a9 + 152) = a13;
  *(a9 + 160) = a14;
  result = *a15;
  v23 = *(a15 + 16);
  *(a9 + 200) = *(a15 + 32);
  *(a9 + 184) = v23;
  *(a9 + 168) = result;
  return result;
}