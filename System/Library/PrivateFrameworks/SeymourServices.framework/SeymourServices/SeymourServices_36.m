uint64_t sub_2272168A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227211EE8(a1, v1);
}

unint64_t sub_227216960(char a1)
{
  result = 0x706F506863746566;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 12:
    case 25:
      result = 0xD000000000000012;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000035;
      break;
    case 7:
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 13:
    case 14:
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 18:
      result = 0xD000000000000026;
      break;
    case 19:
    case 20:
    case 21:
      result = 0xD000000000000022;
      break;
    case 22:
      result = 0xD000000000000026;
      break;
    case 23:
      result = 0xD000000000000030;
      break;
    case 24:
      result = 0xD000000000000026;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 28:
      result = 0xD00000000000002FLL;
      break;
    case 29:
    case 32:
      result = 0xD000000000000023;
      break;
    case 30:
      result = 0xD000000000000027;
      break;
    case 31:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_227216CBC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_227216960(*a1);
  v5 = v4;
  if (v3 == sub_227216960(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227216D44()
{
  v1 = *v0;
  sub_22766D370();
  sub_227216960(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227216DA8()
{
  sub_227216960(*v0);
  sub_22766C100();
}

uint64_t sub_227216DFC()
{
  v1 = *v0;
  sub_22766D370();
  sub_227216960(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227216E5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227216EB8();
  *a2 = result;
  return result;
}

unint64_t sub_227216E8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_227216960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227216EB8()
{
  v0 = sub_22766D1E0();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for NetworkScriptRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkScriptRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227217060()
{
  result = qword_27D7BC240;
  if (!qword_27D7BC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC240);
  }

  return result;
}

void sub_2272170E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2276728D0;
  *(v10 + 32) = sub_227665940();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_227665930();
  *(v10 + 56) = v12;
  (*(v6 + 16))(v9, a1, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  (*(v6 + 32))(v14 + v13, v9, v5);
  aBlock[4] = sub_22721781C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22721789C;
  aBlock[3] = &block_descriptor_21;
  v15 = _Block_copy(aBlock);

  [a3 getNotificationSettingsForTopicsWithCompletionHandler_];
  _Block_release(v15);
}

uint64_t sub_2272172DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v55 = a2;
  v46 = sub_227668980();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2276659D0();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_227667190();
  v10 = *(*(v49 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v49);
  v48 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v35 - v14;
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v44 = *MEMORY[0x277D52C48];
  v43 = (v13 + 104);
  v42 = *MEMORY[0x277D52C40];
  v41 = (v13 + 16);
  v40 = *MEMORY[0x277D53690];
  v39 = (v4 + 104);
  v38 = v7 + 16;
  v50 = v7;
  v37 = v7 + 8;
  v36 = (v13 + 8);
  v56 = a1;

  v21 = 0;
  v54 = MEMORY[0x277D84F90];
  v35 = xmmword_227670CD0;
  while (1)
  {
    v22 = v21;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v23 = __clz(__rbit64(v18)) | (v21 << 6);
    v24 = (*(v56 + 48) + 16 * v23);
    v25 = v24[1];
    v26 = *(*(v56 + 56) + 8 * v23);
    v18 &= v18 - 1;
    v57[0] = *v24;
    v57[1] = v25;
    MEMORY[0x28223BE20](result);
    *(&v35 - 2) = v57;

    v27 = v26;
    if (sub_226F7E160(sub_226FA6D84, (&v35 - 2), v55))
    {
      if ([v27 authorizationStatus] == 2)
      {
        v28 = v42;
      }

      else
      {
        v28 = v44;
      }

      v29 = v47;
      v30 = v49;
      (*v43)(v47, v28, v49);
      (*v41)(v48, v29, v30);
      (*v39)(v45, v40, v46);

      sub_2276659B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF28, &unk_2276799C8);
      v31 = v50;
      v32 = *(v50 + 72);
      v33 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v35;
      (*(v31 + 16))(v34 + v33, v52, v51);
      v57[0] = v54;

      sub_22746166C(v34);

      (*(v50 + 8))(v52, v51);
      result = (*v36)(v47, v49);
      v54 = v57[0];
    }

    else
    {
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v57[0] = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368);
      return sub_22766C450();
    }

    v18 = *(v15 + 8 * v21);
    ++v22;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22721781C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2272172DC(a1, v4, v5);
}

uint64_t sub_22721789C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_226E99364(0, &qword_281398A88, 0x277CE1FD0);
  v3 = sub_22766BEB0();

  v2(v3);
}

uint64_t sub_227217930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_22766B390();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272179FC, 0, 0);
}

uint64_t sub_2272179FC()
{
  v1 = *(v0[22] + 16);
  v0[27] = v1;
  v2 = v0[26];
  if (v1)
  {
    v3 = v1;
    sub_22766A730();
    v4 = sub_22766B380();
    v5 = sub_22766C8B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226E8E000, v4, v5, "Clearing all notification topics", v6, 2u);
      MEMORY[0x22AA9A450](v6, -1, -1);
    }

    v7 = v0[26];
    v8 = v0[23];
    v9 = v0[24];

    v10 = *(v9 + 8);
    v0[28] = v10;
    v10(v7, v8);
    sub_226E99364(0, &qword_281398A60, 0x277CE1FF0);
    sub_227217FE8();
    v11 = sub_22766C570();
    v0[29] = v11;
    v0[2] = v0;
    v0[3] = sub_227217C5C;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC250, &qword_22768CD00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2275D21B0;
    v0[13] = &block_descriptor_12;
    v0[14] = v12;
    [v3 setNotificationTopics:v11 withCompletionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[25];
    v14 = v0[26];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_227217C5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_227217DE4;
  }

  else
  {
    v3 = sub_227217D6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227217D6C()
{
  v1 = *(v0 + 216);

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_227217DE4()
{
  v29 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  swift_willThrow();

  sub_22766A730();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v26 = *(v0 + 200);
    v27 = *(v0 + 224);
    v25 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v13 = MEMORY[0x22AA995D0](*(v0 + 152), *(v0 + 160));
    v15 = sub_226E97AE8(v13, v14, &v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to reset notification topics %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v27(v26, v25);
  }

  else
  {
    v16 = *(v0 + 240);
    v17 = *(v0 + 224);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);

    v17(v18, v20);
  }

  v22 = *(v0 + 200);
  v21 = *(v0 + 208);

  v23 = *(v0 + 8);

  return v23();
}

unint64_t sub_227217FE8()
{
  result = qword_281398A58;
  if (!qword_281398A58)
  {
    sub_226E99364(255, &qword_281398A60, 0x277CE1FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398A58);
  }

  return result;
}

unint64_t sub_22721807C()
{
  result = qword_27D7BC258;
  if (!qword_27D7BC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC258);
  }

  return result;
}

unint64_t sub_2272180D0(uint64_t a1)
{
  result = sub_2272180F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272180F8()
{
  result = qword_27D7BC260;
  if (!qword_27D7BC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC260);
  }

  return result;
}

uint64_t sub_22721814C()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EE90(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EE90((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_227218254(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC268, &qword_22767D488);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = sub_227662750();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = [a1 sessionIdentifier];
  if (!v21)
  {
    goto LABEL_10;
  }

  v56 = v12;
  v22 = v21;
  v53 = sub_22766C000();
  v24 = v23;

  v25 = [a1 startDate];
  if (!v25)
  {
LABEL_9:

LABEL_10:
    v38 = sub_227664DD0();
    sub_22721959C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
    swift_willThrow();

    return;
  }

  v52 = v24;
  v26 = v25;
  sub_227662710();

  v27 = [a1 workoutIdentifier];
  if (!v27)
  {
    (*(v56 + 8))(v20, v11);
    goto LABEL_9;
  }

  v51 = v2;
  v28 = v27;
  v29 = sub_22766C000();
  v50 = v30;

  [a1 percentageCompleted];
  v31 = [a1 activityType];
  if ((v31 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v49 = a2;
    v32 = *(v56 + 16);
    v33 = v18;
    v46 = v56 + 16;
    v47 = v31;
    v45 = v32;
    v32(v18, v20, v11);
    [a1 duration];
    v34 = [a1 scoreSummary];
    if (v34)
    {
      v35 = v34;
      [v35 elapsedSeconds];
      [v35 personalScore];
      [v35 communityLowerScore];
      [v35 communityLowerMiddleScore];
      [v35 communityUpperMiddleScore];
      [v35 communityUpperScore];
      v36 = v10;
      sub_227663BF0();

      v37 = 0;
    }

    else
    {
      v37 = 1;
      v36 = v10;
    }

    v40 = sub_227663C10();
    (*(*(v40 - 8) + 56))(v36, v37, 1, v40);
    v41 = [a1 timeZoneOffset];
    v42 = v41;
    v48 = v29;
    if (v41)
    {
      [v41 integerValue];
    }

    v45(v54, v33, v11);
    sub_226E93170(v10, v55, &qword_27D7BC268, &qword_22767D488);
    sub_2276644E0();

    sub_226E97D1C(v10, &qword_27D7BC268, &qword_22767D488);
    v43 = *(v56 + 8);
    v43(v33, v11);
    v43(v20, v11);
  }
}

void sub_2272187F4(void *a1, uint64_t a2)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC268, &qword_22767D488);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v35 = sub_227663C10();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276644F0();
  v15 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  sub_2276644D0();
  v16 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_227664500();
  [a1 setPercentageCompleted_];
  sub_227664520();
  v17 = sub_2276626A0();
  (*(v11 + 8))(v14, v10);
  [a1 setStartDate_];

  sub_227664510();
  [a1 setDuration_];
  v18 = sub_227664490();
  if ((v19 & 1) == 0)
  {
    if (v18 >= 0x7FFFFFFF)
    {
      v20 = 0x7FFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    [a1 setActivityType_];
  }

  sub_2276644A0();
  v21 = v35;
  if ((*(v7 + 48))(v6, 1, v35) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7BC268, &qword_22767D488);
  }

  else
  {
    v22 = v34;
    (*(v7 + 32))(v34, v6, v21);
    v23 = objc_opt_self();
    v24 = sub_22766BFD0();
    v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v33];

    type metadata accessor for ManagedScoreSummary();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {

      v30 = sub_227664DD0();
      sub_22721959C(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51000], v30);
      swift_willThrow();
      (*(v7 + 8))(v22, v21);
      return;
    }

    v27 = v26;
    sub_22717DDCC(v26);
    [a1 setScoreSummary_];

    (*(v7 + 8))(v22, v21);
  }

  sub_2276644B0();
  if ((v28 & 1) == 0)
  {
    v29 = sub_22766C750();
    [a1 setTimeZoneOffset_];
  }
}

size_t static ArchivedSession.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC268, &qword_22767D488);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v63 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = v50 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC270, &qword_22767D490);
  v5 = *(v61 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = (v50 - v7);
  v59 = sub_227664530();
  v64 = *(v59 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276629D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22766C090();
  sub_226F5D220();
  v66 = sub_22766CFA0();
  v65 = sub_22766C090();
  sub_226F5D274();
  v54 = sub_22766BE70();
  v53 = sub_227662630();
  v19 = sub_22766BE70();
  v20 = static ScoreSummary.representativeSamples()();
  sub_2276629C0();
  sub_227662740();
  v21 = sub_227662980();
  v22 = *(v68 + 8);
  v56 = v13;
  v57 = v10;
  v22(v13, v10);
  (*(v15 + 8))(v18, v14);
  v23 = sub_22766C380();
  v23[2] = 3;
  v23[4] = v21;
  v23[5] = v21;
  v23[6] = v21;
  v92 = v66;
  v93[0] = v67;
  v93[1] = v93;
  v93[2] = &v92;
  v90 = v54;
  v91 = v65;
  v93[3] = &v91;
  v93[4] = &v90;
  v88 = v19;
  v89 = v53;
  v93[5] = &v89;
  v93[6] = &v88;
  v86 = v23;
  v87 = v20;
  v93[7] = &v87;
  v93[8] = &v86;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v78 = v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v80 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v81 = v25;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v83 = v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC278, &qword_22767D498);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v26 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v70 = v26;
  v71 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v72 = v26;
  v27 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v73 = v27;
  v74 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v75 = v27;
  v76 = sub_226F5BF60(&qword_27D7BC280, &qword_27D7BC278, &qword_22767D498);
  v77 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v28 = sub_2276638E0();

  v29 = *(v28 + 16);
  if (v29)
  {
    v69 = MEMORY[0x277D84F90];
    result = sub_226F1F628(0, v29, 0);
    v31 = 0;
    v52 = v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v53 = v29;
    v32 = v69;
    v50[1] = v64 + 32;
    v51 = (v68 + 16);
    v54 = v28;
    v55 = v5;
    while (v31 < *(v28 + 16))
    {
      v33 = v60;
      sub_226E93170(v52 + *(v5 + 72) * v31, v60, &qword_27D7BC270, &qword_22767D490);
      v34 = *v33;
      v68 = v32;
      v35 = v33[1];
      v65 = v33[2];
      v66 = v34;
      v36 = v33[4];
      v67 = v33[3];
      v37 = v33[5];
      v38 = v61;
      v39 = v61[24];
      v40 = *(v33 + v61[28]);
      v41 = v61[32];
      v42 = sub_227663C10();
      v43 = *(v42 - 8);
      v44 = v33 + v41;
      v45 = v62;
      (*(v43 + 16))(v62, v44, v42);
      (*(v43 + 56))(v45, 0, 1, v42);
      v46 = *(v33 + v38[36]);
      (*v51)(v56, v33 + v39, v57);
      sub_226E93170(v45, v63, &qword_27D7BC268, &qword_22767D488);

      v47 = v58;
      v32 = v68;
      sub_2276644E0();
      sub_226E97D1C(v45, &qword_27D7BC268, &qword_22767D488);
      sub_226E97D1C(v33, &qword_27D7BC270, &qword_22767D490);
      v69 = v32;
      v49 = *(v32 + 16);
      v48 = *(v32 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_226F1F628(v48 > 1, v49 + 1, 1);
        v32 = v69;
      }

      ++v31;
      *(v32 + 16) = v49 + 1;
      result = (*(v64 + 32))(v32 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v49, v47, v59);
      v28 = v54;
      v5 = v55;
      if (v53 == v31)
      {

        return v32;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227219544(uint64_t a1)
{
  result = sub_22721959C(&qword_2813A57B8, MEMORY[0x277D50978]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22721959C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2272195E4()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 120);
  v13 = *(v1 + 136);
  swift_getObjectType();
  v15[1] = v12;
  (*(v3 + 104))(v6, *MEMORY[0x277D4E6D8], v2);
  swift_allocObject();
  swift_weakInit();
  sub_2276650A0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  (*(v3 + 8))(v6, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_227219854()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *v7;

  sub_2273BF364(1, sub_2272275BC, v8);

  v10 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *v10;

  sub_2273BF364(0, sub_2272275C4, v11);

  v13 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = *v13;

  sub_2273BF364(2, sub_2272275CC, v14);

  v16 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *v16;

  sub_2273BF364(3, sub_2272275D4, v17);

  v19 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *v19;

  sub_2273BF364(4, sub_2272275DC, v20);

  v22 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = *v22;

  sub_2273BF364(5, sub_2272275E4, v23);

  v25 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *v25;

  sub_2273BF364(6, sub_2272275EC, v26);

  v28 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *v28;

  sub_2273BF364(7, sub_2272275F4, v29);

  v31 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = *v31;

  sub_2273BF364(8, sub_2272275FC, v32);

  v34 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = *v34;
  sub_227488824(12, &unk_22767D5B8, v35);

  v37 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = *v37;
  sub_22722721C(13, sub_2272276E8, v38);

  v40 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = *v40;
  sub_22722702C(14, sub_2272276F0, v41);

  v43 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = *v43;
  sub_227226E3C(20, sub_227227730, v44);

  v46 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = *v46;
  sub_227226C4C(16, sub_227227738, v47);

  v49 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = *v49;
  sub_227226A5C(17, sub_227227740, v50);

  v52 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = *v52;
  sub_22722686C(18, sub_227227748, v53);

  v55 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = *v55;
  sub_22722667C(19, sub_227227750, v56);

  v58 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = *v58;
  sub_22722648C(15, sub_227227758, v59);

  v61 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = *v61;
  sub_22722629C(21, sub_227227760, v62);

  v64 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = *v64;
  sub_2272260AC(22, sub_227227768, v65);

  v67 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = *v67;
  sub_227225EBC(23, sub_227227770, v68);

  v70 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = *v70;
  sub_226F65C44(28, sub_227227778, v71);

  v73 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = *v73;
  sub_226F65A54(27, sub_2272277A8, v74);

  v76 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = *v76;
  sub_226F65864(29, sub_2272277D8, v77);

  v79 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v80 = swift_allocObject();
  swift_weakInit();
  v81 = *v79;
  sub_22712AA24(37, sub_227227808, v80);

  v82 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v83 = swift_allocObject();
  swift_weakInit();
  v84 = *v82;
  sub_22712A834(38, sub_227227840, v83);

  v85 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = *v85;
  sub_226F65674(35, sub_227227848, v86);

  v88 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v89 = swift_allocObject();
  swift_weakInit();
  v90 = *v88;
  sub_22712A644(44, sub_227227878, v89);

  v91 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v92 = swift_allocObject();
  swift_weakInit();
  v93 = *v91;
  sub_226F65484(31, sub_2272278C4, v92);

  v94 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v95 = swift_allocObject();
  swift_weakInit();
  v96 = *v94;
  sub_226F65294(32, sub_2272278F4, v95);

  v97 = __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v98 = swift_allocObject();
  swift_weakInit();
  v99 = *v97;
  sub_226F650A4(33, sub_227227924, v98);
}

uint64_t sub_22721A4E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722ACCC, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721A748@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722ACB0, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721A9A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722AC94, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721AC08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722AC78, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721AE68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722AC5C, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721B0C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722AC40, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721B328@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722AC24, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721B588@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_22722AC08, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22721B7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22721B80C, 0, 0);
}

uint64_t sub_22721B80C()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[11];
    sub_226E91B50(Strong + 80, (v0 + 2));

    v4 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    if (sub_227663D40())
    {
      v5 = swift_task_alloc();
      v0[14] = v5;
      *v5 = v0;
      v5[1] = sub_22721BB00;
      v6 = v0[10];
      v7 = v0[11];

      return sub_227381AD8(v6, v7);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[13] = v12;
      *v12 = v0;
      v12[1] = sub_22721B9E0;
      v13 = v0[10];
      v14 = v0[11];

      return sub_2273813F8(v13, v14);
    }
  }

  else
  {
    v9 = v0[10];
    v10 = sub_2276657D0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22721B9E0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 120) = v0;
    v5 = sub_226FAA9B0;
  }

  else
  {
    v5 = sub_22721BC20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22721BB00()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 120) = v0;
    v5 = sub_226FAA9B0;
  }

  else
  {
    v5 = sub_22721BC20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22721BC20()
{
  v1 = v0[10];
  v2 = sub_2276657D0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22721BCC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722ABEC, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721BF5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722AB38, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721C1EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722AB14, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721C480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722AAF0, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721C714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722AACC, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721C9A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722AAA8, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721CC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227665030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v23);

    v13 = *__swift_project_boxed_opaque_existential_0(v23, v23[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v8 + 8))(v11, v7);
    v14 = *(v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v22 = *(v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v14);
    (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v15 = a2;
    v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    (*(v5 + 32))(v17 + v16, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    sub_226ECF5D8(sub_22722AA20, v17, v14, MEMORY[0x277D84F78] + 8, v22, v15);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }
}

uint64_t sub_22721CF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722A924, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721D228@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722A900, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721D4BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_22722A8DC, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_22721D750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v19);

    v11 = *__swift_project_boxed_opaque_existential_0(v19, v19[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v13 = *(v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E88, &qword_2276767D8);
    sub_226ECF5D8(sub_2272279E0, v14, v12, v15, v13, a2);

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_22721D9F0()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v91 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v92 = v12;
  v13 = *MEMORY[0x277D4E880];
  v87 = v3[13];
  v87(v6, v13, v2);
  v88 = v3 + 13;
  swift_allocObject();
  v90 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();

  sub_227669EB0();

  v14 = v3[1];
  v14(v6, v2);
  v85 = v3 + 1;

  swift_unknownObjectRelease();
  v92 = v12;
  v15 = v87;
  v87(v6, *MEMORY[0x277D4E3A8], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v14(v6, v2);

  swift_unknownObjectRelease();
  v92 = v12;
  v15(v6, *MEMORY[0x277D4E6C0], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v84 = v2;
  v14(v6, v2);
  v86 = v14;

  swift_unknownObjectRelease();
  v92 = v12;
  v16 = v87;
  v87(v6, *MEMORY[0x277D4ED58], v2);
  swift_allocObject();
  swift_weakInit();
  sub_227668930();
  swift_unknownObjectRetain();
  sub_227669E80();

  v17 = v84;
  v14(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v16(v6, *MEMORY[0x277D4E780], v17);
  swift_allocObject();
  swift_weakInit();
  sub_2276654E0();
  swift_unknownObjectRetain();
  v79[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  v79[4] = sub_226F62F70(&qword_281399130, &qword_27D7BC288, &qword_2276823D0);
  v79[3] = sub_22722408C();
  sub_227669E80();

  v18 = v86;
  v86(v6, v17);
  swift_unknownObjectRelease();
  v92 = v12;
  v87(v6, *MEMORY[0x277D4EA80], v17);
  swift_allocObject();
  swift_weakInit();
  sub_2276660B0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v18(v6, v17);
  swift_unknownObjectRelease();
  v92 = v12;
  v19 = v87;
  v87(v6, *MEMORY[0x277D4EA10], v17);
  swift_allocObject();
  swift_weakInit();
  sub_227665CF0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v20 = v84;
  v86(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v19(v6, *MEMORY[0x277D4EA18], v20);
  swift_allocObject();
  swift_weakInit();
  v79[2] = sub_227667B60();
  v79[1] = sub_227665D90();
  swift_unknownObjectRetain();
  sub_227669E80();

  v21 = v84;
  v22 = v86;
  v86(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v19(v6, *MEMORY[0x277D4E838], v21);
  swift_allocObject();
  swift_weakInit();
  sub_227667B70();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  sub_226F62F70(&qword_281399108, &qword_27D7BC290, &unk_227680650);
  sub_227224208();
  sub_227669E80();

  v22(v6, v21);
  swift_unknownObjectRelease();
  v92 = v12;
  v23 = v21;
  v24 = v87;
  v87(v6, *MEMORY[0x277D4EC48], v23);
  swift_allocObject();
  swift_weakInit();
  sub_227667850();
  swift_unknownObjectRetain();
  sub_227669E90();

  v25 = v84;
  v86(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v24(v6, *MEMORY[0x277D4ECD0], v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  v82 = sub_226F62F70(&unk_281399048, &qword_27D7BC298, &qword_22767D518);
  v81 = sub_22722433C();
  sub_227669E90();

  v26 = v84;
  v27 = v86;
  v86(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v87(v6, *MEMORY[0x277D4E788], v26);
  swift_allocObject();
  swift_weakInit();
  sub_227667480();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2A0, &qword_2276824E0);
  sub_226F62F70(&qword_2813990F0, &qword_27D7BC2A0, &qword_2276824E0);
  sub_227224430();
  sub_227669E80();

  v28 = v84;
  v27(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v29 = v87;
  v87(v6, *MEMORY[0x277D4EB00], v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v86(v6, v28);
  swift_unknownObjectRelease();
  v92 = v12;
  v29(v6, *MEMORY[0x277D4EA88], v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2A8, &qword_2276824C0);
  sub_226F62F70(&qword_281399038, &qword_27D7BC2A8, &qword_2276824C0);
  sub_227224564();
  sub_227669E90();

  v30 = v86;
  v86(v6, v28);
  swift_unknownObjectRelease();
  v92 = v12;
  v87(v6, *MEMORY[0x277D4ECD8], v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v31 = v84;
  v30(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v32 = v87;
  v87(v6, *MEMORY[0x277D4EBF0], v31);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v33 = v84;
  v86(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v32(v6, *MEMORY[0x277D4ECE8], v33);
  v34 = v32;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v35 = v84;
  v36 = v86;
  v86(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v34(v6, *MEMORY[0x277D4ECE0], v35);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2B0, &unk_227682480);
  sub_226F62F70(&qword_281399068, &qword_27D7BC2B0, &unk_227682480);
  sub_227224718();
  sub_227669E90();

  v37 = v84;
  v36(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v38 = v87;
  v87(v6, *MEMORY[0x277D4E728], v37);
  swift_allocObject();
  swift_weakInit();
  sub_227664160();
  swift_unknownObjectRetain();
  sub_227669E80();

  v39 = v84;
  v40 = v86;
  v86(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v38(v6, *MEMORY[0x277D4EB60], v39);
  swift_allocObject();
  swift_weakInit();
  sub_227666DC0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v40(v6, v39);
  swift_unknownObjectRelease();
  v92 = v12;
  v87(v6, *MEMORY[0x277D4EDF0], v39);
  swift_allocObject();
  swift_weakInit();
  sub_227666250();
  swift_unknownObjectRetain();
  sub_227669E90();

  v41 = v84;
  v40(v6, v84);
  swift_unknownObjectRelease();
  v92 = v12;
  v42 = v12;
  v43 = v87;
  v87(v6, *MEMORY[0x277D4E3B0], v41);
  swift_allocObject();
  swift_weakInit();
  sub_227663D60();
  sub_2276657D0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v44 = v6;
  v45 = v86;
  v86(v6, v41);
  swift_unknownObjectRelease();
  v92 = v42;
  v43(v6, *MEMORY[0x277D4E658], v41);
  swift_allocObject();
  swift_weakInit();
  sub_227664C00();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v45(v6, v41);
  swift_unknownObjectRelease();
  v92 = v42;
  v87(v6, *MEMORY[0x277D4E6D8], v41);
  swift_allocObject();
  swift_weakInit();
  sub_2276650A0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v45(v6, v41);
  swift_unknownObjectRelease();
  v92 = v42;
  v46 = v42;
  v47 = v87;
  v87(v44, *MEMORY[0x277D4E548], v41);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2B8, &qword_22767D530);
  sub_227224980();
  sub_227224A04();
  sub_227669E90();

  v86(v44, v41);
  swift_unknownObjectRelease();
  v92 = v46;
  v47(v44, *MEMORY[0x277D4EB28], v41);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
  sub_227224AE8();
  sub_227224B6C();
  sub_227669E90();

  v48 = v86;
  v86(v44, v41);
  swift_unknownObjectRelease();
  v92 = v46;
  v87(v44, *MEMORY[0x277D4EAA0], v41);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C0, &unk_22768B820);
  sub_227224C50();
  sub_227224CD4();
  sub_227669E90();

  v49 = v84;
  v48(v44, v84);
  swift_unknownObjectRelease();
  v92 = v46;
  v50 = v87;
  v87(v44, *MEMORY[0x277D4E9D8], v49);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C8, &qword_22768B8A0);
  sub_227224D90();
  sub_227224E14();
  sub_227669E90();

  v51 = v84;
  v86(v44, v84);
  swift_unknownObjectRelease();
  v92 = v46;
  v50(v44, *MEMORY[0x277D4E618], v51);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D0, &qword_22767D538);
  sub_227224EF8();
  sub_227224F7C();
  sub_227669E90();

  v52 = v86;
  v86(v44, v51);
  swift_unknownObjectRelease();
  v92 = v46;
  v87(v44, *MEMORY[0x277D4E4A8], v51);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D8, &unk_22767E5B0);
  sub_227225060();
  sub_2272250E4();
  sub_227669E90();

  v53 = v84;
  v52(v44, v84);
  swift_unknownObjectRelease();
  v92 = v46;
  v87(v44, *MEMORY[0x277D4E550], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E0, &unk_22767E5A0);
  sub_2272251C8();
  sub_22722524C();
  sub_227669E90();

  v54 = v53;
  v86(v44, v53);
  swift_unknownObjectRelease();
  v92 = v46;
  v87(v44, *MEMORY[0x277D4E558], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E8, &unk_22767E590);
  sub_227225330();
  sub_2272253B4();
  sub_227669E90();

  v86(v44, v53);
  swift_unknownObjectRelease();
  v92 = v46;
  v55 = v87;
  v87(v44, *MEMORY[0x277D4E7D0], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2F0, &qword_22768B810);
  sub_227225498();
  sub_22722551C();
  sub_227669E90();

  v79[0] = v44;
  v56 = v86;
  v86(v44, v53);
  swift_unknownObjectRelease();
  v92 = v46;
  v80 = v46;
  v55(v44, *MEMORY[0x277D4EA38], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v57 = v79[0];
  sub_227669E80();

  v56(v57, v53);
  v58 = v80;
  swift_unknownObjectRelease();
  v92 = v58;
  v55(v57, *MEMORY[0x277D4EAC0], v53);
  swift_allocObject();
  swift_weakInit();
  sub_227668AC0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v86(v57, v53);
  swift_unknownObjectRelease();
  v92 = v58;
  v55(v57, *MEMORY[0x277D4E688], v53);
  swift_allocObject();
  swift_weakInit();
  sub_227665030();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v59 = v86;
  v86(v57, v53);
  swift_unknownObjectRelease();
  v92 = v58;
  v55(v57, *MEMORY[0x277D4EB38], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v59(v57, v53);
  swift_unknownObjectRelease();
  v92 = v58;
  v60 = v57;
  v55(v57, *MEMORY[0x277D4E350], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E88, &qword_2276767D8);
  sub_226F62F70(&qword_281398F70, &qword_27D7B84E0, &qword_22767C6B0);
  sub_22722587C(&qword_281398F68, &qword_27D7B84E0, &qword_22767C6B0);
  sub_226F62F70(&qword_281399010, &qword_27D7B9E88, &qword_2276767D8);
  sub_2272257C0();
  sub_227669E80();

  v61 = v86;
  v86(v57, v53);
  v62 = v80;
  swift_unknownObjectRelease();
  v92 = v62;
  v63 = v87;
  v87(v60, *MEMORY[0x277D4ECF0], v54);
  swift_allocObject();
  swift_weakInit();
  v83 = sub_227665DE0();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_22722587C(&qword_281398BC0, &qword_27D7B94F0, &unk_227670BA0);
  sub_227669E80();

  v64 = v84;
  v61(v60, v84);
  swift_unknownObjectRelease();
  v92 = v62;
  v63(v60, *MEMORY[0x277D4E508], v64);
  swift_allocObject();
  swift_weakInit();
  sub_227664F80();
  sub_227665CD0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v65 = v84;
  v66 = v86;
  v86(v60, v84);
  swift_unknownObjectRelease();
  v92 = v62;
  v67 = v87;
  v87(v60, *MEMORY[0x277D4ECC0], v65);
  swift_allocObject();
  swift_weakInit();
  sub_227664590();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  sub_226F62F70(&qword_281399000, &unk_27D7BB8B0, &unk_22767E490);
  sub_226F62FD8();
  sub_227669E80();

  v68 = v84;
  v66(v60, v84);
  swift_unknownObjectRelease();
  v92 = v62;
  v67(v60, *MEMORY[0x277D4EBD8], v68);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2F8, &qword_22767D560);
  sub_227668CE0();
  sub_226F62F70(&qword_2813990D0, &qword_27D7BC2F8, &qword_22767D560);
  sub_227225934();
  sub_227669E80();

  v69 = v84;
  v70 = v86;
  v86(v60, v84);
  swift_unknownObjectRelease();
  v92 = v62;
  v71 = v87;
  v87(v60, *MEMORY[0x277D4E528], v69);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v72 = v84;
  v70(v60, v84);
  swift_unknownObjectRelease();
  v92 = v62;
  v71(v60, *MEMORY[0x277D4EDA8], v72);
  swift_allocObject();
  swift_weakInit();
  sub_227662750();
  swift_unknownObjectRetain();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  v83 = sub_227225A9C();
  v82 = sub_227225B20();
  sub_227669E80();

  v73 = v84;
  v74 = v86;
  v86(v60, v84);
  swift_unknownObjectRelease();
  v92 = v62;
  v75 = v87;
  v87(v60, *MEMORY[0x277D4EBC8], v73);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v76 = v84;
  v74(v60, v84);
  swift_unknownObjectRelease();
  v92 = v62;
  v75(v60, *MEMORY[0x277D4ECA0], v76);
  swift_allocObject();
  swift_weakInit();
  sub_227665840();
  sub_227669E80();

  v77 = v86;
  v86(v60, v76);
  swift_unknownObjectRelease();
  v92 = v62;
  v87(v60, *MEMORY[0x277D4EAF0], v76);
  swift_allocObject();
  swift_weakInit();
  sub_227669E80();

  v77(v60, v76);
  return swift_unknownObjectRelease();
}

uint64_t sub_2272206D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    sub_226ECF5D8(sub_2272275A0, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_227220934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v16);

    v10 = *__swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
    v12 = *__swift_project_boxed_opaque_existential_0((*v11 + 16), *(*v11 + 40));
    sub_227321E7C(7, a1, a2);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
    (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

uint64_t sub_227220B6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v16);

    v12 = *__swift_project_boxed_opaque_existential_0(v16, v16[3]);
    a4(v10, v9);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v13 - 8) + 56))(a5, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v15 - 8) + 56))(a5, 1, 1, v15);
  }
}

uint64_t sub_227220CB0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v13);

    v9 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    a3();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    return (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
  }
}

uint64_t sub_227220DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_227220E04, 0, 0);
}

uint64_t sub_227220E04()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[11];
    sub_226E91B50(Strong + 80, (v0 + 2));

    v4 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    if (sub_227663D40())
    {
      v5 = swift_task_alloc();
      v0[14] = v5;
      *v5 = v0;
      v5[1] = sub_2272210F8;
      v6 = v0[10];
      v7 = v0[11];

      return sub_227381AD8(v6, v7);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[13] = v12;
      *v12 = v0;
      v12[1] = sub_227220FD8;
      v13 = v0[10];
      v14 = v0[11];

      return sub_2273813F8(v13, v14);
    }
  }

  else
  {
    v9 = v0[10];
    v10 = sub_2276657D0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_227220FD8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 120) = v0;
    v5 = sub_226FAD634;
  }

  else
  {
    v5 = sub_22722ADF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272210F8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 120) = v0;
    v5 = sub_226FAD634;
  }

  else
  {
    v5 = sub_22722ADF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227221218@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2B8, &qword_22767D530);
    sub_226ECF5D8(sub_227227584, v8, v9, v11, v10, a1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC310, &qword_22767D588);
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC310, &qword_22767D588);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_227221484@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v17);

    v10 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v12 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
    sub_226ECF5D8(a1, v10, v11, v13, v12, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_2272216E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v17);

    v10 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v12 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C0, &unk_22768B820);
    sub_226ECF5D8(a1, v10, v11, v13, v12, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_227221940@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v10 = *(v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C8, &qword_22768B8A0);
    sub_226ECF5D8(sub_227227530, v8, v9, v11, v10, a1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC308, &qword_22767D580);
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC308, &qword_22767D580);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_227221BAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v17);

    v10 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v12 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D0, &qword_22767D538);
    sub_226ECF5D8(a1, v10, v11, v13, v12, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_227221E0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v17);

    v10 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v12 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D8, &unk_22767E5B0);
    sub_226ECF5D8(a1, v10, v11, v13, v12, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_22722206C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v17);

    v10 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v12 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E0, &unk_22767E5A0);
    sub_226ECF5D8(a1, v10, v11, v13, v12, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_2272222CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v17);

    v10 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v12 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E8, &unk_22767E590);
    sub_226ECF5D8(a1, v10, v11, v13, v12, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_22722252C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v17);

    v10 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v12 = *(v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2F0, &qword_22768B810);
    sub_226ECF5D8(a1, v10, v11, v13, v12, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_22722278C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2272227AC, 0, 0);
}

