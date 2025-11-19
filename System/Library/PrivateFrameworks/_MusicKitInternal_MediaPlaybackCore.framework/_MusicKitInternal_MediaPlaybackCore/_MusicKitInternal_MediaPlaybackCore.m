uint64_t MusicPlayerPath.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAD8, &qword_2752BE158) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v8 - v3;
  sub_2752BD148();
  v5 = sub_2752BD158();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    sub_2752A84CC(v4);
    v6 = 1;
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v4, v5);
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v5);
}

uint64_t sub_2752A7BC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 97) & ~v3;
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 80);
  v10 = v4 + v6 + v9;
  v12 = *(v11 + 64);
  switch(*(v0 + 96))
  {
    case 0:

      break;
    case 1:
      v14 = *(v0 + 16);

      if (*(v0 + 48))
      {
        v13 = (v0 + 24);
        goto LABEL_8;
      }

      break;
    case 2:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      if (*(v0 + 80))
      {
        v13 = (v0 + 56);
        goto LABEL_8;
      }

      break;
    case 3:
      v13 = (v0 + 16);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      break;
    default:
      break;
  }

  v15 = v10 & ~v9;
  v16 = sub_2752BD288();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v0 + v4, v16);
  }

  v17 = sub_2752BD298();
  if (!__swift_getEnumTagSinglePayload(v0 + v15, 1, v17))
  {
    (*(*(v17 - 8) + 8))(v0 + v15, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v12, v3 | v9 | 7);
}

uint64_t sub_2752A7E00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_2752A7E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MPCPlaybackIntent.isInGroupSession.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2752A812C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2752A81C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2752A82A4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2752A82D8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2752A82E0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void sub_2752A8338(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t MPCPlaybackEngine.state<A>(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752BD578();
  (*(v4 + 16))(v7, a1, a2);
  sub_2752BD2B8();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  sub_2752BD2A8();
  return sub_2752BD588();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2752A84CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAD8, &qword_2752BE158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicRoute.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE0, &qword_2752BE160) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v8 - v3;
  sub_2752BD268();
  v5 = sub_2752BD278();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    sub_2752A8634(v4);
    v6 = 1;
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v4, v5);
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v5);
}

uint64_t sub_2752A8634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE0, &qword_2752BE160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit08PlayableA4Item_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2752A86C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 81))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 80);
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

uint64_t sub_2752A8708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_2752A8774()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0);
  OUTLINED_FUNCTION_3(v4);
  v1[16] = v5;
  v1[17] = *(v6 + 64);
  v1[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_3(v7);
  v1[19] = v8;
  v1[20] = *(v9 + 64);
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2752A889C()
{
  if (qword_2811ACF30 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[13];
  sub_2752A9660(v0[15], (v0 + 2));
  sub_2752AA1E8(v8, v1, &qword_2809BFAF0, &qword_2752BE2D8);
  sub_2752AA1E8(v7, v3, &qword_2809BFAE8, &qword_2752BE2D0);
  v9 = (*(v4 + 80) + 97) & ~*(v4 + 80);
  v10 = (v2 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v0 + 2, 0x51uLL);
  sub_2752AA198(v1, v11 + v9, &qword_2809BFAF0, &qword_2752BE2D8);
  sub_2752AA198(v3, v11 + v10, &qword_2809BFAE8, &qword_2752BE2D0);
  sub_2752BD248();
  sub_2752BD168();

  OUTLINED_FUNCTION_4();

  return v12();
}

uint64_t sub_2752A8A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a1;
  v4[48] = a2;
  v7 = sub_2752BD248();
  v4[49] = v7;
  v8 = *(v7 - 8);
  v4[50] = v8;
  v9 = *(v8 + 64) + 15;
  v4[51] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF8, &qword_2752BE2F0) - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[53] = v11;
  v4[54] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[55] = v12;
  *v12 = v4;
  v12[1] = sub_2752A8BCC;

  return sub_2752A98C8(v11, a3, a4);
}

uint64_t sub_2752A8BCC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 448) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2752A8CC4()
{
  v28 = v0;
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[49];
  sub_2752AA198(v0[53], v1, &qword_2809BFAF8, &qword_2752BE2F0);
  sub_2752AA1E8(v1, v2, &qword_2809BFAF8, &qword_2752BE2F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = v0[52];
  if (EnumTagSinglePayload == 1)
  {
    sub_2752AA2E8(v0[52], &qword_2809BFAF8, &qword_2752BE2F0);
    if (qword_2811ACFD0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = v0[48];
    v7 = sub_2752BD338();
    __swift_project_value_buffer(v7, qword_2811AD270);
    sub_2752A9660(v6, (v0 + 24));
    v8 = sub_2752BD318();
    v9 = sub_2752BD888();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[54];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136446210;
      sub_2752AA160((v0 + 24), (v0 + 35));
      v14 = sub_2752BD728();
      v16 = v15;
      sub_2752AA130((v0 + 24));
      v17 = sub_2752B2160(v14, v16, &v27);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2752A6000, v8, v9, "Unable to create MusicPlaybackIntentDonation from %{public}s).", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }

    else
    {

      sub_2752AA130((v0 + 24));
    }

    sub_2752AA2E8(v11, &qword_2809BFAF8, &qword_2752BE2F0);
    OUTLINED_FUNCTION_11();

    OUTLINED_FUNCTION_6();

    return v25();
  }

  else
  {
    v19 = v0[50];
    v18 = v0[51];
    v20 = v0[49];
    v21 = *(v19 + 32);
    v0[57] = v21;
    v0[58] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v18, v5, v20);
    v22 = *(MEMORY[0x277D2A648] + 4);
    v23 = swift_task_alloc();
    v0[59] = v23;
    *v23 = v0;
    v23[1] = sub_2752A8FB4;
    v24 = v0[51];

    return MEMORY[0x282189778]();
  }
}

uint64_t sub_2752A8FB4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 472);
  *v2 = *v0;
  *(v1 + 480) = v5;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2752A90A0()
{
  v40 = v0;
  v1 = *(v0 + 480);
  if (v1)
  {
    if (qword_2811ACFD0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_2752BD338();
    __swift_project_value_buffer(v2, qword_2811AD270);
    v3 = v1;
    v4 = sub_2752BD318();
    v5 = sub_2752BD898();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 480);
      v38 = *(v0 + 432);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v7 = 136446466;
      v10 = sub_2752AA284(v3);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v10 = 0x746E656469206F6ELL;
        v12 = 0xED00007265696669;
      }

      v13 = sub_2752B2160(v10, v12, &v39);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2114;
      *(v7 + 14) = v3;
      *v8 = v6;
      v14 = v3;
      _os_log_impl(&dword_2752A6000, v4, v5, "Created MusicPlaybackIntentDonation<%{public}s)>: %{public}@).", v7, 0x16u);
      sub_2752AA2E8(v8, &qword_2809BFB08, &qword_2752BE460);
      OUTLINED_FUNCTION_9();
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();

      v15 = v38;
    }

    else
    {
      v28 = *(v0 + 432);

      v15 = v28;
    }

    sub_2752AA2E8(v15, &qword_2809BFAF8, &qword_2752BE2F0);
    v29 = *(v0 + 464);
    v30 = *(v0 + 392);
    v31 = *(v0 + 376);
    (*(v0 + 456))(v31, *(v0 + 408), v30);
    v25 = v31;
    v26 = 0;
    v27 = v30;
  }

  else
  {
    if (qword_2811ACFD0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = sub_2752BD338();
    __swift_project_value_buffer(v16, qword_2811AD270);
    v17 = sub_2752BD318();
    v18 = sub_2752BD888();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2752A6000, v17, v18, "MusicPlaybackIntentDonation did not produce an underlying intent to donation.", v19, 2u);
      OUTLINED_FUNCTION_9();
    }

    v20 = *(v0 + 432);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v23 = *(v0 + 392);
    v24 = *(v0 + 376);

    (*(v22 + 8))(v21, v23);
    sub_2752AA2E8(v20, &qword_2809BFAF8, &qword_2752BE2F0);
    v25 = v24;
    v26 = 1;
    v27 = v23;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
  v33 = *(v0 + 424);
  v32 = *(v0 + 432);
  v35 = *(v0 + 408);
  v34 = *(v0 + 416);

  OUTLINED_FUNCTION_6();

  return v36();
}

uint64_t sub_2752A9418()
{
  v21 = v0;
  if (qword_2811ACFD0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[56];
  v2 = v0[48];
  v3 = sub_2752BD338();
  __swift_project_value_buffer(v3, qword_2811AD270);
  sub_2752A9660(v2, (v0 + 2));
  v4 = v1;
  v5 = sub_2752BD318();
  v6 = sub_2752BD888();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[56];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446466;
    sub_2752AA160((v0 + 2), (v0 + 13));
    v10 = sub_2752BD728();
    v12 = v11;
    sub_2752AA130((v0 + 2));
    v13 = sub_2752B2160(v10, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v0[46] = v8;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB00, &unk_2752BE300);
    v15 = sub_2752BD728();
    v17 = sub_2752B2160(v15, v16, &v20);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_2752A6000, v5, v6, "Unable to create MusicPlaybackIntentDonation from %{public}s) due to error: %{public}s).", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

  else
  {

    sub_2752AA130((v0 + 2));
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_6();

  return v18();
}

uint64_t sub_2752A9698(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_3(v5);
  v7 = (*(v6 + 80) + 97) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0) - 8);
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2752A97E8;

  return sub_2752A8A5C(a1, v1 + 16, v1 + v7, v1 + v11);
}

uint64_t sub_2752A97E8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_2752A98C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8]();
}

uint64_t sub_2752A98F8()
{
  sub_2752AA160(*(v0 + 288), v0 + 16);
  switch(*(v0 + 96))
  {
    case 1:
      v14 = *(v0 + 16);
      *(v0 + 296) = v14;
      v15 = *(v0 + 40);
      *(v0 + 224) = *(v0 + 24);
      *(v0 + 240) = v15;
      *(v0 + 256) = *(v0 + 56);
      v16 = *(MEMORY[0x277D2A660] + 4);
      v17 = swift_task_alloc();
      *(v0 + 304) = v17;
      *v17 = v0;
      v17[1] = sub_2752A9B88;
      v18 = *(v0 + 272);
      v19 = *(v0 + 280);
      v20 = *(v0 + 264);

      result = MEMORY[0x282189790](v20, v14, v0 + 224, v18, v19);
      break;
    case 2:
      sub_2752A7E00((v0 + 16), v0 + 144);
      *(v0 + 184) = *(v0 + 56);
      *(v0 + 200) = *(v0 + 72);
      *(v0 + 216) = *(v0 + 88);
      v6 = *(MEMORY[0x277D2A658] + 4);
      v7 = swift_task_alloc();
      *(v0 + 320) = v7;
      *v7 = v0;
      v7[1] = sub_2752A9D04;
      v8 = *(v0 + 272);
      v9 = *(v0 + 280);
      v10 = *(v0 + 264);

      result = MEMORY[0x282189788](v10, v0 + 144, v0 + 184, v8, v9);
      break;
    case 3:
      sub_2752A7E00((v0 + 16), v0 + 104);
      v11 = *(MEMORY[0x277D2A650] + 4);
      v12 = swift_task_alloc();
      *(v0 + 336) = v12;
      *v12 = v0;
      v12[1] = sub_2752A9E6C;
      v13 = *(v0 + 264);

      result = MEMORY[0x282189780](v13, v0 + 104);
      break;
    default:
      v1 = *(v0 + 264);
      v2 = *(v0 + 16);
      sub_2752AA340();
      sub_2752BD1F8();
      v3 = sub_2752BD248();
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
      OUTLINED_FUNCTION_4();

      result = v4();
      break;
  }

  return result;
}