uint64_t sub_2272227AC()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *v3;
    v0[12] = *v3;
    v5 = *(v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v6 = *(v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v5);
    v7 = *(v6 + 24);

    v16 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[13] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
    *v9 = v0;
    v9[1] = sub_2272229F8;
    v11 = v0[10];

    return (v16)(v11, sub_2272274C0, v4, v10, v5, v6);
  }

  else
  {
    v13 = v0[10];
    v14 = sub_227665030();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2272229F8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_227222B14;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_226F62210;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227222B14()
{
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_227222B80(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_227222BA0, 0, 0);
}

uint64_t sub_227222BA0()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *v3;
    v0[13] = *v3;
    v5 = *(v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v6 = *(v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v5);
    v7 = *(v6 + 24);

    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_227222DAC;
    v10 = MEMORY[0x277D83B88];

    return (v14)(v0 + 10, sub_2272274A4, v4, v10, v5, v6);
  }

  else
  {
    v12 = v0[11];
    *v12 = 0;
    *(v12 + 8) = 1;
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_227222DAC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_227222EC8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_226FAB97C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227222EC8()
{
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_227222F34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v21);

    v13 = *__swift_project_boxed_opaque_existential_0(v21, v21[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v7 + 8))(v10, v6);
    v14 = *(v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v15 = *(v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v11;

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E88, &qword_2276767D8);
    sub_226ECF5D8(a2, v16, v14, v17, v15, a3);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
    (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }
}

uint64_t sub_2272231C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227665DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v22);

    v13 = *__swift_project_boxed_opaque_existential_0(v22, v22[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v8 + 8))(v11, v7);
    v14 = *(v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v15 = *(v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v14);
    (*(v5 + 16))(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v16, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    sub_226ECF5D8(sub_22722740C, v17, v14, v18, v15, a2);

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }
}

uint64_t sub_227223518@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v15);

    v11 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    a4(a1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v12 - 8) + 56))(a5, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  }
}

uint64_t sub_227223658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v11);

    v5 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v6 = __swift_project_boxed_opaque_existential_0((*v5 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(*v5 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
    v7 = *__swift_project_boxed_opaque_existential_0((*v6 + 16), *(*v6 + 40));
    sub_2273225EC(30, a1, a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_2272237B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v9);

    v5 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_227385880(v3, 0, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_2272238EC(_BYTE *a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  *(v2 + 104) = *a1;
  return MEMORY[0x2822009F8](sub_227223914, 0, 0);
}

uint64_t sub_227223914()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_226F60430;
    v5 = *(v0 + 104);

    return sub_2273804DC(v5);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_227223A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v15);

    v5 = __swift_project_boxed_opaque_existential_0(v15, v15[3]);
    v6 = *v5;
    v7 = (*v5 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore);
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v3;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
    sub_226ECF5D8(sub_227225C70, v10, v8, v11, v9, a2);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_227223BEC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v25);

    v13 = __swift_project_boxed_opaque_existential_0(v25, v25[3]);
    v14 = *v13;
    v15 = (*v13 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore);
    v23 = a3;
    v16 = v15[3];
    v24 = v15[4];
    __swift_project_boxed_opaque_existential_0(v15, v16);
    (*(v8 + 16))(v11, a1, v7);
    v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    (*(v8 + 32))(v18 + v17, v11, v7);

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
    sub_226ECF5D8(v23, v18, v16, v19, v24, a4);

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
    (*(*(v20 - 8) + 56))(a4, 0, 1, v20);
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
    return (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }
}

uint64_t sub_227223E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v9);

    v5 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_227387C40(v3, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

unint64_t sub_22722408C()
{
  result = qword_281399128;
  if (!qword_281399128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC288, &qword_2276823D0);
    sub_22722AB64(&qword_28139BC30, MEMORY[0x277D504F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399128);
  }

  return result;
}

unint64_t sub_227224208()
{
  result = qword_281399100;
  if (!qword_281399100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC290, &unk_227680650);
    sub_22722AB64(&qword_28139B9A8, MEMORY[0x277D50820]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399100);
  }

  return result;
}