uint64_t sub_2752A9B88()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *(v4 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v9 + 312) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2752A9C9C()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 224, &qword_2809BFB10, &qword_2752BE310);
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_2752A9D04()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2752A9DFC()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 184, &qword_2809BFB10, &qword_2752BE310);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_2752A9E6C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2752A9F64()
{
  OUTLINED_FUNCTION_5();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_2752A9FBC()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 224, &qword_2809BFB10, &qword_2752BE310);
  v1 = *(v0 + 312);
  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_2752AA028()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 184, &qword_2809BFB10, &qword_2752BE310);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_2752AA09C()
{
  OUTLINED_FUNCTION_5();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  v1 = *(v0 + 344);
  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2752AA198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_12(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2752AA1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_12(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2752AA284(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2752BD6E8();

  return v3;
}

uint64_t sub_2752AA2E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_2752AA340()
{
  result = qword_2809BFB18;
  if (!qword_2809BFB18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFB18);
  }

  return result;
}

uint64_t sub_2752AA384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752AA3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_2752AA414(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_9()
{

  JUMPOUT(0x277C73820);
}

uint64_t OUTLINED_FUNCTION_11()
{
  __swift_storeEnumTagSinglePayload(v0[47], 1, 1, v0[49]);
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void MPCPlaybackIntent.init<A>(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v12);
  v59 = sub_2752BD1A8();
  v13 = OUTLINED_FUNCTION_0_0(v59);
  v58 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v18 - v17);
  OUTLINED_FUNCTION_4_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  v24 = sub_2752BD1C8();
  v25 = OUTLINED_FUNCTION_0_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_35();
  sub_2752BD358();
  v34 = (*(v27 + 88))(v0, v24);
  if (v34 == *MEMORY[0x277D2A4D0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2752BE410;
    *(v35 + 56) = v5;
    *(v35 + 64) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
    (*(v20 + 16))(boxed_opaque_existential_1, v7, v5);
    v66 = 0;
    v65 = 0u;
    OUTLINED_FUNCTION_61(0);
    v38 = v37;

    sub_2752B46E0(&v64, &qword_2809BFB10, &qword_2752BE310);
    v39 = v38;
LABEL_10:
    v40 = v20;
    goto LABEL_11;
  }

  v60 = v7;
  if (v34 == *MEMORY[0x277D2A4D8])
  {
    v40 = v20;
    v55 = *(v20 + 16);
    v55(v1, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      sub_2752B46E0(&v61, &qword_2809BFB38, &unk_2752BE450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2752BE410;
      *(inited + 56) = v5;
      *(inited + 64) = v3;
      v46 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      v55(v46, v7, v5);
      v66 = 0;
      v65 = 0u;
      v64 = 0u;
      sub_2752AAC84();
      v48 = v47;
      swift_setDeallocating();
      sub_2752B2098();
      sub_2752B46E0(&v64, &qword_2809BFB10, &qword_2752BE310);
      if (!v48)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_2752BE410;
        *(v49 + 56) = v5;
        *(v49 + 64) = v3;
        v50 = __swift_allocate_boxed_opaque_existential_1((v49 + 32));
        v55(v50, v60, v5);
        v66 = 0;
        v65 = 0u;
        OUTLINED_FUNCTION_61(0);
        v48 = v51;

        sub_2752B46E0(&v64, &qword_2809BFB10, &qword_2752BE310);
      }

      v39 = v48;
      goto LABEL_10;
    }

    sub_2752A7E00(&v61, &v64);
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v24);
    sub_2752BD138();
    sub_2752B46E0(v56, &qword_2809BFB20, &qword_2752BE430);
    sub_2752BD188();
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      v39 = v44;
      (*(v58 + 8))(v57, v59);
      sub_2752B46E0(&v61, &qword_2809BFB10, &qword_2752BE310);
      swift_unknownObjectRetain();
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
LABEL_11:
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

      v52 = *(v40 + 8);
      v53 = OUTLINED_FUNCTION_76();
      v54(v53);
      OUTLINED_FUNCTION_45();
      return;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD00000000000001BLL, 0x80000002752BF3C0);
    OUTLINED_FUNCTION_35();
    sub_2752BD358();
    sub_2752BD9B8();
    (*(v27 + 8))(v32, v24);
    MEMORY[0x277C72FC0](0xD000000000000018, 0x80000002752BF3E0);
    sub_2752BDA68();
    MEMORY[0x277C72FC0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_24();
  }

  OUTLINED_FUNCTION_20();
  __break(1u);
}

void sub_2752AAC84()
{
  OUTLINED_FUNCTION_46();
  v78 = v0;
  v2 = v1;
  v3 = sub_2752BD478();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &i - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC08, &qword_2752BE5F8);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  v20 = &i - v19;
  v21 = sub_2752BD528();
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v79 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  v76 = v26;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_53();
  v77 = v28;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_64();
  v80 = v30;
  sub_2752B13F8(v2, v82);
  if (!v83)
  {
    sub_2752B46E0(v82, &qword_2809BFB10, &qword_2752BE310);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v21);
    goto LABEL_18;
  }

  v31 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v32 = *(v31 + 8);
  sub_2752BD568();
  sub_2752BD468();
  (*(v6 + 8))(v14, v3);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  OUTLINED_FUNCTION_44(v20, 1, v21);
  if (v33)
  {
LABEL_18:
    sub_2752B46E0(v20, &qword_2809BFC08, &qword_2752BE5F8);
    OUTLINED_FUNCTION_24();
    i = 274;
    goto LABEL_19;
  }

  (*(v79 + 32))(v80, v20, v21);
  swift_getKeyPath();
  v34 = *(v2 + 16);
  if (v34)
  {
    v74 = v21;
    v81 = MEMORY[0x277D84F90];
    v75 = v3;
    sub_2752B9078(0, v34, 0);
    v35 = v75;
    v36 = v81;
    v37 = v2 + 32;
    do
    {
      sub_2752B4450(v37, v82);
      swift_getAtKeyPath();
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      v81 = v36;
      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2752B9078(v38 > 1, v39 + 1, 1);
        v35 = v75;
        v36 = v81;
      }

      *(v36 + 16) = v39 + 1;
      (*(v6 + 32))(v36 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39, v11, v35);
      v37 += 40;
      --v34;
    }

    while (v34);

    v21 = v74;
  }

  else
  {
  }

  v40 = v79;
  (*(v79 + 16))(v77, v80, v21);
  v41 = v76;
  sub_2752BD508();
  OUTLINED_FUNCTION_31();
  sub_2752B26B4(v42, v43);
  v44 = OUTLINED_FUNCTION_7_0();
  v14 = *(v40 + 8);
  (v14)(v41, v21);
  if ((v44 & 1) == 0)
  {
    sub_2752BD518();
    OUTLINED_FUNCTION_7_0();
    v45 = OUTLINED_FUNCTION_10_0();
    (v14)(v45);
    sub_2752BD4E8();
    OUTLINED_FUNCTION_7_0();
    v46 = OUTLINED_FUNCTION_10_0();
    (v14)(v46);
    sub_2752BD4A8();
    OUTLINED_FUNCTION_7_0();
    v52 = OUTLINED_FUNCTION_10_0();
    (v14)(v52);
    if (v44)
    {
      v53 = OUTLINED_FUNCTION_51();
      (v14)(v53);
      v54 = OUTLINED_FUNCTION_42();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
      OUTLINED_FUNCTION_63(v56);
      v57 = OUTLINED_FUNCTION_2_0(&qword_2809BFC80);
      OUTLINED_FUNCTION_70(v57);
      OUTLINED_FUNCTION_47();
      sub_2752BD258();
      OUTLINED_FUNCTION_30();
      sub_2752B26B4(v58, v59);
      OUTLINED_FUNCTION_54();
      goto LABEL_13;
    }

    sub_2752BD4F8();
    OUTLINED_FUNCTION_7_0();
    v60 = OUTLINED_FUNCTION_10_0();
    (v14)(v60);
    sub_2752BD488();
    OUTLINED_FUNCTION_7_0();
    v61 = OUTLINED_FUNCTION_10_0();
    (v14)(v61);
    sub_2752BD498();
    OUTLINED_FUNCTION_7_0();
    v62 = OUTLINED_FUNCTION_10_0();
    (v14)(v62);
    sub_2752BD4D8();
    OUTLINED_FUNCTION_7_0();
    v63 = OUTLINED_FUNCTION_10_0();
    (v14)(v63);
    sub_2752BD4B8();
    OUTLINED_FUNCTION_7_0();
    v64 = OUTLINED_FUNCTION_10_0();
    (v14)(v64);
    sub_2752BD4C8();
    OUTLINED_FUNCTION_7_0();
    v65 = OUTLINED_FUNCTION_10_0();
    (v14)(v65);
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD00000000000003CLL, 0x80000002752BF600);
    OUTLINED_FUNCTION_31();
    sub_2752B26B4(v70, v71);
    v72 = sub_2752BDA48();
    MEMORY[0x277C72FC0](v72);

    OUTLINED_FUNCTION_24();
    for (i = 309; ; i = 292)
    {
LABEL_19:
      OUTLINED_FUNCTION_20();
      __break(1u);
      v69 = OUTLINED_FUNCTION_51();
      (v14)(v69);
      OUTLINED_FUNCTION_24();
    }
  }

  v47 = OUTLINED_FUNCTION_51();
  (v14)(v47);
  v48 = OUTLINED_FUNCTION_42();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  OUTLINED_FUNCTION_63(v50);
  v51 = OUTLINED_FUNCTION_2_0(&qword_2811ACF20);
  OUTLINED_FUNCTION_70(v51);
  OUTLINED_FUNCTION_47();
  sub_2752BD648();
  sub_2752BD558();
LABEL_13:
  swift_getKeyPath();
  sub_2752BD548();

  sub_2752BD538();
  __swift_project_boxed_opaque_existential_1(v82, v83);
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0();
  (v14)(v80, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  OUTLINED_FUNCTION_45();
}

void sub_2752AB5B0()
{
  OUTLINED_FUNCTION_46();
  v120 = v0;
  v121 = v3;
  v5 = v4;
  v6 = sub_2752BD5F8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v117 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16(v12 - v11);
  v122 = sub_2752BD478();
  v13 = OUTLINED_FUNCTION_0_0(v122);
  v119 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF8, &qword_2752BE5E8);
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_67();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB68, &qword_2752BE480);
  v25 = OUTLINED_FUNCTION_18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39();
  v29 = sub_2752BD668();
  v30 = OUTLINED_FUNCTION_0_0(v29);
  v118 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v34);
  v36 = v115 - v35;
  v126[0] = v5;
  v37 = OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  OUTLINED_FUNCTION_26();
  v42 = sub_2752B4630(v39, v40, v41);
  if ((sub_2752BD7E8() & 1) == 0)
  {
LABEL_7:
    v126[0] = v5;
    v52 = v5;
    if ((sub_2752BD7E8() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_2752B13F8(v5, v123);
    if (v123[3])
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCB8, &qword_2752BE788);
      OUTLINED_FUNCTION_8_0();
      if (swift_dynamicCast())
      {
        if (v125)
        {
          v54 = OUTLINED_FUNCTION_40();
          sub_2752A7E00(v54, v55);
          v56 = OUTLINED_FUNCTION_57();
          __swift_project_boxed_opaque_existential_1(v56, v57);
          sub_2752BD348();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
          v58 = v115[1];
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_55();
            __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
            OUTLINED_FUNCTION_79();
            v64 = *(v63 + 32);
            OUTLINED_FUNCTION_69();
            v65();
            static MPCPlaybackIntent.radioPlaybackIntent(for:)();
            v66 = *(v53 + 8);
            v67 = OUTLINED_FUNCTION_73();
            v68(v67);
            __swift_destroy_boxed_opaque_existential_1Tm(v126);
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v112, v113, v114, v29);
          sub_2752B46E0(v58, &qword_2809BFB68, &qword_2752BE480);
          __swift_destroy_boxed_opaque_existential_1Tm(v126);
LABEL_16:
          v118 = v6;
          v120 = [objc_allocWithZone(MEMORY[0x277D278A8]) init];
          v69 = *(v5 + 16);
          if (v69)
          {
            v70 = v52 + 32;
            v71 = (v119 + 8);
            v72 = MEMORY[0x277D84F90];
            do
            {
              sub_2752B4450(v70, v126);
              v73 = v128;
              v74 = OUTLINED_FUNCTION_77();
              __swift_project_boxed_opaque_existential_1(v74, v75);
              v76 = *(v73 + 8);
              sub_2752BD568();
              sub_2752BD438();
              (*v71)(v19, v122);
              v77 = sub_2752BD5C8();
              OUTLINED_FUNCTION_44(v2, 1, v77);
              if (v47)
              {
                sub_2752B46E0(v2, &qword_2809BFBF8, &qword_2752BE5E8);
                __swift_destroy_boxed_opaque_existential_1Tm(v126);
              }

              else
              {
                v78 = sub_2752BD5B8();
                v80 = v79;
                OUTLINED_FUNCTION_17(v77);
                v82 = *(v81 + 8);
                v83 = OUTLINED_FUNCTION_50();
                v84(v83);
                __swift_destroy_boxed_opaque_existential_1Tm(v126);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v88 = *(v72 + 2);
                  OUTLINED_FUNCTION_55();
                  v72 = sub_2752BC74C(v89, v90, v91, v92);
                }

                v86 = *(v72 + 2);
                if (v86 >= *(v72 + 3) >> 1)
                {
                  OUTLINED_FUNCTION_55();
                  v72 = sub_2752BC74C(v93, v94, v95, v96);
                }

                *(v72 + 2) = v86 + 1;
                v87 = &v72[16 * v86];
                *(v87 + 4) = v78;
                *(v87 + 5) = v80;
              }

              v70 += 40;
              --v69;
            }

            while (v69);
          }

          else
          {
            v72 = MEMORY[0x277D84F90];
          }

          v97 = v120;
          sub_2752B4674(v72, v120);
          v98 = [objc_allocWithZone(MEMORY[0x277D278A0]) init];
          [v98 setRequest_];
          sub_2752B43F0(v121, v126, &qword_2809BFB10, &qword_2752BE310);
          if (v127)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB88, &qword_2752BE490);
            OUTLINED_FUNCTION_40();
            OUTLINED_FUNCTION_65();
            if (swift_dynamicCast())
            {
              if (v125)
              {
                v99 = OUTLINED_FUNCTION_40();
                sub_2752A7E00(v99, v100);
                v101 = v127;
                v102 = v128;
                v103 = OUTLINED_FUNCTION_77();
                __swift_project_boxed_opaque_existential_1(v103, v104);
                v105 = v117;
                v106 = v116;
                v107 = v118;
                (*(v117 + 104))(v116, *MEMORY[0x277CD8170], v118);
                v108 = sub_2752B7C70(v106, v101, v102);
                (*(v105 + 8))(v106, v107);
                v109 = [v108 _underlyingModelObject];
                v110 = [v109 identifiers];
                [v98 setStartItemIdentifiers_];

                __swift_destroy_boxed_opaque_existential_1Tm(v126);
LABEL_36:
                v111 = [objc_allocWithZone(MEMORY[0x277D278B0]) init];
                [v111 setTracklistToken_];
                [v111 setTracklistSource_];

                goto LABEL_37;
              }
            }

            else
            {
              OUTLINED_FUNCTION_12_0();
            }
          }

          else
          {
            sub_2752B46E0(v126, &qword_2809BFB10, &qword_2752BE310);
            OUTLINED_FUNCTION_14();
          }

          sub_2752B46E0(v124, &qword_2809BFB90, &qword_2752BE498);
          goto LABEL_36;
        }
      }

      else
      {
        OUTLINED_FUNCTION_12_0();
      }
    }

    else
    {
      sub_2752B46E0(v123, &qword_2809BFB10, &qword_2752BE310);
      OUTLINED_FUNCTION_14();
    }

    sub_2752B46E0(v124, &qword_2809BFCB0, &qword_2752BE780);
    goto LABEL_16;
  }

  sub_2752B13F8(v5, v126);
  if (!v127)
  {
    sub_2752B46E0(v126, &qword_2809BFB10, &qword_2752BE310);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v29);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  OUTLINED_FUNCTION_66();
  swift_dynamicCast();
  OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  OUTLINED_FUNCTION_44(v1, 1, v29);
  if (v47)
  {
LABEL_6:
    sub_2752B46E0(v1, &qword_2809BFB68, &qword_2752BE480);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79();
  (*(v48 + 32))(v36, v1, v29);
  static MPCPlaybackIntent.radioPlaybackIntent(for:)();
  (*(v42 + 8))(v36, v29);
LABEL_37:
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_45();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void MPCPlaybackIntent.init<A, B>(for:startingAt:)()
{
  OUTLINED_FUNCTION_85();
  v44 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_2752BD8C8();
  OUTLINED_FUNCTION_0_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_23();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v43 - v21;
  v48 = v9;
  v49 = v7;
  v50 = v5;
  v51 = v3;
  v43 = v3;
  v23 = v20;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  v45 = v9;
  v53 = v13;
  v26 = sub_2752AC17C(sub_2752B213C, v47, v9, v24, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v25);
  v27 = *(v16 + 16);
  v46 = v11;
  v27(v22, v11, v23);
  OUTLINED_FUNCTION_44(v22, 1, v7);
  if (v28)
  {
    v29 = *(v16 + 8);
    v30 = OUTLINED_FUNCTION_48();
    v31(v30);
    OUTLINED_FUNCTION_22();
  }

  else
  {
    v52[3] = v7;
    v52[4] = v43;
    __swift_allocate_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_17(v7);
    (*(v32 + 32))();
  }

  sub_2752AC7E8(v26, v52, v33, v34, v35, v36, v37, v38, v43, v44, v45, v46, v47[0], v47[1], v48, v49, v50, v51, v52[0], v52[1]);
  if (v1)
  {

    (*(v16 + 8))(v46, v23);
    OUTLINED_FUNCTION_17(v45);
    (*(v40 + 8))(v13);
    sub_2752B46E0(v52, &qword_2809BFB10, &qword_2752BE310);
  }

  else
  {
    v41 = v39;

    sub_2752B46E0(v52, &qword_2809BFB10, &qword_2752BE310);
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

    (*(v16 + 8))(v46, v23);
    OUTLINED_FUNCTION_17(v45);
    (*(v42 + 8))(v53);
  }

  OUTLINED_FUNCTION_84();
}

uint64_t sub_2752AC17C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v17;
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v58 = &v45 - v21;
  v22 = sub_2752BD8C8();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v45 - v28;
  v30 = *(*(a4 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v59 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v56 = *(a3 - 8);
  v34 = *(v56 + 64);
  MEMORY[0x28223BE20](v33);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x28223BE20](v65);
  v38 = &v45 - v37;
  v39 = sub_2752BD7D8();
  v66 = sub_2752BD988();
  v61 = sub_2752BD998();
  sub_2752BD968();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_2752BD7C8();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2752BD8E8();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v29, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v29, AssociatedTypeWitness);
      sub_2752BD978();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_2752BD8E8();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v26, v47);
      return v66;
    }

    (*v42)(v44, v26, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_2752BD978();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

void sub_2752AC7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF8, &qword_2752BE5E8);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v28);
  v82 = sub_2752BD478();
  v29 = OUTLINED_FUNCTION_0_0(v82);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v35 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_49();
  v85 = sub_2752BD1C8();
  v40 = OUTLINED_FUNCTION_0_0(v85);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_0();
  v86 = v45;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_25(v47);
  v48 = sub_2752BD1B8();
  v49 = sub_2752B1034(v48);
  a10 = v49;
  v50 = *(v23 + 16);
  v84 = *MEMORY[0x277D2A4D8];
  v51 = MEMORY[0x277D2A4D0];
  if (v50)
  {
    v52 = v23 + 32;
    v53 = v42 + 104;
    v54 = (v42 + 8);
    v80 = (v31 + 8);
    v79 = *MEMORY[0x277D2A4D0];
    v55 = v85;
    while (1)
    {
      v87 = v50;
      sub_2752B4450(v52, v90);
      v56 = OUTLINED_FUNCTION_77();
      __swift_project_boxed_opaque_existential_1(v56, v57);
      sub_2752BD358();
      v58 = *v53;
      (*v53)(v86, v84, v55);
      sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
      v59 = sub_2752BD6C8();
      v60 = *v54;
      v61 = OUTLINED_FUNCTION_75();
      v60(v61);
      if ((v59 & 1) == 0)
      {
        goto LABEL_6;
      }

      sub_2752B4450(v90, &v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
      OUTLINED_FUNCTION_65();
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_7:
      v64 = v90[4];
      v65 = OUTLINED_FUNCTION_77();
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v67 = *(v64 + 8);
      sub_2752BD568();
      sub_2752BD438();
      (*v80)(v81, v82);
      v68 = sub_2752BD5C8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v68);
      sub_2752B46E0(v83, &qword_2809BFBF8, &qword_2752BE5E8);
      v55 = v85;
      if (EnumTagSinglePayload == 1)
      {
        v58(v86, v79, v85);
        OUTLINED_FUNCTION_79();
        sub_2752B2A68(v86, v70);
        (v60)(v86, v85);
        sub_2752B46E0(v83, &qword_2809BFB20, &qword_2752BE430);
      }

      v71 = OUTLINED_FUNCTION_75();
      v54 = (v42 + 8);
      v60(v71);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      v52 += 40;
      v50 = v87 - 1;
      v53 = v42 + 104;
      if (v87 == 1)
      {
        v72 = v53 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v73 = a10;
        v74 = v42;
        v51 = MEMORY[0x277D2A4D0];
        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    v55 = v85;
LABEL_6:
    v58(v86, v84, v55);
    OUTLINED_FUNCTION_79();
    sub_2752B2A68(v86, v62);
    v63 = OUTLINED_FUNCTION_75();
    v60(v63);
    sub_2752B46E0(v53, &qword_2809BFB20, &qword_2752BE430);
    goto LABEL_7;
  }

  v73 = v49;
  v58 = *(v42 + 104);
  v72 = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v74 = v42;
LABEL_12:
  v58(v86, v84, v85);
  v75 = sub_2752B11F4(v86, v73);
  v76 = *(v74 + 8);
  v76(v86, v85);
  if (v75)
  {

    OUTLINED_FUNCTION_72(&a9);
    sub_2752AAC84();
    if (v77)
    {
      v72 = v77;
LABEL_18:
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

      goto LABEL_19;
    }

LABEL_17:
    sub_2752AB5B0();
    OUTLINED_FUNCTION_71();
    goto LABEL_18;
  }

  v58(v86, *v51, v85);
  v72 = sub_2752B11F4(v86, v73);

  v76(v86, v85);
  if (v72)
  {
    goto LABEL_17;
  }

  sub_2752B2660();
  swift_allocError();
  *v78 = 0;
  swift_willThrow();
LABEL_19:
  OUTLINED_FUNCTION_84();
}

void MPCPlaybackIntent.init<A, B>(_:startingAt:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v29[2] = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_2752BD8C8();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v34 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v18);
  v20 = v29 - v19;
  OUTLINED_FUNCTION_4_0();
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  v31 = v10;
  v32 = v26;
  (*(v26 + 16))(v25 - v24, v10, v6);
  v33 = v14;
  v27 = *(v14 + 16);
  v30 = v8;
  v27(v20, v8, v11);
  OUTLINED_FUNCTION_69();
  v29[0] = v1;
  v29[1] = v3;
  MPCPlaybackIntent.init<A, B>(for:startingAt:)();
  v28 = v31;
  (*(v33 + 8))(v30, v11);
  (*(v32 + 8))(v28, v6);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_45();
}