unint64_t sub_22722433C()
{
  result = qword_281399040;
  if (!qword_281399040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC298, &qword_22767D518);
    sub_22722AB64(&qword_28139B6C0, MEMORY[0x277D52208]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399040);
  }

  return result;
}

unint64_t sub_227224430()
{
  result = qword_2813990E8;
  if (!qword_2813990E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2A0, &qword_2276824E0);
    sub_22722AB64(&qword_28139B938, MEMORY[0x277D50C70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990E8);
  }

  return result;
}

unint64_t sub_227224564()
{
  result = qword_281399030;
  if (!qword_281399030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2A8, &qword_2276824C0);
    sub_22722AB64(&qword_28139B6B8, MEMORY[0x277D52220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399030);
  }

  return result;
}

unint64_t sub_227224718()
{
  result = qword_281399060;
  if (!qword_281399060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2B0, &unk_227682480);
    sub_22722AB64(&qword_28139B6F0, MEMORY[0x277D51E68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399060);
  }

  return result;
}

uint64_t sub_22722488C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227220DE0(a1, a2, v2);
}

unint64_t sub_227224980()
{
  result = qword_281398C00;
  if (!qword_281398C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2B8, &qword_22767D530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C00);
  }

  return result;
}

unint64_t sub_227224A04()
{
  result = qword_281398BF8;
  if (!qword_281398BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2B8, &qword_22767D530);
    sub_22722AB64(&qword_28139B220, MEMORY[0x277D53E10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398BF8);
  }

  return result;
}

unint64_t sub_227224AE8()
{
  result = qword_281398CD0;
  if (!qword_281398CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB978, &unk_22767B520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CD0);
  }

  return result;
}

unint64_t sub_227224B6C()
{
  result = qword_281398CC8;
  if (!qword_281398CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB978, &unk_22767B520);
    sub_22722AB64(&qword_28139B560, MEMORY[0x277D52AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CC8);
  }

  return result;
}

unint64_t sub_227224C50()
{
  result = qword_281398D10;
  if (!qword_281398D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2C0, &unk_22768B820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D10);
  }

  return result;
}

unint64_t sub_227224CD4()
{
  result = qword_281398D08;
  if (!qword_281398D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2C0, &unk_22768B820);
    sub_22722AB64(&qword_28139B5E8, MEMORY[0x277D52790]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D08);
  }

  return result;
}

unint64_t sub_227224D90()
{
  result = qword_281398D60;
  if (!qword_281398D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2C8, &qword_22768B8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D60);
  }

  return result;
}

unint64_t sub_227224E14()
{
  result = qword_281398D58;
  if (!qword_281398D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2C8, &qword_22768B8A0);
    sub_22722AB64(&qword_28139B6F8, MEMORY[0x277D51E30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D58);
  }

  return result;
}

unint64_t sub_227224EF8()
{
  result = qword_281398E60;
  if (!qword_281398E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2D0, &qword_22767D538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E60);
  }

  return result;
}

unint64_t sub_227224F7C()
{
  result = qword_281398E58;
  if (!qword_281398E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2D0, &qword_22767D538);
    sub_22722AB64(&qword_28139BC78, MEMORY[0x277D50278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E58);
  }

  return result;
}

unint64_t sub_227225060()
{
  result = qword_281398BE0;
  if (!qword_281398BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2D8, &unk_22767E5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398BE0);
  }

  return result;
}

unint64_t sub_2272250E4()
{
  result = qword_281398BD8;
  if (!qword_281398BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2D8, &unk_22767E5B0);
    sub_22722AB64(&qword_28139B1F0, MEMORY[0x277D53E88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398BD8);
  }

  return result;
}

unint64_t sub_2272251C8()
{
  result = qword_281398EE0;
  if (!qword_281398EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2E0, &unk_22767E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EE0);
  }

  return result;
}

unint64_t sub_22722524C()
{
  result = qword_281398ED8;
  if (!qword_281398ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2E0, &unk_22767E5A0);
    sub_22722AB64(&qword_28139BD10, MEMORY[0x277D4FE80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398ED8);
  }

  return result;
}

unint64_t sub_227225330()
{
  result = qword_281398EC0;
  if (!qword_281398EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2E8, &unk_22767E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EC0);
  }

  return result;
}

unint64_t sub_2272253B4()
{
  result = qword_281398EB8;
  if (!qword_281398EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2E8, &unk_22767E590);
    sub_22722AB64(&qword_28139BCE0, MEMORY[0x277D4FF18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EB8);
  }

  return result;
}

unint64_t sub_227225498()
{
  result = qword_281398DB0;
  if (!qword_281398DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2F0, &qword_22768B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DB0);
  }

  return result;
}

unint64_t sub_22722551C()
{
  result = qword_281398DA8;
  if (!qword_281398DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2F0, &qword_22768B810);
    sub_22722AB64(&qword_28139B8A0, MEMORY[0x277D51130]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DA8);
  }

  return result;
}

uint64_t sub_227225650(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22722278C(a1, v1);
}

uint64_t sub_2272256EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227222B80(a1, v1);
}

unint64_t sub_2272257C0()
{
  result = qword_281399008;
  if (!qword_281399008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9E88, &qword_2276767D8);
    sub_22722AB64(&qword_28139B5C0, MEMORY[0x277D52828]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399008);
  }

  return result;
}

uint64_t sub_22722587C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_226F62704();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227225934()
{
  result = qword_2813990C8;
  if (!qword_2813990C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC2F8, &qword_22767D560);
    sub_22712BDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990C8);
  }

  return result;
}

uint64_t sub_2272259B8(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272238EC(a1, v1);
}

unint64_t sub_227225A9C()
{
  result = qword_281398CF8;
  if (!qword_281398CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC970, qword_227675810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CF8);
  }

  return result;
}

unint64_t sub_227225B20()
{
  result = qword_281398CF0;
  if (!qword_281398CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC970, qword_227675810);
    sub_22722AB64(&qword_28139B5C0, MEMORY[0x277D52828]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CF0);
  }

  return result;
}

uint64_t sub_227225CCC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226EA9750;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226EA6D68, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722AE08;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE50, v17);
}

uint64_t sub_227225EBC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722A86C, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE24, v17);
}

uint64_t sub_2272260AC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722A8F8, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE28, v17);
}

uint64_t sub_22722629C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722A91C, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE2C, v17);
}

uint64_t sub_22722648C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A940;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722A94C, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADEC;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE30, v17);
}

uint64_t sub_22722667C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722AAA0, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE34, v17);
}

uint64_t sub_22722686C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722AAC4, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE38, v17);
}

uint64_t sub_227226A5C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722AAE8, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE3C, v17);
}

uint64_t sub_227226C4C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722AB0C, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE40, v17);
}

uint64_t sub_227226E3C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722AB30, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE44, v17);
}

uint64_t sub_22722702C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A940;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722AB54, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADEC;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE48, v17);
}

uint64_t sub_22722721C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22722A85C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22722AB5C, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22722ADF0;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22722AE4C, v17);
}

uint64_t sub_22722763C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_22721B7E8(a1, a2, v2);
}

uint64_t sub_2272279FC@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_2276633A0();
    v19 = MEMORY[0x277D4FF18];
    sub_22722AB64(&qword_28139BCE0, MEMORY[0x277D4FF18]);
    sub_22722AB64(&unk_28139BCF8, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_226EC1D10;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_227227E2C@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_2276632A0();
    v19 = MEMORY[0x277D4FE80];
    sub_22722AB64(&qword_28139BD10, MEMORY[0x277D4FE80]);
    sub_22722AB64(&qword_28139BD28, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22722825C@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_227669580();
    v19 = MEMORY[0x277D53E88];
    sub_22722AB64(&qword_28139B1F0, MEMORY[0x277D53E88]);
    sub_22722AB64(&unk_28139B208, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22722868C@<X0>(uint64_t a1@<X1>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = sub_227665030();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v18;

    sub_227667720();
    v33(v20);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v33 = *(v10 + 32);
      (v33)(v15, v8, v9);
      v25 = swift_allocObject();
      v32 = v25;
      *(v25 + 16) = sub_226EC2978;
      *(v25 + 24) = 0;
      (*(v10 + 16))(v13, v15, v9);
      v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v27 = swift_allocObject();
      (v33)(v27 + v26, v13, v9);
      v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
      v29 = v32;
      *v28 = sub_22722AD28;
      v28[1] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v10 + 8))(v15, v9);
      return (*(v31 + 8))(v20, v16);
    }

    sub_22722A874(v8);
    sub_226F6649C();
    v21 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
    (*(v31 + 8))(v20, v16);
  }

  else
  {
    sub_226F6649C();
    v21 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_227228AE4@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_2276642E0();
    v19 = MEMORY[0x277D50820];
    sub_22722AB64(&qword_28139B9A8, MEMORY[0x277D50820]);
    sub_22722AB64(&qword_27D7BC350, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_227228F14@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_227667B30();
    v19 = MEMORY[0x277D53128];
    sub_22722AB64(&qword_28139B4E8, MEMORY[0x277D53128]);
    sub_22722AB64(&unk_28139B4F8, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_227229344@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_227665D70();
    v19 = MEMORY[0x277D51E30];
    sub_22722AB64(&qword_28139B6F8, MEMORY[0x277D51E30]);
    sub_22722AB64(&qword_28139B708, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_227229774@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_227663A30();
    v19 = MEMORY[0x277D50278];
    sub_22722AB64(&qword_28139BC78, MEMORY[0x277D50278]);
    sub_22722AB64(&qword_28139BC90, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_227229BA4@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_227666FF0();
    v19 = MEMORY[0x277D52AF8];
    sub_22722AB64(&qword_28139B560, MEMORY[0x277D52AF8]);
    sub_22722AB64(&unk_28139B578, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_227229FD4@<X0>(uint64_t a1@<X1>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = sub_227664C00();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v18;

    sub_227667720();
    v33(v20);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v33 = *(v10 + 32);
      (v33)(v15, v8, v9);
      v25 = swift_allocObject();
      v32 = v25;
      *(v25 + 16) = sub_226EC2978;
      *(v25 + 24) = 0;
      (*(v10 + 16))(v13, v15, v9);
      v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v27 = swift_allocObject();
      (v33)(v27 + v26, v13, v9);
      v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
      v29 = v32;
      *v28 = sub_22722AD28;
      v28[1] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v10 + 8))(v15, v9);
      return (*(v31 + 8))(v20, v16);
    }

    sub_22722A874(v8);
    sub_226F6649C();
    v21 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
    (*(v31 + 8))(v20, v16);
  }

  else
  {
    sub_226F6649C();
    v21 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22722A42C@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1)
  {
    v32 = a3;
    v33 = a2;
    v34 = v16;
    v35 = a4;
    sub_227669530();
    v19 = MEMORY[0x277D53E10];
    sub_22722AB64(&qword_28139B220, MEMORY[0x277D53E10]);
    sub_22722AB64(&unk_28139B238, v19);

    v31 = sub_22766C5D0();
    v36 = v31;
    v33(&v36);
    v22 = v34;
    if ((*(v34 + 48))(v11, 1, v12) != 1)
    {
      v25 = *(v22 + 32);
      v25(v18, v11, v12);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_226EC2978;
      *(v26 + 24) = 0;
      (*(v22 + 16))(v15, v18, v12);
      v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v25((v28 + v27), v15, v12);
      v29 = (v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v29 = sub_22722AD28;
      v29[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v22 + 8))(v18, v12);
    }

    sub_22722A874(v11);
    sub_226F6649C();
    v20 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22722A874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_54Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22722AB64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_68Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_132Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22722B004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC358, &qword_22767D5F0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_227235EB8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    swift_deallocClassInstance();
    sub_226ED765C(v22, sub_2274DD780, MEMORY[0x277D52700], a2);
  }
}

uint64_t sub_22722B250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC380, &qword_22767D680);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227668D00();
  v15 = v14;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v40[0] = v13;
  v40[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226ED25F8(v40, v38);
  v17 = v39;
  if (v39)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC388 &qword_22767D6B0))];

  sub_226E97D1C(v40, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v26 = v25;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v40, 0);
  swift_endAccess();

  v30 = MEMORY[0x22AA99A00]();
  sub_2275447A4(v10, v41);
  objc_autoreleasePoolPop(v30);
  swift_setDeallocating();

  v31 = *(v10 + 40);

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v10 + v32, v33);
  v34 = *(*v10 + 48);
  v35 = *(*v10 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_22722B66C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC370, &qword_22767D648);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227668D00();
  v15 = v14;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v40[0] = v13;
  v40[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226ED25F8(v40, v38);
  v17 = v39;
  if (v39)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC378 &unk_227683640))];

  sub_226E97D1C(v40, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v26 = v25;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v40, 0);
  swift_endAccess();

  v30 = MEMORY[0x22AA99A00]();
  sub_22754480C(v10, v41);
  objc_autoreleasePoolPop(v30);
  swift_setDeallocating();

  v31 = *(v10 + 40);

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v10 + v32, v33);
  v34 = *(*v10 + 48);
  v35 = *(*v10 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_22722BA88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC360, qword_22767D5F8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227668D00();
  v15 = v14;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v40[0] = v13;
  v40[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226ED25F8(v40, v38);
  v17 = v39;
  if (v39)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC368 &qword_22767D640))];

  sub_226E97D1C(v40, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v26 = v25;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v40, 0);
  swift_endAccess();

  v30 = MEMORY[0x22AA99A00]();
  sub_227544874(v10, v41);
  objc_autoreleasePoolPop(v30);
  swift_setDeallocating();

  v31 = *(v10 + 40);

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v10 + v32, v33);
  v34 = *(*v10 + 48);
  v35 = *(*v10 + 52);
  return swift_deallocClassInstance();
}

unint64_t sub_22722BEA4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_227669BF0();
  v1 = sub_22766BFD0();

  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_226F04970(v7, v8);
    sub_226E97CC0(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC58, qword_227687570);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v8);
      return v6;
    }

    else
    {
      v5 = sub_227148E68(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_0(v8);
      return v5;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];

    return sub_227148E68(v4);
  }
}