uint64_t sub_2752AD1E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  OUTLINED_FUNCTION_17(a1);
  return (*(v4 + 16))();
}

void MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2752BD1A8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_60();
  sub_2752BD138();
  sub_2752BD188();
  objc_opt_self();
  OUTLINED_FUNCTION_43();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
    swift_unknownObjectRelease();
    sub_2752B46E0(v3, &qword_2809BFB20, &qword_2752BE430);
    sub_2752B46E0(v5, &qword_2809BFB10, &qword_2752BE310);
    OUTLINED_FUNCTION_17(v1);
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_62();
    v19(v18);
    (*(v9 + 8))(v14, v6);
    OUTLINED_FUNCTION_45();
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_13();
    sub_2752BDA08();
    __break(1u);
  }
}

void MPCPlaybackIntent.init(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = sub_2752BD118();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39();
  v8 = *(v4 + 16);
  v9 = OUTLINED_FUNCTION_73();
  v8(v9);
  MPCPlaybackIntent.init(for:)(v0);
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_62();
  v12(v11);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_45();
}

void sub_2752AD898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v197 = v20;
  v198 = v26;
  v28 = v27;
  v29 = sub_2752BD118();
  v30 = OUTLINED_FUNCTION_0_0(v29);
  v201 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  v199 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v40);
  v41 = sub_2752BD1A8();
  v42 = OUTLINED_FUNCTION_0_0(v41);
  v187 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v47 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB60, &qword_2752BE478);
  OUTLINED_FUNCTION_18(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v52);
  v196 = sub_2752BD658();
  v53 = OUTLINED_FUNCTION_0_0(v196);
  v188 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_25(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v60 = OUTLINED_FUNCTION_18(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v66);
  v68 = &v182 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB68, &qword_2752BE480);
  OUTLINED_FUNCTION_18(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_67();
  v200 = sub_2752BD668();
  v73 = OUTLINED_FUNCTION_0_0(v200);
  v190 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v78 - v77);
  v79 = OUTLINED_FUNCTION_42();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
  OUTLINED_FUNCTION_26();
  sub_2752B4630(v82, v83, v84);
  OUTLINED_FUNCTION_35();
  if (sub_2752BD7E8())
  {
    v191 = v41;
    v182 = v81;
    OUTLINED_FUNCTION_35();
    sub_2752BD7F8();
    OUTLINED_FUNCTION_36(v68);
    if (v90)
    {
      sub_2752B46E0(v68, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v200);
    }

    else
    {
      sub_2752BD108();
      (v201[1])(v68, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v88 = v200;
      v89 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v22, v89 ^ 1u, 1, v88);
      OUTLINED_FUNCTION_44(v22, 1, v88);
      if (!v90)
      {

        v115 = v190;
        v116 = v189;
        (*(v190 + 32))(v189, v22, v88);
        v117 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v118 = static MPCPlaybackIntent.radioPlaybackIntent(for:)();
        [v117 initWithPlaybackIntent_];

        sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
        (*(v115 + 8))(v116, v88);
LABEL_49:
        OUTLINED_FUNCTION_84();
        return;
      }
    }

    sub_2752B46E0(v22, &qword_2809BFB68, &qword_2752BE480);
    v41 = v191;
  }

  OUTLINED_FUNCTION_35();
  if (sub_2752BD7E8())
  {
    v91 = v194;
    OUTLINED_FUNCTION_35();
    sub_2752BD7F8();
    OUTLINED_FUNCTION_36(v91);
    if (v90)
    {
      sub_2752B46E0(v91, &qword_2809BFB50, &qword_2752BE468);
      v98 = v195;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v196);
    }

    else
    {
      sub_2752BD108();
      v95 = v201[1];
      v96 = OUTLINED_FUNCTION_50();
      v97(v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v98 = v195;
      v68 = v196;
      v99 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v98, v99 ^ 1u, 1, v68);
      v100 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_44(v100, v101, v68);
      if (!v102)
      {

        v29 = v188;
        v119 = v192;
        (*(v188 + 32))(v192, v98, v68);
        v120 = sub_2752AFB28(v119);
        if (v120)
        {
          v121 = v120;
          [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

          sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
          (*(v29 + 8))(v119, v68);
        }

        else
        {
          if (qword_2809BFAC0 != -1)
          {
LABEL_61:
            OUTLINED_FUNCTION_1_0();
            swift_once();
          }

          v155 = sub_2752BD338();
          __swift_project_value_buffer(v155, qword_2809BFD60);
          v156 = *(v29 + 16);
          v157 = v183;
          v158 = OUTLINED_FUNCTION_83();
          v159(v158);
          v160 = sub_2752BD318();
          v161 = sub_2752BD888();
          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            OUTLINED_FUNCTION_68();
            v201 = swift_slowAlloc();
            v204[0] = v201;
            *v162 = 136446210;
            OUTLINED_FUNCTION_32();
            sub_2752B26B4(v163, v164);
            v165 = sub_2752BDA48();
            v167 = v166;
            OUTLINED_FUNCTION_58();
            (v28)(v157, v196);
            v168 = sub_2752B2160(v165, v167, v204);
            v169 = v198;
            v68 = v196;

            *(v162 + 4) = v168;
            _os_log_impl(&dword_2752A6000, v160, v161, "Unable to create artist station playback intent from artist: %{public}s.", v162, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v201);
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
          }

          else
          {

            OUTLINED_FUNCTION_58();
            (v28)(v157, v68);
            v169 = v198;
          }

          sub_2752B2660();
          swift_allocError();
          *v181 = 2;
          swift_willThrow();
          sub_2752B46E0(v169, &qword_2809BFB50, &qword_2752BE468);
          (v28)(v192, v68);
        }

        goto LABEL_49;
      }
    }

    sub_2752B46E0(v98, &qword_2809BFB60, &qword_2752BE478);
  }

  OUTLINED_FUNCTION_35();
  v103 = sub_2752BD7E8();
  v104 = v198;
  if ((v103 & 1) == 0)
  {
LABEL_28:
    v122 = 0;
    v123 = *(v28 + 16);
    v200 = v201 + 2;
    v124 = MEMORY[0x277D84F90];
    v125 = v201 + 1;
    v126 = v199;
    while (v123 != v122)
    {
      if (v122 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      (v201[2])(v126, v28 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + v201[9] * v122, v29);
      v127 = v25;
      sub_2752B02BC(v126, &v202);
      if (v25)
      {
        sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
        v143 = *v125;
        v144 = OUTLINED_FUNCTION_50();
        v145(v144);

        goto LABEL_49;
      }

      v128 = *v125;
      v129 = OUTLINED_FUNCTION_50();
      v130(v129);
      if (v203)
      {
        v131 = OUTLINED_FUNCTION_40();
        sub_2752A7E00(v131, v132);
        v133 = OUTLINED_FUNCTION_78();
        sub_2752A7E00(v133, v134);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_2752BC854(0, v124[2] + 1, 1, v124);
        }

        v136 = v124[2];
        v135 = v124[3];
        v68 = (v136 + 1);
        if (v136 >= v135 >> 1)
        {
          v124 = sub_2752BC854((v135 > 1), v136 + 1, 1, v124);
        }

        v124[2] = v68;
        sub_2752A7E00(&v202, &v124[5 * v136 + 4]);
        v25 = v127;
        v126 = v199;
      }

      else
      {
        sub_2752B46E0(&v202, &qword_2809BFB10, &qword_2752BE310);
      }

      ++v122;
    }

    v137 = v25;

    v138 = v198;
    OUTLINED_FUNCTION_72(&a14);
    sub_2752B43F0(v139, v140, v141, v142);
    OUTLINED_FUNCTION_36(v122);
    if (v90)
    {
      sub_2752B46E0(v122, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_56();
    }

    else
    {
      sub_2752BD108();
      (*v125)(v122, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_65();
      v146 = swift_dynamicCast();
      if ((v146 & 1) == 0)
      {
        OUTLINED_FUNCTION_22();
      }
    }

    sub_2752AC7E8(v124, v204, v147, v148, v149, v150, v151, v152, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
    if (v137)
    {
      sub_2752B46E0(v138, &qword_2809BFB50, &qword_2752BE468);
    }

    else
    {
      v154 = v153;

      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

      sub_2752B46E0(v138, &qword_2809BFB50, &qword_2752BE468);
    }

    sub_2752B46E0(v204, &qword_2809BFB10, &qword_2752BE310);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_35();
  v106 = v105;
  sub_2752BD7F8();
  OUTLINED_FUNCTION_36(v106);
  if (v90)
  {
    sub_2752B46E0(v106, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
    goto LABEL_27;
  }

  v191 = v41;
  sub_2752BD108();
  v107 = v201[1];
  v107(v106, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
  OUTLINED_FUNCTION_8_0();
  v108 = swift_dynamicCast();
  if ((v108 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_27;
  }

  if (!v203)
  {
LABEL_27:
    sub_2752B46E0(&v202, &qword_2809BFB38, &unk_2752BE450);
    goto LABEL_28;
  }

  v109 = OUTLINED_FUNCTION_40();
  sub_2752A7E00(v109, v110);
  OUTLINED_FUNCTION_72(&v205);
  sub_2752B43F0(v111, v112, v113, v114);
  OUTLINED_FUNCTION_36(v106);
  if (v90)
  {
    sub_2752B46E0(v106, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    sub_2752BD108();
    v107(v106, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    OUTLINED_FUNCTION_8_0();
    v170 = swift_dynamicCast();
    if ((v170 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_0();
    }
  }

  v171 = v186;
  v172 = OUTLINED_FUNCTION_57();
  __swift_project_boxed_opaque_existential_1(v172, v173);
  sub_2752BD1C8();
  v174 = v185;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
  OUTLINED_FUNCTION_60();
  sub_2752BD138();
  sub_2752B46E0(v174, &qword_2809BFB20, &qword_2752BE430);
  sub_2752BD188();
  objc_opt_self();
  OUTLINED_FUNCTION_43();
  v179 = swift_dynamicCastObjCClass();
  if (v179)
  {
    v180 = v179;

    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
    OUTLINED_FUNCTION_71();
    swift_unknownObjectRelease();
    sub_2752B46E0(v104, &qword_2809BFB50, &qword_2752BE468);
    (*(v187 + 8))(v171, v191);
    sub_2752B46E0(&v202, &qword_2809BFB10, &qword_2752BE310);
    __swift_destroy_boxed_opaque_existential_1Tm(v204);
    goto LABEL_49;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13();
  sub_2752BDA08();
  __break(1u);
}

void MPCPlaybackIntent.init<A>(for:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  a19 = v24;
  a20 = v25;
  v194 = v20;
  v195 = v21;
  v27 = v26;
  v29 = v28;
  v198 = v30;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v37);
  v187 = sub_2752BD1A8();
  v38 = OUTLINED_FUNCTION_0_0(v187);
  v186 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v43 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB60, &qword_2752BE478);
  OUTLINED_FUNCTION_18(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_49();
  v192 = v48;
  v193 = sub_2752BD658();
  v49 = OUTLINED_FUNCTION_0_0(v193);
  v188 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_25(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v56 = OUTLINED_FUNCTION_18(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3_0();
  v191 = v59;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v179 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v179 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = &v179 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB68, &qword_2752BE480);
  OUTLINED_FUNCTION_18(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_59();
  v74 = sub_2752BD668();
  v75 = OUTLINED_FUNCTION_0_0(v74);
  v189 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_52();
  if (sub_2752BD7E8())
  {
    v180 = v29;
    OUTLINED_FUNCTION_52();
    v182 = v32;
    sub_2752BD7F8();
    v79 = sub_2752BD118();
    OUTLINED_FUNCTION_44(v69, 1, v79);
    if (v85)
    {
      sub_2752B46E0(v69, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v74);
    }

    else
    {
      sub_2752BD108();
      OUTLINED_FUNCTION_15();
      (*(v83 + 8))(v69, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v84 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v23, v84 ^ 1u, 1, v74);
      OUTLINED_FUNCTION_44(v23, 1, v74);
      if (!v85)
      {
        v110 = v189;
        (*(v189 + 32))(v22, v23, v74);
        v111 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v112 = static MPCPlaybackIntent.radioPlaybackIntent(for:)();
        [v111 initWithPlaybackIntent_];

        sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
        OUTLINED_FUNCTION_17(v180);
        (*(v113 + 8))(v182);
        (*(v110 + 8))(v22, v74);
LABEL_44:
        OUTLINED_FUNCTION_84();
        return;
      }
    }

    sub_2752B46E0(v23, &qword_2809BFB68, &qword_2752BE480);
    v29 = v180;
    v32 = v182;
  }

  OUTLINED_FUNCTION_52();
  if (sub_2752BD7E8())
  {
    OUTLINED_FUNCTION_52();
    sub_2752BD7F8();
    v86 = sub_2752BD118();
    OUTLINED_FUNCTION_44(v67, 1, v86);
    if (v85)
    {
      sub_2752B46E0(v67, &qword_2809BFB50, &qword_2752BE468);
      v92 = v192;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    }

    else
    {
      sub_2752BD108();
      OUTLINED_FUNCTION_17(v86);
      (*(v91 + 8))(v67, v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v92 = v192;
      v93 = v193;
      v94 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v92, v94 ^ 1u, 1, v93);
      OUTLINED_FUNCTION_44(v92, 1, v93);
      if (!v95)
      {
        v114 = v188;
        v115 = *(v188 + 32);
        v116 = v190;
        v117 = OUTLINED_FUNCTION_62();
        v118(v117);
        if (sub_2752AFB28(v116))
        {
          OUTLINED_FUNCTION_71();
          [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

          sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
          OUTLINED_FUNCTION_15();
          v120 = *(v119 + 8);
          v121 = OUTLINED_FUNCTION_48();
          v122(v121);
          (*(v114 + 8))(v116, v93);
        }

        else
        {
          if (qword_2809BFAC0 != -1)
          {
            OUTLINED_FUNCTION_1_0();
            swift_once();
          }

          v148 = sub_2752BD338();
          __swift_project_value_buffer(v148, qword_2809BFD60);
          v149 = v181;
          (*(v114 + 16))(v181, v116, v93);
          v150 = sub_2752BD318();
          v151 = sub_2752BD888();
          if (os_log_type_enabled(v150, v151))
          {
            v152 = v149;
            v153 = swift_slowAlloc();
            OUTLINED_FUNCTION_68();
            v154 = swift_slowAlloc();
            v182 = v32;
            v155 = v154;
            v197[0] = v154;
            *v153 = 136446210;
            OUTLINED_FUNCTION_32();
            sub_2752B26B4(v156, v157);
            v158 = sub_2752BDA48();
            v160 = v159;
            v161 = v152;
            v27 = *(v114 + 8);
            v27(v161, v193);
            v162 = sub_2752B2160(v158, v160, v197);
            v93 = v193;

            *(v153 + 4) = v162;
            _os_log_impl(&dword_2752A6000, v150, v151, "Unable to create artist station playback intent from artist: %{public}s.", v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v155);
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
          }

          else
          {

            OUTLINED_FUNCTION_58();
            v27(v149, v93);
          }

          sub_2752B2660();
          swift_allocError();
          *v174 = 2;
          swift_willThrow();
          sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
          OUTLINED_FUNCTION_15();
          v176 = *(v175 + 8);
          v177 = OUTLINED_FUNCTION_48();
          v178(v177);
          v27(v190, v93);
        }

        goto LABEL_44;
      }
    }

    sub_2752B46E0(v92, &qword_2809BFB60, &qword_2752BE478);
  }

  OUTLINED_FUNCTION_52();
  if ((sub_2752BD7E8() & 1) == 0)
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    v123 = v195;
    v124 = sub_2752BD808();
    if (v123)
    {
      sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_15();
      v126 = *(v125 + 8);
      v127 = OUTLINED_FUNCTION_48();
      v128(v127);
    }

    else
    {
      v129 = v124;
      v130 = v191;
      sub_2752B43F0(v198, v191, &qword_2809BFB50, &qword_2752BE468);
      v131 = sub_2752BD118();
      v132 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_44(v132, v133, v131);
      if (v85)
      {
        sub_2752B46E0(v130, &qword_2809BFB50, &qword_2752BE468);
        OUTLINED_FUNCTION_56();
      }

      else
      {
        sub_2752BD108();
        OUTLINED_FUNCTION_17(v131);
        (*(v134 + 8))(v130, v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
        OUTLINED_FUNCTION_78();
        v135 = swift_dynamicCast();
        if ((v135 & 1) == 0)
        {
          OUTLINED_FUNCTION_22();
        }
      }

      sub_2752AC7E8(v129, v197, v136, v137, v138, v139, v140, v141, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190);
      v143 = v142;

      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

      sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_15();
      v145 = *(v144 + 8);
      v146 = OUTLINED_FUNCTION_48();
      v147(v146);
      sub_2752B46E0(v197, &qword_2809BFB10, &qword_2752BE310);
    }

    goto LABEL_44;
  }

  v96 = v29;
  OUTLINED_FUNCTION_52();
  sub_2752BD7F8();
  v97 = sub_2752BD118();
  OUTLINED_FUNCTION_44(v64, 1, v97);
  if (v85)
  {
    sub_2752B46E0(v64, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
    goto LABEL_27;
  }

  sub_2752BD108();
  OUTLINED_FUNCTION_17(v97);
  v99 = *(v98 + 8);
  v100 = OUTLINED_FUNCTION_74();
  v99(v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
  OUTLINED_FUNCTION_8_0();
  v101 = swift_dynamicCast();
  if ((v101 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_27;
  }

  if (!v196[3])
  {
LABEL_27:
    sub_2752B46E0(v196, &qword_2809BFB38, &unk_2752BE450);
    goto LABEL_28;
  }

  v102 = OUTLINED_FUNCTION_40();
  sub_2752A7E00(v102, v103);
  OUTLINED_FUNCTION_72(&a11);
  sub_2752B43F0(v104, v105, v106, v107);
  v108 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_44(v108, v109, v97);
  if (v85)
  {
    sub_2752B46E0(v64, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    sub_2752BD108();
    (v99)(v64, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    OUTLINED_FUNCTION_8_0();
    v163 = swift_dynamicCast();
    if ((v163 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_0();
    }
  }

  v164 = v185;
  v165 = OUTLINED_FUNCTION_57();
  __swift_project_boxed_opaque_existential_1(v165, v166);
  sub_2752BD1C8();
  v167 = v184;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
  OUTLINED_FUNCTION_60();
  sub_2752BD138();
  sub_2752B46E0(v167, &qword_2809BFB20, &qword_2752BE430);
  sub_2752BD188();
  objc_opt_self();
  v172 = swift_dynamicCastObjCClass();
  if (v172)
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
    swift_unknownObjectRelease();
    sub_2752B46E0(v198, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_17(v96);
    (*(v173 + 8))(v32, v96);
    (*(v186 + 8))(v164, v187);
    sub_2752B46E0(v196, &qword_2809BFB10, &qword_2752BE310);
    __swift_destroy_boxed_opaque_existential_1Tm(v197);
    goto LABEL_44;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13();
  sub_2752BDA08();
  __break(1u);
}

id static MPCPlaybackIntent.radioPlaybackIntent(for:)()
{
  OUTLINED_FUNCTION_47();
  v1 = sub_2752BD5F8();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  (*(v4 + 104))(v0, *MEMORY[0x277CD8170], v1);
  sub_2752BD668();
  v7 = sub_2752BD2F8();
  (*(v4 + 8))(v0, v1);
  v8 = [swift_getObjCClassFromMetadata() radioPlaybackIntentWithStation_];

  return v8;
}

id sub_2752AFB28(uint64_t a1)
{
  v2 = sub_2752BD5F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2752BD658();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277CD8170], v2);
  v12 = sub_2752BD2F8();
  (*(v3 + 8))(v6, v2);
  v13 = [swift_getObjCClassFromMetadata() radioPlaybackIntentFromArtist_];

  (*(v8 + 8))(v11, v7);
  return v13;
}

void static MPCPlaybackIntent.radioPlaybackIntent<A>(from:)()
{
  OUTLINED_FUNCTION_46();
  v74 = v0;
  v3 = v2;
  v72 = v4;
  v5 = sub_2752BD628();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v69 = v7;
  v70 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v68 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_64();
  v65 = v12;
  v71 = sub_2752BD658();
  v13 = OUTLINED_FUNCTION_0_0(v71);
  v67 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v66 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  v19 = sub_2752BD5F8();
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  v23 = sub_2752BD638();
  v24 = OUTLINED_FUNCTION_0_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v65 - v33;
  OUTLINED_FUNCTION_4_0();
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  v73 = v38;
  (*(v38 + 16))(v1, v72, v3);
  if (swift_dynamicCast())
  {
    (*(v26 + 32))(v31, v34, v23);
    v39 = *MEMORY[0x277CD8170];
    v40 = OUTLINED_FUNCTION_38();
    v41(v40);
    sub_2752BD2F8();
    v42 = OUTLINED_FUNCTION_37();
    v43(v42);
    [swift_getObjCClassFromMetadata() radioPlaybackIntentFromAlbum_];

    (*(v26 + 8))(v31, v23);
LABEL_7:
    (*(v73 + 8))(v1, v3);
    OUTLINED_FUNCTION_45();
    return;
  }

  OUTLINED_FUNCTION_73();
  v44 = v71;
  if (swift_dynamicCast())
  {
    v72 = v3;
    v45 = v66;
    v46 = v67;
    v47 = OUTLINED_FUNCTION_82(v67);
    v48(v47);
    v49 = *MEMORY[0x277CD8170];
    v50 = OUTLINED_FUNCTION_38();
    v51(v50);
    sub_2752BD2F8();
    v52 = OUTLINED_FUNCTION_37();
    v53(v52);
    [swift_getObjCClassFromMetadata() radioPlaybackIntentFromArtist_];

    (*(v46 + 8))(v45, v44);
    v3 = v72;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_73();
  v54 = v70;
  if (swift_dynamicCast())
  {
    v55 = v68;
    v56 = v69;
    v57 = OUTLINED_FUNCTION_82(v69);
    v58(v57);
    v59 = *MEMORY[0x277CD8170];
    v60 = OUTLINED_FUNCTION_38();
    v61(v60);
    sub_2752BD2F8();
    v62 = OUTLINED_FUNCTION_37();
    v63(v62);
    [swift_getObjCClassFromMetadata() radioPlaybackIntentFromSong_];

    (*(v56 + 8))(v55, v54);
    goto LABEL_7;
  }

  v75 = 0;
  v76 = 0xE000000000000000;
  sub_2752BD948();

  v75 = 0xD00000000000001ELL;
  v76 = 0x80000002752BF440;
  v64 = sub_2752BDB08();
  MEMORY[0x277C72FC0](v64);

  MEMORY[0x277C72FC0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_24();
  v65 = 158;
  OUTLINED_FUNCTION_20();
  __break(1u);
}

uint64_t sub_2752B02BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2752BD118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752BD108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  if (swift_dynamicCast())
  {
    return sub_2752A7E00(v20, a2);
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_2752B46E0(v20, &qword_2809BFB10, &qword_2752BE310);
  if (qword_2809BFAC0 != -1)
  {
    swift_once();
  }

  v10 = sub_2752BD338();
  __swift_project_value_buffer(v10, qword_2809BFD60);
  (*(v5 + 16))(v8, a1, v4);
  v11 = sub_2752BD318();
  v12 = sub_2752BD888();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    sub_2752B26B4(&qword_2809BFB48, MEMORY[0x277D2A460]);
    v15 = sub_2752BDA48();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_2752B2160(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2752A6000, v11, v12, "Non playable item %{public}s passed to create a playback intent.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x277C73820](v14, -1, -1);
    MEMORY[0x277C73820](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  sub_2752B2660();
  swift_allocError();
  *v19 = 3;
  return swift_willThrow();
}

void MPCPlaybackIntent.init(container:startingAt:playbackSource:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v6 = sub_2752BD1A8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_59();
  sub_2752BD108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
  if (swift_dynamicCast())
  {
    sub_2752A7E00(v28, v33);
    sub_2752B43F0(v5, v1, &qword_2809BFB50, &qword_2752BE468);
    v19 = sub_2752BD118();
    OUTLINED_FUNCTION_44(v1, 1, v19);
    if (v20)
    {
      sub_2752B46E0(v1, &qword_2809BFB50, &qword_2752BE468);
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
    }

    else
    {
      sub_2752BD108();
      OUTLINED_FUNCTION_17(v19);
      (*(v21 + 8))(v1, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      v22 = swift_dynamicCast();
      if ((v22 & 1) == 0)
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
      }
    }

    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_2752BD138();
    sub_2752BD188();
    objc_opt_self();
    OUTLINED_FUNCTION_43();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
      swift_unknownObjectRelease();
      sub_2752B46E0(v3, &qword_2809BFB20, &qword_2752BE430);
      sub_2752B46E0(v5, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_17(v19);
      (*(v24 + 8))(v0, v19);
      (*(v9 + 8))(v14, v6);
      sub_2752B46E0(&v30, &qword_2809BFB10, &qword_2752BE310);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_45();
      return;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_2752B46E0(v28, &qword_2809BFB38, &unk_2752BE450);
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD00000000000001ELL, 0x80000002752BF460);
    sub_2752BD118();
    OUTLINED_FUNCTION_9_0();
    sub_2752B26B4(v25, v26);
    v27 = sub_2752BDA48();
    MEMORY[0x277C72FC0](v27);

    MEMORY[0x277C72FC0](0xD000000000000014, 0x80000002752BF480);
    OUTLINED_FUNCTION_24();
  }

  OUTLINED_FUNCTION_20();
  __break(1u);
}

uint64_t sub_2752B0A8C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v9 = v5;
  v12 = sub_2752BD5F8();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_4_0();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  (*(v23 + 16))(v22 - v21, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB88, &qword_2752BE490);
  OUTLINED_FUNCTION_65();
  if (swift_dynamicCast())
  {
    sub_2752A7E00(v40, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    (*(v15 + 104))(v6, *MEMORY[0x277CD81B0], v12);
    OUTLINED_FUNCTION_69();
    v27 = sub_2752B7C70(v24, v25, v26);
    v28 = *(v15 + 8);
    v29 = OUTLINED_FUNCTION_83();
    v30(v29);
    v31 = [v27 _underlyingModelObject];
    v32 = [v31 identifiers];

    v33 = [v9 *a4];
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    sub_2752B26F8(0, &qword_2809BFB98, 0x277CCABB0);
    sub_2752B2738();
    OUTLINED_FUNCTION_76();
    v34 = sub_2752BD6A8();

    v35 = v32;
    v36 = sub_2752BD868();
    if ((v34 & 0xC000000000000001) == 0)
    {
LABEL_8:
      swift_isUniquelyReferenced_nonNull_native();
      *&v40[0] = v34;
      sub_2752B404C(v36, v35);

      v39 = sub_2752BD698();

      [v9 *a5];

      return __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    if (v34 < 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = v34 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_2752BD9E8();
    if (!__OFADD__(result, 1))
    {
      v34 = sub_2752B3B7C(v37, result + 1);
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    return sub_2752B46E0(v40, &qword_2809BFB90, &qword_2752BE498);
  }

  return result;
}

id MPCPlaybackIntent.isInGroupSession.getter()
{
  if (![v0 tracklistToken])
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = [v1 request];
  if (v2)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_43();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v2 = [v4 isInGroupSession];

      goto LABEL_6;
    }

    swift_unknownObjectRelease();

    return 0;
  }

LABEL_6:
  swift_unknownObjectRelease();
  return v2;
}

void MPCPlaybackIntent.isInGroupSession.setter(char a1)
{
  if ([v1 tracklistToken])
  {
    objc_opt_self();
    OUTLINED_FUNCTION_43();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v5 = [v3 request]) != 0)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        [v4 setInGroupSession_];
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void (*MPCPlaybackIntent.isInGroupSession.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = MPCPlaybackIntent.isInGroupSession.getter() & 1;
  return sub_2752B100C;
}

uint64_t sub_2752B1034(uint64_t a1)
{
  v2 = sub_2752BD1C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v12 = MEMORY[0x277C730F0](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_2752B27A0(v9, v7);
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

BOOL sub_2752B11F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752BD1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v18 = a1;
  v10 = sub_2752BD6B8();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
    v16 = sub_2752BD6C8();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

double sub_2752B13F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2752B4450(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2752B141C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(v1 + 8);
  return sub_2752BD568();
}

uint64_t sub_2752B1468(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_2752B26B4(a5, a6);
  return sub_2752BD568();
}

uint64_t MusicPlayableRequest.playbackIntent()()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0();
  v1 = v0;
  sub_2752B46E0(v3, &qword_2809BFB10, &qword_2752BE310);
  return v1;
}

void _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  v14 = sub_2752BD5F8();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  sub_2752B43F0(v5, &v47, &qword_2809BFB10, &qword_2752BE310);
  if (v49)
  {
    v20 = OUTLINED_FUNCTION_40();
    sub_2752A7E00(v20, v21);
    sub_2752B4450(v50, &v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB88, &qword_2752BE490);
    if (!swift_dynamicCast())
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      sub_2752B46E0(v44, &qword_2809BFB90, &qword_2752BE498);
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_2752BD948();
      MEMORY[0x277C72FC0](0xD00000000000004FLL, 0x80000002752BF560);
      OUTLINED_FUNCTION_78();
      sub_2752BD9B8();
      MEMORY[0x277C72FC0](46, 0xE100000000000000);
      OUTLINED_FUNCTION_24();
      v43 = 343;
      goto LABEL_21;
    }

    sub_2752A7E00(v44, &v47);
    __swift_project_boxed_opaque_existential_1(&v47, v49);
    v22 = *MEMORY[0x277CD8178];
    v23 = OUTLINED_FUNCTION_38();
    v24(v23);
    OUTLINED_FUNCTION_69();
    v28 = sub_2752B7C70(v25, v26, v27);
    v29 = *(v17 + 8);
    v30 = OUTLINED_FUNCTION_83();
    v31(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  }

  else
  {
    sub_2752B46E0(&v47, &qword_2809BFB10, &qword_2752BE310);
    v28 = 0;
  }

  (*(v7 + 16))(v13, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBC0, &qword_2752BE5B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_18;
  }

  v32 = OUTLINED_FUNCTION_40();
  sub_2752A7E00(v32, v33);
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_2752BD5D8();
  objc_opt_self();
  OUTLINED_FUNCTION_43();
  v34 = swift_dynamicCastObjCClass();
  if (!v34)
  {
    swift_unknownObjectRelease();
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD000000000000013, 0x80000002752BF4E0);
    sub_2752BDA68();
    MEMORY[0x277C72FC0](0xD000000000000051, 0x80000002752BF500);
    OUTLINED_FUNCTION_24();
    v43 = 353;
    goto LABEL_21;
  }

  v35 = v34;
  v36 = [v34 allowedItemIdentifiers];
  if (v36)
  {
    v37 = v36;
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    v38 = sub_2752BD828();

    v39 = sub_2752B1F70(v38);

    if (v39 >= 2)
    {
      swift_unknownObjectRetain();
      v40 = [v35 sectionKind];
      if (!v40)
      {
        [v35 setItemSortDescriptors_];
        swift_unknownObjectRelease();
        [v35 setSortUsingAllowedItemIdentifiers_];
        if (v28)
        {
          goto LABEL_12;
        }

LABEL_15:
        v42 = 0;
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }
  }

  if (!v28)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ([v28 respondsToSelector_])
  {
    v41 = [v28 _underlyingModelObject];
    v42 = [v41 identifiers];

LABEL_16:
    [v35 playbackIntentWithStartItemIdentifiers_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    OUTLINED_FUNCTION_45();
    return;
  }

  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_12_0();
  sub_2752B46E0(&v47, &qword_2809BFBC8, &qword_2752BE5C0);
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_2752BD948();
  sub_2752BDA68();
  MEMORY[0x277C72FC0](0xD000000000000033, 0x80000002752BF4A0);
  OUTLINED_FUNCTION_24();
  v43 = 349;
LABEL_21:
  *&v44[0] = v43;
  OUTLINED_FUNCTION_20();
  __break(1u);
}

void MusicPlayableRequest.playbackIntent(withStartingItem:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v2 = sub_2752BD118();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  sub_2752B43F0(v1, &v50 - v20, &qword_2809BFB50, &qword_2752BE468);
  v22 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_44(v22, v23, v2);
  if (v24)
  {
    sub_2752B46E0(v21, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_56();
  }

  else
  {
    sub_2752BD108();
    (*(v5 + 8))(v21, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    OUTLINED_FUNCTION_65();
    v25 = swift_dynamicCast();
    if ((v25 & 1) == 0)
    {
      OUTLINED_FUNCTION_22();
    }
  }

  sub_2752B43F0(v1, v18, &qword_2809BFB50, &qword_2752BE468);
  OUTLINED_FUNCTION_44(v18, 1, v2);
  if (v24)
  {
    sub_2752B46E0(v18, &qword_2809BFB50, &qword_2752BE468);
  }

  else
  {
    v26 = *(v5 + 32);
    v27 = OUTLINED_FUNCTION_75();
    v28(v27);
    if (v53[3])
    {
      v29 = *(v5 + 8);
      v30 = OUTLINED_FUNCTION_74();
      v31(v30);
    }

    else
    {
      if (qword_2809BFAC0 != -1)
      {
        OUTLINED_FUNCTION_1_0();
        swift_once();
      }

      v32 = sub_2752BD338();
      __swift_project_value_buffer(v32, qword_2809BFD60);
      v33 = *(v5 + 16);
      v34 = OUTLINED_FUNCTION_76();
      v35(v34);
      v36 = sub_2752BD318();
      v37 = sub_2752BD898();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v50 = v38;
        OUTLINED_FUNCTION_68();
        v51 = swift_slowAlloc();
        v52 = v51;
        *v38 = 136446210;
        OUTLINED_FUNCTION_9_0();
        sub_2752B26B4(v39, v40);
        v41 = sub_2752BDA48();
        v43 = v42;
        v44 = *(v5 + 8);
        v44(v10, v2);
        v45 = sub_2752B2160(v41, v43, &v52);

        v46 = v50;
        *(v50 + 1) = v45;
        _os_log_impl(&dword_2752A6000, v36, v37, "Ignoring start item for non-playable item %{public}s for new playback intent.", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        OUTLINED_FUNCTION_27();
        MEMORY[0x277C73820]();
        OUTLINED_FUNCTION_27();
        MEMORY[0x277C73820]();

        v47 = OUTLINED_FUNCTION_74();
        (v44)(v47);
      }

      else
      {

        v48 = *(v5 + 8);
        v48(v10, v2);
        v49 = OUTLINED_FUNCTION_74();
        (v48)(v49);
      }
    }
  }

  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0();
  sub_2752B46E0(v53, &qword_2809BFB10, &qword_2752BE310);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_2752B1F70(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2752BD9E8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t MusicPlaybackError.hashValue.getter()
{
  v1 = *v0;
  sub_2752BDAD8();
  MEMORY[0x277C73360](v1);
  return sub_2752BDAF8();
}

uint64_t sub_2752B2054()
{
  v1 = *v0;
  sub_2752BDAD8();
  MEMORY[0x277C73360](v1);
  return sub_2752BDAF8();
}

uint64_t sub_2752B2098()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2752B213C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_2752AD1E4(v1[3], v1[5], a1);
}

uint64_t sub_2752B2160(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2752B2224(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2752B45D0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2752B2224(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2752B2324(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2752BD958();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2752B2324(uint64_t a1, unint64_t a2)
{
  v4 = sub_2752B2370(a1, a2);
  sub_2752B2488(&unk_2884040A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2752B2370(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2752BD758())
  {
    result = sub_2752B9780(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2752BD938();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2752BD958();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2752B2488(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2752B256C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2752B256C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF0, &qword_2752BE5E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2752B2660()
{
  result = qword_2809BFB78;
  if (!qword_2809BFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFB78);
  }

  return result;
}

uint64_t sub_2752B26B4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_43();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2752B26F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2752B2738()
{
  result = qword_2809BFBA0;
  if (!qword_2809BFBA0)
  {
    sub_2752B26F8(255, &qword_2811ACF18, 0x277CD5DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFBA0);
  }

  return result;
}

BOOL sub_2752B27A0(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_2752BD1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v30 = a2;
  v11 = sub_2752BD6B8();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_2752B38F0(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
    v17 = sub_2752BD6C8();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_2752B2A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_2752BD1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v28 = a1;
  v11 = sub_2752BD6B8();
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
    sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
    v15 = sub_2752BD6C8();
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
    sub_2752B2CDC();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_2752B3580(v13);
  v16 = 0;
  *v18 = v29;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
}

void *sub_2752B2CDC()
{
  v1 = v0;
  v2 = sub_2752BD1C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC00, &qword_2752BE5F0);
  v7 = *v0;
  v8 = sub_2752BD918();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2752B2F10(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2752BD1C8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC00, &qword_2752BE5F0);
  v10 = sub_2752BD928();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
        result = sub_2752BD6B8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2752B3228(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2752BD1C8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC00, &qword_2752BE5F0);
  result = sub_2752BD928();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2752B388C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
    result = sub_2752BD6B8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2752B3580(int64_t a1)
{
  v3 = sub_2752BD1C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_2752BD908();
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
        sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
        v27 = sub_2752BD6B8();
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

uint64_t sub_2752B388C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2752BE420;
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

uint64_t sub_2752B38F0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_2752BD1C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2752B3228(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2752B2F10(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
      v15 = sub_2752BD6B8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
        v17 = sub_2752BD6C8();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_2752B2CDC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_2752BDA78();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2752B3B7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBD8, &qword_2752BE5D0);
    v2 = sub_2752BDA38();
    v18 = v2;
    sub_2752BD9D8();
    while (1)
    {
      v3 = sub_2752BD9F8();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
      swift_dynamicCast();
      sub_2752B26F8(0, &qword_2809BFB98, 0x277CCABB0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2752B3DE8(v4 + 1, 1);
      }

      v2 = v18;
      v5 = *(v18 + 40);
      result = sub_2752BD8A8();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2752B3DA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2752BD8A8();

  return sub_2752B44F8(a1, v5);
}

uint64_t sub_2752B3DE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBD8, &qword_2752BE5D0);
  result = sub_2752BDA28();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_34:
    *v3 = v8;
    return result;
  }

  v34 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_2752B388C(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    v24 = *(v8 + 40);
    result = sub_2752BD8A8();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v8 + 48) + 8 * v28) = v20;
    *(*(v8 + 56) + 8 * v28) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_2752B404C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2752B3DA4(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBD0, &qword_2752BE5C8);
  if ((sub_2752BD9C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_2752B3DA4(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    sub_2752BDA88();
    __break(1u);
    return;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v8);
    *(v14 + 8 * v8) = a1;
  }

  else
  {
    sub_2752B44B4(v8, a2, a1, v13);

    v16 = a2;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2752B4218()
{
  result = qword_2809BFBB8;
  if (!qword_2809BFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFBB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicPlaybackError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MusicPlaybackError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2752B43F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_42();
  v9(v8);
  return a2;
}

uint64_t sub_2752B4450(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2752B44B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_2752B44F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2752BD8B8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2752B45D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2752B4630(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_43();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2752B4674(uint64_t a1, void *a2)
{
  v3 = sub_2752BD818();

  [a2 setStoreIDs_];
}

uint64_t sub_2752B46E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_0(unint64_t *a1)
{

  return sub_2752B4630(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_2752BD6C8();
}

double OUTLINED_FUNCTION_12_0()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

double OUTLINED_FUNCTION_14()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_2752BDA08();
}

double OUTLINED_FUNCTION_22()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_2752BD558();
}

double OUTLINED_FUNCTION_56()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_57()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 96);
  return v0 - 128;
}

void OUTLINED_FUNCTION_61(__n128 a1)
{
  *(v1 - 144) = a1;
  v3 = *(v1 - 272);

  sub_2752AB5B0();
}

uint64_t *OUTLINED_FUNCTION_70(uint64_t a1)
{
  *(v1 - 88) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 120));
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2752B4DE0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2752BD338();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2752BD328();
}

uint64_t type metadata accessor for MusicPlaybackIntentDescriptor()
{
  result = qword_2811ACFC0;
  if (!qword_2811ACFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2752B4F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_2752B7698(a1, &v7 - v4, &qword_2809BFCC0, &qword_2752BE790);
  return MusicPlaybackIntentDescriptor.playbackMetrics.setter(v5);
}

uint64_t MusicPlaybackIntentDescriptor.playbackMetrics.setter(uint64_t a1)
{
  v4 = sub_2752BD718();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  v13 = sub_2752BD1E8();
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  v19 = *(type metadata accessor for MusicPlaybackIntentDescriptor() + 20);
  sub_2752B5208(a1, v1 + v19);
  v20 = *v1;
  if (!__swift_getEnumTagSinglePayload(v1 + v19, 1, v13))
  {
    (*(v16 + 16))(v2, v1 + v19, v13);
    sub_2752BD1D8();
    v21 = v23;
    (*(v16 + 8))(v2, v13);
    if (!v21)
    {
      goto LABEL_3;
    }

    sub_2752BD708();
    sub_2752BD6F8();
    v25 = v24;

    (*(v7 + 8))(v12, v4);
    if (v25 >> 60 != 15)
    {
      OUTLINED_FUNCTION_18_0();
      v21 = sub_2752BD0C8();
      v26 = OUTLINED_FUNCTION_18_0();
      sub_2752B5278(v26, v27);
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_3:
  [v20 setPlayActivityRecommendationData_];

  return sub_2752B46E0(a1, &qword_2809BFCC0, &qword_2752BE790);
}

uint64_t sub_2752B5208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752B5278(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2752B528C(a1, a2);
  }

  return a1;
}

uint64_t sub_2752B528C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void (*MusicPlaybackIntentDescriptor.playbackMetrics.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_2752BD718();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = sub_2752BD1E8();
  v3[4] = v6;
  v7 = *(v6 - 8);
  v3[5] = v7;
  v3[6] = __swift_coroFrameAllocStub(*(v7 + 64));
  *(v3 + 14) = *(type metadata accessor for MusicPlaybackIntentDescriptor() + 20);
  return sub_2752B5400;
}

void sub_2752B5400(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    v4 = v2[3];
    goto LABEL_6;
  }

  v5 = *(v2 + 14);
  v6 = v2[4];
  v7 = *v2;
  v8 = **v2;
  if (!__swift_getEnumTagSinglePayload(*v2 + v5, 1, v6))
  {
    v11 = v2[5];
    v10 = v2[6];
    (v11[2])(v10, v7 + v5, v6);
    sub_2752BD1D8();
    v9 = v12;
    (v11[1])(v10, v6);
    if (!v9)
    {
      goto LABEL_5;
    }

    v14 = v2[2];
    v13 = v2[3];
    v15 = v2[1];
    sub_2752BD708();
    v16 = sub_2752BD6F8();
    v18 = v17;

    v19 = v14[1];
    v20 = OUTLINED_FUNCTION_18_0();
    v21(v20);
    if (v18 >> 60 != 15)
    {
      v9 = sub_2752BD0C8();
      sub_2752B5278(v16, v18);
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:
  v3 = v2[6];
  v4 = v2[3];
  [v8 setPlayActivityRecommendationData_];

LABEL_6:
  free(v3);
  free(v4);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t MusicPlaybackIntentDescriptor.donate()()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2752B5674, 0, 0);
}

uint64_t sub_2752B5674()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = **(v0 + 24);
  [v3 repeatMode];
  sub_2752B5AFC();
  [v3 shuffleMode];
  sub_2752B5D2C();
  LODWORD(v2) = *(type metadata accessor for MusicPlaybackIntentDescriptor() + 24);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_2752B5764;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_2752A8774();
}

uint64_t sub_2752B5764()
{
  OUTLINED_FUNCTION_5();
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2752B5910;
  }

  else
  {
    v3 = sub_2752B5874;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2752B5874()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[5];
  sub_2752B46E0(v0[4], &qword_2809BFAE8, &qword_2752BE2D0);
  sub_2752B46E0(v1, &qword_2809BFAF0, &qword_2752BE2D8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2752B5910()
{
  v20 = v0;
  if (qword_2811ACFD0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[7];
  v2 = sub_2752BD338();
  __swift_project_value_buffer(v2, qword_2811AD270);
  v3 = v1;
  v4 = sub_2752BD318();
  v5 = sub_2752BD888();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB00, &unk_2752BE300);
    v10 = sub_2752BD728();
    v12 = sub_2752B2160(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2752A6000, v4, v5, "Unable to donate playback event due to %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x277C73820](v7, -1, -1);
  }

  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[5];
  swift_willThrow();
  sub_2752B46E0(v14, &qword_2809BFAE8, &qword_2752BE2D0);
  sub_2752B46E0(v15, &qword_2809BFAF0, &qword_2752BE2D8);

  v16 = v0[1];
  v17 = v0[7];

  return v16();
}

uint64_t sub_2752B5AFC()
{
  OUTLINED_FUNCTION_20_0();
  v3 = sub_2752BD288();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v7 = 1;
    v8 = MEMORY[0x277D2A848];
    switch(v1)
    {
      case -1:
        return __swift_storeEnumTagSinglePayload(v0, v7, 1, v3);
      case 0:
        goto LABEL_6;
      case 1:
        v8 = MEMORY[0x277D2A840];
        goto LABEL_6;
      case 2:
        v8 = MEMORY[0x277D2A850];
LABEL_6:
        v9 = OUTLINED_FUNCTION_11_1(v8);
        v10(v9);
        v11 = OUTLINED_FUNCTION_19_0();
        v12(v11);
        v7 = 0;
        break;
      default:
        if (qword_2811ACFD0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v14 = sub_2752BD338();
        __swift_project_value_buffer(v14, qword_2811AD270);
        v15 = sub_2752BD318();
        v16 = sub_2752BD888();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v24 = v18;
          *v17 = 136446210;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCE0, &qword_2752BE800);
          v19 = sub_2752BD728();
          v21 = sub_2752B2160(v19, v20, &v24);

          *(v17 + 4) = v21;
          OUTLINED_FUNCTION_21_0(&dword_2752A6000, v22, v23, "Unhandled value of MPCPlaybackIntentRepeatMode: %{public}s.");
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          MEMORY[0x277C73820](v18, -1, -1);
          OUTLINED_FUNCTION_15_0();
        }

        goto LABEL_2;
    }
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v3);
}

uint64_t sub_2752B5D2C()
{
  OUTLINED_FUNCTION_20_0();
  v3 = sub_2752BD298();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v7 = 1;
    v8 = MEMORY[0x277D2A860];
    switch(v1)
    {
      case -1:
        return __swift_storeEnumTagSinglePayload(v0, v7, 1, v3);
      case 0:
        goto LABEL_6;
      case 1:
        v8 = MEMORY[0x277D2A868];
        goto LABEL_6;
      case 2:
        v8 = MEMORY[0x277D2A858];
LABEL_6:
        v9 = OUTLINED_FUNCTION_11_1(v8);
        v10(v9);
        v11 = OUTLINED_FUNCTION_19_0();
        v12(v11);
        v7 = 0;
        break;
      default:
        if (qword_2811ACFD0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v14 = sub_2752BD338();
        __swift_project_value_buffer(v14, qword_2811AD270);
        v15 = sub_2752BD318();
        v16 = sub_2752BD888();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v24 = v18;
          *v17 = 136446210;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCD8, &qword_2752BE7F8);
          v19 = sub_2752BD728();
          v21 = sub_2752B2160(v19, v20, &v24);

          *(v17 + 4) = v21;
          OUTLINED_FUNCTION_21_0(&dword_2752A6000, v22, v23, "Unhandled value of MPCPlaybackIntentShuffleMode: %{public}s.");
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          MEMORY[0x277C73820](v18, -1, -1);
          OUTLINED_FUNCTION_15_0();
        }

        goto LABEL_2;
    }
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v3);
}

uint64_t sub_2752B5F78()
{
  OUTLINED_FUNCTION_5();
  if (qword_2811ACF30 != -1)
  {
    swift_once();
  }

  v1 = *(MEMORY[0x277D2A4C8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_2752BD248();
  *v2 = v0;
  v2[1] = sub_2752B6048;
  v4 = MEMORY[0x277D2A668];

  return MEMORY[0x282189470](v3, v4);
}

uint64_t sub_2752B6048()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t MusicPlaybackIntentDescriptor.init<A>(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_2752BD8C8();
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67();
  v13 = sub_2752B75E8(a2, a2);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = *(a2 - 8);
  v17 = *(v16 + 72);
  v18 = *(v16 + 80);
  swift_allocObject();
  v19 = sub_2752BD838();
  (*(v16 + 16))(v20, a1, a2);
  v21 = sub_2752BD848();
  v27 = v19;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, a2);
  WitnessTable = swift_getWitnessTable();
  MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)(&v27, v4, v21, a2, WitnessTable, a3, a4);
  return (*(v16 + 8))(a1, a2);
}

void *MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v64 = a6;
  v61 = a5;
  v60 = a4;
  v72 = a2;
  v59 = a7;
  v9 = sub_2752BD8C8();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  OUTLINED_FUNCTION_4_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  sub_2752B7654();
  v26 = *(v19 + 16);
  v66 = a1;
  v55 = v26;
  v26(v25, a1, a3);
  v27 = *(v12 + 16);
  v63 = v9;
  v57 = v27;
  v27(v17, v72, v9);
  v65 = a3;
  v28 = v60;
  v29 = v62;
  MPCPlaybackIntent.init<A, B>(for:startingAt:)();
  if (v29)
  {
    (*(v12 + 8))(v72, v63);
    return (*(v19 + 8))(v66, v65);
  }

  else
  {
    v54 = v30;
    v62 = v19;
    v32 = v12;
    v55(v56, v66, v65);
    v33 = v28;
    sub_2752BD858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    v34 = sub_2752BD9A8();

    v67 = v34;
    v35 = v58;
    v36 = v72;
    v37 = v63;
    v57(v58, v72, v63);
    if (__swift_getEnumTagSinglePayload(v35, 1, v33) == 1)
    {
      v38 = *(v32 + 8);
      v38(v36, v37);
      v39 = OUTLINED_FUNCTION_4_1(&v73);
      v40(v39, v65);
      v38(v35, v37);
      v70 = 0;
      v69 = 0u;
      v68 = 0u;
    }

    else
    {
      *(&v69 + 1) = v33;
      v70 = v64;
      __swift_allocate_boxed_opaque_existential_1(&v68);
      OUTLINED_FUNCTION_17(v33);
      (*(v41 + 32))();
      (*(v32 + 8))(v36, v37);
      v42 = OUTLINED_FUNCTION_4_1(&v73);
      v43(v42, v65);
    }

    v44 = v59;
    v45 = OUTLINED_FUNCTION_14_0();
    memcpy(v45, v46, v47);
    v48 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v49 = *(v48 + 20);
    sub_2752BD1E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    *v44 = v54;
    return memcpy(v44 + *(v48 + 24), __src, 0x51uLL);
  }
}

uint64_t MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v37 = a3;
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = a1[3];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = sub_2752B7654();
  OUTLINED_FUNCTION_4_0();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  (*(v20 + 16))(v4, v15, v14);
  sub_2752B7698(a2, v39, &qword_2809BFB10, &qword_2752BE310);
  sub_2752B7698(a3, v13, &qword_2809BFB20, &qword_2752BE430);
  v21 = v16;
  MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)();
  OUTLINED_FUNCTION_47();
  v22 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v23 = v38;
  v24 = v38 + *(v22 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2752BE410;
  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  *(v25 + 56) = v27;
  *(v25 + 64) = *(v26 + 8);
  __swift_allocate_boxed_opaque_existential_1((v25 + 32));
  OUTLINED_FUNCTION_17(v27);
  (*(v28 + 16))();
  sub_2752B46E0(v37, &qword_2809BFB20, &qword_2752BE430);
  *v24 = v25;
  v29 = *(a2 + 16);
  *(v24 + 8) = *a2;
  *(v24 + 24) = v29;
  *(v24 + 5) = *(a2 + 32);
  v24[80] = 1;
  v30 = *(v22 + 20);
  sub_2752BD1E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  *v23 = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v74 = a8;
  v83 = a7;
  v81 = a4;
  v82 = a2;
  v84 = a1;
  v80 = a9;
  OUTLINED_FUNCTION_4_0();
  v15 = v14;
  v17 = *(v16 + 64);
  v71 = a11;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v21 = v20 - v19;
  v22 = sub_2752BD8C8();
  v23 = OUTLINED_FUNCTION_0_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  v70 = sub_2752BD1A8();
  v31 = OUTLINED_FUNCTION_0_0(v70);
  v69 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v37 = v36 - v35;
  v38 = *(v25 + 16);
  v73 = v25 + 16;
  v72 = v38;
  v38(v30, a3, v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, a6);
  v78 = a3;
  v77 = v22;
  v76 = v25;
  v68 = a10;
  if (EnumTagSinglePayload == 1)
  {
    (*(v25 + 8))(v30, v22);
    memset(__src, 0, 40);
  }

  else
  {
    *&__src[24] = a6;
    *&__src[32] = a10;
    __swift_allocate_boxed_opaque_existential_1(__src);
    OUTLINED_FUNCTION_17(a6);
    (*(v40 + 32))();
  }

  v79 = v15;
  v41 = *(v15 + 16);
  v41(v21, v84, a5);
  sub_2752BD858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  sub_2752BD9A8();
  v42 = a5;

  sub_2752BD128();

  sub_2752B46E0(__src, &qword_2809BFB10, &qword_2752BE310);
  sub_2752BD188();
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    (*(v69 + 8))(v37, v70);
    v41(v21, v84, a5);
    sub_2752BD858();
    v45 = sub_2752BD9A8();

    v85 = v45;
    v46 = v75;
    v47 = v78;
    v48 = v77;
    v72(v75, v78, v77);
    if (__swift_getEnumTagSinglePayload(v46, 1, a6) == 1)
    {
      sub_2752B46E0(v81, &qword_2809BFB20, &qword_2752BE430);
      v49 = *(v76 + 8);
      v49(v47, v48);
      OUTLINED_FUNCTION_17(v83);
      (*(v50 + 8))(v82);
      v51 = OUTLINED_FUNCTION_4_1(&v90);
      v52(v51, v42);
      v49(v46, v48);
      v88 = 0;
      v87 = 0u;
      v86 = 0u;
    }

    else
    {
      *(&v87 + 1) = a6;
      v88 = v68;
      __swift_allocate_boxed_opaque_existential_1(&v86);
      OUTLINED_FUNCTION_17(a6);
      (*(v53 + 32))();
      sub_2752B46E0(v81, &qword_2809BFB20, &qword_2752BE430);
      (*(v76 + 8))(v47, v48);
      OUTLINED_FUNCTION_17(v83);
      (*(v54 + 8))(v82);
      v55 = OUTLINED_FUNCTION_4_1(&v90);
      v56(v55, v42);
    }

    v57 = OUTLINED_FUNCTION_14_0();
    memcpy(v57, v58, v59);
    v60 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v61 = *(v60 + 20);
    sub_2752BD1E8();
    v62 = v80;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    *v62 = v44;
    return memcpy(v62 + *(v60 + 24), __src, 0x51uLL);
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_13();
    result = sub_2752BDA08();
    __break(1u);
  }

  return result;
}

uint64_t MusicPlaybackIntentDescriptor.init(station:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_2752B7654();
  static MPCPlaybackIntent.radioPlaybackIntent(for:)();
  OUTLINED_FUNCTION_47();
  v3 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4 = a1 + *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2752BE410;
  v6 = sub_2752BD668();
  v7 = MEMORY[0x277CD84D8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  OUTLINED_FUNCTION_17(v6);
  (*(v8 + 32))();
  *v4 = v5;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 5) = 0;
  v4[80] = 1;
  v9 = *(v3 + 20);
  sub_2752BD1E8();
  OUTLINED_FUNCTION_33();
  result = __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *a1 = v2;
  return result;
}

uint64_t MusicPlaybackIntentDescriptor.init(stationSeed:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_2752B7654();
  static MPCPlaybackIntent.radioPlaybackIntent<A>(from:)();
  if (v6)
  {
    OUTLINED_FUNCTION_47();
    v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v8 = a2 + *(v7 + 24);
    sub_2752B76FC(a1, v8);
    *(v8 + 80) = 3;
    v9 = *(v7 + 20);
    sub_2752BD1E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    *a2 = v5;
  }

  else
  {
    sub_2752B2660();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void MusicPlaybackIntentDescriptor.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC8, &qword_2752BE7C0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67();
  v9 = sub_2752BD1A8();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  sub_2752BD198();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_2752B46E0(v2, &qword_2809BFCC8, &qword_2752BE7C0);
    sub_2752B2660();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  else
  {
    v19 = *(v12 + 32);
    v20 = OUTLINED_FUNCTION_18_0();
    v21(v20);
    v22 = a1;
    sub_2752BD188();
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;

      (*(v12 + 8))(v17, v9);
      v25 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v26 = *(v25 + 20);
      sub_2752BD1E8();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      *a2 = v24;
      v31 = a2 + *(v25 + 24);
      *v31 = v22;
      memcpy(v31 + 8, __src, 0x48uLL);
      v31[80] = 0;
    }

    else
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_13();
      sub_2752BDA08();
      __break(1u);
    }
  }
}

uint64_t MusicPlaybackIntentDescriptor.init(request:startingAt:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0();
  if (v8)
  {
    OUTLINED_FUNCTION_47();
    v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v10 = a3 + *(v9 + 24);
    sub_2752B76FC(a1, v10);
    v11 = *(a2 + 16);
    *(v10 + 40) = *a2;
    *(v10 + 56) = v11;
    *(v10 + 72) = *(a2 + 32);
    *(v10 + 80) = 2;
    v12 = *(v9 + 20);
    sub_2752BD1E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    *a3 = v7;
  }

  else
  {
    sub_2752B2660();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    sub_2752B46E0(a2, &qword_2809BFB10, &qword_2752BE310);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2752B75E8(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCD0, &qword_2752BE7F0);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

unint64_t sub_2752B7654()
{
  result = qword_2811ACF10;
  if (!qword_2811ACF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811ACF10);
  }

  return result;
}

uint64_t sub_2752B7698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2752B76FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_17(v3);
  (*v4)(a2);
  return a2;
}

void sub_2752B7784()
{
  sub_2752B7654();
  if (v0 <= 0x3F)
  {
    sub_2752B7810();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2752B7810()
{
  if (!qword_2811ACFD8)
  {
    sub_2752BD1E8();
    v0 = sub_2752BD8C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2811ACFD8);
    }
  }
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

uint64_t OUTLINED_FUNCTION_11_1@<X0>(unsigned int *a1@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 104);
  return v1;
}

void OUTLINED_FUNCTION_15_0()
{

  JUMPOUT(0x277C73820);
}

void OUTLINED_FUNCTION_21_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id sub_2752B794C()
{
  v0 = sub_2752BD598();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752BD5A8();
  v5 = (*(v1 + 88))(v4, v0);
  v6 = 0;
  if (v5 == *MEMORY[0x277CD7F60])
  {
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277CD7F70])
  {
    v6 = 1;
LABEL_16:
    sub_2752B7BB0();
    v7 = sub_2752BD5B8();
    return sub_2752B7BF4(v7, v8, v6);
  }

  if (v5 == *MEMORY[0x277CD7F40])
  {
    v6 = 2;
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277CD7F58])
  {
    v6 = 3;
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277CD7F48])
  {
    v6 = 4;
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277CD7F38])
  {
    v6 = 5;
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277CD7F50])
  {
    v6 = 6;
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277CD7F30])
  {
    v6 = 7;
    goto LABEL_16;
  }

  *MEMORY[0x277CD7F68];
  result = sub_2752BDA08();
  __break(1u);
  return result;
}

unint64_t sub_2752B7BB0()
{
  result = qword_2809BFCE8;
  if (!qword_2809BFCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFCE8);
  }

  return result;
}

id sub_2752B7BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2752BD6D8();

  v6 = [v4 initWithValue:v5 kind:a3];

  return v6;
}

id sub_2752B7C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_4_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  v16 = sub_2752BD5F8();
  OUTLINED_FUNCTION_4_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v24 = v23 - v22;
  v25 = sub_2752B85F4();
  (*(v18 + 16))(v24, a1, v16);
  (*(v9 + 16))(v15, v4, a2);
  return sub_2752B8638(v15, v24, v25, a2, a3);
}

uint64_t sub_2752B7DE0()
{
  v1 = sub_2752BD5E8();
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  (*(v3 + 16))(v7 - v6, v0, v1);
  v9 = (*(v3 + 88))(v8, v1);
  v10 = 0;
  if (v9 == *MEMORY[0x277CD80D8])
  {
    return v10;
  }

  if (v9 == *MEMORY[0x277CD8050])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x277CD80F0])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277CD8120])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x277CD8058])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x277CD8108])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x277CD8060])
  {
    return 6;
  }

  if (v9 == *MEMORY[0x277CD8068])
  {
    return 7;
  }

  if (v9 == *MEMORY[0x277CD80E0])
  {
    return 9;
  }

  if (v9 == *MEMORY[0x277CD80C0])
  {
    return 11;
  }

  if (v9 == *MEMORY[0x277CD80F8])
  {
    return 12;
  }

  if (v9 == *MEMORY[0x277CD8038])
  {
    return 13;
  }

  if (v9 == *MEMORY[0x277CD8040])
  {
    return 14;
  }

  if (v9 == *MEMORY[0x277CD80C8])
  {
    return 15;
  }

  if (v9 == *MEMORY[0x277CD8110])
  {
    return 16;
  }

  if (v9 == *MEMORY[0x277CD8128])
  {
    return 17;
  }

  if (v9 == *MEMORY[0x277CD80A0])
  {
    return 18;
  }

  if (v9 == *MEMORY[0x277CD8070])
  {
    return 19;
  }

  if (v9 == *MEMORY[0x277CD80B8])
  {
    return 20;
  }

  if (v9 == *MEMORY[0x277CD80A8])
  {
    return 21;
  }

  if (v9 == *MEMORY[0x277CD80B0])
  {
    return 22;
  }

  if (v9 == *MEMORY[0x277CD8138])
  {
    return 24;
  }

  if (v9 == *MEMORY[0x277CD8078])
  {
    return 25;
  }

  if (v9 == *MEMORY[0x277CD8048])
  {
    return 26;
  }

  if (v9 == *MEMORY[0x277CD8080])
  {
    return 27;
  }

  if (v9 == *MEMORY[0x277CD80D0])
  {
    return 28;
  }

  if (v9 == *MEMORY[0x277CD8118])
  {
    return 29;
  }

  if (v9 == *MEMORY[0x277CD8088])
  {
    return 31;
  }

  if (v9 == *MEMORY[0x277CD80E8])
  {
    return 32;
  }

  if (v9 == *MEMORY[0x277CD8140])
  {
    return 33;
  }

  if (v9 == *MEMORY[0x277CD8130])
  {
    return 34;
  }

  if (v9 == *MEMORY[0x277CD8100])
  {
    return 35;
  }

  if (v9 == *MEMORY[0x277CD8090])
  {
    return 36;
  }

  if (v9 == *MEMORY[0x277CD8098])
  {
    return 37;
  }

  result = sub_2752BDA08();
  __break(1u);
  return result;
}

uint64_t sub_2752B82B0()
{
  v1 = v0;
  v2 = sub_2752BD5F8();
  OUTLINED_FUNCTION_4_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v1, v2);
  v10 = (*(v4 + 88))(v9, v2);
  v11 = 0;
  if (v10 == *MEMORY[0x277CD81C0])
  {
    return v11;
  }

  if (v10 == *MEMORY[0x277CD8170])
  {
    return 1;
  }

  if (v10 == *MEMORY[0x277CD8150])
  {
    return 2;
  }

  if (v10 == *MEMORY[0x277CD8188])
  {
    return 3;
  }

  if (v10 == *MEMORY[0x277CD8178])
  {
    return 4;
  }

  if (v10 == *MEMORY[0x277CD8160])
  {
    return 5;
  }

  if (v10 == *MEMORY[0x277CD8180])
  {
    return 6;
  }

  if (v10 == *MEMORY[0x277CD8158])
  {
    return 7;
  }

  if (v10 == *MEMORY[0x277CD8168])
  {
    return 8;
  }

  if (v10 == *MEMORY[0x277CD81B0])
  {
    return 9;
  }

  if (v10 == *MEMORY[0x277CD81A8])
  {
    return 10;
  }

  if (v10 == *MEMORY[0x277CD81A0])
  {
    return 11;
  }

  if (v10 == *MEMORY[0x277CD8148])
  {
    return 12;
  }

  if (v10 == *MEMORY[0x277CD8190])
  {
    return 13;
  }

  if (v10 == *MEMORY[0x277CD81B8])
  {
    return 14;
  }

  if (v10 == *MEMORY[0x277CD8198])
  {
    return 15;
  }

  sub_2752BD948();
  MEMORY[0x277C72FC0](0xD000000000000010, 0x80000002752BF830);
  sub_2752BD9B8();
  MEMORY[0x277C72FC0](0xD000000000000042, 0x80000002752BF850);
  result = sub_2752BDA08();
  __break(1u);
  return result;
}

unint64_t sub_2752B85F4()
{
  result = qword_2809BFCF0;
  if (!qword_2809BFCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFCF0);
  }

  return result;
}

id sub_2752B8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v9 = sub_2752BD478();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2752BD5E8();
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v31);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a4 - 8);
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 32))(v20, a1, a4);
  sub_2752BD618();
  sub_2752BD608();
  v22 = sub_2752B7DE0();
  (*(v13 + 8))(v17, v31);
  v23 = *(a5 + 8);
  sub_2752BD568();
  v24 = sub_2752B8B94(v22, a2);
  (*(v32 + 8))(v12, v33);
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = sub_2752BD698();

  v27 = [v25 initWithIdentifierSet:v24 modelObjectType:v22 storageDictionary:v26];
  swift_unknownObjectRelease();

  v28 = sub_2752BD5F8();
  (*(*(v28 - 8) + 8))(a2, v28);
  (*(v34 + 8))(v20, a4);
  return v27;
}

uint64_t sub_2752B895C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_2752B9058(0, v1, 0);
  v2 = v31;
  result = sub_2752B9428(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_2752B9058(v14 > 1, v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = v31 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2752B9468(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_2752B9468(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_2752B8B94(id a1, uint64_t a2)
{
  v53 = a2;
  v54 = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCF8, &qword_2752BE808) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF8, &qword_2752BE5E8);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  sub_2752BD438();
  v12 = sub_2752BD5C8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2752B46E0(v11, &qword_2809BFBF8, &qword_2752BE5E8);
    v56 = 0;
  }

  else
  {
    v56 = sub_2752B794C();
    OUTLINED_FUNCTION_17(v12);
    (*(v13 + 8))(v11, v12);
  }

  sub_2752BD458();
  if (v14)
  {
    v55 = sub_2752BD6D8();
  }

  else
  {
    v55 = 0;
  }

  sub_2752BD3F8();
  if (v15)
  {
    v52 = sub_2752BD6D8();
  }

  else
  {
    v52 = 0;
  }

  sub_2752BD428();
  if (v16)
  {
    v51 = sub_2752BD6D8();
  }

  else
  {
    v51 = 0;
  }

  sub_2752BD3E8();
  if (v17)
  {
    v50 = sub_2752BD6D8();
  }

  else
  {
    v50 = 0;
  }

  sub_2752BD3D8();
  if (v18)
  {
    v49 = sub_2752BD6D8();
  }

  else
  {
    v49 = 0;
  }

  sub_2752BD3A8();
  if (v19)
  {
    v48 = sub_2752BD6D8();
  }

  else
  {
    v48 = 0;
  }

  sub_2752BD3C8();
  v20 = sub_2752BD388();
  if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
  {
    sub_2752B46E0(v7, &qword_2809BFCF8, &qword_2752BE808);
    v47 = 0;
  }

  else
  {
    v47 = sub_2752B9474();
    OUTLINED_FUNCTION_17(v20);
    (*(v21 + 8))(v7, v20);
  }

  sub_2752BD3B8();
  if (v22)
  {
    v23 = sub_2752BD6D8();
  }

  else
  {
    v23 = 0;
  }

  sub_2752BD408();
  if (__swift_getEnumTagSinglePayload(v5, 1, v20) == 1)
  {
    sub_2752B46E0(v5, &qword_2809BFCF8, &qword_2752BE808);
    v24 = 0;
  }

  else
  {
    v24 = sub_2752B9474();
    OUTLINED_FUNCTION_17(v20);
    (*(v25 + 8))(v5, v20);
  }

  sub_2752BD418();
  if (v26)
  {
    v27 = sub_2752BD6D8();
  }

  else
  {
    v27 = 0;
  }

  sub_2752BD398();
  if (v28)
  {
    v29 = sub_2752BD6D8();
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_self();
  v31 = sub_2752BD448();
  v32 = sub_2752B895C(v31);

  v33 = sub_2752B82B0();
  v45 = v30;
  v44 = v32;
  *&v43 = v23;
  *(&v43 + 1) = v24;
  v34 = v23;
  v36 = v51;
  v35 = v52;
  v37 = v50;
  v38 = v24;
  v40 = v48;
  v39 = v49;
  v41 = v47;
  v54 = sub_2752B934C(v56, v55, v52, v51, v50, v49, v48, v47, v43, v27, v29, v44, v54, v33, v45);

  return v54;
}

uint64_t sub_2752B9058(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2752B9098(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2752B9078(size_t a1, int64_t a2, char a3)
{
  result = sub_2752B9198(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2752B9098(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD00, &qword_2752BE810);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2752BC98C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
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

size_t sub_2752B9198(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD08, &qword_2752BE818);
  v10 = *(sub_2752BD478() - 8);
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
  v15 = *(sub_2752BD478() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2752BC9B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_2752B934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_2752BD818();

  v19 = [a15 identifierSetWithCatalogID:a1 libraryID:a2 cloudAlbumLibraryID:a3 cloudID:a4 reportingAdamID:a5 purchasedAdamID:a6 assetAdamID:a7 deviceLocalID:a8 occurrenceID:a9 containedDeviceLocalID:a10 syncID:a11 playbackID:v18 formerIDs:a13 modelObjectType:a14 source:?];

  return v19;
}

uint64_t sub_2752B9428(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2752BD8F8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2752B9468(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2752B9474()
{
  result = sub_2752BD378();
  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    goto LABEL_71;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = sub_2752B97F0(result, v2, 10);
    v23 = v24;
LABEL_70:

    if ((v23 & 1) == 0)
    {
LABEL_72:
      sub_2752B9D78();
      sub_2752BD368();
      return sub_2752B9704(v7);
    }

LABEL_71:
    v7 = 0;
    goto LABEL_72;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2752BD958();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_1();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_1();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_1();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_78;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_68;
            }

            v20 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_68;
            }

            v7 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v7 = 0;
      v12 = 1;
      goto LABEL_69;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v9 & v8)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v9)
            {
              goto LABEL_68;
            }

            v7 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_1();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v12 = 0;
LABEL_69:
        v23 = v12;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_2_1();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_3_1();
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          OUTLINED_FUNCTION_2_1();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_77;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_3_1();
      while (1)
      {
        OUTLINED_FUNCTION_1_1();
        if (!v9 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_0_1();
        if (!v9)
        {
          break;
        }

        v7 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        OUTLINED_FUNCTION_2_1();
        if (v9)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_79:
  __break(1u);
  return result;
}

id sub_2752B9704(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2752BD6D8();

  v4 = [v2 initWithValue:a1 databaseID:v3];

  return v4;
}

void *sub_2752B9780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF0, &qword_2752BE5E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_2752B97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2752BD7A8();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2752B9DBC(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2752BD958();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_2752B9D78()
{
  result = qword_2809BFD10;
  if (!qword_2809BFD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFD10);
  }

  return result;
}

uint64_t sub_2752B9DBC(uint64_t a1, unint64_t a2)
{
  v2 = sub_2752B9E28(sub_2752B9E24, 0, a1, a2);
  v6 = sub_2752B9E5C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2752B9E28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2752B9E5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2752BD738();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2752BD8D8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2752B9780(v9, 0);
  v12 = sub_2752B9FBC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2752BD738();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2752BD958();
LABEL_4:

  return sub_2752BD738();
}

unint64_t sub_2752B9FBC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2752BA1CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2752BD788();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2752BD958();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2752BA1CC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2752BD768();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2752BA1CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2752BD798();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C72FF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id MPCPlayerResponse.playState(for:)(uint64_t a1)
{
  return sub_2752BA80C(a1, MEMORY[0x277CD8238], MEMORY[0x277CD8368]);
}

{
  v3 = v1;
  v49 = a1;
  v4 = sub_2752BD5F8();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_2();
  v10 = sub_2752BD478();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v48 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_6_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v50 = v3;
  v26 = [v3 tracklist];
  v27 = [v26 playingItem];

  if (!v27)
  {
    return 0;
  }

  v28 = [v27 metadataObject];

  if (!v28)
  {
    return 0;
  }

  v29 = [v50 tracklist];
  v30 = [v29 playingItemIndexPath];

  if (v30)
  {
    sub_2752BD0D8();

    v31 = sub_2752BD0F8();
    v32 = 0;
  }

  else
  {
    v31 = sub_2752BD0F8();
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v32, 1, v31);
  sub_2752BA714(v22, v25);
  sub_2752BD0F8();
  if (__swift_getEnumTagSinglePayload(v25, 1, v31) == 1)
  {

    sub_2752BA784(v25);
    return 0;
  }

  sub_2752BD0E8();
  OUTLINED_FUNCTION_17(v31);
  (*(v33 + 8))(v25, v31);
  sub_2752BD648();
  sub_2752BD568();
  (*(v7 + 104))(v2, *MEMORY[0x277CD8198], v4);
  sub_2752B8B94(0x1C, v2);
  v34 = *(v7 + 8);
  v35 = OUTLINED_FUNCTION_5_1();
  v36(v35);
  (*(v48 + 8))(v17, v10);
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v38 = v37;
  v39 = [v28 identifiers];
  v40 = [v39 intersectsSet_];

  if (!v40)
  {
    v42 = [v28 flattenedGenericObject];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 identifiers];
      v45 = [v44 intersectsSet_];

      if (v45)
      {
        v41 = [v50 state];

        swift_unknownObjectRelease();
        return v41;
      }
    }

    swift_unknownObjectRelease();

    return 0;
  }

  v41 = [v50 state];

  swift_unknownObjectRelease();
  return v41;
}

{
  return sub_2752BA80C(a1, MEMORY[0x277CD7E58], MEMORY[0x277CD8350]);
}

uint64_t sub_2752BA714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752BA784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2752BA80C(uint64_t a1, uint64_t (*a2)(uint64_t), unsigned int *a3)
{
  v6 = sub_2752BD648();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v12 = OUTLINED_FUNCTION_2_2();
  v13 = a2(v12);
  OUTLINED_FUNCTION_17(v13);
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_5_1();
  v17(v16);
  (*(v9 + 104))(v3, *a3, v6);
  v18 = MPCPlayerResponse.playState(for:)(v3);
  (*(v9 + 8))(v3, v6);
  return v18;
}

id MPCPlayerResponse.playState(for:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v4 = sub_2752BD5F8();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v65 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v12 = sub_2752BD478();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v64 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_6_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v58 - v26;
  v28 = [v3 tracklist];
  v29 = [v28 playingItem];

  if (!v29)
  {
    return 0;
  }

  v30 = [v29 metadataObject];

  if (!v30)
  {
    return 0;
  }

  v62 = v30;
  v31 = [v3 tracklist];
  v32 = [v31 playingItemIndexPath];

  if (v32)
  {
    sub_2752BD0D8();

    v33 = sub_2752BD0F8();
    v34 = 0;
  }

  else
  {
    v33 = sub_2752BD0F8();
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v34, 1, v33);
  sub_2752BA714(v24, v27);
  sub_2752BD0F8();
  if (__swift_getEnumTagSinglePayload(v27, 1, v33) == 1)
  {

    sub_2752BA784(v27);
    return 0;
  }

  v59 = v3;
  v58 = sub_2752BD0E8();
  OUTLINED_FUNCTION_17(v33);
  (*(v35 + 8))(v27, v33);
  sub_2752BD648();
  sub_2752BD568();
  v36 = v65;
  v37 = v65[13];
  v61 = *MEMORY[0x277CD8198];
  v60 = v37;
  v37(v11);
  v38 = sub_2752B8B94(0x1C, v11);
  v39 = v36[1];
  v39(v11, v4);
  v40 = *(v64 + 8);
  v40(v19, v12);
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {

LABEL_22:
    swift_unknownObjectRelease();
    return 0;
  }

  v64 = v41;
  v65 = v38;
  sub_2752BD638();
  sub_2752BD568();
  v60(v11, v61, v4);
  sub_2752B8B94(0, v11);
  v39(v11, v4);
  v40(v19, v12);
  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (!v42)
  {

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v43 = v42;
  v44 = [v59 tracklist];
  v45 = [v44 items];

  v46 = [v45 sectionAtIndex_];
  v47 = [v46 metadataObject];

  v48 = v62;
  v49 = [v62 identifiers];
  LODWORD(v45) = [v49 intersectsSet_];

  if (!v45)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return 0;
  }

  if (!v47)
  {

    goto LABEL_21;
  }

  v50 = [v47 type];
  v51 = v62;
  if (v50 != 2 || (v52 = [v47 album]) == 0)
  {

LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v53 = v52;
  v54 = [v52 identifiers];
  v55 = [v54 intersectsSet_];

  if ((v55 & 1) == 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 0;
  }

  v56 = [v59 state];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v56;
}

{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_6_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  v12 = sub_2752BD5F8();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_2();
  v70 = sub_2752BD478();
  v18 = OUTLINED_FUNCTION_0_0(v70);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v25 = v24 - v23;
  v69 = v2;
  v26 = [v2 tracklist];
  v27 = [v26 playingItem];

  if (!v27)
  {
    return 0;
  }

  v28 = [v27 metadataObject];

  if (!v28)
  {
    return 0;
  }

  v29 = v28;
  sub_2752BD678();
  sub_2752BD568();
  v30 = *(v15 + 104);
  v64 = *MEMORY[0x277CD8198];
  v65 = v15 + 104;
  v63 = v30;
  v30(v3);
  v31 = sub_2752B8B94(0x13, v3);
  v32 = *(v15 + 8);
  v33 = OUTLINED_FUNCTION_5_1();
  v62 = v34;
  v34(v33);
  v35 = *(v20 + 8);
  v66 = v20 + 8;
  v35(v25, v70);
  v36 = v35;
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    v38 = v37;
    v67 = v31;
    v39 = v29;
    v40 = [v29 identifiers];
    LODWORD(v38) = [v40 intersectsSet_];

    if (v38)
    {
      v61 = v39;
      v41 = [v69 tracklist];
      v42 = [v41 playingItemIndexPath];

      if (v42)
      {
        sub_2752BD0D8();

        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v46 = sub_2752BD0F8();
      __swift_storeEnumTagSinglePayload(v8, v43, 1, v46);
      sub_2752BA714(v8, v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v46) == 1)
      {

        swift_unknownObjectRelease();
        sub_2752BA784(v11);
        return 0;
      }

      v47 = sub_2752BD0E8();
      OUTLINED_FUNCTION_17(v46);
      (*(v48 + 8))(v11, v46);
      v49 = [v69 tracklist];
      v50 = [v49 items];

      v51 = [v50 sectionAtIndex_];
      v52 = [v51 metadataObject];

      if (v52)
      {
        v53 = [v52 type];
        v54 = v61;
        if (v53 != 4 || (v55 = [v52 playlist]) == 0)
        {

          swift_unknownObjectRelease();
          return 0;
        }

        v56 = v55;
        sub_2752BD688();
        sub_2752BD568();
        v63(v3, v64, v12);
        sub_2752B8B94(0x11, v3);
        v57 = OUTLINED_FUNCTION_5_1();
        v62(v57);
        v36(v25, v70);
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = v58;
          v60 = [v56 identifiers];
          LODWORD(v59) = [v60 intersectsSet_];

          if (v59)
          {
            v44 = [v69 state];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return v44;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t MusicPlaybackIntentDescriptor.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB58, &qword_2752BE470);
  v8 = sub_2752BD118();
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  v12 = *(v11 + 72);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2752BE410;
  (*(v10 + 16))(v14 + v13, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_2752BB6F4(v14, v7, a2);
  return (*(v10 + 8))(a1, v8);
}

uint64_t sub_2752BB6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_2752BD118();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  sub_2752B7654();
  sub_2752BC04C(a2, v15, &qword_2809BFB50, &qword_2752BE468);

  v17 = v59;
  sub_2752AD898(v16, v15, v18, v19, v20, v21, v22, v23, v45, v46, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, *(&v54 + 1));
  if (v17)
  {
    sub_2752AA2E8(a2, &qword_2809BFB50, &qword_2752BE468);
  }

  v26 = v24;
  v27 = v51;
  v48 = v13;
  v49 = a2;
  v28 = *(a1 + 16);
  if (v28)
  {
    v46 = v24;
    v47 = 0;
    v29 = *(v50 + 16);
    v30 = *(v50 + 80);
    v45 = a1;
    v31 = a1 + ((v30 + 32) & ~v30);
    v32 = (v50 + 8);
    v59 = MEMORY[0x277D84F90];
    v33 = *(v50 + 72);
    v52 = v29;
    while (1)
    {
      v29(v8, v31, v5);
      sub_2752BD108();
      (*v32)(v8, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      if (swift_dynamicCast())
      {
        if (*(&v54 + 1))
        {
          sub_2752A7E00(&v53, &v56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_2752BC854(0, v59[2] + 1, 1, v59);
          }

          v35 = v59[2];
          v34 = v59[3];
          if (v35 >= v34 >> 1)
          {
            v59 = sub_2752BC854((v34 > 1), v35 + 1, 1, v59);
          }

          v36 = v59;
          v59[2] = v35 + 1;
          sub_2752A7E00(&v56, &v36[5 * v35 + 4]);
          v29 = v52;
          goto LABEL_14;
        }
      }

      else
      {
        v55 = 0;
        v53 = 0u;
        v54 = 0u;
      }

      sub_2752AA2E8(&v53, &qword_2809BFB10, &qword_2752BE310);
LABEL_14:
      v31 += v33;
      if (!--v28)
      {

        v37 = v50;
        v38 = v51;
        v26 = v46;
        goto LABEL_17;
      }
    }
  }

  v59 = MEMORY[0x277D84F90];
  v37 = v50;
  v38 = v27;
LABEL_17:
  v40 = v48;
  v39 = v49;
  sub_2752BC04C(v49, v48, &qword_2809BFB50, &qword_2752BE468);
  if (__swift_getEnumTagSinglePayload(v40, 1, v5) == 1)
  {
    sub_2752AA2E8(v39, &qword_2809BFB50, &qword_2752BE468);
    sub_2752AA2E8(v40, &qword_2809BFB50, &qword_2752BE468);
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
  }

  else
  {
    sub_2752BD108();
    sub_2752AA2E8(v39, &qword_2809BFB50, &qword_2752BE468);
    (*(v37 + 8))(v40, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
    }
  }

  v41 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v42 = v38 + *(v41 + 24);
  *v42 = v59;
  sub_2752BC04C(&v56, (v42 + 8), &qword_2809BFB10, &qword_2752BE310);
  v42[80] = 1;
  v43 = *(v41 + 20);
  v44 = sub_2752BD1E8();
  __swift_storeEnumTagSinglePayload(v38 + v43, 1, 1, v44);
  *v38 = v26;
  return sub_2752AA2E8(&v56, &qword_2809BFB10, &qword_2752BE310);
}

uint64_t MusicPlaybackIntentDescriptor.init<A>(items:startingAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_6_0();
  v54 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  OUTLINED_FUNCTION_4_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752B7654();
  v24 = *(v18 + 16);
  v62 = a1;
  v24(v23, a1, a3);
  sub_2752BC04C(a2, v16, &qword_2809BFB50, &qword_2752BE468);
  MPCPlaybackIntent.init<A>(for:startingAt:)(v23, v16, a3, a4, v25, v26, v27, v28, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1]);
  if (v5)
  {
    sub_2752AA2E8(a2, &qword_2809BFB50, &qword_2752BE468);
    v30 = OUTLINED_FUNCTION_2_3();
    return v31(v30);
  }

  else
  {
    v52 = v29;
    v33 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    v51 = sub_2752BD808();
    v34 = v54;
    sub_2752BC04C(a2, v54, &qword_2809BFB50, &qword_2752BE468);
    v35 = sub_2752BD118();
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
    {
      OUTLINED_FUNCTION_4_2();
      sub_2752AA2E8(v36, v37, v38);
      v39 = OUTLINED_FUNCTION_2_3();
      v40(v39);
      OUTLINED_FUNCTION_4_2();
      sub_2752AA2E8(v41, v42, v43);
      OUTLINED_FUNCTION_5_2();
      v61 = 0;
    }

    else
    {
      sub_2752BD108();
      sub_2752AA2E8(a2, &qword_2809BFB50, &qword_2752BE468);
      v44 = OUTLINED_FUNCTION_2_3();
      v45(v44);
      (*(*(v35 - 8) + 8))(v34, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v61 = 0;
        OUTLINED_FUNCTION_5_2();
      }
    }

    v46 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v47 = v33 + *(v46 + 24);
    *v47 = v51;
    sub_2752BC04C(v60, (v47 + 8), &qword_2809BFB10, &qword_2752BE310);
    v47[80] = 1;
    v48 = *(v46 + 20);
    v49 = sub_2752BD1E8();
    __swift_storeEnumTagSinglePayload(v33 + v48, 1, 1, v49);
    *v33 = v52;
    return sub_2752AA2E8(v60, &qword_2809BFB10, &qword_2752BE310);
  }
}

double sub_2752BBFB4@<D0>(uint64_t a1@<X8>)
{
  sub_2752BD108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2752BC04C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t MusicPlaybackIntentDescriptor.init(request:startingAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v63 = a3;
  v62 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4 = OUTLINED_FUNCTION_8(v62);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2752BD118();
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v58[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_6_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v58[-v26];
  v71 = a2;
  sub_2752BC04C(a2, &v58[-v26], &qword_2809BFB50, &qword_2752BE468);
  if (__swift_getEnumTagSinglePayload(v27, 1, v8) == 1)
  {
    sub_2752AA2E8(v27, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_5_2();
    v70 = 0;
  }

  else
  {
    sub_2752BD108();
    (*(v10 + 8))(v27, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v70 = 0;
      OUTLINED_FUNCTION_5_2();
    }
  }

  v28 = v71;
  v29 = v16;
  sub_2752BC04C(v71, v24, &qword_2809BFB50, &qword_2752BE468);
  if (__swift_getEnumTagSinglePayload(v24, 1, v8) == 1)
  {
    sub_2752AA2E8(v24, &qword_2809BFB50, &qword_2752BE468);
  }

  else
  {
    (*(v10 + 32))(v19, v24, v8);
    if (v69)
    {
      (*(v10 + 8))(v19, v8);
    }

    else
    {
      if (qword_2809BFAC0 != -1)
      {
        swift_once();
      }

      v30 = sub_2752BD338();
      __swift_project_value_buffer(v30, qword_2809BFD60);
      (*(v10 + 16))(v16, v19, v8);
      v31 = sub_2752BD318();
      v32 = sub_2752BD898();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v67[0] = v60;
        *v33 = 136446210;
        sub_2752BCA6C();
        v59 = v32;
        v34 = sub_2752BDA48();
        v36 = v35;
        v37 = *(v10 + 8);
        v37(v29, v8);
        v38 = sub_2752B2160(v34, v36, v67);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_2752A6000, v31, v59, "Ignoring start item for non-playable item %{public}s for new playback intent.", v33, 0xCu);
        v39 = v60;
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x277C73820](v39, -1, -1);
        MEMORY[0x277C73820](v33, -1, -1);

        v37(v19, v8);
        v28 = v71;
      }

      else
      {

        v40 = *(v10 + 8);
        v40(v16, v8);
        v40(v19, v8);
      }
    }
  }

  v41 = v64;
  sub_2752B4450(v64, v67);
  sub_2752BC04C(v68, v65, &qword_2809BFB10, &qword_2752BE310);
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  OUTLINED_FUNCTION_4_2();
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0();
  if (v42)
  {
    v43 = v42;
    sub_2752AA2E8(v28, &qword_2809BFB50, &qword_2752BE468);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v45 = v61;
    v44 = v62;
    v46 = &v61[*(v62 + 24)];
    sub_2752B4450(v67, v46);
    v47 = v65[1];
    *(v46 + 40) = v65[0];
    *(v46 + 56) = v47;
    *(v46 + 72) = v66;
    *(v46 + 80) = 2;
    v48 = *(v44 + 20);
    v49 = sub_2752BD1E8();
    __swift_storeEnumTagSinglePayload(v45 + v48, 1, 1, v49);
    *v45 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    sub_2752BC6E8(v45, v63);
    return sub_2752AA2E8(v68, &qword_2809BFB10, &qword_2752BE310);
  }

  else
  {
    sub_2752B2660();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();
    sub_2752AA2E8(v28, &qword_2809BFB50, &qword_2752BE468);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    OUTLINED_FUNCTION_4_2();
    sub_2752AA2E8(v52, v53, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    OUTLINED_FUNCTION_4_2();
    return sub_2752AA2E8(v55, v56, v57);
  }
}

uint64_t sub_2752BC6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2752BC74C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD00, &qword_2752BE810);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}