uint64_t sub_22722BFF4()
{
  v0 = sub_22722BEA4();
  v1 = sub_227148F7C(MEMORY[0x277D84F90]);
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  v41 = v0;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (v7 << 10) | (16 * v9);
    v11 = (*(v41 + 48) + v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = (*(v41 + 56) + v10);
    v15 = *v14;
    v16 = v14[1];
    v17 = *v11 == 0x656E6F6870 && v12 == 0xE500000000000000;
    if (v17 || (v18 = *v11, v19 = v11[1], (sub_22766D190() & 1) != 0))
    {
      v20 = 0;
      goto LABEL_15;
    }

    v22 = v13 == 0x74656C626174 && v12 == 0xE600000000000000;
    if (v22 || (sub_22766D190() & 1) != 0)
    {
      v20 = 1;
      goto LABEL_15;
    }

    v23 = v13 == 0x6863746177 && v12 == 0xE500000000000000;
    if (v23 || (sub_22766D190() & 1) != 0)
    {
      v20 = 2;
      goto LABEL_15;
    }

    if (v13 == 30324 && v12 == 0xE200000000000000 || (sub_22766D190() & 1) != 0)
    {
      v20 = 3;
LABEL_15:
      swift_bridgeObjectRetain_n();

      v21 = sub_2276657A0();
      if (v21 == 2)
      {
        goto LABEL_16;
      }

      v40 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_226F3AA10(v20);
      v27 = v1[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_45;
      }

      if (v1[3] >= v30)
      {
        v33 = v40;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_38;
        }

        v36 = v25;
        v39 = v26;
        sub_226FF1150();
        v26 = v39;
        v25 = v36;
      }

      else
      {
        v38 = v26;
        sub_226FE4BC8(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_226F3AA10(v20);
        v32 = v31 & 1;
        v26 = v38;
        if ((v38 & 1) != v32)
        {
          goto LABEL_47;
        }
      }

      v33 = v40;
LABEL_38:
      if (v26)
      {
        *(v1[7] + v25) = v33 & 1;
LABEL_16:
      }

      else
      {
        v1[(v25 >> 6) + 8] |= 1 << v25;
        *(v1[6] + v25) = v20;
        *(v1[7] + v25) = v33 & 1;

        v34 = v1[2];
        v29 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v29)
        {
          goto LABEL_46;
        }

        v1[2] = v35;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_22722C354(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_22722BEA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 16) = xmmword_227670CD0;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
      v8 = 0x6863746177;
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 30324;
    }
  }

  else if (a2)
  {
    v7 = 0xE600000000000000;
    v8 = 0x74656C626174;
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x656E6F6870;
  }

  *(inited + 32) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = sub_2276657B0();
  *(v6 + 56) = v9;
  v10 = sub_227148E68(v6);
  swift_setDeallocating();
  sub_226E97D1C(v6 + 32, &unk_27D7BE670, &unk_227674260);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v4;
  sub_226FC91B0(v10, sub_2270ABE5C, 0, isUniquelyReferenced_nonNull_native, &v15);

  if (v2)
  {

    __break(1u);
  }

  else
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = sub_22766BE90();

    sub_227669BF0();
    v14 = sub_22766BFD0();

    [v12 setObject:v13 forKey:v14];
  }
}

void sub_22722C54C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC358, &qword_22767D5F0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  v14 = qword_2813B2078;
  swift_beginAccess();
  v15 = sub_227542FC0(v11 + v14, v7, v6);
  if (v15)
  {
    if (v15 == 1)
    {

LABEL_4:
      v16 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB268, &unk_227679DF0);
      v17 = sub_2276668F0();
      v18 = *(v17 - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_227670CD0;
      (*(v18 + 16))(v21 + v20, a1, v17);
      sub_227560248(v21, v16[1], *(v16 + 16), v16[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v22 = sub_2272485D0(0);
    if (!v27)
    {
      v23 = v22;
      [v22 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v24 = sub_22766C9E0();
      v25 = sub_226EDAB24(v24);

      sub_226EDAB78(v25, v13);

      goto LABEL_4;
    }
  }
}

uint64_t sub_22722C818()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = *MEMORY[0x277CD2898];
  v14 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (v14)
  {
    v15 = v14;
    *&v1[OBJC_IVAR____TtC15SeymourServices12PowerMonitor_notificationPort] = v14;
    sub_226EA1CF4();
    v16 = sub_22766C950();
    IONotificationPortSetDispatchQueue(v15, v16);

    v17 = IOServiceMatching("IOPMPowerSource");
    MatchingService = IOServiceGetMatchingService(v13, v17);
    *&v1[OBJC_IVAR____TtC15SeymourServices12PowerMonitor_powerService] = MatchingService;
    if (MatchingService)
    {
      v19 = MatchingService;
      v20 = OBJC_IVAR____TtC15SeymourServices12PowerMonitor_powerNotificationReference;
      swift_beginAccess();
      v21 = IOServiceAddInterestNotification(v15, v19, "IOGeneralInterest", sub_226E909F8, v1, &v1[v20]);
      v22 = swift_endAccess();
      if (v21)
      {
        sub_22766A6C0();
        v23 = sub_22766B380();
        v24 = sub_22766C890();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_226E8E000, v23, v24, "Failed to subscribe to battery status notifications. Not activating.", v25, 2u);
          MEMORY[0x22AA9A450](v25, -1, -1);
        }

        return (*(v3 + 8))(v12, v2);
      }

      else
      {
        v33 = *&v1[OBJC_IVAR____TtC15SeymourServices12PowerMonitor_lock];
        MEMORY[0x28223BE20](v22);
        *(&v34 - 2) = v1;
        sub_2276696A0();
        return sub_226E90EAC();
      }
    }

    else
    {
      sub_22766A6C0();
      v30 = sub_22766B380();
      v31 = sub_22766C890();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_226E8E000, v30, v31, "Failed to create power service. Not activating.", v32, 2u);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      return (*(v3 + 8))(v10, v2);
    }
  }

  else
  {
    sub_22766A6C0();
    v27 = sub_22766B380();
    v28 = sub_22766C890();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_226E8E000, v27, v28, "Failed to create IONotificationPortCreate. Not activating.", v29, 2u);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

id sub_22722CBE0()
{
  v1 = *&v0[OBJC_IVAR____TtC15SeymourServices12PowerMonitor_notificationPort];
  if (v1)
  {
    IONotificationPortDestroy(v1);
  }

  v2 = OBJC_IVAR____TtC15SeymourServices12PowerMonitor_powerNotificationReference;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *&v0[OBJC_IVAR____TtC15SeymourServices12PowerMonitor_powerService];
  if (v4)
  {
    IOObjectRelease(v4);
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for PowerMonitor();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for PowerMonitor.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PowerMonitor.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22722CE88(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22722CE9C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_22722CEBC()
{
  v2 = *(*v0 + OBJC_IVAR____TtC15SeymourServices12PowerMonitor_lock);
  result = sub_2276696A0();
  if (!v1)
  {
    return v4;
  }

  return result;
}

unint64_t sub_22722CF28()
{
  result = qword_27D7BC3C0;
  if (!qword_27D7BC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC3C0);
  }

  return result;
}

void sub_22722CF7C()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC15SeymourServices12PowerMonitor_state) == 3)
  {
    *(v1 + OBJC_IVAR____TtC15SeymourServices12PowerMonitor_state) = 2;
  }
}

id sub_22722CFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_226F20368(0, v1, 0);
  v2 = v30;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v1;
  v29 = v9;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v12 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(v30 + 16);
    v14 = *(v30 + 24);
    v15 = v7;
    result = *(*(v7 + 56) + 8 * v6);
    if (v13 >= v14 >> 1)
    {
      v25 = v14 > 1;
      v26 = result;
      sub_226F20368(v25, v13 + 1, 1);
      result = v26;
    }

    *(v30 + 16) = v13 + 1;
    v16 = (v30 + 24 * v13);
    v16[4] = 0x707954726F727265;
    v16[5] = 0xE900000000000065;
    v16[6] = result;
    v10 = 1 << *(v15 + 32);
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v12);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v15;
    v18 = *(v15 + 36);
    v9 = v29;
    if (v29 != v18)
    {
      goto LABEL_26;
    }

    v19 = v17 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v11 = v28;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (a1 + 72 + 8 * v12);
      v11 = v28;
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_226EB526C(v6, v29, 0);
          v7 = a1;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v29, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v10;
    if (v8 == v11)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22722D21C()
{
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_22722D290()
{
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_22722D2E4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22766D030();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_22722D358()
{
  v0 = sub_22714B20C(MEMORY[0x277D84F90]);
  sub_227664EC0();
  sub_22714F81C();
  sub_22766D270();
  v1 = sub_22766C750();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_22736B81C(v1, isUniquelyReferenced_nonNull_native);
  v3 = sub_22722CFA0(v0);

  if (v3[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v4 = sub_22766D010();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v7 = v4;

  sub_22722D490(v5, 1, &v7);

  return v7;
}

void sub_22722D490(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_226E92000(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_226FEB7DC(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_226E92000(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_22766D220();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_226FF41F8();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = sub_226E92000(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_226FEB7DC(v34, 1);
        v35 = *a3;
        v30 = sub_226E92000(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t type metadata accessor for CreatePlanFailureAnalyticsEvent()
{
  result = qword_27D7BC3C8;
  if (!qword_27D7BC3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22722D8A4()
{
  result = sub_227664EC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22722D914()
{
  result = qword_27D7BC3D8;
  if (!qword_27D7BC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC3D8);
  }

  return result;
}

unint64_t sub_22722D968()
{
  v0 = sub_22766D260();
  if (!v0)
  {
    v9 = *MEMORY[0x277CBE2C8];
    goto LABEL_9;
  }

  v1 = v0;
  swift_getErrorValue();
  v2 = sub_22766D2A0();

  v3 = *MEMORY[0x277CBE2C8];
  v4 = sub_22766C000();
  if (!*(v2 + 16))
  {

    goto LABEL_8;
  }

  v6 = sub_226E92000(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_226E97CC0(*(v2 + 56) + 32 * v6, v20);

  sub_22722DB68();
  if (swift_dynamicCast())
  {
    goto LABEL_12;
  }

LABEL_9:
  v10 = sub_22766D2A0();
  v11 = sub_22766C000();
  if (!*(v10 + 16))
  {

    goto LABEL_14;
  }

  v13 = sub_226E92000(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_226E97CC0(*(v10 + 56) + 32 * v13, v20);

  sub_22722DB68();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v16 = 0;
    v17 = 1;
    return v16 | (v17 << 32);
  }

LABEL_12:
  v16 = [v19 intValue];

  v17 = 0;
  return v16 | (v17 << 32);
}

unint64_t sub_22722DB68()
{
  result = qword_28139D220;
  if (!qword_28139D220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D220);
  }

  return result;
}

void sub_22722DBB4(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      [a1 sortOrder];
      sub_2276639F0();

      return;
    }
  }

  v6 = sub_227664DD0();
  sub_22722E198(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

size_t static CatalogTheme.representativeSamples()()
{
  v25 = sub_227663A30();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v5 = sub_22766C090();
  sub_22722E01C();
  v6 = sub_22766CFA0();
  v34 = v5;
  v35[0] = v4;
  v35[1] = v35;
  v35[2] = &v34;
  v33 = v6;
  v35[3] = &v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC3E8, &unk_227685D70);
  v27 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v28 = v27;
  v29 = sub_226F5BF60(&qword_27D7BC3F0, &qword_27D7BC3E8, &unk_227685D70);
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_226F1F308(0, v8, 0);
    v10 = 0;
    v11 = v26;
    v22[1] = v0 + 32;
    v23 = v8;
    v12 = (v7 + 64);
    v24 = v7;
    while (v10 < *(v7 + 16))
    {
      v13 = v0;
      v14 = *(v12 - 4);
      v15 = *(v12 - 3);
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = v3;
      v19 = *v12;

      sub_2276639F0();
      v26 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1F308(v20 > 1, v21 + 1, 1);
        v11 = v26;
      }

      ++v10;
      *(v11 + 16) = v21 + 1;
      v0 = v13;
      result = (*(v13 + 32))(v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v18, v25);
      v12 += 10;
      v3 = v18;
      v7 = v24;
      if (v23 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_22722E01C()
{
  result = qword_27D7BC3E0;
  if (!qword_27D7BC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC3E0);
  }

  return result;
}

id sub_22722E094(void *a1)
{
  sub_227663A00();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663A10();
  v3 = sub_22766BFD0();

  [a1 setName_];

  return [a1 setSortOrder_];
}

uint64_t sub_22722E140(uint64_t a1)
{
  result = sub_22722E198(&qword_28139BC80, MEMORY[0x277D50278]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22722E198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22722E1E0(uint64_t a1)
{
  sub_22766D370();
  sub_2276694E0();
  sub_22722E638(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v2 = *(a1 + 20);
  sub_227662750();
  sub_22722E638(&qword_2813A5820, MEMORY[0x277CC9578]);
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_22722E2CC(uint64_t a1, uint64_t a2)
{
  sub_2276694E0();
  sub_22722E638(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v3 = *(a2 + 20);
  sub_227662750();
  sub_22722E638(&qword_2813A5820, MEMORY[0x277CC9578]);
  return sub_22766BF60();
}

uint64_t sub_22722E3A0(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_2276694E0();
  sub_22722E638(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v3 = *(a2 + 20);
  sub_227662750();
  sub_22722E638(&qword_2813A5820, MEMORY[0x277CC9578]);
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t type metadata accessor for DirtySyncZone()
{
  result = qword_28139B060;
  if (!qword_28139B060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22722E520()
{
  sub_2276694E0();
  sub_22722E638(&qword_28139B260, MEMORY[0x277D53DA0]);
  sub_22766C290();
  sub_22766C290();
  if (v7 == v5 && v8 == v6)
  {
  }

  else
  {
    v1 = sub_22766D190();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  v3 = *(type metadata accessor for DirtySyncZone() + 20);
  v2 = sub_227662700();
  return v2 & 1;
}

uint64_t sub_22722E638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22722E6A8()
{
  result = sub_2276694E0();
  if (v1 <= 0x3F)
  {
    result = sub_227662750();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22722E740()
{
  result = qword_27D7BC3F8;
  if (!qword_27D7BC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC3F8);
  }

  return result;
}

unint64_t sub_22722E794(uint64_t a1)
{
  result = sub_22722E7BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22722E7BC()
{
  result = qword_27D7BC400;
  if (!qword_27D7BC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC400);
  }

  return result;
}

uint64_t sub_22722E810()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EDB0(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EDB0((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22722E918()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  swift_getObjectType();
  v15[1] = v12;
  (*(v3 + 104))(v6, *MEMORY[0x277D4E330], v2);
  swift_allocObject();
  swift_weakInit();
  sub_227666DA0();
  sub_227667210();
  swift_unknownObjectRetain();
  sub_227669E80();

  (*(v3 + 8))(v6, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_22722EBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v16);

    v10 = *__swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_22766A6A0();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = __swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
    v12 = *__swift_project_boxed_opaque_existential_0((*v11 + 16), *(*v11 + 40));
    sub_2272B0670(14, a1, a2);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
    (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

uint64_t sub_22722EE0C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BD8, qword_22767DD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v50 - v8;
  v62 = sub_227662190();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_227665440();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v60);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227665F20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v21)
  {
    v72 = v1;
    v73 = MEMORY[0x277D84F90];
    v52 = v21;
    sub_226F1EF90(0, v21, 0);
    v23 = -1 << *(a1 + 32);
    v70 = a1 + 56;
    v71 = v73;
    result = sub_22766CC90();
    v24 = result;
    v25 = 0;
    v56 = v17 + 16;
    v57 = (v9 + 8);
    v58 = (v12 + 8);
    v59 = (v17 + 8);
    v51 = a1 + 64;
    v53 = v17;
    v54 = a1;
    v55 = v16;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(a1 + 32))
    {
      if ((*(v70 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_25;
      }

      v67 = 1 << v24;
      v68 = v24 >> 6;
      v28 = *(a1 + 36);
      v65 = v25;
      v66 = v28;
      (*(v17 + 16))(v20, *(a1 + 48) + *(v17 + 72) * v24, v16);
      sub_227665F00();
      v29 = sub_227662940();
      (*(*(v29 - 8) + 56))(v63, 1, 1, v29);
      v30 = sub_2276629D0();
      (*(*(v30 - 8) + 56))(v64, 1, 1, v30);
      v69 = sub_227665400();
      sub_227665410();
      v31 = v20;
      sub_227665420();
      sub_227665430();
      v32 = v61;
      sub_227662180();
      v33 = v72;
      v34 = sub_2276620D0();
      v72 = v33;
      if (v33)
      {
        (*v57)(v32, v62);
        (*v58)(v15, v60);
        (*v59)(v20, v55);
      }

      v36 = v34;
      v37 = v35;
      (*v57)(v32, v62);
      (*v58)(v15, v60);
      v38 = v31;
      v16 = v55;
      result = (*v59)(v31, v55);
      v39 = v71;
      v73 = v71;
      v41 = *(v71 + 16);
      v40 = *(v71 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_226F1EF90(v40 > 1, v41 + 1, 1);
        v39 = v73;
      }

      *(v39 + 16) = v41 + 1;
      v42 = v39 + 16 * v41;
      *(v42 + 32) = v36;
      *(v42 + 40) = v37;
      a1 = v54;
      v26 = 1 << *(v54 + 32);
      if (v24 >= v26)
      {
        goto LABEL_26;
      }

      v43 = *(v70 + 8 * v68);
      if ((v43 & v67) == 0)
      {
        goto LABEL_27;
      }

      v71 = v39;
      if (v66 != *(v54 + 36))
      {
        goto LABEL_28;
      }

      v44 = v43 & (-2 << (v24 & 0x3F));
      if (v44)
      {
        v26 = __clz(__rbit64(v44)) | v24 & 0x7FFFFFFFFFFFFFC0;
        v20 = v38;
        v27 = v65;
      }

      else
      {
        v45 = v68 << 6;
        v46 = v68 + 1;
        v47 = (v51 + 8 * v68);
        v20 = v38;
        while (v46 < (v26 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            result = sub_226EB526C(v24, v66, 0);
            v26 = __clz(__rbit64(v48)) + v45;
            goto LABEL_20;
          }
        }

        result = sub_226EB526C(v24, v66, 0);
LABEL_20:
        v27 = v65;
      }

      v25 = v27 + 1;
      v24 = v26;
      v17 = v53;
      if (v25 == v52)
      {
        return v71;
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
    __break(1u);
  }

  return result;
}

uint64_t sub_22722F4C0(uint64_t a1)
{
  v3 = sub_227665F20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v35[1] = v1;
    v46 = MEMORY[0x277D84F90];
    v10 = v6;
    sub_226F1F468(0, v8, 0);
    v45 = v46;
    v11 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    result = sub_22766CC90();
    v12 = v10;
    v13 = result;
    v14 = 0;
    v40 = (v4 + 8);
    v41 = v4 + 16;
    v36 = a1 + 64;
    v37 = v8;
    v38 = v4;
    v39 = v12;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v43 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v14;
      v18 = *(a1 + 36);
      v19 = v12;
      (*(v4 + 16))(v44, *(a1 + 48) + *(v4 + 72) * v13);
      result = sub_227665F10();
      if (result < 0xFFFFFFFF80000000)
      {
        goto LABEL_25;
      }

      v20 = result;
      if (result > 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      result = (*v40)(v44, v19);
      v21 = v45;
      v46 = v45;
      v23 = *(v45 + 16);
      v22 = *(v45 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_226F1F468((v22 > 1), v23 + 1, 1);
        v21 = v46;
      }

      *(v21 + 16) = v23 + 1;
      *(v21 + 4 * v23 + 32) = v20;
      v15 = 1 << *(a1 + 32);
      if (v13 >= v15)
      {
        goto LABEL_27;
      }

      v24 = *(v43 + 8 * v17);
      if ((v24 & (1 << v13)) == 0)
      {
        goto LABEL_28;
      }

      v45 = v21;
      if (v18 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v13 & 0x3F));
      if (v25)
      {
        v15 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v4 = v38;
        v12 = v39;
        v16 = v42;
      }

      else
      {
        v26 = v17 << 6;
        v27 = v17 + 1;
        v28 = (v36 + 8 * v17);
        v4 = v38;
        v16 = v42;
        while (v27 < (v15 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            v31 = v13;
            v32 = v39;
            result = sub_226EB526C(v31, v18, 0);
            v12 = v32;
            v15 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        v33 = v13;
        v34 = v39;
        result = sub_226EB526C(v33, v18, 0);
        v12 = v34;
      }

LABEL_4:
      v14 = v16 + 1;
      v13 = v15;
      if (v14 == v37)
      {
        return v45;
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
  }

  return result;
}

uint64_t sub_22722F80C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC80, &qword_2276796C0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v29 - v5);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v29 = v1;
  v37 = MEMORY[0x277D84F90];
  sub_226F1F608(0, v7, 0);
  v8 = v37;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v12 = result;
  v13 = 0;
  v30 = a1 + 64;
  v31 = v7;
  v32 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v35 = v13;
    v36 = v16;
    v17 = *(a1 + 48);
    v18 = sub_227667780();
    (*(*(v18 - 8) + 16))(v6 + *(v34 + 48), v17 + *(*(v18 - 8) + 72) * v12, v18);
    *v6 = sub_227667760();
    v6[1] = v19;
    v37 = v8;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_226F1F608(v20 > 1, v21 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v21 + 1;
    result = sub_226E95D18(v6, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, &qword_27D7BAC80, &qword_2276796C0);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v9 = v32;
    v22 = *(v32 + 8 * v15);
    if ((v22 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v12 & 0x3F));
    if (v23)
    {
      v14 = __clz(__rbit64(v23)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v30 + 8 * v15);
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v12, v36, 0);
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v12, v36, 0);
    }

LABEL_4:
    v13 = v35 + 1;
    v12 = v14;
    if (v35 + 1 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22722FB24(uint64_t a1)
{
  v37 = sub_227664530();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 56) + *(v3 + 72) * v10, v37);
      v39 = sub_2276644F0();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22722FE2C(uint64_t a1)
{
  v46 = sub_227667780();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_227665F20();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F1F708(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_227667770();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F708(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
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
  }

  return result;
}

uint64_t sub_2272301F0(uint64_t a1)
{
  v53 = sub_227667730();
  v56 = *(v53 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v52 = &v46 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v54 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v48 = xmmword_227670CD0;
  v49 = v6;
  v50 = v9;
  while (v19)
  {
LABEL_9:
    v22 = *(v54 + 48);
    v55 = *(v56 + 72);
    v23 = MEMORY[0x277D52F50];
    v24 = v52;
    sub_2272838E4(v22 + v55 * (__clz(__rbit64(v19)) | (v12 << 6)), v52, MEMORY[0x277D52F50]);
    sub_2272839A8(v24, v9, v23);
    sub_2272838E4(v9, v6, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = 1;
    }

    else
    {
      sub_22728394C(v6);
      v25 = 0;
    }

    v27 = sub_226F491D4(v25);
    v28 = v13[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_26;
    }

    v31 = v26;
    if (v13[3] < v30)
    {
      sub_226FEB39C(v30, 1);
      v13 = v57;
      v32 = sub_226F491D4(v25);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_28;
      }

      v27 = v32;
    }

    v19 &= v19 - 1;
    if (v31)
    {
      v34 = v13[7];
      sub_2272839A8(v9, v51, MEMORY[0x277D52F50]);
      v35 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v35;
      v47 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_2273A699C(0, v35[2] + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v35 = sub_2273A699C(v37 > 1, v38 + 1, 1, v35);
        *(v47 + 8 * v27) = v35;
      }

      v35[2] = v38 + 1;
      sub_2272839A8(v51, v35 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v38 * v55, MEMORY[0x277D52F50]);
      v6 = v49;
      v9 = v50;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5A8, &unk_22767DFE0);
      v39 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = v48;
      v41 = v40 + v39;
      v9 = v50;
      sub_2272839A8(v50, v41, MEMORY[0x277D52F50]);
      v13[(v27 >> 6) + 8] |= 1 << v27;
      *(v13[6] + 8 * v27) = v25;
      *(v13[7] + 8 * v27) = v40;
      v42 = v13[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_27;
      }

      v13[2] = v44;
      v6 = v49;
    }
  }

  while (1)
  {
    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v13;
    }

    v19 = *(v15 + 8 * v21);
    ++v12;
    if (v19)
    {
      v12 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_227230638(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC560, &unk_22767DF10);
    v2 = sub_22766CDE0();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v24 = 0;
    if (!v7)
    {
      goto LABEL_29;
    }

    do
    {
      v25 = v24;
LABEL_33:
      v26 = (*(a1 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v7)))));
      v7 &= v7 - 1;
      v32 = *v26;
      v34 = v26[1];

      swift_dynamicCast();
      result = sub_22726D07C(v27, v29);
    }

    while (v7);
LABEL_29:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v8)
      {
LABEL_35:

        return v2;
      }

      v7 = *(v4 + 8 * v25);
      ++v24;
      if (v7)
      {
        v24 = v25;
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v28 = *v15;
      v30 = v15[1];

      swift_dynamicCast();
      v16 = *(v2 + 40);
      sub_22766D370();
      sub_22766D3A0();
      if (v33)
      {
        sub_22766C100();
      }

      result = sub_22766D3F0();
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_37;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v2 + 48) + 16 * v12);
      *v13 = v31;
      v13[1] = v33;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        goto LABEL_35;
      }

      v7 = *(v4 + 8 * v14);
      ++v11;
      if (v7)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227230964(uint64_t a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v40 = *(v50 - 8);
  v2 = *(v40 + 64);
  v3 = MEMORY[0x28223BE20](v50);
  v49 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = sub_2276627D0();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - v12;
  v52 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4E8, qword_22767DD98);
    v13 = sub_22766CDE0();
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v14 = v52 + 56;
  v15 = 1 << *(v52 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v52 + 56);
  v18 = (v15 + 63) >> 6;
  v44 = v51 + 32;
  v45 = v51 + 16;
  v42 = v51 + 48;
  v39 = (v51 + 8);
  v19 = v13 + 56;

  v21 = 0;
  v47 = v11;
  v48 = v6;
  v43 = v14;
  v53 = v13;
  v41 = v18;
  while (v17)
  {
    v23 = v11;
    v24 = v6;
LABEL_16:
    v26 = v51;
    v27 = v46;
    (*(v51 + 16))(v46, *(v52 + 48) + *(v51 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v7);
    v28 = *(v26 + 32);
    v28(v23, v27, v7);
    swift_dynamicCast();
    v29 = *(v53 + 40);
    sub_22766D370();
    v30 = v49;
    sub_226E93170(v24, v49, &unk_27D7BB9D0, &qword_227671550);
    if ((*(v26 + 48))(v30, 1, v7) == 1)
    {
      sub_22766D3A0();
    }

    else
    {
      v28(v23, v30, v7);
      sub_22766D3A0();
      sub_226E9CF88(&qword_28139BDA0, MEMORY[0x277CC95F0]);
      sub_22766BF60();
      (*v39)(v23, v7);
    }

    v14 = v43;
    v18 = v41;
    result = sub_22766D3F0();
    v13 = v53;
    v31 = -1 << *(v53 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    v6 = v48;
    if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      v11 = v47;
      while (++v33 != v35 || (v34 & 1) == 0)
      {
        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *(v19 + 8 * v33);
        if (v37 != -1)
        {
          v22 = __clz(__rbit64(~v37)) + (v33 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v11 = v47;
LABEL_9:
    v17 &= v17 - 1;
    *(v19 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_226E95D18(v6, *(v13 + 48) + *(v40 + 72) * v22, &unk_27D7BB9D0, &qword_227671550);
    ++*(v13 + 16);
  }

  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v18)
    {

      return v13;
    }

    v17 = *(v14 + 8 * v25);
    ++v21;
    if (v17)
    {
      v23 = v11;
      v24 = v6;
      v21 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_227230E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    if (!v8)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return v4;
        }

        v8 = *(v5 + 8 * v12);
        ++v11;
        if (v8)
        {
          v11 = v12;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    v13 = (v11 << 9) | (8 * __clz(__rbit64(v8)));
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + v13);

    v17 = sub_2272581A4(v16, a2, a3);
    if (v3)
    {
      break;
    }

    v18 = v17;
    v8 &= v8 - 1;

    if (v18)
    {
      v19 = *(v4 + 16);
      if (*(v4 + 24) <= v19)
      {
        sub_226FE466C(v19 + 1, 1);
        v4 = v33;
      }

      v20 = *(v4 + 40);
      result = sub_22766D360();
      v21 = v4 + 64;
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v4 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_24;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v4 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v4 + 48) + 8 * v25) = v14;
      *(*(v4 + 56) + 8 * v25) = v18;
      ++*(v4 + 16);
    }
  }

  return v4;
}

char *sub_2272310B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC568, &unk_22767DF80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723B810(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726D784(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227260E98(MEMORY[0x277D84FA0], sub_22711BC94, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_227258904(v12, MEMORY[0x277D84FA0], sub_22711BC94, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC568, &unk_22767DF80);
  }

  return v1;
}

char *sub_2272313B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC570, &qword_22767DF90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723A8F8(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726DE68(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_22726107C(MEMORY[0x277D84FA0], sub_22711BD70, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_227258AF0(v12, MEMORY[0x277D84FA0], sub_22711BD70, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC570, &qword_22767DF90);
  }

  return v1;
}

char *sub_2272316B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC558, &qword_22767DF08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723B2F8(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726E210(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227261260(MEMORY[0x277D84FA0], sub_22711BE4C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_227258CDC(v12, MEMORY[0x277D84FA0], sub_22711BE4C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC558, &qword_22767DF08);
  }

  return v1;
}

char *sub_2272319B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B0, &qword_22767DB48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723BD28(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726E5B8(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227261444(MEMORY[0x277D84FA0], sub_22711BF4C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_227258EC8(v12, MEMORY[0x277D84FA0], sub_22711BF4C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC4B0, &qword_22767DB48);
  }

  return v1;
}

char *sub_227231CB8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723C728(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726ED08(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_22726180C(MEMORY[0x277D84FA0], sub_22711C01C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_2272592A0(v12, MEMORY[0x277D84FA0], sub_22711C01C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC430, &unk_22767FFB0);
  }

  return v1;
}

char *sub_227231FB8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC428, &unk_22767DAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_227249500(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726F0B0(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227261628(MEMORY[0x277D84FA0], sub_22711BFB4, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_2272590B4(v12, MEMORY[0x277D84FA0], sub_22711BFB4, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC428, &unk_22767DAC0);
  }

  return v1;
}

char *sub_2272322B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723CC28(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726E960(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_2272619F0(MEMORY[0x277D84FA0], sub_22711C11C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725948C(v12, MEMORY[0x277D84FA0], sub_22711C11C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC438, &qword_22767DAD0);
  }

  return v1;
}

char *sub_2272325B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723D140(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726F458(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227261BD4(MEMORY[0x277D84FA0], sub_22711C21C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_227259678(v12, MEMORY[0x277D84FA0], sub_22711C21C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC420, qword_22767FED0);
  }

  return v1;
}

char *sub_2272328B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723C228(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726F800(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227261DB8(MEMORY[0x277D84FA0], sub_22711C31C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_227259864(v12, MEMORY[0x277D84FA0], sub_22711C31C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC5F8, &qword_22767E0D0);
  }

  return v1;
}

char *sub_227232BB8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4D8, &unk_22767DD40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_227252648(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_22726FF5C(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227262548(MEMORY[0x277D84FA0], sub_22711C644, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725A014(v12, MEMORY[0x277D84FA0], sub_22711C644, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC4D8, &unk_22767DD40);
  }

  return v1;
}

char *sub_227232EB8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_226EC6350(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227271878(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_22726272C(MEMORY[0x277D84FA0], sub_22711C6AC, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725A200(v12, MEMORY[0x277D84FA0], sub_22711C6AC, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC4A8, &qword_22767DB40);
  }

  return v1;
}

char *sub_2272331B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D8, &qword_22767E0A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723DB58(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227273014(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227262910(MEMORY[0x277D84FA0], sub_22711C7AC, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725A3EC(v12, MEMORY[0x277D84FA0], sub_22711C7AC, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC5D8, &qword_22767E0A8);
  }

  return v1;
}

char *sub_2272334B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B8, &qword_22767DB50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723E070(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_2272733BC(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227262AF4(MEMORY[0x277D84FA0], sub_22711C814, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725A5D8(v12, MEMORY[0x277D84FA0], sub_22711C814, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC4B8, &qword_22767DB50);
  }

  return v1;
}

char *sub_2272337B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E0, &qword_22767E0B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723E570(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227273764(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227262CD8(MEMORY[0x277D84FA0], sub_22711C87C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725A7C4(v12, MEMORY[0x277D84FA0], sub_22711C87C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC5E0, &qword_22767E0B0);
  }

  return v1;
}

char *sub_227233AB8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC460, &qword_22767DAF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_2272408A0(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227275658(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227263284(MEMORY[0x277D84FA0], sub_22711CA7C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725AD88(v12, MEMORY[0x277D84FA0], sub_22711CA7C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC460, &qword_22767DAF8);
  }

  return v1;
}

char *sub_227233DB8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC468, &qword_22767DB00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_2272458A0(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_2272752B0(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227263468(MEMORY[0x277D84FA0], sub_22711CAE4, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725AF74(v12, MEMORY[0x277D84FA0], sub_22711CAE4, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC468, &qword_22767DB00);
  }

  return v1;
}

char *sub_2272340B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C0, &qword_22767E088);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723EF88(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227274068(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_22726364C(MEMORY[0x277D84FA0], sub_22711CB4C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725B160(v12, MEMORY[0x277D84FA0], sub_22711CB4C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC5C0, &qword_22767E088);
  }

  return v1;
}

char *sub_2272343B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F8, &unk_22767DE20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_22723F4A0(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227277EAC(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227263830(MEMORY[0x277D84FA0], sub_22711CBB4, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725B34C(v12, MEMORY[0x277D84FA0], sub_22711CBB4, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC4F8, &unk_22767DE20);
  }

  return v1;
}

char *sub_2272346B8(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC508, &qword_22767DE40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_227246CB8(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227274410(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227263A14(MEMORY[0x277D84FA0], sub_22711CCB4, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725B538(v12, MEMORY[0x277D84FA0], sub_22711CCB4, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC508, &qword_22767DE40);
  }

  return v1;
}