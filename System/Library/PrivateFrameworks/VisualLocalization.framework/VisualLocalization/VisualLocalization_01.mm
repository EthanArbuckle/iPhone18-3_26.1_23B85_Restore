uint64_t storeEnumTagSinglePayload for StringSimilarityAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27104E848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27104E890(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t _s18VisualLocalization24VLPointOfInterestMatcherC11UpdateErrorOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18VisualLocalization24VLPointOfInterestMatcherC11UpdateErrorOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_27104EA88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27104EB6C()
{
  result = qword_280876540[0];
  if (!qword_280876540[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280876540);
  }

  return result;
}

unint64_t sub_27104EBC4()
{
  result = qword_280876650;
  if (!qword_280876650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280876650);
  }

  return result;
}

unint64_t sub_27104EC1C()
{
  result = qword_280876658[0];
  if (!qword_280876658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280876658);
  }

  return result;
}

void sub_27104EC70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

unint64_t sub_27104ECC8()
{
  result = qword_280875010;
  if (!qword_280875010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875010);
  }

  return result;
}

uint64_t sub_27104ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
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

unint64_t sub_27104EDB0()
{
  result = qword_280875040;
  if (!qword_280875040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875040);
  }

  return result;
}

uint64_t sub_27104EE04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27104EE60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27104EE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27104EFBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27104F25C;

  return sub_271046F7C(a1, v4);
}

uint64_t sub_27104F0C8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_27104F110(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27104F170(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27104F190(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_27104F1F8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_27104F2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a1;
  v4[20] = v3;
  v4[30] = a2;
  v4[31] = a3;
  v5 = sub_2710F6C0C();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875190);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27104F424, 0, 0);
}

uint64_t sub_27104F424()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v11 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_27104F624;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_27104F0C8(0, &qword_280875198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38);
  sub_2710F700C();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_27104FAE4;
  v1[13] = &block_descriptor_0;
  [v11 _fetchTileDataForKey_completion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_27104F624()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_27104FA20;
  }

  else
  {
    v2 = sub_27104F760;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27104F760()
{
  v1 = *(v0 + 144);
  if ([v1 hasFileDescriptor])
  {
    v2 = [v1 consumeFileDescriptor];
    v3 = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v2 closeOnDealloc:1];
  }

  else
  {
    v5 = [v1 fileURL];
    if (!v5)
    {
      return sub_2710F733C();
    }

    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 168);
    v11 = v5;
    sub_2710F6BFC();

    (*(v9 + 32))(v6, v7, v10);
    sub_27104F0C8(0, &qword_2808751A0);
    (*(v9 + 16))(v8, v6, v10);
    v3 = sub_27104FBAC(v8);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
  }

  sub_271052BC8(*(v0 + 240), *(v0 + 248), v3, v1, *(v0 + 152));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27104FA20()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

void sub_27104FAE4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875190);
    sub_2710F701C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875190);
    sub_2710F702C();
  }

  else
  {
    __break(1u);
  }
}

id sub_27104FBAC(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2710F6BDC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2710F6C0C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2710F6BCC();

    swift_willThrow();
    v9 = sub_2710F6C0C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_27104FD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27104C83C;

  return sub_27104F2B4(a1, a2, a3);
}

double sub_27104FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = 0.5;
  if ((a8 & 1) == 0)
  {
    result = 1.0;
    if (*&a7 > 20.0)
    {
      result = 0.5;
      if (*&a7 <= 45.0)
      {
        return 0.75;
      }
    }
  }

  return result;
}

uint64_t sub_27104FE0C(uint64_t a1, uint64_t a2)
{
  v61 = sub_2710F6D4C();
  v4 = *(v61 - 8);
  result = MEMORY[0x28223BE20](v61);
  v59 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0.0;
  if (*(a2 + 16))
  {
    if (*(a1 + 16))
    {
      result = sub_271047E6C(0);
      if (v8)
      {
        v9 = *(*(a1 + 56) + 8 * result);
        v10 = a2 + 64;
        v11 = 1 << *(a2 + 32);
        v12 = -1;
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        v13 = v12 & *(a2 + 64);
        v14 = (v11 + 63) >> 6;
        v51 = (v4 + 16);
        v50 = (v4 + 8);

        v15 = 0;
        v57 = v9;
        v16 = (v9 + 48);
        *&v17 = 136315650;
        v48 = v17;
LABEL_7:
        if (v13)
        {
          v18 = v13;
          goto LABEL_13;
        }

        while (1)
        {
          v19 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v19 >= v14)
          {
          }

          v18 = *(v10 + 8 * v19);
          ++v15;
          if (v18)
          {
            v15 = v19;
LABEL_13:
            v13 = (v18 - 1) & v18;
            if (v7 < 1.0)
            {
              v45 = (v18 - 1) & v18;
              v20 = __clz(__rbit64(v18)) | (v15 << 6);
              v47 = a2;
              v21 = (*(a2 + 48) + 16 * v20);
              v22 = *v21;
              v23 = *(*(a2 + 56) + 4 * v20);
              v24 = *(v57 + 16);
              v60 = v21[1];

              v49 = v24;
              v46 = v16;
              if (v24)
              {
                v25 = 0;
                v26 = 0.0;
                v27 = v59;
                v53 = v22;
                while (1)
                {
                  if (v25 >= *(v57 + 16))
                  {
                    goto LABEL_40;
                  }

                  v28 = *(v16 - 1);
                  v29 = *v16;
                  v30 = *(v16 - 2) == v22 && v28 == v60;
                  v58 = *(v16 - 2);
                  if (v30 || (sub_2710F748C() & 1) != 0)
                  {
                    break;
                  }

                  v64[0] = v58;
                  v64[1] = v28;
                  v62 = v22;
                  v63 = v60;
                  sub_27104EDB0();

                  if (sub_2710F724C())
                  {
                    v54 = v25;
                    v32 = 0.7;
                    v27 = v59;
                    v31 = v29;
                    goto LABEL_28;
                  }

                  v32 = 0.0;
                  v27 = v59;
LABEL_18:
                  ++v25;
                  if (v26 <= v32)
                  {
                    v26 = v32;
                  }

                  v16 += 3;
                  v22 = v53;
                  if (v49 == v25)
                  {
                    goto LABEL_34;
                  }
                }

                v54 = v25;

                v31 = v29;

                v32 = 1.0;
LABEL_28:
                v33 = sub_27104074C();
                (*v51)(v27, v33, v61);
                v34 = v60;

                v35 = v27;
                v36 = v31;
                v37 = sub_2710F6D2C();
                v38 = sub_2710F711C();
                v56 = v36;

                v52 = v38;
                v55 = v37;
                if (os_log_type_enabled(v37, v38))
                {
                  v39 = v34;
                  v40 = swift_slowAlloc();
                  v41 = swift_slowAlloc();
                  v64[0] = v41;
                  *v40 = v48;
                  *(v40 + 4) = sub_2710475BC(v53, v39, v64);
                  *(v40 + 12) = 2080;
                  *(v40 + 14) = sub_2710475BC(v58, v28, v64);
                  *(v40 + 22) = 2048;
                  *(v40 + 24) = v32;
                  v42 = v55;
                  _os_log_impl(&dword_27103D000, v55, v52, "Brand '%s' / %s → %f", v40, 0x20u);
                  swift_arrayDestroy();
                  v43 = v41;
                  v27 = v59;
                  MEMORY[0x2743BDA30](v43, -1, -1);
                  MEMORY[0x2743BDA30](v40, -1, -1);

                  (*v50)(v27, v61);
                }

                else
                {

                  (*v50)(v35, v61);

                  v27 = v35;
                }

                v25 = v54;
                goto LABEL_18;
              }

              v26 = 0.0;
LABEL_34:

              if (v7 <= v26 * v23)
              {
                v7 = v26 * v23;
              }

              a2 = v47;
              v16 = v46;
              v13 = v45;
            }

            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_271050400()
{
  sub_2710F751C();
  sub_2710F6D8C();
  return sub_2710F756C();
}

uint64_t sub_271050468()
{
  sub_2710F751C();
  sub_2710503F8();
  return sub_2710F756C();
}

uint64_t sub_27105050C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27105057C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2710506BC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2710508F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_271050958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  v20 = v10[3];
  v19 = v10[4];
  __swift_project_boxed_opaque_existential_1Tm(v10, v20);
  (*(v19 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v20, v19);
}

double sub_271050A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, uint64_t a10, uint64_t (*a11)(uint64_t, __n128, double))
{
  v54 = a8;
  v58 = a4;
  v59 = a5;
  v56 = a2;
  v57 = a3;
  v55 = a1;
  v14 = sub_2710F6D4C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a10 + 16);
  if (v19)
  {
    v66 = MEMORY[0x277D84F90];
    sub_271051CC8(0, v19, 0);
    v20 = v66;
    v21 = a10 + 32;
    v53 = (v15 + 16);
    v52 = (v15 + 8);
    *&v22 = 136315394;
    v48 = v22;
    v50 = a7;
    v49 = a6;
    do
    {
      sub_2710508F4(v21, v63);
      v24 = v64;
      v23 = v65;
      __swift_project_boxed_opaque_existential_1Tm(v63, v64);
      v25 = (*(v23 + 8))(v55, v56, v57, v58, v59, a6, a7, v54 & 1, a9, v24, v23);
      v26 = sub_27104074C();
      v27 = v60;
      (*v53)(v60, v26, v14);
      sub_2710508F4(v63, v62);
      v28 = sub_2710F6D2C();
      v29 = sub_2710F711C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v51 = v20;
        v32 = v31;
        v61 = v31;
        *v30 = v48;
        v33 = __swift_project_boxed_opaque_existential_1Tm(v62, v62[3]);
        MEMORY[0x28223BE20](v33);
        (*(v35 + 16))(&v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
        v36 = sub_2710F6E7C();
        v38 = v37;
        a7 = v50;
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        v39 = sub_2710475BC(v36, v38, &v61);
        a6 = v49;

        *(v30 + 4) = v39;
        *(v30 + 12) = 2048;
        *(v30 + 14) = v25;
        _os_log_impl(&dword_27103D000, v28, v29, "  - %s produced score %f", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        v40 = v32;
        v20 = v51;
        MEMORY[0x2743BDA30](v40, -1, -1);
        MEMORY[0x2743BDA30](v30, -1, -1);

        (*v52)(v60, v14);
      }

      else
      {

        (*v52)(v27, v14);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
      }

      v16 = __swift_destroy_boxed_opaque_existential_0Tm(v63);
      v66 = v20;
      v42 = v20[2];
      v41 = v20[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v16 = sub_271051CC8((v41 > 1), v42 + 1, 1);
        v20 = v66;
      }

      v20[2] = v43;
      *&v20[v42 + 4] = v25;
      v21 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
    v43 = *(MEMORY[0x277D84F90] + 16);
    if (!v43)
    {
      v46 = 0.0;
      goto LABEL_15;
    }
  }

  v17.n128_u64[0] = v20[4];
  v44 = v43 - 1;
  if (v43 != 1)
  {
    v45 = 5;
    do
    {
      v16 = a11(v16, v17, *&v20[v45++]);
      --v44;
    }

    while (v44);
  }

  v46 = v17.n128_f64[0];
LABEL_15:

  return v46;
}

double sub_271050F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  v20 = *(v10 + 24);
  v19 = *(v10 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v10, v20);
  return (*(v19 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v20, v19) * *(v10 + 40);
}

uint64_t sub_271050FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  result = (*(v9 + 40))();
  if (result)
  {
    v23 = a7;
    v22 = *(v9 + 24);
    v21 = v10[4];
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    return (*(v21 + 8))(a1, a2, a3, a4, a5, a6, v23, a8 & 1, a9, v22, v21);
  }

  return result;
}

uint64_t sub_2710510B4(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*&a1 == 0.0)
    {
      return 0x646578616C6572;
    }

    else
    {
      return 1885956979;
    }
  }

  else if (*&a1 <= 0.0)
  {
    return 0x746369727473;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D839F8];
    *(v4 + 16) = xmmword_271101AF0;
    v6 = MEMORY[0x277D83A80];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = *&a1;
    v7 = sub_2710F6E4C();
    MEMORY[0x2743BBEF0](v7);

    MEMORY[0x2743BBEF0](41, 0xE100000000000000);
    return 0x28746369727473;
  }
}

uint64_t sub_2710511D0(uint64_t a1)
{
  v1 = [objc_opt_self() matchingPolicyForMapItem_];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x3FE8000000000000;
    }

    else if (v1 == 4)
    {
      return 1;
    }

    else
    {
      return 0x3FE0000000000000;
    }
  }

  else if (v1 == 1)
  {
    return 0;
  }

  else if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return 0x3FE0000000000000;
  }
}

void *sub_271051270@<X0>(void *result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    if (result)
    {
      a3[3] = &type metadata for ConstantScoreProvider;
      a3[4] = &off_2880FE708;
      *a3 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_271102950;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_271102950;
      *(v21 + 56) = &type metadata for ConstantScoreProvider;
      *(v21 + 64) = &off_2880FE708;
      *(v21 + 32) = 0x3FE999999999999ALL;
      GEOLocationCoordinate2DMake(v21);
      *(v21 + 96) = &type metadata for WeightedScoreProvider;
      *(v21 + 104) = &off_2880FE718;
      v22 = swift_allocObject();
      *(v21 + 72) = v22;
      v22[5] = &type metadata for ProximityCandidateScoreProvider;
      v22[6] = &off_2880FF070;
      v22[7] = 0x3FC999999999999ALL;
      *(v20 + 56) = &type metadata for CompositeScoreProvider;
      *(v20 + 64) = &off_2880FE6F8;
      *(v20 + 32) = v21;
      *(v20 + 40) = sub_271052020;
      *(v20 + 48) = 0;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_271102950;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_271102950;
      *(v24 + 56) = &type metadata for ConstantScoreProvider;
      *(v24 + 64) = &off_2880FE708;
      *(v24 + 32) = 0x3FD999999999999ALL;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_271102950;
      GEOLocationCoordinate2DMake(v25);
      *(v25 + 56) = &type metadata for WeightedScoreProvider;
      *(v25 + 64) = &off_2880FE718;
      v26 = swift_allocObject();
      *(v25 + 32) = v26;
      v26[5] = &type metadata for DoorNumberCandidateScoreProvider;
      v26[6] = &off_2880FEA78;
      v26[7] = 0x3FC999999999999ALL;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_271102960;
      v28 = GEOLocationCoordinate2DMake(0);
      *(v27 + 56) = &type metadata for TextRecognitionCandidateScoreProvider;
      *(v27 + 64) = &off_2880FEF50;
      *(v27 + 32) = v28;
      v29 = GEOLocationCoordinate2DMake(&unk_2880FE698);
      *(v27 + 96) = &type metadata for DataDetectorDetectionRanker;
      *(v27 + 104) = &off_2880FF0E0;
      *(v27 + 72) = v29;
      GEOLocationCoordinate2DMake(v29);
      *(v27 + 136) = &type metadata for BrandClassificationCandidateScoreProvider;
      *(v27 + 144) = &off_2880FE610;
      v30 = GEOLocationCoordinate2DMake(1);
      *(v27 + 176) = &type metadata for ConditionalScoreProvider;
      *(v27 + 184) = &off_2880FE728;
      v31 = swift_allocObject();
      *(v27 + 152) = v31;
      v31[5] = &type metadata for WeightedScoreProvider;
      v31[6] = &off_2880FE718;
      v32 = swift_allocObject();
      v31[2] = v32;
      *(v32 + 40) = &type metadata for TextRecognitionCandidateScoreProvider;
      *(v32 + 16) = v30;
      *(v32 + 48) = &off_2880FEF50;
      *(v32 + 56) = 0x3FE6666666666666;
      v31[7] = sub_271052028;
      v31[8] = 0;
      sub_27105CCA8();
      v34 = v33;
      *(v27 + 216) = &type metadata for ConditionalScoreProvider;
      *(v27 + 224) = &off_2880FE728;
      v35 = swift_allocObject();
      *(v27 + 192) = v35;
      v35[5] = &type metadata for EmbeddingsCandidateScoreProvider;
      v35[6] = &off_2880FF190;
      v35[2] = v34;
      v35[7] = sub_27105202C;
      v35[8] = 0;
      *(v25 + 96) = &type metadata for CompositeScoreProvider;
      *(v25 + 104) = &off_2880FE6F8;
      *(v25 + 72) = v27;
      *(v25 + 80) = sub_271051AC8;
      *(v25 + 88) = 0;
      *(v24 + 96) = &type metadata for WeightedScoreProvider;
      *(v24 + 104) = &off_2880FE718;
      v36 = swift_allocObject();
      *(v24 + 72) = v36;
      v36[5] = &type metadata for CompositeScoreProvider;
      v36[6] = &off_2880FE6F8;
      v36[2] = v25;
      v36[3] = sub_271051AD4;
      v36[4] = 0;
      v36[7] = 0x3FE3333333333333;
      *(v23 + 56) = &type metadata for CompositeScoreProvider;
      *(v23 + 64) = &off_2880FE6F8;
      *(v23 + 32) = v24;
      *(v23 + 40) = sub_271052020;
      *(v23 + 48) = 0;
      result = GEOLocationCoordinate2DMake(v36);
      *(v23 + 96) = &type metadata for HeadingCandidateScoreProvider;
      *(v23 + 104) = &off_2880FE5E0;
      *(v20 + 96) = &type metadata for CompositeScoreProvider;
      *(v20 + 104) = &off_2880FE6F8;
      *(v20 + 72) = v23;
      *(v20 + 80) = sub_271051ADC;
      *(v20 + 88) = 0;
      a3[3] = &type metadata for CompositeScoreProvider;
      a3[4] = &off_2880FE6F8;
      *a3 = v20;
      a3[1] = sub_271051AF4;
      a3[2] = 0;
    }
  }

  else
  {
    v37 = result;
    v4 = *&result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_271102950;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_271102950;
    *(v6 + 56) = &type metadata for ConstantScoreProvider;
    *(v6 + 64) = &off_2880FE708;
    *(v6 + 32) = 0x3FE999999999999ALL;
    (GEOLocationCoordinate2DMake)();
    *(v6 + 96) = &type metadata for WeightedScoreProvider;
    *(v6 + 104) = &off_2880FE718;
    v7 = swift_allocObject();
    *(v6 + 72) = v7;
    v7[5] = &type metadata for ProximityCandidateScoreProvider;
    v7[6] = &off_2880FF070;
    v7[7] = 0x3FC999999999999ALL;
    *(v5 + 56) = &type metadata for CompositeScoreProvider;
    *(v5 + 64) = &off_2880FE6F8;
    *(v5 + 32) = v6;
    *(v5 + 40) = sub_271052020;
    *(v5 + 48) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_271102950;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_271102950;
    (GEOLocationCoordinate2DMake)();
    *(v9 + 56) = &type metadata for WeightedScoreProvider;
    *(v9 + 64) = &off_2880FE718;
    v10 = swift_allocObject();
    *(v9 + 32) = v10;
    v10[5] = &type metadata for DoorNumberCandidateScoreProvider;
    v10[6] = &off_2880FEA78;
    v10[7] = 0x3FC999999999999ALL;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_271102960;
    v12 = GEOLocationCoordinate2DMake(0);
    *(v11 + 56) = &type metadata for TextRecognitionCandidateScoreProvider;
    *(v11 + 64) = &off_2880FEF50;
    *(v11 + 32) = v12;
    v13 = GEOLocationCoordinate2DMake(&unk_2880FE6C0);
    *(v11 + 96) = &type metadata for DataDetectorDetectionRanker;
    *(v11 + 104) = &off_2880FF0E0;
    *(v11 + 72) = v13;
    GEOLocationCoordinate2DMake(v13);
    *(v11 + 136) = &type metadata for BrandClassificationCandidateScoreProvider;
    *(v11 + 144) = &off_2880FE610;
    v14 = GEOLocationCoordinate2DMake(1);
    *(v11 + 176) = &type metadata for ConditionalScoreProvider;
    *(v11 + 184) = &off_2880FE728;
    v15 = swift_allocObject();
    *(v11 + 152) = v15;
    v15[5] = &type metadata for WeightedScoreProvider;
    v15[6] = &off_2880FE718;
    v16 = swift_allocObject();
    v15[2] = v16;
    *(v16 + 40) = &type metadata for TextRecognitionCandidateScoreProvider;
    *(v16 + 48) = &off_2880FEF50;
    *(v16 + 16) = v14;
    *(v16 + 56) = 0x3FE6666666666666;
    v15[7] = sub_271052028;
    v15[8] = 0;
    sub_27105CCA8();
    v18 = v17;
    *(v11 + 216) = &type metadata for ConditionalScoreProvider;
    *(v11 + 224) = &off_2880FE728;
    v19 = swift_allocObject();
    *(v11 + 192) = v19;
    v19[5] = &type metadata for EmbeddingsCandidateScoreProvider;
    v19[6] = &off_2880FF190;
    v19[2] = v18;
    v19[7] = sub_27105202C;
    v19[8] = 0;
    *(v9 + 96) = &type metadata for CompositeScoreProvider;
    *(v9 + 104) = &off_2880FE6F8;
    *(v9 + 72) = v11;
    *(v9 + 80) = sub_271051AC8;
    *(v9 + 88) = 0;
    *(v8 + 56) = &type metadata for CompositeScoreProvider;
    *(v8 + 64) = &off_2880FE6F8;
    *(v8 + 32) = v9;
    *(v8 + 40) = sub_271052020;
    *(v8 + 48) = 0;
    result = GEOLocationCoordinate2DMake(v19);
    *(v8 + 96) = &type metadata for HeadingCandidateScoreProvider;
    *(v8 + 104) = &off_2880FE5E0;
    *(v5 + 96) = &type metadata for CompositeScoreProvider;
    *(v5 + 104) = &off_2880FE6F8;
    *(v5 + 72) = v8;
    *(v5 + 80) = sub_271052034;
    *(v5 + 88) = 0;
    if (v4 <= 0.0)
    {
      a3[3] = &type metadata for CompositeScoreProvider;
      a3[4] = &off_2880FE6F8;
      *a3 = v5;
      a3[1] = sub_271052024;
      a3[2] = 0;
    }

    else
    {
      a3[3] = &type metadata for FilteredScoreProvider;
      a3[4] = &off_2880FE6E8;
      result = swift_allocObject();
      *a3 = result;
      result[5] = &type metadata for CompositeScoreProvider;
      result[6] = &off_2880FE6F8;
      result[2] = v5;
      result[3] = sub_271052024;
      result[4] = 0;
      result[7] = v37;
    }
  }

  return result;
}

double sub_271051AC8(double result, double a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

double sub_271051ADC(double result, double a2)
{
  v2 = result * a2;
  if (result <= 0.8)
  {
    return v2;
  }

  return result;
}

double sub_271051AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, void *a10, char a11)
{
  sub_271051270(a10, a11 & 1, v24);
  v20 = v25;
  v21 = v26;
  __swift_project_boxed_opaque_existential_1Tm(v24, v25);
  v22 = (*(v21 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v20, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return v22;
}

double sub_271051BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  sub_271051270(*v9, *(v9 + 8), v23);
  v19 = v24;
  v20 = v25;
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  v21 = (*(v20 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v19, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v21;
}

char *sub_271051CC8(char *a1, int64_t a2, char a3)
{
  result = sub_271051F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_271051D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_271051D68(uint64_t result, int a2, int a3)
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

uint64_t sub_271051DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_271051E0C(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CandidateScoreRecipe(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CandidateScoreRecipe(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_271051ECC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_271051EE8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

char *sub_271051F18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double sub_271052040(void *a1, uint64_t a2)
{
  v3 = [a1 addressObject];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 address];

    if (v6)
    {
      v7 = [v6 structuredAddress];

      if (v7)
      {
        v8 = [v7 subThoroughfare];

        if (v8)
        {
          v9 = sub_2710F6E3C();
          v11 = v10;

          v12 = *(a2 + 16);
          if (v12)
          {
            v13 = 0;
            v14 = a2 + 32;
            if ((v11 & 0x2000000000000000) != 0)
            {
              v15 = HIBYTE(v11) & 0xF;
            }

            else
            {
              v15 = v9 & 0xFFFFFFFFFFFFLL;
            }

            do
            {
              v16 = v14 + 48 * v13++;
              v17 = *(v16 + 32);
              v18 = (v17 + 56);
              v19 = *(v17 + 16) + 1;
              while (--v19)
              {
                v4 = 1.0;
                if (*(v18 - 1) != v9 || *v18 != v11 || *(v18 - 3) >> 16 != 0 || *(v18 - 2) >> 16 != v15)
                {
                  v18 += 4;
                  if ((sub_2710F745C() & 1) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_25;
              }
            }

            while (v13 != v12);
            v4 = 0.0;
          }

LABEL_25:
        }
      }
    }
  }

  return v4;
}

BOOL static VLLocalizationDataKey.== infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 ^ a2) >> 32 == 0;
  if (a2 != a4)
  {
    v4 = 0;
  }

  return a1 == a3 && v4;
}

uint64_t VLLocalizationDataKey.hash(into:)()
{
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F754C();
}

uint64_t VLLocalizationDataKey.hashValue.getter()
{
  sub_2710F751C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F756C();
}

uint64_t sub_271052320()
{
  sub_2710F751C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F756C();
}

uint64_t sub_2710523A0()
{
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F754C();
}

uint64_t sub_2710523F8()
{
  sub_2710F751C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F756C();
}

uint64_t sub_271052480(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6576656CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 121;
    }

    else
    {
      v4 = 0x6961747265636E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xEB0000000079746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 120;
    }

    else
    {
      v4 = 0x6C6576656CLL;
    }

    if (v3)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE100000000000000;
  v8 = 121;
  if (a2 != 2)
  {
    v8 = 0x6961747265636E75;
    v7 = 0xEB0000000079746ELL;
  }

  if (a2)
  {
    v2 = 120;
    v6 = 0xE100000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2710F748C();
  }

  return v11 & 1;
}

uint64_t sub_2710525A0()
{
  sub_2710F751C();
  sub_2710F6EAC();

  return sub_2710F756C();
}

uint64_t sub_271052650()
{
  sub_2710F6EAC();
}

uint64_t sub_2710526EC()
{
  sub_2710F751C();
  sub_2710F6EAC();

  return sub_2710F756C();
}

uint64_t sub_271052798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_271056E98();
  *a1 = result;
  return result;
}

void sub_2710527C8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6576656CLL;
  v4 = 0xE100000000000000;
  v5 = 121;
  if (*v1 != 2)
  {
    v5 = 0x6961747265636E75;
    v4 = 0xEB0000000079746ELL;
  }

  if (*v1)
  {
    v3 = 120;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_271052834()
{
  v1 = 0x6C6576656CLL;
  v2 = 121;
  if (*v0 != 2)
  {
    v2 = 0x6961747265636E75;
  }

  if (*v0)
  {
    v1 = 120;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_27105289C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_271056E98();
  *a1 = result;
  return result;
}

uint64_t sub_2710528D0(uint64_t a1)
{
  v2 = sub_2710570D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27105290C(uint64_t a1)
{
  v2 = sub_2710570D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VLLocalizationDataKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2710570D8();
  sub_2710F758C();
  v12 = 0;
  sub_2710F743C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = 1;
  sub_2710F743C();
  v10 = 2;
  sub_2710F743C();
  v9 = 3;
  sub_2710F743C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_271052B28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_271056EE4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_271052BC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t VLLocalizer.fetchTileData(at:)(unint64_t a1, __n128 a2, double a3, double a4)
{
  v5[3].n128_u64[1] = v4;
  v5[2].n128_f64[1] = a3;
  v5[3].n128_f64[0] = a4;
  v5[1] = a2;
  v5[2].n128_u64[0] = a1;
  return MEMORY[0x2822009F8](sub_271052C98, 0, 0);
}

uint64_t sub_271052C98()
{
  v1 = sub_2710564C4(*(v0 + 16), *(v0 + 40), *(v0 + 48));
  v3 = v2;
  v4 = v1;
  v5 = [*(v0 + 56) _dataProvider];
  *(v0 + 64) = v5;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    swift_unknownObjectRelease();
    return sub_2710F733C();
  }

  else
  {
    v9 = v6;
    ObjectType = swift_getObjectType();
    v13 = (*(v9 + 8) + **(v9 + 8));
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_271052EE0;
    v12 = *(v0 + 32);

    return v13(v12, v4, v3, ObjectType, v9);
  }
}

uint64_t sub_271052EE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_271053058;
  }

  else
  {
    v2 = sub_271052FF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_271052FF4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_271053058()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

id VLLocalizer.locate(with:deviceLocation:gravity:cameraIntrinsics:radialDistortion:timestamp:)(void *a1, float64x2_t a2, float64x2_t a3, double a4, __n128 a5, __n128 a6, float a7, float64x2_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, double a26)
{
  v419 = a6;
  v420 = a8;
  v421 = a5;
  v422 = a9;
  v432 = a3;
  v434 = a2;
  v407 = a1;
  v483 = *MEMORY[0x277D85DE8];
  v28 = sub_2710F6CDC();
  v389 = *(v28 - 8);
  v390 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v385 = v371 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v386 = v371 - v32;
  MEMORY[0x28223BE20](v31);
  v382 = v371 - v33;
  v429.n128_u64[0] = sub_2710F6CCC();
  v430.n128_u64[0] = *(v429.n128_u64[0] - 8);
  v34 = MEMORY[0x28223BE20](v429.n128_u64[0]);
  v394 = (v371 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v34);
  v395 = (v371 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v387 = (v371 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v397 = (v371 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v410 = v371 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = v371 - v44;
  *&v425 = sub_2710F6CAC();
  *&v423 = *(v425 - 8);
  v46 = MEMORY[0x28223BE20](v425);
  v391 = v371 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v393 = v371 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v398 = v371 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v408 = v371 - v53;
  MEMORY[0x28223BE20](v52);
  *&v427.f64[0] = v371 - v54;
  v55 = sub_2710F6D5C();
  v403 = *(v55 - 8);
  v404 = v55;
  MEMORY[0x28223BE20](v55);
  v401 = v371 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2710F6D7C();
  v405 = *(v57 - 8);
  v406 = v57;
  MEMORY[0x28223BE20](v57);
  v402 = v371 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2710F6D4C();
  *&v431 = *(v59 - 8);
  v60 = MEMORY[0x28223BE20](v59);
  v62 = v371 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60);
  v388 = v371 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v384 = v371 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v396 = v371 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v392 = (v371 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v409 = v371 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v75 = v371 - v74;
  MEMORY[0x28223BE20](v73);
  v77 = v371 - v76;
  v78 = sub_271040820();
  v79 = *v78;
  v80 = sub_2710F711C();
  v81 = os_log_type_enabled(v79, v80);

  *&v424.f64[0] = v59;
  if (v81)
  {
    v456[0] = v434;
    v456[1] = v432;
    v82 = VLCoordinateFromECEF(v456);
    v84 = v83;
    v86 = v85;
    v87 = sub_2710408A4();
    (*(v431 + 16))(v77, v87, v59);
    v88 = sub_2710F6D2C();
    v89 = sub_2710F711C();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134285057;
      *(v90 + 4) = v82;
      *(v90 + 12) = 2049;
      *(v90 + 14) = v84;
      *(v90 + 22) = 2049;
      *(v90 + 24) = v86;
      *(v90 + 32) = 2049;
      v91 = v434.f64[1];
      *(v90 + 34) = v434.f64[0];
      *(v90 + 44) = v91;
      *(v90 + 42) = 2049;
      *(v90 + 52) = 2049;
      *(v90 + 54) = v432.f64[0];
      *(v90 + 62) = 2050;
      *(v90 + 64) = a26;
      _os_log_impl(&dword_27103D000, v88, v89, "locate: (%{private}f, %{private}f, %{private}f) / ECEF: (%{private}f, %{private}f, %{private}f) @ %{public}f", v90, 0x48u);
      v92 = v90;
      v59 = *&v424.f64[0];
      MEMORY[0x2743BDA30](v92, -1, -1);
    }

    (*(v431 + 8))(v77, v59);
  }

  GEOGetMonotonicTime();
  v94 = v93;
  v95 = objc_opt_self();
  v96 = [v95 _debugInfoRecorder];
  if (v96)
  {
    v98 = swift_allocObject();
    *(v98 + 16) = v96;
    v428 = sub_2710574B0;
  }

  else
  {
    v428 = 0;
    v98 = 0;
  }

  LODWORD(v97) = a25;
  v418 = v97;
  LODWORD(v97) = a24;
  v433 = v97;
  LODWORD(v97) = a23;
  v417 = v97;
  LODWORD(v97) = a22;
  v414 = v97;
  LODWORD(v97) = a21;
  v412 = v97;
  LODWORD(v97) = a20;
  v416 = v97;
  LODWORD(v97) = a19;
  v413 = v97;
  LODWORD(v97) = a18;
  v411 = v97;
  LODWORD(v97) = a17;
  v415 = v97;
  v100 = v434.f64[1];
  if ([v95 isVisualLocalizationSupported])
  {
    v101 = [v426 _debugInfoShouldPreserveImageData];
    v375 = v78;
    v376 = v62;
    v399 = v98;
    v378 = v96;
    if (v101)
    {
      v102 = 1;
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
      if (v96)
      {
        v102 = 1;
      }

      else
      {
        v102 = BOOL;
      }
    }

    v377 = v102;
    v133 = sub_2710409AC();
    v134 = v430.n128_u64[0];
    v136 = v430.n128_u64[0] + 16;
    v135 = *(v430.n128_u64[0] + 16);
    v137 = v429.n128_u64[0];
    v135(v45, v133, v429.n128_u64[0]);
    sub_2710F6CBC();
    v138 = v407;
    v139 = v427.f64[0];
    v407 = v138;
    sub_2710F6C8C();
    v140 = *(v134 + 8);
    v430.n128_u64[0] = v134 + 8;
    v400 = v140;
    v140(v45, v137);
    v379 = v133;
    v380 = v135;
    v381 = v136;
    v135(v410, v133, v137);
    v141 = v426;
    v142 = sub_2710F6CBC();
    v143 = sub_2710F716C();
    v144 = sub_2710F71CC();
    v383 = v141;
    if (v144)
    {
      v145 = swift_slowAlloc();
      *v145 = 134217984;
      *(v145 + 4) = [v141 _signpostID];

      v146 = sub_2710F6C9C();
      _os_signpost_emit_with_name_impl(&dword_27103D000, v142, v143, v146, "Locate", "parent_signpost=%llu", v145, 0xCu);
      MEMORY[0x2743BDA30](v145, -1, -1);
    }

    else
    {

      v142 = v141;
    }

    v147 = v408;
    v148 = v409;

    v149 = v423;
    v150 = *(v423 + 16);
    (v150)(v147, *&v139, v425);
    sub_2710F6D0C();
    swift_allocObject();
    v426 = sub_2710F6CFC();
    v400(v410, v429.n128_u64[0]);
    ptr = 0;
    v481 = 0;
    v482 = 0;
    v151 = v407;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v407);
    v153 = PixelFormatType;
    if (PixelFormatType <= 1278226487)
    {
      if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
      {
LABEL_53:
        v410 = v150;
        v206 = sub_2710F6FBC();
        *(v206 + 16) = 4;
        *(v206 + 32) = HIBYTE(v153);
        *(v206 + 34) = BYTE2(v153);
        *(v206 + 36) = BYTE1(v153);
        *(v206 + 38) = v153;
        v207 = sub_2710408A4();
        v208 = v431;
        v209 = *(v431 + 16);
        v210 = v148;
        v372 = v207;
        v373 = v209;
        v211 = v148;
        v212 = v424.f64[0];
        v374 = v431 + 16;
        v209(v210);
        v213 = sub_2710F6D2C();
        v214 = sub_2710F710C();
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          *v215 = 33555456;
          if (!*(v206 + 16))
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v216 = v215;
          *(v215 + 4) = *(v206 + 32);
          *(v215 + 6) = 512;
          if (*(v206 + 16) < 2uLL)
          {
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          *(v215 + 8) = *(v206 + 34);
          *(v215 + 10) = 512;
          if (*(v206 + 16) < 3uLL)
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          *(v215 + 12) = *(v206 + 36);
          *(v215 + 14) = 512;
          if (*(v206 + 16) < 4uLL)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          *(v215 + 16) = *(v206 + 38);
          _os_log_impl(&dword_27103D000, v213, v214, "Input pixel format (%hu%hu%hu%hu) requires conversion", v215, 0x12u);
          MEMORY[0x2743BDA30](v216, -1, -1);
          v212 = v424.f64[0];
          v208 = v431;
          v211 = v409;
        }

        v371[0] = *(v208 + 8);
        v371[1] = v208 + 8;
        (v371[0])(v211, *&v212);
        v217 = v397;
        v380(v397, v379, v429.n128_u64[0]);
        v218 = sub_2710F6CBC();
        v219 = sub_2710F716C();
        if (sub_2710F71CC())
        {
          v220 = swift_slowAlloc();
          *v220 = 0;
          v221 = sub_2710F6C9C();
          _os_signpost_emit_with_name_impl(&dword_27103D000, v218, v219, v221, "ConvertImage", "", v220, 2u);
          MEMORY[0x2743BDA30](v220, -1, -1);
        }

        (v410)(v408, *&v427.f64[0], v425);
        swift_allocObject();
        v222 = sub_2710F6CFC();
        v400(v217, v429.n128_u64[0]);
        v223 = objc_allocWithZone(MEMORY[0x277CBF758]);
        v224 = [v223 initWithCVPixelBuffer_];
        [v224 extent];
        v226 = v225;
        v227 = v398;
        if ((*&v225 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v225 > -9.22337204e18)
        {
          if (v225 < 9.22337204e18)
          {
            [v224 extent];
            if ((*&v228 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v228 > -9.22337204e18)
              {
                if (v228 < 9.22337204e18)
                {
                  v408 = v222;
                  v409 = v206;
                  v410 = v224;
                  v229 = v226;
                  v230 = v228;
                  *&v458 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875200);
                  v231 = swift_allocObject();
                  *(v231 + 16) = xmmword_271101AF0;
                  v232 = *MEMORY[0x277CC4D98];
                  type metadata accessor for CFString(0);
                  *(v231 + 56) = v233;
                  *(v231 + 32) = v232;
                  v234 = objc_allocWithZone(MEMORY[0x277CCABB0]);
                  v235 = v232;
                  v236 = [v234 initWithInteger_];
                  *(v231 + 88) = sub_27104F0C8(0, &qword_280875208);
                  *(v231 + 64) = v236;
                  sub_27104F0C8(0, &qword_280875210);
                  v237 = sub_2710F70FC();
                  v238 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v226, v230, 0x4C303038u, v237, &v458);
                  v239 = v458;
                  v397 = v237;
                  if (v238)
                  {
                    v240 = v428;
                    v241 = v424.f64[0];
                    v242 = v383;
                  }

                  else
                  {
                    v240 = v428;
                    v241 = v424.f64[0];
                    v242 = v383;
                    if (v458)
                    {
                      BytesPerRow = CVPixelBufferGetBytesPerRow(v458);
                      v239 = v458;
                      if (BytesPerRow == v229)
                      {
                        if (v458)
                        {
                          v428 = v240;
                          v244 = v458;
                          v245 = objc_allocWithZone(MEMORY[0x277CBF740]);
                          v246 = v244;
                          v247 = [v245 init];
                          v248 = v410;
                          [v247 render:v410 toCVPixelBuffer:v246];

                          CVPixelBufferLockBaseAddress(v246, 1uLL);
                          BaseAddress = CVPixelBufferGetBaseAddress(v246);
                          if (BaseAddress)
                          {
                            if (v229 <= 0x7FFFFFFF)
                            {
                              if (v229 >= 0xFFFFFFFF80000000 && v230 >= 0xFFFFFFFF80000000)
                              {
                                if (v230 <= 0x7FFFFFFF)
                                {
                                  ptr = BaseAddress;
                                  v481 = __PAIR64__(v230, v229);
                                  v482 = 0;
                                  v396 = swift_allocObject();
                                  *(v396 + 2) = v246;
                                  v250 = v384;
                                  v373(v384, v372, *&v424.f64[0]);
                                  v251 = v246;
                                  v252 = sub_2710F6D2C();
                                  v253 = sub_2710F711C();
                                  if (os_log_type_enabled(v252, v253))
                                  {
                                    v254 = swift_slowAlloc();
                                    *v254 = 0;
                                    _os_log_impl(&dword_27103D000, v252, v253, "Successfully converted image to grayscale", v254, 2u);
                                    MEMORY[0x2743BDA30](v254, -1, -1);
                                  }

                                  v157 = v424.f64[0];
                                  (v371[0])(v250, *&v424.f64[0]);
                                  v380(v387, v379, v429.n128_u64[0]);
                                  v255 = sub_2710F6CBC();
                                  sub_2710F6CEC();
                                  v256 = sub_2710F715C();
                                  v257 = sub_2710F71CC();
                                  v258 = v227;
                                  v259 = v423;
                                  if (v257)
                                  {

                                    v260 = v382;
                                    sub_2710F6D1C();

                                    v262 = v389;
                                    v261 = v390;
                                    v263 = (*(v389 + 88))(v260, v390);
                                    v264 = *MEMORY[0x277D85B00];
                                    v392 = v251;
                                    if (v263 == v264)
                                    {
                                      v265 = "[Error] Interval already ended";
                                    }

                                    else
                                    {
                                      (*(v262 + 8))(v260, v261);
                                      v265 = "";
                                    }

                                    v365 = swift_slowAlloc();
                                    *v365 = 0;
                                    v258 = v398;
                                    v366 = sub_2710F6C9C();
                                    _os_signpost_emit_with_name_impl(&dword_27103D000, v255, v256, v366, "ConvertImage", v265, v365, 2u);
                                    MEMORY[0x2743BDA30](v365, -1, -1);
                                    v157 = v424.f64[0];
                                    v251 = v392;
                                  }

                                  (*(v259 + 8))(v258, v425);
                                  v400(v387, v429.n128_u64[0]);
                                  v367 = v458;

                                  v162 = sub_271057C08;
                                  v159 = v407;
                                  v158 = v396;
LABEL_37:
                                  v478 = 0u;
                                  v477 = 0u;
                                  v476 = 0u;
                                  *&v458 = __PAIR64__(v422.n128_u32[0], LODWORD(v420.f64[0]));
                                  *(&v458 + 1) = __PAIR64__(v411, v415);
                                  v459 = v413;
                                  v460 = v416;
                                  v461 = v412;
                                  v462 = v414;
                                  v463 = v417;
                                  v464 = v433;
                                  v465 = v418;
                                  v466 = v434.f64[0];
                                  v467 = v100;
                                  v468 = v432.f64[0];
                                  v469 = a4;
                                  v470 = 0x100000000;
                                  v471 = a26;
                                  v472 = 0;
                                  v473 = v421.n128_u32[0];
                                  v474 = v419.n128_u32[0];
                                  v475 = a7;
                                  v479 = 1;
                                  v163 = v383;
                                  v164 = [v383 _vlHandle];
                                  v452 = 0;
                                  v450 = 0u;
                                  v451 = 0u;
                                  v448 = 0u;
                                  v449 = 0u;
                                  v446 = 0u;
                                  v447 = 0u;
                                  v444 = 0u;
                                  v445 = 0u;
                                  v442 = 0u;
                                  v443 = 0u;
                                  v440 = 0u;
                                  v441 = 0u;
                                  v438 = 0u;
                                  v439 = 0u;
                                  v437 = 0u;
                                  v165 = vl_locate(v164, &ptr, &v458, &v437);
                                  v396 = v158;
                                  v162();
                                  v457 = 0;
                                  memset(v456, 0, sizeof(v456));
                                  vl_stats_get(v164, v456);
                                  LODWORD(v410) = v165;
                                  if (v165 == 1)
                                  {
                                    GEOGetMonotonicTime();
                                    v167 = v166 - v94;
                                    v453 = v434;
                                    *v454 = v432;
                                    *&v454[16] = a4;
                                    v168 = [v163 _clLocationFrom:&v453];
                                    v169 = __PAIR64__(v419.n128_u32[0], v421.n128_u32[0]);
                                    v419 = COERCE_UNSIGNED_INT64(a7);
                                    v170.n128_u64[0] = __PAIR64__(v411, LODWORD(v420.f64[0]));
                                    v170.n128_u64[1] = v412;
                                    v421 = v170;
                                    v170.n128_u64[0] = __PAIR64__(v413, v422.n128_u32[0]);
                                    v170.n128_u32[2] = v414;
                                    v422 = v170;
                                    v420 = vcvtq_f64_f32(v169);
                                    *&v171 = __PAIR64__(v416, v415);
                                    *(&v171 + 1) = v417;
                                    v417 = v171;
                                    v172 = v433;
                                    DWORD1(v172) = v418;
                                    v433 = v172;
                                    v173 = objc_allocWithZone(VLLocalizationDebugInfo);
                                    v453.f64[0] = v434.f64[0];
                                    v453.f64[1] = v100;
                                    *v454 = v432.f64[0];
                                    *&v454[8] = a4;
                                    *&v454[12] = 0x100000000;
                                    v435 = v420;
                                    v436 = v419;
                                    LOBYTE(v370) = v377;
                                    v174 = [v173 initWithPixelBuffer:v159 monotonicTimestamp:&v453 timestamp:v168 duration:&v435 location:v456 clLocation:1 heading:v94 gravity:a26 transform:v167 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, *&v421, *&v422, v417, v433, 0, &v437, v370}];

                                    v175 = objc_allocWithZone(VLLocalizationResult);
                                    *&v433 = v174;
                                    v131 = [v175 initWithTimestamp:&v437 pose:v174 debugInfo:a26];
                                    v176 = *v375;
                                    v177 = sub_2710F710C();
                                    v178 = os_log_type_enabled(v176, v177);

                                    if (v178)
                                    {
                                      v453 = v434;
                                      *v454 = v432;
                                      v179 = VLCoordinateFromECEF(&v453);
                                      v181 = v180;
                                      v183 = v182;
                                      [v131 location];
                                      v184 = VLCoordinateFromECEF(&v453);
                                      v186 = v185;
                                      v188 = v187;
                                      v189 = GEOCoordinateGet3DDistance(v179, v181, v183, v184, v185, v187);
                                      v190 = sub_2710408A4();
                                      (*(v431 + 16))(v388, v190, COERCE_FLOAT64_T(*&v157));
                                      v191 = v131;
                                      v192 = sub_2710F6D2C();
                                      v193 = sub_2710F710C();

                                      if (os_log_type_enabled(v192, v193))
                                      {
                                        v194 = swift_slowAlloc();
                                        *v194 = 134285313;
                                        *(v194 + 4) = v184;
                                        *(v194 + 12) = 2049;
                                        *(v194 + 14) = v186;
                                        *(v194 + 22) = 2049;
                                        *(v194 + 24) = v188;
                                        *(v194 + 32) = 2049;
                                        [v191 location];
                                        *(v194 + 34) = v453.f64[0];
                                        *(v194 + 42) = 2049;
                                        [v191 location];
                                        *(v194 + 44) = v453.f64[1];
                                        *(v194 + 52) = 2049;
                                        [v191 location];
                                        *(v194 + 54) = *v454;
                                        *(v194 + 62) = 2048;
                                        *(v194 + 64) = v189;
                                        *(v194 + 72) = 2048;
                                        *(v194 + 74) = a26;
                                        _os_log_impl(&dword_27103D000, v192, v193, "locate result: (%{private}f, %{private}f, %{private}f) / ECEF: (%{private}f, %{private}f, %{private}f) -- Correction: %f meters @ %f", v194, 0x52u);
                                        MEMORY[0x2743BDA30](v194, -1, -1);
                                      }

                                      (*(v431 + 8))(v388, *&v424.f64[0]);
                                    }

                                    v380(v395, v379, v429.n128_u64[0]);
                                    v195 = v383;
                                    v196 = sub_2710F6CBC();
                                    sub_2710F6CEC();
                                    v197 = sub_2710F715C();
                                    if (sub_2710F71CC())
                                    {

                                      v198 = v386;
                                      sub_2710F6D1C();

                                      v200 = v389;
                                      v199 = v390;
                                      if ((*(v389 + 88))(v198, v390) == *MEMORY[0x277D85B00])
                                      {
                                        v201 = 0;
                                        v202 = "[Error] Interval already ended";
                                      }

                                      else
                                      {
                                        (*(v200 + 8))(v198, v199);
                                        v202 = "parent_signpost=%llu";
                                        v201 = 1;
                                      }

                                      v321 = swift_slowAlloc();
                                      *v321 = 0;
                                      *(v321 + 1) = v201;
                                      *(v321 + 2) = 2048;
                                      *(v321 + 4) = [v195 _signpostID];

                                      v297 = v393;
                                      v322 = sub_2710F6C9C();
                                      _os_signpost_emit_with_name_impl(&dword_27103D000, v196, v197, v322, "Locate", v202, v321, 0xCu);
                                      MEMORY[0x2743BDA30](v321, -1, -1);
                                    }

                                    else
                                    {

                                      v297 = v393;
                                    }

                                    v323 = v428;

                                    v324 = v423 + 8;
                                    v325 = *(v423 + 8);
                                    v326 = v425;
                                    v325(v297, v425);
                                    v400(v395, v429.n128_u64[0]);
                                    if (v378)
                                    {
                                      v327 = v399;

                                      *&v434.f64[0] = [v195 _recorderQueue];
                                      v328 = swift_allocObject();
                                      v328[2] = v323;
                                      v328[3] = v327;
                                      v428 = v323;
                                      v329 = v433;
                                      v328[4] = v433;
                                      *&v454[16] = sub_271057C10;
                                      v455 = v328;
                                      *&v453.f64[0] = MEMORY[0x277D85DD0];
                                      *&v453.f64[1] = 1107296256;
                                      *v454 = sub_271056480;
                                      *&v454[8] = &block_descriptor_23;
                                      v330 = _Block_copy(&v453);
                                      *&v423 = v324;
                                      v331 = v330;
                                      sub_2710572E4(v323);
                                      *&v432.f64[0] = v329;
                                      *&v433 = v325;
                                      v332 = v402;
                                      sub_2710F6D6C();
                                      *&v435.f64[0] = MEMORY[0x277D84F90];
                                      sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198]);
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0);
                                      sub_27105733C();
                                      v333 = v401;
                                      v334 = v404;
                                      sub_2710F726C();
                                      v335 = v434.f64[0];
                                      MEMORY[0x2743BC150](0, v332, v333, v331);

                                      _Block_release(v331);

                                      v336 = v428;
                                      sub_27104EE60(v428);

                                      sub_27104EE60(v336);
                                      (*(v403 + 8))(v333, v334);
                                      (*(v405 + 8))(v332, v406);
                                      (v433)(*&v427.f64[0], v425);
                                    }

                                    else
                                    {
                                      v325(*&v427.f64[0], v326);
                                    }

                                    return v131;
                                  }

                                  v266 = sub_2710408A4();
                                  v267 = v431;
                                  v268 = v376;
                                  (*(v431 + 16))(v376, v266, COERCE_FLOAT64_T(*&v157));
                                  v269 = sub_2710F6D2C();
                                  v270 = sub_2710F710C();
                                  if (os_log_type_enabled(v269, v270))
                                  {
                                    v271 = swift_slowAlloc();
                                    *v271 = 67109376;
                                    *(v271 + 4) = v410;
                                    *(v271 + 8) = 2048;
                                    *(v271 + 10) = a26;
                                    _os_log_impl(&dword_27103D000, v269, v270, "locate failed: %u @ %f", v271, 0x12u);
                                    v272 = v271;
                                    v268 = v376;
                                    MEMORY[0x2743BDA30](v272, -1, -1);
                                  }

                                  (*(v267 + 8))(v268, COERCE_FLOAT64_T(*&v157));
                                  v380(v394, v379, v429.n128_u64[0]);
                                  v273 = v163;
                                  v274 = sub_2710F6CBC();
                                  v275 = v391;
                                  sub_2710F6CEC();
                                  v276 = sub_2710F715C();
                                  v277 = sub_2710F71CC();
                                  v278 = v427.f64[0];
                                  if (v277)
                                  {

                                    v279 = v385;
                                    sub_2710F6D1C();

                                    v281 = v389;
                                    v280 = v390;
                                    if ((*(v389 + 88))(v279, v390) == *MEMORY[0x277D85B00])
                                    {
                                      v282 = 0;
                                      v283 = "[Error] Interval already ended";
                                    }

                                    else
                                    {
                                      (*(v281 + 8))(v279, v280);
                                      v283 = "parent_signpost=%llu";
                                      v282 = 1;
                                    }

                                    v298 = v407;
                                    v337 = swift_slowAlloc();
                                    *v337 = 0;
                                    *(v337 + 1) = v282;
                                    *(v337 + 2) = 2048;
                                    *(v337 + 4) = [v273 _signpostID];

                                    v338 = v391;
                                    v339 = sub_2710F6C9C();
                                    v340 = v283;
                                    v275 = v338;
                                    _os_signpost_emit_with_name_impl(&dword_27103D000, v274, v276, v339, "Locate", v340, v337, 0xCu);
                                    MEMORY[0x2743BDA30](v337, -1, -1);
                                    v278 = v427.f64[0];
                                  }

                                  else
                                  {

                                    v298 = v407;
                                  }

                                  v341 = v423 + 8;
                                  v342 = *(v423 + 8);
                                  v342(v275, v425);
                                  v400(v394, v429.n128_u64[0]);
                                  v343 = v410;
                                  if (v378)
                                  {
                                    v344 = v399;

                                    GEOGetMonotonicTime();
                                    v346 = v345 - v94;
                                    v453 = v434;
                                    *v454 = v432;
                                    *&v454[16] = a4;
                                    v347 = [v273 _clLocationFrom:&v453];
                                    v429 = COERCE_UNSIGNED_INT64(a7);
                                    v348.n128_u64[0] = __PAIR64__(v411, LODWORD(v420.f64[0]));
                                    v348.n128_u64[1] = v412;
                                    v431 = v348;
                                    v348.n128_u64[0] = __PAIR64__(v413, v422.n128_u32[0]);
                                    v348.n128_u32[2] = v414;
                                    v430 = v348;
                                    *&v349 = __PAIR64__(v416, v415);
                                    *(&v349 + 1) = v417;
                                    v423 = v349;
                                    v424 = vcvtq_f64_f32(__PAIR64__(v419.n128_u32[0], v421.n128_u32[0]));
                                    v350 = v433;
                                    DWORD1(v350) = v418;
                                    v433 = v350;
                                    v351 = v410;
                                    v352 = objc_allocWithZone(VLLocalizationDebugInfo);
                                    v453.f64[0] = v434.f64[0];
                                    v453.f64[1] = v100;
                                    *v454 = v432.f64[0];
                                    *&v454[8] = a4;
                                    *&v454[12] = 0x100000000;
                                    v435 = v424;
                                    v436 = v429;
                                    LOBYTE(v370) = v377;
                                    v369 = v423;
                                    *&v423 = v341;
                                    v353 = [v352 initWithPixelBuffer:v298 monotonicTimestamp:&v453 timestamp:v347 duration:&v435 location:v456 clLocation:v351 heading:v94 gravity:a26 transform:v346 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, v431, *&v430, v369, v433, 0, 0, v370}];

                                    *&v434.f64[0] = [v273 _recorderQueue];
                                    v354 = swift_allocObject();
                                    v355 = v428;
                                    v354[2] = v428;
                                    v354[3] = v344;
                                    v354[4] = v353;
                                    *&v454[16] = sub_271057C10;
                                    v455 = v354;
                                    *&v453.f64[0] = MEMORY[0x277D85DD0];
                                    *&v453.f64[1] = 1107296256;
                                    *v454 = sub_271056480;
                                    *&v454[8] = &block_descriptor_17;
                                    v356 = _Block_copy(&v453);
                                    sub_2710572E4(v355);
                                    *&v433 = v353;
                                    v357 = v402;
                                    sub_2710F6D6C();
                                    *&v435.f64[0] = MEMORY[0x277D84F90];
                                    sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198]);
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0);
                                    sub_27105733C();
                                    v358 = v401;
                                    v359 = v342;
                                    v360 = v404;
                                    sub_2710F726C();
                                    v361 = v434.f64[0];
                                    MEMORY[0x2743BC150](0, v357, v358, v356);
                                    _Block_release(v356);

                                    v278 = v427.f64[0];
                                    sub_27104EE60(v355);
                                    v362 = v360;
                                    v342 = v359;
                                    v343 = v410;
                                    (*(v403 + 8))(v358, v362);
                                    (*(v405 + 8))(v357, v406);
                                  }

                                  type metadata accessor for VLLocalizerError(0);
                                  if (v343 <= 1023)
                                  {
                                    v363 = v428;
                                    if (v343 <= 31)
                                    {
                                      if (v343 > 7)
                                      {
                                        if (v343 != 8)
                                        {
                                          if (v343 == 16)
                                          {
                                            v364 = 101;
                                            goto LABEL_165;
                                          }

                                          goto LABEL_164;
                                        }
                                      }

                                      else
                                      {
                                        if (v343 == 2)
                                        {
                                          v364 = 2;
                                          goto LABEL_165;
                                        }

                                        if (v343 != 4)
                                        {
                                          goto LABEL_164;
                                        }
                                      }

                                      v364 = 100;
                                      goto LABEL_165;
                                    }

                                    if (v343 <= 127)
                                    {
                                      if (v343 == 32)
                                      {
                                        v364 = 200;
                                        goto LABEL_165;
                                      }

                                      if (v343 == 64)
                                      {
                                        v364 = 201;
                                        goto LABEL_165;
                                      }
                                    }

                                    else
                                    {
                                      switch(v343)
                                      {
                                        case 128:
                                          v364 = 202;
                                          goto LABEL_165;
                                        case 256:
                                          v364 = 203;
                                          goto LABEL_165;
                                        case 512:
                                          v364 = 204;
                                          goto LABEL_165;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v363 = v428;
                                    if (v343 > 0x4000)
                                    {
                                      if (v343 <= 16386)
                                      {
                                        if (v343 == 16385)
                                        {
                                          v364 = 401;
                                        }

                                        else
                                        {
                                          v364 = 402;
                                        }

                                        goto LABEL_165;
                                      }

                                      switch(v343)
                                      {
                                        case 0x4003:
                                          v364 = 403;
                                          goto LABEL_165;
                                        case 0x4004:
                                          v364 = 404;
                                          goto LABEL_165;
                                        case 0x8000:
                                          v364 = 405;
                                          goto LABEL_165;
                                      }
                                    }

                                    else if (v343 <= 4095)
                                    {
                                      if (v343 == 1024)
                                      {
                                        v364 = 205;
                                        goto LABEL_165;
                                      }

                                      if (v343 == 2048)
                                      {
                                        v364 = 300;
                                        goto LABEL_165;
                                      }
                                    }

                                    else
                                    {
                                      switch(v343)
                                      {
                                        case 0x1000:
                                          v364 = 206;
                                          goto LABEL_165;
                                        case 0x2000:
                                          v364 = 207;
                                          goto LABEL_165;
                                        case 0x4000:
                                          v364 = 400;
LABEL_165:
                                          *&v435.f64[0] = v364;
                                          v131 = sub_271057140(MEMORY[0x277D84F90]);
                                          sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
                                          sub_2710F6BBC();
                                          swift_willThrow();

                                          sub_27104EE60(v363);
                                          v342(*&v278, v425);
                                          return v131;
                                      }
                                    }
                                  }

LABEL_164:
                                  v364 = 1000;
                                  goto LABEL_165;
                                }

                                goto LABEL_182;
                              }

LABEL_181:
                              __break(1u);
LABEL_182:
                              __break(1u);
                              goto LABEL_183;
                            }

LABEL_180:
                            __break(1u);
                            goto LABEL_181;
                          }

                          type metadata accessor for VLLocalizerError(0);
                          *&v437.f64[0] = 2;
                          v131 = sub_271057140(MEMORY[0x277D84F90]);
                          sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
                          sub_2710F6BBC();
                          swift_willThrow();

                          sub_27104EE60(v428);
                          (*(v423 + 8))(*&v427.f64[0], v425);
                          v320 = v458;
LABEL_105:

                          return v131;
                        }

                        type metadata accessor for VLLocalizerError(0);
                        *&v437.f64[0] = 2;
                        v131 = sub_271057140(MEMORY[0x277D84F90]);
                        sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
                        sub_2710F6BBC();
                        swift_willThrow();

                        v319 = v240;
LABEL_104:
                        sub_27104EE60(v319);
                        (*(v423 + 8))(*&v427.f64[0], v425);
                        v320 = v458;
                        goto LABEL_105;
                      }
                    }
                  }

                  v284 = v396;
                  if (v239)
                  {
                    v285 = v239;
                    if (CVPixelBufferGetBytesPerRow(v285) != v229)
                    {
                      v373(v392, v372, *&v241);
                      v291 = v285;
                      v292 = sub_2710F6D2C();
                      v293 = sub_2710F713C();
                      if (os_log_type_enabled(v292, v293))
                      {
                        v294 = v240;
                        v295 = swift_slowAlloc();
                        *v295 = 134218240;
                        *(v295 + 4) = CVPixelBufferGetBytesPerRow(v291);

                        *(v295 + 12) = 2048;
                        *(v295 + 14) = v229;
                        _os_log_impl(&dword_27103D000, v292, v293, "Image conversion failed to produce desired stride: %ld vs %ld", v295, 0x16u);
                        v296 = v295;
                        v240 = v294;
                        v241 = v424.f64[0];
                        MEMORY[0x2743BDA30](v296, -1, -1);
                      }

                      else
                      {

                        v292 = v291;
                      }

                      v289 = v378;
                      v290 = v407;

                      (v371[0])(v392, *&v241);
                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    v373(v396, v372, *&v241);
                    v286 = sub_2710F6D2C();
                    v287 = sub_2710F713C();
                    if (os_log_type_enabled(v286, v287))
                    {
                      v288 = swift_slowAlloc();
                      *v288 = 0;
                      _os_log_impl(&dword_27103D000, v286, v287, "Image conversion failed to produce output", v288, 2u);
                      MEMORY[0x2743BDA30](v288, -1, -1);
                    }

                    (v371[0])(v284, *&v241);
                  }

                  v289 = v378;
                  v290 = v407;
LABEL_101:
                  GEOGetMonotonicTime();
                  v300 = v299 - v94;
                  v456[1] = v432;
                  v456[0] = v434;
                  v456[2].f64[0] = a4;
                  v301 = [v242 _clLocationFrom:v456];
                  v429 = COERCE_UNSIGNED_INT64(a7);
                  *&v302 = __PAIR64__(v411, LODWORD(v420.f64[0]));
                  v424 = vcvtq_f64_f32(__PAIR64__(v419.n128_u32[0], v421.n128_u32[0]));
                  *(&v302 + 1) = v412;
                  v303.n128_u64[0] = __PAIR64__(v413, v422.n128_u32[0]);
                  v303.n128_u64[1] = v414;
                  v430 = v303;
                  v431 = v302;
                  v303.n128_u64[0] = __PAIR64__(v416, v415);
                  v303.n128_u64[1] = v417;
                  v422 = v303;
                  v304 = v433;
                  DWORD1(v304) = v418;
                  v433 = v304;
                  v305 = objc_allocWithZone(VLLocalizationDebugInfo);
                  v456[0].f64[0] = v434.f64[0];
                  v456[0].f64[1] = v100;
                  v456[1].f64[0] = v432.f64[0];
                  *&v456[1].f64[1] = a4;
                  *(&v456[1].f64[1] + 4) = 0x100000000;
                  v437 = v424;
                  v438 = v429;
                  LOBYTE(v370) = v377;
                  v306 = [v305 initWithPixelBuffer:v290 monotonicTimestamp:v456 timestamp:v301 duration:&v437 location:0 clLocation:0 heading:v94 gravity:a26 transform:v300 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, v431, *&v430, *&v422, v433, 0, 0, v370}];

                  if (v289)
                  {
                    v307 = v399;

                    *&v434.f64[0] = [v242 _recorderQueue];
                    v308 = swift_allocObject();
                    v308[2] = v240;
                    v308[3] = v307;
                    v308[4] = v306;
                    *&v456[2].f64[0] = sub_2710573FC;
                    *&v456[2].f64[1] = v308;
                    *&v456[0].f64[0] = MEMORY[0x277D85DD0];
                    *&v456[0].f64[1] = 1107296256;
                    *&v456[1].f64[0] = sub_271056480;
                    *&v456[1].f64[1] = &block_descriptor_8;
                    v309 = _Block_copy(v456);
                    sub_2710572E4(v240);
                    v310 = v306;
                    v428 = v240;
                    v311 = v402;
                    sub_2710F6D6C();
                    *&v437.f64[0] = MEMORY[0x277D84F90];
                    sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198]);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0);
                    sub_27105733C();
                    v312 = v401;
                    v313 = v404;
                    sub_2710F726C();
                    v314 = v434.f64[0];
                    MEMORY[0x2743BC150](0, v311, v312, v309);
                    _Block_release(v309);

                    sub_27104EE60(v428);
                    (*(v403 + 8))(v312, v313);
                    v315 = v311;
                    v240 = v428;
                    (*(v405 + 8))(v315, v406);
                  }

                  type metadata accessor for VLLocalizerError(0);
                  *&v437.f64[0] = 2;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751D0);
                  v316 = swift_allocObject();
                  *(v316 + 16) = xmmword_271102950;
                  *(v316 + 32) = sub_2710F6E3C();
                  *(v316 + 72) = MEMORY[0x277D837D0];
                  *(v316 + 40) = v317;
                  *(v316 + 48) = 0xD00000000000001ELL;
                  *(v316 + 56) = 0x80000002710FA400;
                  *(v316 + 80) = sub_2710F6E3C();
                  *(v316 + 88) = v318;
                  *(v316 + 120) = sub_27104F0C8(0, &qword_2808751D8);
                  *(v316 + 96) = v306;
                  v131 = v306;
                  sub_271057140(v316);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751E0);
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
                  sub_2710F6BBC();
                  swift_willThrow();

                  v319 = v240;
                  goto LABEL_104;
                }

                goto LABEL_172;
              }

LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        __break(1u);
        goto LABEL_169;
      }
    }

    else
    {
      if (PixelFormatType == 1278226488)
      {
        CVPixelBufferLockBaseAddress(v151, 1uLL);
        Width = CVPixelBufferGetWidth(v151);
        Height = CVPixelBufferGetHeight(v151);
        if (CVPixelBufferGetBytesPerRow(v151) == Width)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v151);
          if (BaseAddressOfPlane)
          {
            if (Width > 0x7FFFFFFF)
            {
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
            }

            v157 = v424.f64[0];
            if (Width < 0xFFFFFFFF80000000 || Height < 0xFFFFFFFF80000000)
            {
              goto LABEL_184;
            }

            if (Height > 0x7FFFFFFF)
            {
              goto LABEL_185;
            }

            ptr = BaseAddressOfPlane;
            v481 = __PAIR64__(Height, Width);
            v482 = 0;
            v158 = swift_allocObject();
            v159 = v407;
            *(v158 + 16) = v407;
            v205 = v159;
            v161 = sub_271057C08;
            goto LABEL_36;
          }

LABEL_86:
          type metadata accessor for VLLocalizerError(BaseAddressOfPlane);
          *&v437.f64[0] = 2;
          v131 = sub_271057140(MEMORY[0x277D84F90]);
          sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
          sub_2710F6BBC();
          swift_willThrow();

          sub_27104EE60(v428);
          (*(v149 + 8))(*&v427.f64[0], v425);
          return v131;
        }

LABEL_52:
        CVPixelBufferUnlockBaseAddress(v151, 1uLL);
        v148 = v409;
        goto LABEL_53;
      }

      if (PixelFormatType != 2033463856 && PixelFormatType != 1714696752)
      {
        goto LABEL_53;
      }
    }

    CVPixelBufferLockBaseAddress(v151, 1uLL);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v151, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v151, 0);
    if (CVPixelBufferGetBytesPerRowOfPlane(v151, 0) == WidthOfPlane)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v151, 0);
      if (BaseAddressOfPlane)
      {
        if (WidthOfPlane > 0x7FFFFFFF)
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v157 = v424.f64[0];
        if (WidthOfPlane < 0xFFFFFFFF80000000 || HeightOfPlane < 0xFFFFFFFF80000000)
        {
          goto LABEL_178;
        }

        if (HeightOfPlane > 0x7FFFFFFF)
        {
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        ptr = BaseAddressOfPlane;
        v481 = __PAIR64__(HeightOfPlane, WidthOfPlane);
        v482 = 0;
        v158 = swift_allocObject();
        v159 = v407;
        *(v158 + 16) = v407;
        v160 = v159;
        v161 = sub_2710574A4;
LABEL_36:
        v162 = v161;
        goto LABEL_37;
      }

      goto LABEL_86;
    }

    goto LABEL_52;
  }

  v103 = v98;
  v104 = sub_2710408A4();
  v105 = v431;
  (*(v431 + 16))(v75, v104, v59);
  v106 = sub_2710F6D2C();
  v107 = sub_2710F710C();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_27103D000, v106, v107, "locateWithPixelBuffer: Visual localization is not supported on this device", v108, 2u);
    MEMORY[0x2743BDA30](v108, -1, -1);
  }

  (*(v105 + 8))(v75, v59);
  GEOGetMonotonicTime();
  v110 = v109 - v94;
  v456[1] = v432;
  v456[0] = v434;
  v456[2].f64[0] = a4;
  v111 = v426;
  v112 = [v426 _clLocationFrom_];
  v429 = COERCE_UNSIGNED_INT64(a7);
  *&v113 = __PAIR64__(v411, LODWORD(v420.f64[0]));
  v427 = vcvtq_f64_f32(__PAIR64__(v419.n128_u32[0], v421.n128_u32[0]));
  *(&v113 + 1) = v412;
  v114.n128_u64[0] = __PAIR64__(v413, v422.n128_u32[0]);
  v114.n128_u64[1] = v414;
  v430 = v114;
  v431 = v113;
  v114.n128_u64[0] = __PAIR64__(v416, v415);
  v114.n128_u64[1] = v417;
  v425 = v114;
  v115 = v433;
  DWORD1(v115) = v418;
  v433 = v115;
  v116 = objc_allocWithZone(VLLocalizationDebugInfo);
  v456[0].f64[0] = v434.f64[0];
  v456[0].f64[1] = v100;
  v456[1].f64[0] = v432.f64[0];
  v99 = a4;
  *&v456[1].f64[1] = v99;
  *(&v456[1].f64[1] + 4) = 0x100000000;
  v437 = v427;
  v438 = v429;
  LOBYTE(v370) = 0;
  v117 = [v116 initWithPixelBuffer:0 monotonicTimestamp:v456 timestamp:v112 duration:&v437 location:0 clLocation:0 heading:v94 gravity:a26 transform:v110 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, v431, *&v430, v425, v433, 0, 0, v370}];

  v118 = v428;
  if (v96)
  {

    *&v434.f64[0] = [v111 _recorderQueue];
    v119 = swift_allocObject();
    v119[2] = v118;
    v119[3] = v103;
    v119[4] = v117;
    *&v456[2].f64[0] = sub_271057C10;
    *&v456[2].f64[1] = v119;
    *&v456[0].f64[0] = MEMORY[0x277D85DD0];
    *&v456[0].f64[1] = 1107296256;
    *&v456[1].f64[0] = sub_271056480;
    *&v456[1].f64[1] = &block_descriptor_1;
    *&v433 = _Block_copy(v456);
    sub_2710572E4(v118);
    v120 = v117;
    v121 = v402;
    sub_2710F6D6C();
    *&v437.f64[0] = MEMORY[0x277D84F90];
    sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0);
    sub_27105733C();
    v122 = v117;
    v123 = v118;
    v124 = v401;
    v125 = v404;
    sub_2710F726C();
    v126 = v433;
    v127 = v434.f64[0];
    MEMORY[0x2743BC150](0, v121, v124, v433);
    _Block_release(v126);

    sub_27104EE60(v123);
    v128 = v124;
    v118 = v123;
    v117 = v122;
    (*(v403 + 8))(v128, v125);
    (*(v405 + 8))(v121, v406);
  }

  type metadata accessor for VLLocalizerError(0);
  *&v437.f64[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751D0);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_271101AF0;
  *(v129 + 32) = sub_2710F6E3C();
  *(v129 + 40) = v130;
  *(v129 + 72) = sub_27104F0C8(0, &qword_2808751D8);
  *(v129 + 48) = v117;
  v131 = v117;
  sub_271057140(v129);
  swift_setDeallocating();
  sub_271057264(v129 + 32);
  swift_deallocClassInstance();
  sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
  sub_2710F6BBC();
  swift_willThrow();
  sub_27104EE60(v118);

  return v131;
}

uint64_t sub_271056480(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_2710564C4(__n128 a1, double a2, double a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = a1;
  v9 = a2;
  v10 = v4;
  v11 = 0;
  v12 = 0;
  v6 = 0;
  v7 = 0;
  vl_get_tile_from_gps([v3 _vlHandle], &v8, &v6);
  if (HIDWORD(v6) && v7)
  {
    return v6 | (HIDWORD(v6) << 32);
  }

  type metadata accessor for VLLocalizerError(0);
  sub_271057140(MEMORY[0x277D84F90]);
  sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
  sub_2710F6BBC();
  return swift_willThrow();
}

uint64_t VLLocalizer._fetchTileDataSync(at:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, double a4@<D2>)
{
  v6 = v4;
  v27 = a2;
  v35 = *MEMORY[0x277D85DE8];
  v10 = sub_2710F6C0C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = a4;
  v31 = v27;
  v32 = a3;
  v33 = v17;
  v34 = 0;
  v30 = 0uLL;
  vl_get_tile_from_gps([v6 _vlHandle], &v31, &v30);
  if (!DWORD1(v30) || !DWORD2(v30))
  {
    type metadata accessor for VLLocalizerError(0);
    v28 = 403;
    sub_271057140(MEMORY[0x277D84F90]);
    sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
    sub_2710F6BBC();
    return swift_willThrow();
  }

  v29 = v30;
  v18 = [v6 _dataProvider];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v18)
  {
    v28 = 0;
    v19 = [v18 fileURLForKey:&v29 error:&v28];
    v20 = v28;
    if (!v19)
    {
      v25 = v28;
      sub_2710F6BCC();

      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    v21 = v19;
    sub_2710F6BFC();
    v22 = v20;

    sub_27104F0C8(0, &qword_2808751A0);
    (*(v11 + 16))(v14, v16, v10);
    v23 = sub_27104FBAC(v14);
    if (v5)
    {
      (*(v11 + 8))(v16, v10);
      return swift_unknownObjectRelease();
    }

    v26 = v23;
    (*(v11 + 8))(v16, v10);
    result = swift_unknownObjectRelease();
    *a1 = v29;
    *(a1 + 16) = v26;
    *(a1 + 24) = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_2710F733C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27105699C(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_280875250, type metadata accessor for VLLocalizerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_271056A08(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_280875250, type metadata accessor for VLLocalizerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_271056A74(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_271056AF8(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_271056B64(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_271056BD0(void *a1, uint64_t a2)
{
  v4 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_271056C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_271056D00()
{
  sub_2710F751C();
  sub_2710F6D8C();
  return sub_2710F756C();
}

void *sub_271056D60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_271056D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_271056E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2710F751C();
  sub_2710F6EAC();
  v5 = sub_2710F756C();

  return a3(a1, a2, v5);
}

uint64_t sub_271056E98()
{
  v0 = sub_2710F73DC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_271056EE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875290);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2710570D8();
  sub_2710F757C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = 0;
  v7 = sub_2710F740C();
  v14 = 1;
  v8 = sub_2710F740C();
  v13 = 2;
  v11 = sub_2710F740C();
  v12 = 3;
  sub_2710F740C();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7 | (v8 << 32);
}

unint64_t sub_2710570D8()
{
  result = qword_2808768E0[0];
  if (!qword_2808768E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808768E0);
  }

  return result;
}

unint64_t sub_271057140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875288);
    v3 = sub_2710F73BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_271057B24(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_271056E14(v13, v14, sub_271048190);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_271057B94(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_271057264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2710572E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2710572F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27105733C()
{
  result = qword_2808751F8;
  if (!qword_2808751F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808751F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808751F8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double GEOCoordinateGet3DDistance(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a6;
  GEOCalculateDistance();
  return sqrt(v6 * v6 + v7 * v7);
}

uint64_t sub_271057520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_271057568(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27105772C()
{
  result = qword_280876CF0[0];
  if (!qword_280876CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280876CF0);
  }

  return result;
}

unint64_t sub_271057990()
{
  result = qword_280875278;
  if (!qword_280875278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875278);
  }

  return result;
}

unint64_t sub_271057A78()
{
  result = qword_280877280;
  if (!qword_280877280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280877280);
  }

  return result;
}

unint64_t sub_271057AD0()
{
  result = qword_280877288[0];
  if (!qword_280877288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280877288);
  }

  return result;
}

uint64_t sub_271057B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_271057B94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_271057C14@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v87 = a5;
  v11 = sub_2710F6D4C();
  v12 = MEMORY[0x28223BE20](v11);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v81 - v16;
  v18 = *a1;
  if (*a1 >= 1.0)
  {
    goto LABEL_37;
  }

  v82 = a4;
  v83 = v15;
  v84 = v14;
  v19 = a2[1];
  v20 = a2[2];
  v109[0] = *a2;
  v109[1] = v19;
  v106[0] = 32;
  v106[1] = 0xE100000000000000;
  v104 = 0;
  v105 = 0xE000000000000000;
  v21 = sub_27104EDB0();
  v101 = sub_2710F721C();
  v95 = v22;
  if (sub_2710F6EBC() < 5 || (v23 = *(a3 + 16)) == 0)
  {

    v26 = 0.0;
    v57 = v87;
LABEL_25:
    LOBYTE(v109[0]) = 2;
    v58 = sub_27105CCAC(v20, v57, v82, &type metadata for StringSimilarityAlgorithm, &off_2880FF1C8, 0.7);
    if (v58 < 0.0)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v58;
    }

    v60 = sub_27104074C();
    v61 = v84;
    v62 = v83;
    (*(v84 + 16))(v83, v60, v11);

    v63 = sub_2710F6D2C();
    v64 = sub_2710F711C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v109[0] = v66;
      *v65 = 136315650;
      v67 = MEMORY[0x277D83E40];
      v68 = MEMORY[0x2743BBFA0](v20, MEMORY[0x277D83E40]);
      v81 = a6;
      v70 = sub_2710475BC(v68, v69, v109);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = MEMORY[0x2743BBFA0](v57, v67);
      v73 = sub_2710475BC(v71, v72, v109);

      *(v65 + 14) = v73;
      *(v65 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8);
      v74 = swift_allocObject();
      v75 = MEMORY[0x277D839F8];
      *(v74 + 16) = xmmword_271101AF0;
      v76 = MEMORY[0x277D83A80];
      *(v74 + 56) = v75;
      *(v74 + 64) = v76;
      *(v74 + 32) = v59;
      v77 = sub_2710F6E4C();
      v79 = sub_2710475BC(v77, v78, v109);

      *(v65 + 24) = v79;
      a6 = v81;
      _os_log_impl(&dword_27103D000, v63, v64, "  %s / %s → %s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743BDA30](v66, -1, -1);
      MEMORY[0x2743BDA30](v65, -1, -1);

      result = (*(v84 + 8))(v62, v11);
    }

    else
    {

      result = (*(v61 + 8))(v62, v11);
    }

    if (v18 > v26)
    {
      v80 = v18;
    }

    else
    {
      v80 = v26;
    }

    if (v80 > v59)
    {
      v18 = v80;
    }

    else
    {
      v18 = v59;
    }

    goto LABEL_37;
  }

  v92 = v21;
  v81 = a6;
  v90 = (v84 + 16);
  v89 = (v84 + 8);
  v24 = (a3 + 72);
  *(&v25 + 1) = 6;
  v88 = xmmword_271101B00;
  *&v25 = 136315650;
  v86 = v25;
  v85 = xmmword_271101AF0;
  v26 = 0.0;
  v27 = v95;
  v94 = v11;
  v91 = v20;
  v93 = v17;
  do
  {
    v28 = *v24;
    if (v26 >= 1.0)
    {
    }

    else
    {
      v97 = v23;
      v29 = *(v24 - 3);
      v31 = *(v24 - 2);
      v30 = *(v24 - 1);
      v99 = *(v24 - 4);

      v96 = v30;

      v100 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808752A0);
      inited = swift_initStackObject();
      *(inited + 16) = v88;
      *(inited + 56) = &type metadata for StringSimilarityAlgorithm;
      *(inited + 64) = &off_2880FF1C8;
      *(inited + 32) = 0;
      *(inited + 72) = 2;
      *(inited + 96) = &type metadata for WeightedLCSSimilarityAlgorithm;
      *(inited + 104) = &off_2880FF060;
      *(inited + 112) = 2;
      *(inited + 136) = &type metadata for StringSimilarityAlgorithm;
      *(inited + 144) = &off_2880FF1C8;
      sub_2710508F4(inited + 32, v106);
      v33 = v108;
      __swift_project_boxed_opaque_existential_1Tm(v106, v107);
      v104 = v101;
      v105 = v27;
      v98 = v29;
      v102 = v29;
      v103 = v31;
      v34 = MEMORY[0x277D837D0];
      v35 = v92;
      v36 = (*(v33 + 8))(&v104, &v102);
      if (v36 < 0.0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v36;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      sub_2710508F4(inited + 72, v106);
      if (v37 >= 1.0)
      {
        v40 = v31;
      }

      else
      {
        v38 = v107;
        v39 = v108;
        __swift_project_boxed_opaque_existential_1Tm(v106, v107);
        v104 = v101;
        v105 = v95;
        v102 = v98;
        v40 = v31;
        v103 = v31;
        v41 = (*(v39 + 8))(&v104, &v102, v34, v34, v35, v35, v38, v39);
        if (v37 <= v41)
        {
          v37 = v41;
        }
      }

      v11 = v94;
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      sub_2710508F4(inited + 112, v106);

      v27 = v95;
      if (v37 < 1.0)
      {
        v42 = v107;
        v43 = v108;
        __swift_project_boxed_opaque_existential_1Tm(v106, v107);
        v104 = v101;
        v105 = v27;
        v102 = v98;
        v103 = v40;
        v44 = (*(v43 + 8))(&v104, &v102, MEMORY[0x277D837D0], MEMORY[0x277D837D0], v92, v92, v42, v43);
        if (v37 <= v44)
        {
          v37 = v44;
        }
      }

      v45 = v93;
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      v46 = sub_27104074C();
      (*v90)(v45, v46, v11);

      v47 = sub_2710F6D2C();
      v48 = sub_2710F711C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v109[0] = v50;
        *v49 = v86;
        *(v49 + 4) = sub_2710475BC(v101, v27, v109);
        *(v49 + 12) = 2080;
        *(v49 + 14) = sub_2710475BC(v98, v40, v109);
        *(v49 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8);
        v51 = swift_allocObject();
        *(v51 + 16) = v85;
        *(v51 + 56) = MEMORY[0x277D839F8];
        *(v51 + 64) = MEMORY[0x277D83A80];
        *(v51 + 32) = v37;
        v52 = sub_2710F6E4C();
        v54 = sub_2710475BC(v52, v53, v109);

        *(v49 + 24) = v54;
        _os_log_impl(&dword_27103D000, v47, v48, "  %s / %s → %s", v49, 0x20u);
        swift_arrayDestroy();
        v55 = v50;
        v11 = v94;
        MEMORY[0x2743BDA30](v55, -1, -1);
        v56 = v49;
        v45 = v93;
        MEMORY[0x2743BDA30](v56, -1, -1);
      }

      (*v89)(v45, v11);

      v20 = v91;
      if (v26 <= v37)
      {
        v26 = v37;
      }

      v23 = v97;
    }

    v24 += 6;
    --v23;
  }

  while (v23);

  v57 = v87;
  if (v26 < 1.0)
  {
    a6 = v81;
    goto LABEL_25;
  }

  if (v18 <= v26)
  {
    v18 = v26;
  }

  a6 = v81;
LABEL_37:
  *a6 = v18;
  return result;
}

double sub_27105875C(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a3;
  v13 = sub_2710F6D4C();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x28223BE20](v13);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 1);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v37 - v16;
  v46[3] = a5;
  v46[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a2, a5);
  sub_27105E7C4(v46, a4, a6, &v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  v19 = 0.0;
  if ((v49 & 1) == 0)
  {
    v20 = v47;
    v46[0] = v47;
    v46[1] = v48;
    v38 = v48;
    sub_2710F70DC();
    swift_getAssociatedConformanceWitness();
    if (sub_2710F709C() >= 5)
    {
      v21 = sub_2710F709C();
      v22 = v21 / sub_2710F709C();
      if (v22 >= 0.75 || v22 >= 0.25 && (sub_2710F708C(), !((v46[0] ^ v20) >> 14)))
      {
        sub_2710F708C();
        v44 = v20;
        v45 = v46[0];
        v23 = sub_2710F6DCC();
        v46[0] = v38;
        sub_2710F70BC();
        v44 = v45;
        v24 = sub_2710F6DCC();
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        v26 = v25 / sub_2710F709C();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_27105D070(v17, a1, v39, AssociatedTypeWitness, a4, AssociatedConformanceWitness, a6);
        v19 = v28 * (v26 * -0.5 + 1.0);
        v29 = sub_27104074C();
        v31 = v40;
        v30 = v41;
        v32 = v42;
        (*(v41 + 16))(v40, v29, v42);
        v33 = sub_2710F6D2C();
        v34 = sub_2710F711C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134217984;
          *(v35 + 4) = v19;
          _os_log_impl(&dword_27103D000, v33, v34, "LCS is sufficiently-long. Clamping score to at least %f", v35, 0xCu);
          MEMORY[0x2743BDA30](v35, -1, -1);
        }

        (*(v30 + 8))(v31, v32);
      }
    }

    (*(v43 + 8))(v17, AssociatedTypeWitness);
  }

  return v19;
}

void *sub_271058BD4(void *a1, int64_t a2, char a3)
{
  result = sub_271058BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_271058BF4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808752A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808752B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_271058D28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!*(result + 16))
  {
    return result;
  }

  v8 = result;
  result = sub_271047E6C(a6);
  if ((v9 & 1) == 0)
  {
    return result;
  }

  v33 = a5;
  v10 = *(*(v8 + 56) + 8 * result);
  v11 = *(a2 + 16);
  if (v11)
  {
    v35[0] = MEMORY[0x277D84F90];

    sub_271058BD4(0, v11, 0);
    v12 = v35[0];
    v13 = (a2 + 64);
    do
    {
      v14 = *v13;
      v35[0] = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = v16 + 1;

      if (v16 >= v15 >> 1)
      {
        result = sub_271058BD4((v15 > 1), v16 + 1, 1);
        v12 = v35[0];
      }

      *(v12 + 16) = v17;
      *(v12 + 8 * v16 + 32) = v14;
      v13 += 6;
      --v11;
    }

    while (v11);
    goto LABEL_10;
  }

  v12 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);

  v18 = v12;
  if (v17)
  {
LABEL_10:
    v19 = 0;
    v18 = MEMORY[0x277D84F90];
    do
    {
      if (v19 >= *(v12 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

      v20 = *(v12 + 8 * v19 + 32);
      v21 = *(v20 + 16);
      v22 = *(v18 + 16);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_34;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v23 <= *(v18 + 24) >> 1)
      {
        if (*(v20 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v22 <= v23)
        {
          v24 = v22 + v21;
        }

        else
        {
          v24 = v22;
        }

        result = sub_27104728C(result, v24, 1, v18);
        v18 = result;
        if (*(v20 + 16))
        {
LABEL_23:
          if ((*(v18 + 24) >> 1) - *(v18 + 16) < v21)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          if (v21)
          {
            v25 = *(v18 + 16);
            v26 = __OFADD__(v25, v21);
            v27 = v25 + v21;
            if (v26)
            {
              goto LABEL_38;
            }

            *(v18 + 16) = v27;
          }

          goto LABEL_12;
        }
      }

      if (v21)
      {
        goto LABEL_35;
      }

LABEL_12:
      ++v19;
    }

    while (v17 != v19);
  }

  v36 = 0;
  v28 = *(v10 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = (v10 + 48);
    while (v29 < *(v10 + 16))
    {
      ++v29;
      v32 = *(v30 - 1);
      v31 = *v30;
      v35[0] = *(v30 - 2);
      v35[1] = v32;
      v35[2] = v31;

      sub_271057C14(&v36, v35, a2, v33, v18, &v34);

      v36 = v34;
      v30 += 3;
      if (v28 == v29)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

LABEL_31:
}

double sub_271059020(double a1)
{
  v1 = a1 / 10.0;
  result = 1.0;
  if (v1 > COERCE_DOUBLE(1))
  {
    return fmin(1.0 / v1, 1.0);
  }

  return result;
}

BOOL sub_271059058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_27104DC50();
  }

  while ((sub_2710F6DFC() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_2710590DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, double *a4@<X8>)
{
  v40 = a4;
  v7 = sub_2710F6D4C();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2710F6ABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 2);
  v38 = *(a1 + 1);
  v39 = v15;
  LOBYTE(v41[0]) = v14;
  v42 = 0;
  sub_27104DC50();
  if ((sub_2710F6DFC() & 1) != 0 && sub_271059058(0, a2))
  {
    v16 = [a3 _telephone];
    if (v16)
    {
      v17 = v16;
      v18 = sub_2710F6E3C();
      v20 = v19;

      v21 = sub_271059E88(v38, v39, v18, v20);
LABEL_16:
      v27 = v21;

      goto LABEL_17;
    }
  }

  LOBYTE(v41[0]) = v14;
  v42 = 1;
  if ((sub_2710F6DFC() & 1) != 0 && sub_271059058(1, a2) && (v22 = [a3 shortAddress]) != 0)
  {
    v23 = v22;
    sub_2710F6E3C();

    sub_2710F6E6C();

    v41[0] = sub_2710F6E6C();
    v41[1] = v24;
    sub_2710F6AAC();
    sub_27104EDB0();
    sub_2710F720C();
    (*(v11 + 8))(v13, v10);

    v25 = sub_2710F6F1C();

    v27 = 0.0;
    if (v25)
    {
      v28 = sub_27104074C();
      v29 = v37;
      (*(v37 + 16))(v9, v28, v7);
      v30 = v39;

      v31 = sub_2710F6D2C();
      v32 = sub_2710F711C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v41[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2710475BC(v38, v30, v41);
        _os_log_impl(&dword_27103D000, v31, v32, "Found address match: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x2743BDA30](v34, -1, -1);
        MEMORY[0x2743BDA30](v33, -1, -1);
      }

      result = (*(v29 + 8))(v9, v7);
      v27 = 1.0;
    }
  }

  else
  {
    LOBYTE(v41[0]) = v14;
    v42 = 2;
    result = sub_2710F6DFC();
    v27 = 0.0;
    if (result)
    {
      result = sub_271059058(2, a2);
      if (result)
      {
        result = [a3 _businessURL];
        if (result)
        {
          v35 = result;
          sub_2710F6E3C();

          v21 = sub_27105A524(v38, v39);
          goto LABEL_16;
        }
      }
    }
  }

LABEL_17:
  *v40 = v27;
  return result;
}

unint64_t sub_27105957C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2710F6F5C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_27104728C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_27104728C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2710F6F3C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2710F6ECC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2710F6ECC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2710F6F5C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_27104728C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2710F6F5C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_27104728C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_27104728C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2710F6ECC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_27105993C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875350);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_271059A70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_271059B90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_271059C9C(char *a1, int64_t a2, char a3)
{
  result = sub_271059CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_271059CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_271059DDC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double sub_271059E88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v54 = a3;
  v58[8] = *MEMORY[0x277D85DE8];
  v6 = sub_2710F6D4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_271101AF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v58[0] = 32;
  v58[1] = 0xE100000000000000;
  v57 = v58;
  swift_bridgeObjectRetain_n();
  v12 = sub_27105957C(0x7FFFFFFFFFFFFFFFLL, 1, sub_27105BC84, v56, a1, a2, v11);
  v13 = v12;
  v14 = v12[2];
  v51 = v9;
  if (v14 < 2)
  {
    v55 = *(inited + 16);
    if (!v55)
    {
LABEL_16:

      return 0.0;
    }
  }

  else
  {
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v18 = v12[7];

    v19 = MEMORY[0x2743BBEA0](v15, v16, v17, v18);
    v21 = v20;

    inited = sub_271059B90(1, 2, 1, inited);
    v55 = 2;
    *(inited + 16) = 2;
    *(inited + 48) = v19;
    *(inited + 56) = v21;
  }

  v52 = v13;
  v49 = v7;
  v50 = v6;
  v22 = 0;
  v23 = (inited + 40);
  while (1)
  {
    if (v22 >= *(inited + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v25 = *(v23 - 1);
    v24 = *v23;
    v26 = objc_opt_self();

    v27 = [v26 sharedConfiguration];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v29 = [v27 countryCode];

    if (!v29)
    {
      goto LABEL_25;
    }

    v30 = sub_2710F6E0C();
    v31 = CFPhoneNumberCreate();

    if (!v31)
    {
      goto LABEL_6;
    }

    String = CFPhoneNumberCreateString();
    if (!String)
    {

      goto LABEL_6;
    }

    v33 = String;
    v34 = sub_2710F6E3C();
    v36 = v35;

    if (v34 == v54 && v36 == v53)
    {
      break;
    }

    v37 = sub_2710F748C();

    if (v37)
    {

      goto LABEL_18;
    }

LABEL_6:
    ++v22;

    v23 += 2;
    if (v55 == v22)
    {
      goto LABEL_16;
    }
  }

LABEL_18:

  v39 = sub_27104074C();
  v41 = v49;
  v40 = v50;
  v42 = v51;
  (*(v49 + 16))(v51, v39, v50);

  v43 = sub_2710F6D2C();
  v44 = sub_2710F711C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v42;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v58[0] = v47;
    *v46 = 136315138;
    v48 = sub_2710475BC(v25, v24, v58);

    *(v46 + 4) = v48;
    _os_log_impl(&dword_27103D000, v43, v44, "Found exact phone number match: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x2743BDA30](v47, -1, -1);
    MEMORY[0x2743BDA30](v46, -1, -1);

    (*(v41 + 8))(v45, v40);
  }

  else
  {

    (*(v41 + 8))(v42, v40);
  }

  return 1.0;
}

uint64_t sub_27105A344()
{
  sub_2710F6ADC();
  if (v0)
  {
    sub_27104EDB0();
    v1 = sub_2710F71FC();

    v2 = v1[2];
    if (v2 && (v1[4] == 7829367 ? (v3 = v1[5] == 0xE300000000000000) : (v3 = 0), (v3 || (sub_2710F748C() & 1) != 0) && v2 != 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875330);
      sub_27105BBC8();
      v4 = sub_2710F6DEC();
      v6 = v5;

      MEMORY[0x2743BBAF0](v4, v6);
    }

    else
    {
    }
  }

  v7 = sub_2710F6ADC();
  if (v8)
  {
    v9 = sub_2710F6E6C();
    v11 = v10;

    v7 = v9;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x2743BBAF0](v7, v11);
  sub_2710F6B2C();
  if (sub_2710F6AFC() == 47 && v12 == 0xE100000000000000)
  {
  }

  else
  {
    v13 = sub_2710F748C();

    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  return MEMORY[0x2743BBB10](0, 0xE000000000000000);
}

double sub_27105A524(uint64_t a1, uint64_t a2)
{
  v155 = a1;
  v156 = a2;
  v2 = sub_2710F6D4C();
  v153 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v152 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v141 = &v133 - v6;
  MEMORY[0x28223BE20](v5);
  v139 = &v133 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875320);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v143 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v147 = &v133 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v133 - v14;
  MEMORY[0x28223BE20](v13);
  v149 = &v133 - v15;
  v16 = sub_2710F6C0C();
  v150 = *(v16 - 8);
  v151 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v138 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v140 = &v133 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v142 = &v133 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v144 = &v133 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v145 = &v133 - v26;
  MEMORY[0x28223BE20](v25);
  v148 = &v133 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v133 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v133 - v35;
  v37 = sub_2710F6B4C();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v154 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v133 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v133 - v44;
  sub_2710F6B3C();
  v46 = *(v38 + 48);
  if (v46(v36, 1, v37) == 1)
  {
    sub_27104F110(v36, &qword_2808750D0);
    return 0.0;
  }

  v134 = v2;
  v135 = *(v38 + 32);
  v135(v45, v36, v37);
  v47 = sub_2710F6B1C();
  if (!v48)
  {
    (*(v38 + 8))(v45, v37);
    return 0.0;
  }

  v136 = v45;
  v133 = v37;
  v137 = v38;
  v157 = v47;
  v158 = v48;
  MEMORY[0x28223BE20](v47);
  *(&v133 - 2) = &v157;
  v49 = sub_271059DDC(sub_27105BB54, (&v133 - 4), &unk_2880FF0A0);

  if ((v49 & 1) == 0)
  {
    (*(v137 + 8))(v136, v133);
    return 0.0;
  }

  sub_2710F6B3C();
  v50 = v133;
  v51 = v46(v34, 1, v133);
  v52 = v137;
  if (v51 == 1)
  {
    sub_27104F110(v34, &qword_2808750D0);
LABEL_11:
    v54 = v154;

    v55 = v153;
    goto LABEL_12;
  }

  v135(v43, v34, v50);
  sub_2710F6B1C();
  if (v53)
  {

    (*(v52 + 8))(v43, v50);
    goto LABEL_11;
  }

  v157 = 0x2F2F3A7370747468;
  v158 = 0xE800000000000000;
  MEMORY[0x2743BBEF0](v155, v156);
  (*(v52 + 8))(v43, v50);
  v55 = v153;
  v54 = v154;
LABEL_12:
  sub_2710F6B3C();

  if (v46(v31, 1, v50) == 1)
  {
    sub_27104F110(v31, &qword_2808750D0);
    v56 = v137;
LABEL_20:
    v66 = v134;
    v60 = v152;
LABEL_21:
    v67 = sub_27104074C();
    (*(v55 + 16))(v60, v67, v66);
    v68 = v156;

    v69 = sub_2710F6D2C();
    v70 = sub_2710F712C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v157 = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_2710475BC(v155, v68, &v157);
      _os_log_impl(&dword_27103D000, v69, v70, "Failed to parse URL: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x2743BDA30](v72, -1, -1);
      MEMORY[0x2743BDA30](v71, -1, -1);
    }

    (*(v55 + 8))(v60, v66);
    (*(v56 + 8))(v136, v50);
    return 0.0;
  }

  v135(v54, v31, v50);
  v57 = sub_2710F6B1C();
  v56 = v137;
  if (!v58)
  {
    (*(v137 + 8))(v54, v50);
    goto LABEL_20;
  }

  v157 = v57;
  v158 = v58;
  MEMORY[0x28223BE20](v57);
  *(&v133 - 2) = &v157;
  v59 = sub_271059DDC(sub_27105BC84, (&v133 - 4), &unk_2880FF0A0);

  v60 = v152;
  if ((v59 & 1) == 0)
  {
    (*(v56 + 8))(v54, v50);
    v66 = v134;
    goto LABEL_21;
  }

  sub_27105A344();
  sub_27105A344();
  v61 = v149;
  sub_2710F6ACC();
  v63 = v150;
  v62 = v151;
  v64 = *(v150 + 48);
  v65 = v64(v61, 1, v151);
  v152 = v64;
  if (v65 == 1)
  {
    sub_27104F110(v61, &qword_280875320);
    goto LABEL_35;
  }

  v74 = *(v63 + 32);
  v75 = v148;
  v74(v148, v61, v62);
  v76 = v146;
  sub_2710F6ACC();
  v77 = v151;
  if (v64(v76, 1, v151) == 1)
  {
    v63 = v150;
    (*(v150 + 8))(v75, v77);
    sub_27104F110(v76, &qword_280875320);
LABEL_34:
    v54 = v154;
LABEL_35:
    v93 = sub_2710F6AFC();
    v95 = v94;

    v96 = HIBYTE(v95) & 0xF;
    if ((v95 & 0x2000000000000000) == 0)
    {
      v96 = v93 & 0xFFFFFFFFFFFFLL;
    }

    v97 = v152;
    if (v96)
    {
      MEMORY[0x2743BBB10](0, 0xE000000000000000);
      v98 = v147;
      sub_2710F6ACC();
      v99 = v151;
      if (v97(v98, 1, v151) == 1)
      {
        v100 = *(v56 + 8);
        v100(v54, v50);
        v100(v136, v50);
        sub_27104F110(v98, &qword_280875320);
        return 0.0;
      }

      v102 = *(v63 + 32);
      v103 = v144;
      v102(v144, v98, v99);
      v104 = v143;
      sub_2710F6ACC();
      v105 = v151;
      if (v97(v104, 1, v151) == 1)
      {
        (*(v150 + 8))(v103, v105);
        v106 = *(v56 + 8);
        v106(v154, v50);
        v106(v136, v50);
        sub_27104F110(v104, &qword_280875320);
        return 0.0;
      }

      v107 = v142;
      v102(v142, v104, v105);
      if (sub_2710F6BEC())
      {
        v108 = sub_27104074C();
        (*(v55 + 16))(v141, v108, v134);
        v109 = v107;
        v110 = v150;
        v111 = v105;
        v112 = *(v150 + 16);
        v112(v140, v109, v111);
        v113 = v138;
        v112(v138, v103, v111);
        v114 = sub_2710F6D2C();
        v115 = sub_2710F711C();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v157 = v156;
          *v116 = 136315394;
          sub_27105BB70();
          v117 = v140;
          v118 = sub_2710F746C();
          v120 = v119;
          LODWORD(v155) = v115;
          v121 = *(v110 + 8);
          v121(v117, v111);
          v122 = sub_2710475BC(v118, v120, &v157);

          *(v116 + 4) = v122;
          *(v116 + 12) = 2080;
          v123 = sub_2710F746C();
          v125 = v124;
          v121(v113, v111);
          v126 = sub_2710475BC(v123, v125, &v157);

          *(v116 + 14) = v126;
          _os_log_impl(&dword_27103D000, v114, v155, "Found host-only webURL match: %s -> %s", v116, 0x16u);
          v127 = v156;
          swift_arrayDestroy();
          MEMORY[0x2743BDA30](v127, -1, -1);
          MEMORY[0x2743BDA30](v116, -1, -1);

          (*(v153 + 8))(v141, v134);
          v121(v142, v111);
          v121(v144, v111);
          v128 = *(v137 + 8);
          v129 = v133;
          v128(v154, v133);
          v128(v136, v129);
        }

        else
        {

          v131 = *(v110 + 8);
          v131(v113, v111);
          v131(v140, v111);
          (*(v55 + 8))(v141, v134);
          v131(v142, v111);
          v131(v103, v111);
          v132 = *(v56 + 8);
          v132(v154, v50);
          v132(v136, v50);
        }

        return 0.6;
      }

      v130 = *(v150 + 8);
      v130(v107, v105);
      v130(v103, v105);
      v101 = *(v56 + 8);
      v101(v154, v50);
    }

    else
    {
      v101 = *(v56 + 8);
      v101(v54, v50);
    }

    v101(v136, v50);
    return 0.0;
  }

  v78 = v76;
  v79 = v145;
  v74(v145, v78, v77);
  if ((sub_2710F6BEC() & 1) == 0)
  {
    v91 = v150;
    v92 = *(v150 + 8);
    v92(v79, v77);
    v63 = v91;
    v92(v75, v77);
    goto LABEL_34;
  }

  v80 = sub_27104074C();
  v81 = v139;
  v82 = v134;
  (*(v55 + 16))(v139, v80, v134);
  v83 = v156;

  v84 = sub_2710F6D2C();
  v85 = sub_2710F711C();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v157 = v87;
    *v86 = 136315138;
    *(v86 + 4) = sub_2710475BC(v155, v83, &v157);
    _os_log_impl(&dword_27103D000, v84, v85, "Found exact webURL match: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v87);
    MEMORY[0x2743BDA30](v87, -1, -1);
    MEMORY[0x2743BDA30](v86, -1, -1);
  }

  (*(v55 + 8))(v81, v82);
  v88 = v151;
  v89 = *(v150 + 8);
  v89(v145, v151);
  v89(v148, v88);
  v90 = *(v56 + 8);
  v90(v154, v50);
  v90(v136, v50);
  return 1.0;
}

uint64_t sub_27105B690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = result;
  v5 = MEMORY[0x277D84F90];
  v50 = *(a3 + 16);
  if (v50)
  {
    v6 = 0;
    v49 = a3 + 32;
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v52 = v7;
    v53 = v6;
    v8 = *(v49 + 48 * v6 + 40);
    v9 = *(v8 + 16);

    if (!v9)
    {
      v12 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v10 = 0;
    v11 = v8 + 48;
    v12 = MEMORY[0x277D84F90];
LABEL_5:
    v13 = (v11 + 24 * v10);
    v14 = v10;
    while (v14 < *(v8 + 16))
    {
      v15 = *(v13 - 16);
      v10 = v14 + 1;
      v16 = *(v13 - 1);
      v17 = *v13;

      if (sub_271059058(v15, a4))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v54[0] = v12;
        if ((result & 1) == 0)
        {
          result = sub_271059C9C(0, *(v12 + 16) + 1, 1);
          v12 = v54[0];
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          result = sub_271059C9C((v18 > 1), v19 + 1, 1);
          v20 = v19 + 1;
          v12 = v54[0];
        }

        *(v12 + 16) = v20;
        v21 = v12 + 24 * v19;
        *(v21 + 32) = v15;
        *(v21 + 40) = v16;
        *(v21 + 48) = v17;
        v11 = v8 + 48;
        if (v9 - 1 != v14)
        {
          goto LABEL_5;
        }

LABEL_17:

        v7 = v52;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_27105993C(0, v52[2] + 1, 1, v52);
          v7 = result;
        }

        v23 = v7[2];
        v22 = v7[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          result = sub_27105993C((v22 > 1), v23 + 1, 1, v7);
          v7 = result;
        }

        v6 = v53 + 1;
        v7[2] = v24;
        v7[v23 + 4] = v12;
        if (v53 + 1 == v50)
        {
LABEL_24:
          v25 = 0;
          v5 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v25 >= v7[2])
            {
              goto LABEL_56;
            }

            v26 = v7;
            v27 = v7[v25 + 4];
            v28 = *(v27 + 16);
            v29 = *(v5 + 16);
            v30 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_57;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (result && v30 <= *(v5 + 24) >> 1)
            {
              if (!*(v27 + 16))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v29 <= v30)
              {
                v31 = v29 + v28;
              }

              else
              {
                v31 = v29;
              }

              result = sub_271059A70(result, v31, 1, v5);
              v5 = result;
              if (!*(v27 + 16))
              {
LABEL_25:

                if (v28)
                {
                  goto LABEL_58;
                }

                goto LABEL_26;
              }
            }

            if ((*(v5 + 24) >> 1) - *(v5 + 16) < v28)
            {
              goto LABEL_60;
            }

            swift_arrayInitWithCopy();

            if (v28)
            {
              v32 = *(v5 + 16);
              v33 = __OFADD__(v32, v28);
              v34 = v32 + v28;
              if (v33)
              {
                goto LABEL_61;
              }

              *(v5 + 16) = v34;
            }

LABEL_26:
            ++v25;
            v7 = v26;
            if (v24 == v25)
            {
              goto LABEL_41;
            }
          }
        }

        goto LABEL_3;
      }

      v13 += 3;
      ++v14;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
    v24 = *(MEMORY[0x277D84F90] + 16);
    v7 = MEMORY[0x277D84F90];
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_41:

    v35 = *(v5 + 16);
    if (!v35)
    {
    }

    v56 = MEMORY[0x277D84F90];
    result = sub_271051CC8(0, v35, 0);
    v36 = 0;
    v37 = v56;
    v38 = (v5 + 48);
    while (v36 < *(v5 + 16))
    {
      v39 = *(v38 - 1);
      v40 = *v38;
      LOBYTE(v54[0]) = *(v38 - 16);
      v54[1] = v39;
      v54[2] = v40;

      sub_2710590DC(v54, a4, v51, &v55);

      v41 = v55;
      v56 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        result = sub_271051CC8((v42 > 1), v43 + 1, 1);
        v37 = v56;
      }

      ++v36;
      *(v37 + 16) = v43 + 1;
      *(v37 + 8 * v43 + 32) = v41;
      v38 += 3;
      if (v35 == v36)
      {

        v44 = *(v37 + 16);
        if (v44)
        {
          v45 = (v37 + 32);
          v46 = 0.0;
          do
          {
            v47 = *v45++;
            v48 = v47;
            if (v46 <= v47)
            {
              v46 = v48;
            }

            --v44;
          }

          while (v44);
        }
      }
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

unint64_t sub_27105BB70()
{
  result = qword_280875328;
  if (!qword_280875328)
  {
    sub_2710F6C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875328);
  }

  return result;
}

unint64_t sub_27105BBC8()
{
  result = qword_280875338;
  if (!qword_280875338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280875330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875338);
  }

  return result;
}

uint64_t sub_27105BC2C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2710F748C() & 1;
  }
}

uint64_t sub_27105BCA0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v13[6] = a1;
  v13[7] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875358);
  sub_27105BE90();
  sub_27104EDB0();
  v5 = sub_2710F71BC();
  v7 = v6;
  v8 = sub_2710F6E0C();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v4;
  v13[4] = sub_27105BEF4;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_27105C000;
  v13[3] = &block_descriptor_2;
  v10 = _Block_copy(v13);

  VLEnumerateTokensInString(v8, v5, v7, v10);
  _Block_release(v10);

  swift_beginAccess();
  v11 = *(v4 + 16);

  return v11;
}

unint64_t sub_27105BE90()
{
  result = qword_280875360;
  if (!qword_280875360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280875358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875360);
  }

  return result;
}

uint64_t sub_27105BEF4()
{
  v1 = *(v0 + 32);
  sub_2710F70EC();
  if ((v2 & 1) == 0)
  {
    v3 = sub_2710F6F5C();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    swift_beginAccess();
    v10 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_27104728C(0, *(v10 + 2) + 1, 1, v10);
      *(v1 + 16) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_27104728C((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[32 * v13];
    *(v14 + 4) = v3;
    *(v14 + 5) = v5;
    *(v14 + 6) = v7;
    *(v14 + 7) = v9;
    *(v1 + 16) = v10;
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_27105C000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27105C088@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, double *a4@<X8>)
{
  v8 = sub_2710F6D4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *a1;
  if (*a1 < 1.0)
  {
    v49 = v12;
    v16 = *a2;
    v17 = a2[1];
    v18 = a2[2];
    v19 = sub_27104074C();
    v20 = *(v9 + 16);
    v46 = v19;
    v47 = v9 + 16;
    v45 = v20;
    (v20)(v14);

    v21 = sub_2710F6D2C();
    v22 = sub_2710F711C();

    v23 = os_log_type_enabled(v21, v22);
    v51 = v9;
    v52 = v8;
    v50 = a4;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2710475BC(v17, v18, &v55);
      _os_log_impl(&dword_27103D000, v21, v22, "  [Embeddings] Comparing detected embeddings from model: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2743BDA30](v25, -1, -1);
      MEMORY[0x2743BDA30](v24, -1, -1);

      v48 = *(v51 + 8);
      v48(v14, v52);
    }

    else
    {

      v48 = *(v9 + 8);
      v48(v14, v8);
    }

    v55 = 0;
    if (a3 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2710F738C())
    {
      v27 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x2743BC2D0](v27, a3);
        }

        else
        {
          if (v27 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v28 = *(a3 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v54 = v28;
        sub_27105C508(&v55, &v54, v16, v17, v18, &v53);

        v31 = *&v53;
        v55 = v53;
        ++v27;
        if (v30 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v31 = 0.0;
LABEL_19:
    v32 = v49;
    v33 = v52;
    v45(v49, v46, v52);
    v34 = sub_2710F6D2C();
    v35 = sub_2710F711C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8);
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D839F8];
      *(v38 + 16) = xmmword_271101AF0;
      v40 = MEMORY[0x277D83A80];
      *(v38 + 56) = v39;
      *(v38 + 64) = v40;
      *(v38 + 32) = v31;
      v41 = sub_2710F6E4C();
      v43 = sub_2710475BC(v41, v42, &v55);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_27103D000, v34, v35, "  [Embeddings] Final candidate score → %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x2743BDA30](v37, -1, -1);
      MEMORY[0x2743BDA30](v36, -1, -1);
    }

    result = (v48)(v32, v33);
    a4 = v50;
    if (v15 <= v31)
    {
      v15 = v31;
    }
  }

  *a4 = v15;
  return result;
}

void sub_27105C508(double *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v66 = a3;
  __C[1] = *MEMORY[0x277D85DE8];
  v11 = sub_2710F6D4C();
  v67 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v62 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = *a1;
  if (*a1 >= 1.0)
  {
    goto LABEL_26;
  }

  v64 = *a2;
  v65 = a6;
  v24 = [v64 modelMetadata];
  if (!v24)
  {
    __break(1u);
    goto LABEL_29;
  }

  v25 = v24;
  v26 = [v24 modelVersion];

  if (!v26)
  {
    a6 = v65;
LABEL_26:
    *a6 = v23;
    return;
  }

  v27 = sub_2710F6E3C();
  v29 = v28;

  v30 = v27 == a4 && v29 == a5;
  if (v30 || (sub_2710F748C() & 1) != 0)
  {

    v31 = sub_27104074C();
    v32 = v67;
    v33 = *(v67 + 16);
    v33(v20, v31, v11);
    v34 = sub_2710F6D2C();
    v35 = sub_2710F711C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_27103D000, v34, v35, "  [Embeddings] => Candidate embeddings match input model", v36, 2u);
      v37 = v36;
      v32 = v67;
      MEMORY[0x2743BDA30](v37, -1, -1);
    }

    v38 = *(v32 + 8);
    v38(v20, v11);
    goto LABEL_12;
  }

  v53 = sub_27104074C();
  v54 = v67;
  v33 = *(v67 + 16);
  v33(v22, v53, v11);

  v55 = sub_2710F6D2C();
  v56 = sub_2710F711C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v63 = v55;
    v58 = v57;
    v59 = swift_slowAlloc();
    __C[0] = v59;
    *v58 = 136315138;
    v60 = sub_2710475BC(v27, v29, __C);

    *(v58 + 4) = v60;
    v61 = v63;
    _os_log_impl(&dword_27103D000, v63, v56, "  [Embeddings] => Candidate embeddings do not match input model: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x2743BDA30](v59, -1, -1);
    MEMORY[0x2743BDA30](v58, -1, -1);

    v38 = *(v67 + 8);
    v38(v22, v11);
LABEL_12:
    a6 = v65;
    goto LABEL_13;
  }

  v38 = *(v54 + 8);
  v38(v22, v11);
  a6 = v65;
LABEL_13:
  v39 = v66;
  v40 = *(v66 + 16);
  v41 = v64;
  if (v40 != [v64 embeddingsCount])
  {
    v49 = sub_27104074C();
    v33(v17, v49, v11);
    v50 = sub_2710F6D2C();
    v51 = sub_2710F711C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_27103D000, v50, v51, "  [Embeddings] ==> Failed to compare image embeddings", v52, 2u);
      MEMORY[0x2743BDA30](v52, -1, -1);
    }

    v38(v17, v11);
    goto LABEL_26;
  }

  LODWORD(__C[0]) = 0;
  v42 = [v41 embeddings];
  if (v42)
  {
    vDSP_dotpr((v39 + 32), 1, v42, 1, __C, v40);
    v43 = (*__C + 1.0) * 0.5;
    v44 = sub_27104074C();
    v33(v14, v44, v11);
    v45 = sub_2710F6D2C();
    v46 = sub_2710F711C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      v48 = v43;
      *(v47 + 4) = v48;
      _os_log_impl(&dword_27103D000, v45, v46, "  [Embeddings] ==> Similarity score: %f", v47, 0xCu);
      MEMORY[0x2743BDA30](v47, -1, -1);
    }

    else
    {

      v48 = v43;
    }

    v38(v14, v11);
    if (v23 <= v48)
    {
      v23 = v48;
    }

    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_27105CB18(void *a1, uint64_t a2)
{
  v3 = [a1 imageEmbeddings];
  sub_27105CC5C();
  v4 = sub_2710F6F8C();

  if (v4 >> 62)
  {
    if (sub_2710F738C() < 1)
    {
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
  }

  v12 = 0;
  v6 = (a2 + 48);
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v11[0] = *(v6 - 2);
    v11[1] = v7;
    v11[2] = v8;

    sub_27105C088(&v12, v11, v4, &v10);

    v12 = v10;
    v6 += 3;
    --v5;
  }

  while (v5);
}

unint64_t sub_27105CC5C()
{
  result = qword_280875368;
  if (!qword_280875368)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280875368);
  }

  return result;
}

double sub_27105CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v55 = a4;
  v57 = a5;
  v48 = sub_2710F6C7C();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = a1 + 32;
    v13 = (a1 + 56);
    v14 = 0.0;
    v15 = v12;
    do
    {
      v18 = *(v13 - 3);
      v19 = *(v13 - 2);
      v21 = *(v13 - 1);
      v20 = *v13;
      if (a3)
      {
        v22 = *(a3 + 16);

        v16 = 1.0;
        if (v22)
        {
          v23 = sub_271047ED8(v18, v19, v21, v20);
          if (v24)
          {
            v16 = *(*(a3 + 56) + 8 * v23);
          }
        }
      }

      else
      {

        v16 = 1.0;
      }

      v17 = sub_2710F71EC();

      v14 = v14 + v16 * v17;
      v13 += 4;
      --v15;
    }

    while (v15);
    v11 = v56;
    sub_2710F6C6C();
    v25 = 0;
    v26 = *(a2 + 16);
    v54 = v57 + 8;
    v50 = (a2 + 56);
    v27 = 0.0;
    v49 = a3;
    v52 = v12;
    do
    {
      if (v26)
      {
        v53 = v25;
        v29 = (v51 + 32 * v25);
        v31 = *v29;
        v30 = v29[1];
        v32 = v29[3];
        v58 = v29[2];
        v59 = v30;

        v33 = 0;
        v34 = 1;
        v35 = 0.0;
        v36 = v50;
        do
        {
          if ((sub_2710F6C5C() & 1) == 0)
          {
            v37 = *(v36 - 1);
            v38 = *v36;
            v63[0] = v31;
            v63[1] = v59;
            v63[2] = v58;
            v63[3] = v32;
            v60 = *(v36 - 3);
            v61 = v37;
            v62 = v38;
            v39 = v57;
            v40 = *(v57 + 8);
            v41 = sub_27105E984();
            v42 = v40(v63, &v60, MEMORY[0x277D83E40], MEMORY[0x277D83E40], v41, v41, v55, v39);
            if (v35 < v42)
            {
              if (v42 >= a6)
              {
                v35 = v42;
              }

              v34 &= v42 < a6;
            }

            v11 = v56;
          }

          ++v33;
          v36 += 4;
        }

        while (v26 != v33);
        if (v34)
        {
        }

        else
        {
          sub_2710F6C4C();
          v43 = 1.0;
          if (v49)
          {
            if (*(v49 + 16))
            {
              v44 = sub_271047ED8(v31, v59, v58, v32);
              if (v45)
              {
                v43 = *(*(v49 + 56) + 8 * v44);
              }
            }
          }

          v28 = sub_2710F71EC();

          v27 = v27 + v35 * (v43 * v28) / v14;
        }

        v12 = v52;
        v25 = v53;
      }

      ++v25;
    }

    while (v25 != v12);
  }

  else
  {
    sub_2710F6C6C();
    v27 = 0.0;
  }

  (*(v47 + 8))(v11, v48);
  return v27;
}

uint64_t sub_27105D070(uint64_t a1, unint64_t a2, char a3, char *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    return sub_2710F724C();
  }

  if (a3 == 1)
  {
    sub_27105D3D8(a1, a2, a4, a5, a6, a7);
    sub_2710F709C();
    return sub_2710F709C();
  }

  v27 = a5;
  v28 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a2, a5);
  if (sub_2710F70AC())
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  if (sub_2710F70AC())
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  if (sub_2710F725C())
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  v13 = sub_27105DA38(v26, a4, a6);
  v14 = sub_2710F709C();
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  result = sub_2710F709C();
  if (!__OFADD__(v14, result))
  {
    v15 = *(v13 + 2);
    if (v15)
    {
      v29 = MEMORY[0x277D84F90];
      sub_27105ECAC(0, v15, 0);
      v16 = v29;
      v17 = v13 + 40;
      do
      {

        v18 = sub_2710F6EBC();

        v29 = v16;
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_27105ECAC((v19 > 1), v20 + 1, 1);
          v16 = v29;
        }

        *(v16 + 16) = v20 + 1;
        *(v16 + 8 * v20 + 32) = v18;
        v17 += 16;
        --v15;
      }

      while (v15);

      v21 = *(v16 + 16);
      if (v21)
      {
LABEL_15:
        v22 = 0;
        v23 = 32;
        while (1)
        {
          v24 = *(v16 + v23);
          v25 = __OFADD__(v22, v24);
          v22 += v24;
          if (v25)
          {
            break;
          }

          v23 += 8;
          if (!--v21)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
      v21 = *(MEMORY[0x277D84F90] + 16);
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_20:

    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_27105D3D8(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = (v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 + 8) + 8);
  v55 = v15;
  v52 = v19;
  v20 = sub_2710F709C();
  v21 = *(*(a6 + 8) + 8);
  v22 = a2;
  v23 = sub_2710F709C();
  if (v23 <= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  v53 = v24;
  v25 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    goto LABEL_91;
  }

  if (v25 < 0)
  {
    goto LABEL_92;
  }

  v22 = v23;
  v50 = v13;
  if (v23 == -1)
  {
    v13 = MEMORY[0x277D84F90];
    v26 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
LABEL_8:
      v49 = v10;
      v10 = sub_27105EDD0(v13, v26);

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_93;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_94;
      }

      if (!v10[2])
      {
        goto LABEL_95;
      }

LABEL_11:
      v48 = a2;
      v25 = (v10 + 4);
      v13 = v10[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10[4] = v13;
      a2 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!v13[2])
        {
          goto LABEL_97;
        }

LABEL_13:
        v47[1] = v21;
        v13[4] = 0;
        v51 = v20;
        if (!v20)
        {
          goto LABEL_22;
        }

        v20 = (v10 + 5);
        v22 = 1;
        v21 = v51;
        while (1)
        {
          if (v22 >= v10[2])
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v13 = *v20;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          *v20 = v13;
          if (v28)
          {
            if (!v13[2])
            {
              goto LABEL_21;
            }
          }

          else
          {
            v13 = sub_27105EA4C(v13);
            *v20 = v13;
            if (!v13[2])
            {
LABEL_21:
              __break(1u);
LABEL_22:
              if ((a2 & 0x8000000000000000) != 0)
              {
                goto LABEL_98;
              }

              if (!v10[2])
              {
                goto LABEL_99;
              }

              v21 = a2;
              v13 = *v25;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v25 = v13;
              if ((result & 1) == 0)
              {
                goto LABEL_100;
              }

              if (v13[2])
              {
                goto LABEL_26;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }
          }

          v13[4] = v22++;
          v20 += 8;
          v21 = (v21 - 1);
          if (!v21)
          {
            goto LABEL_22;
          }
        }
      }

      while (1)
      {
        v13 = sub_27105EA4C(v13);
        *v25 = v13;
        if (v13[2])
        {
          goto LABEL_13;
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        result = sub_27105EA4C(v13);
        v13 = result;
        *v25 = result;
        if (!*(result + 16))
        {
          goto LABEL_101;
        }

LABEL_26:
        v13[4] = 0;
        if (!v21)
        {
          break;
        }

        v20 = 5;
        v22 = v21;
        while (v10[2])
        {
          v13 = *v25;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          *v25 = v13;
          if ((v30 & 1) == 0)
          {
            v13 = sub_27105EA4C(v13);
            *v25 = v13;
          }

          if (v20 - 4 >= v13[2])
          {
            goto LABEL_90;
          }

          v13[v20] = v20 - 4;
          ++v20;
          if (!--v22)
          {
            goto LABEL_33;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v10 = sub_27105EA60(v10);
        if (v10[2])
        {
          goto LABEL_11;
        }

LABEL_95:
        __break(1u);
      }

LABEL_33:
      (*(v54 + 16))(v17, v55, a3);
      v55 = sub_2710F6FDC();
      (v49[2])(v50, v48, v7);
      result = sub_2710F6FDC();
      v54 = result;
      if (!v51 || !v21)
      {
        goto LABEL_102;
      }

      v52 = v21;
      if (*(v55 + 16))
      {
        a2 = 0;
        v13 = (v55 + 32);
        v49 = (v55 + 32);
        v50 = (v54 + 40);
        v31 = 1;
        do
        {
          v20 = 0;
          v22 = a2;
          a2 = v31;
          v21 = v50;
          while (1)
          {
            if (v20 >= *(v54 + 16))
            {
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            v33 = (*v13 != *(v21 - 1) || v13[1] != *v21) && (sub_2710F748C() & 1) == 0;
            v34 = v10[2];
            if (a2 > v34)
            {
              goto LABEL_78;
            }

            v17 = (v20 + 1);
            v35 = *(v25 + 8 * v22);
            if (v20 + 1 >= *(v35 + 16))
            {
              goto LABEL_79;
            }

            v36 = v35 + 8 * v20;
            v37 = *(v36 + 40);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_80;
            }

            if (a2 >= v34)
            {
              goto LABEL_81;
            }

            a3 = *(v25 + 8 * a2);
            if (v20 >= *(a3 + 2))
            {
              goto LABEL_82;
            }

            v40 = *&a3[8 * v20 + 32];
            v38 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (v38)
            {
              goto LABEL_83;
            }

            v42 = *(v36 + 32);
            v38 = __OFADD__(v42, v33);
            v43 = v42 + v33;
            if (v38)
            {
              goto LABEL_84;
            }

            if (v41 < v39)
            {
              v39 = v41;
            }

            if (v43 >= v39)
            {
              v7 = v39;
            }

            else
            {
              v7 = v43;
            }

            v44 = swift_isUniquelyReferenced_nonNull_native();
            *(v25 + 8 * a2) = a3;
            if ((v44 & 1) == 0)
            {
              a3 = sub_27105EA4C(a3);
              *(v25 + 8 * a2) = a3;
            }

            if (v17 >= *(a3 + 2))
            {
              goto LABEL_85;
            }

            *&a3[8 * v20 + 40] = v7;
            if (a2 >= v10[2])
            {
              goto LABEL_86;
            }

            v45 = *(v25 + 8 * a2);
            if (v17 >= *(v45 + 16))
            {
              goto LABEL_87;
            }

            if (v53 < *(v45 + 8 * v20 + 40))
            {
              goto LABEL_69;
            }

            if (v52 == ++v20)
            {
              break;
            }

            v21 += 2;
            if (a2 > *(v55 + 16))
            {
              goto LABEL_68;
            }
          }

          v20 = v51;
          if (a2 == v51)
          {
            goto LABEL_74;
          }

          v31 = a2 + 1;
          v13 = &v49[2 * a2];
        }

        while (a2 < *(v55 + 16));
      }

LABEL_68:
      __break(1u);
LABEL_69:

      goto LABEL_70;
    }
  }

  else
  {
    v13 = sub_2710F6FBC();
    v13[2] = v25;
    bzero(v13 + 4, 8 * v22 + 8);
    v26 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_74:

  if (v20 >= v10[2])
  {
    goto LABEL_103;
  }

  v46 = *(v25 + 8 * v20);
  if (v52 < *(v46 + 16))
  {
    v53 = *(v46 + 8 * v52 + 32);
    v55 = v10;
LABEL_70:

    return v53;
  }

LABEL_104:
  __break(1u);
  return result;
}

char *sub_27105DA38(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v54 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55 = &v46 - v12;
  v13 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  v17 = sub_27105E200(v16, a2, v14, a3, v15);
  v58 = v19;
  if (v17 >= 1)
  {
    v20 = v17;
    v52 = v18;
    v21 = v4;
    sub_2710F708C();
    v63 = v64;
    v51 = v20;
    v53 = v58 - v20;
    sub_2710F6DBC();
    v22 = v59[0];
    sub_2710F708C();
    v63 = v64;
    sub_2710F6DBC();
    v24 = v59[0];
    if (v59[0] >> 14 < v22 >> 14)
    {
      __break(1u);
    }

    else
    {
      v50 = v11;
      v59[0] = v22;
      v59[1] = v24;
      sub_2710F70DC();
      v25 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v47 = sub_2710F6F4C();
      v46 = v26;
      sub_27105E9D8(v25, v25);
      swift_allocObject();
      v48 = sub_2710F6FAC();
      a3 = v27;
      v11 = v9;
      v28 = *(v54 + 16);
      v28(v9, v4, a2);
      sub_2710F70CC();
      v28(v9, v4, a2);
      v21 = v4;
      v29 = sub_2710F709C();
      v24 = v58;
      if (!__OFSUB__(v29, v58))
      {
        sub_2710F6DDC();
        v11 = AssociatedTypeWitness;
        sub_2710F6FCC();
        v4 = &v60;
        v30 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
        MEMORY[0x28223BE20](v30);
        (*(v32 + 16))(&v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
        v33 = v52;
        v61[3] = swift_getAssociatedTypeWitness();
        v61[4] = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(v61);
        sub_2710F70CC();
        a3 = a1[3];
        v34 = __swift_project_boxed_opaque_existential_1Tm(a1, a3);
        MEMORY[0x28223BE20](v34);
        (*(v36 + 16))(&v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
        v37 = sub_2710F709C();
        v21 = v37 - v33;
        if (!__OFSUB__(v37, v33))
        {
          v62[3] = swift_getAssociatedTypeWitness();
          v62[4] = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(v62);
          sub_2710F6DDC();
          v23 = sub_271059B90(0, 1, 1, MEMORY[0x277D84F90]);
          a3 = *(v23 + 2);
          v24 = *(v23 + 3);
          v21 = a3 + 1;
          if (a3 < v24 >> 1)
          {
LABEL_6:
            *(v23 + 2) = v21;
            v38 = &v23[16 * a3];
            v39 = v46;
            *(v38 + 4) = v47;
            *(v38 + 5) = v39;
            v65 = v23;
            v40 = v55;
            sub_2710F6FEC();
            v41 = AssociatedConformanceWitness;
            v42 = sub_27105DA38(v4 + 32, v11, AssociatedConformanceWitness);
            v43 = *(v56 + 8);
            v43(v40, v11);
            sub_27105E6D0(v42);
            sub_2710F6FEC();

            sub_2710508F4((v4 + 72), v59);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875398);
            swift_arrayDestroy();
            v44 = sub_27105DA38(v59, v11, v41);
            __swift_destroy_boxed_opaque_existential_0Tm(v59);
            v43(v40, v11);
            sub_27105E6D0(v44);
            return v65;
          }

LABEL_11:
          v23 = sub_271059B90((v24 > 1), v21, 1, v23);
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return v13;
}

uint64_t sub_27105E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(*(a5 + 8) + 8) + 8);
  v44 = sub_2710F737C();
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - v10;
  v45 = v9;
  v11 = sub_2710F736C();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = *(*(*(a4 + 8) + 8) + 8);
  v52 = sub_2710F737C();
  MEMORY[0x28223BE20](v52);
  v48 = sub_2710F736C();
  v15 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - v16;
  v46 = a1;
  v47 = a3;
  v17 = sub_2710F709C();
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    goto LABEL_46;
  }

  if (v18 < 0)
  {
LABEL_47:
    __break(1u);
  }

  else
  {
    v41 = v15;
    if (v17 == -1)
    {
      v20 = MEMORY[0x277D84F90];
    }

    else
    {
      v19 = v17;
      v20 = sub_2710F6FBC();
      *(v20 + 16) = v18;
      bzero((v20 + 32), 8 * v19 + 8);
    }

    v21 = sub_2710F709C();
    if (!__OFADD__(v21, 1))
    {
      v22 = sub_27105EDD0(v20, v21 + 1);

      MEMORY[0x2743BBF70](a2, v14);
      sub_2710F734C();
      v50 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_49:
  v50 = sub_27105EA60(v50);
LABEL_8:
  sub_2710F735C();
  v23 = v56;
  if (v56)
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v24 = v54;
    v25 = v55;
    v26 = v50 + 4;
    ++v42;
LABEL_11:
    MEMORY[0x2743BBF70](v47, v45);
    sub_2710F734C();
    v27 = v24 + 1;
    while (1)
    {
      sub_2710F735C();
      if (!v56)
      {
        (*v42)(v13, v11);

        sub_2710F735C();
        v24 = v54;
        v25 = v55;
        v23 = v56;
        if (!v56)
        {
          goto LABEL_38;
        }

        goto LABEL_11;
      }

      v28 = v54;
      if (v25 == v55 && v23 == v56)
      {
        break;
      }

      v30 = sub_2710F748C();

      if (v30)
      {
LABEL_20:
        if ((v24 & 0x8000000000000000) != 0)
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
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v31 = v50[2];
        if (v24 >= v31)
        {
          goto LABEL_40;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        v32 = v26[v24];
        if (v28 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        v33 = *(v32 + 8 * v28 + 32);
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_43;
        }

        if (v27 >= v31)
        {
          goto LABEL_44;
        }

        v35 = v26[v27];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26[v27] = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_27105EA4C(v35);
          v26[v27] = v35;
        }

        if (v28 + 1 >= *(v35 + 2))
        {
          goto LABEL_45;
        }

        *&v35[8 * v28 + 40] = v34;
        if (v51 <= v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = v51;
        }

        v38 = v53;
        if (v51 < v34)
        {
          v38 = v28 + 1;
        }

        v53 = v38;
        v39 = v52;
        if (v51 < v34)
        {
          v39 = v24 + 1;
        }

        v51 = v37;
        v52 = v39;
      }
    }

    goto LABEL_20;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
LABEL_38:
  (*(v41 + 8))(v49, v48);

  return v51;
}

uint64_t sub_27105E6D0(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_271059B90(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27105E7C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  result = sub_27105E200(v10, a2, v8, a3, v9);
  v12 = result;
  if (result < 1)
  {
    v14 = 0;
    v13 = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    sub_2710F708C();
    sub_2710F6DBC();
    v13 = v17;
    sub_2710F6DBC();
    v14 = v17;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_2710F708C();
    sub_2710F6DBC();
    v15 = v17;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    result = sub_2710F6DBC();
    v16 = v17;
  }

  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = v16;
  *(a4 + 24) = v15;
  *(a4 + 32) = v12 < 1;
  return result;
}

unint64_t sub_27105E984()
{
  result = qword_280875370;
  if (!qword_280875370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875370);
  }

  return result;
}

uint64_t sub_27105E9D8(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750A0);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

char *sub_27105EA74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_27105EB78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27105ECAC(char *a1, int64_t a2, char a3)
{
  result = sub_27105ECCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27105ECCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_27105EDD0(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875390);
    v4 = sub_2710F6FBC();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

unint64_t sub_27105EE70()
{
  result = qword_280875378;
  if (!qword_280875378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875378);
  }

  return result;
}

float64x2_t VLECEFFromCoordinate@<Q0>(float64x2_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v7 = __sincos_stret(a2 * 0.0174532925);
  v9 = __sincos_stret(a3 * 0.0174532925);
  v8.f64[0] = v9.__cosval;
  v10 = 6378137.0 / sqrt(v7.__sinval * -0.00669437999 * v7.__sinval + 1.0);
  v8.f64[1] = v9.__sinval;
  result = vmulq_n_f64(v8, v7.__cosval * (a4 + v10));
  v8.f64[0] = v7.__sinval * (a4 + v10 * 0.99330562);
  *a1 = result;
  a1[1] = v8;
  return result;
}

float64x2_t VLECEFFromLatLng@<Q0>(float64x2_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v7 = __sincos_stret(a2 * 0.0174532925);
  v9 = __sincos_stret(a3 * 0.0174532925);
  v8.f64[0] = v9.__cosval;
  v10 = 6378137.0 / sqrt(v7.__sinval * -0.00669437999 * v7.__sinval + 1.0);
  v8.f64[1] = v9.__sinval;
  result = vmulq_n_f64(v8, v7.__cosval * (v10 + a4));
  v8.f64[0] = v7.__sinval * (a4 + v10 * 0.99330562);
  *a1 = result;
  a1[1] = v8;
  return result;
}

double VLCoordinateFromECEF(float64x2_t *a1)
{
  v1 = *a1;
  v2 = a1->f64[1];
  v3 = sqrt(vmuld_lane_f64(v2, *a1, 1) + v1.f64[0] * v1.f64[0]);
  v4 = v3 * 0.99330562;
  v5 = 1.57079633;
  if (v3 * 0.99330562 != 0.0)
  {
    v14 = a1->f64[1];
    v15 = *a1;
    v6 = 0;
    __y = a1[1].f64[0];
    v5 = 0.0;
    v7 = 0.0;
    do
    {
      v9 = v5;
      v5 = atan2(__y, v4);
      v10 = __sincos_stret(v5);
      v11 = 6378137.0 / sqrt(v10.__sinval * -0.00669437999 * v10.__sinval + 1.0);
      v12 = v3 / v10.__cosval - v11;
      if (vabdd_f64(v9, v5) < 0.000001)
      {
        if (vabdd_f64(v7, v12) < 0.001 || v6 >= 9)
        {
LABEL_10:
          v1.f64[0] = v15.f64[0];
          v2 = v14;
          goto LABEL_12;
        }
      }

      else if (v6 > 8)
      {
        goto LABEL_10;
      }

      ++v6;
      v4 = v3 * (v11 / (v11 + v12) * -0.00669437999 + 1.0);
      v7 = v3 / v10.__cosval - v11;
    }

    while (v4 != 0.0);
    v1.f64[0] = v15.f64[0];
    v5 = 1.57079633;
    v2 = v14;
  }

LABEL_12:
  atan2(v2, v1.f64[0]);
  return v5 / 0.0174532925;
}

long double VLHeadingForTransform(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = vmulq_f64(v3, v3);
  v4.f64[0] = 1.0 / sqrt(v4.f64[0] + vaddvq_f64(vmulq_f64(v2, v2)));
  v5 = vmulq_f64(v3, v4);
  v6 = vmulq_n_f64(v2, v4.f64[0]);
  v7 = vextq_s8(v6, v6, 8uLL);
  v8 = *(a1 + 16);
  v9 = vnegq_f64(*a1);
  v10 = vnegq_f64(v8);
  v10.f64[0] = -v8.f64[0];
  v12 = *(a1 + 32);
  v11 = *(a1 + 48);
  if (vmulq_f64(v10, v5).f64[0] + vaddvq_f64(vmulq_f64(v9, v6)) >= 0.0)
  {
    v43 = vaddq_f64(v9, v6);
    v44 = vaddq_f64(v10, v5);
    v1.f64[0] = 1.0 / sqrt(vmulq_f64(v44, v44).f64[0] + vaddvq_f64(vmulq_f64(v43, v43)));
    v45 = vmulq_n_f64(v43, v1.f64[0]);
    v46 = vmulq_f64(v44, v1);
    v44.f64[0] = v10.f64[0];
    v44.f64[1] = v9.f64[0];
    *&v42.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v10), v45, 1), v46, v9, 1);
    v47 = vmulq_f64(v10, v46).f64[0];
    v46.f64[1] = v45.f64[0];
    v48 = vmlaq_f64(vmulq_f64(v46, vnegq_f64(v9)), v45, v44);
    *&v42.f64[1] = v48.i64[0];
    v49 = v47 + vaddvq_f64(vmulq_f64(v9, v45));
    *&v41.f64[0] = vdupq_laneq_s64(v48, 1).u64[0];
    v41.f64[1] = v49;
  }

  else
  {
    v13 = vextq_s8(v9, v9, 8uLL);
    v14 = vmulq_f64(v10, v10);
    v14.f64[0] = 1.0 / sqrt(v14.f64[0] + vaddvq_f64(vmulq_f64(v9, v9)));
    v15.f64[0] = v6.f64[0];
    v15.f64[1] = v7.f64[0];
    v1.f64[0] = 1.0 / sqrt(vmulq_f64(v5, v5).f64[0] + vaddvq_f64(vmulq_f64(v15, v15)));
    v16 = vmulq_f64(v5, v1);
    v17 = vaddq_f64(vmulq_n_f64(v9, v14.f64[0]), vmulq_n_f64(v15, v1.f64[0]));
    v18 = vaddq_f64(vmulq_f64(v10, v14), v16);
    v19 = vmulq_f64(v17, v17);
    v19.f64[0] = vmulq_f64(v18, v18).f64[0] + vaddvq_f64(v19);
    if (v19.f64[0] <= 4.93038066e-32)
    {
      *&v69 = *&vabsq_f64(v10);
      v70 = vabsq_f64(v9);
      v71 = v70.f64[1];
      if (v70.f64[0] > v70.f64[1] || v70.f64[0] > v69)
      {
        v78.f64[0] = v10.f64[0];
        v78.f64[1] = v9.f64[0];
        v9.f64[1] = v13.f64[0];
        *&v78.f64[1] = vextq_s8(v78, v78, 8uLL).u64[0];
        if (v71 <= v69)
        {
          v79 = vmlaq_f64(vmulq_f64(v9, vnegq_f64(0)), xmmword_271103540, v78);
          v85 = vmlaq_f64(vnegq_f64(v10), 0, v13);
        }

        else
        {
          v79 = vmlaq_f64(vmulq_f64(v9, xmmword_271103550), 0, v78);
          __asm { FMOV            V16.2D, #1.0 }

          v85 = vmlaq_f64(vmulq_f64(v10, vnegq_f64(0)), _Q16, v13);
        }

        v86 = vmulq_f64(v79, v79);
        v87 = vmulq_f64(v85, v85);
        v85.f64[1] = v79.f64[0];
        v87.f64[0] = 1.0 / sqrt(v86.f64[1] + v87.f64[0] + v86.f64[0]);
        v42 = vmulq_n_f64(v85, v87.f64[0]);
        v41 = *&vmulq_laneq_f64(v87, v79, 1);
      }

      else
      {
        v72.f64[0] = v10.f64[0];
        v72.f64[1] = v9.f64[0];
        v73.f64[0] = v9.f64[0];
        v73.f64[1] = v13.f64[0];
        v74 = vmlaq_f64(vmulq_f64(v73, xmmword_271103560), xmmword_271103570, v72);
        v75 = vmlaq_laneq_f64(vmulq_f64(v10, vnegq_f64(0)), 0, v9, 1);
        v76 = vmulq_f64(v74, v74);
        v77 = vmulq_f64(v75, v75).f64[0];
        v75.f64[1] = v74.f64[0];
        v76.f64[0] = 1.0 / sqrt(v76.f64[1] + v77 + v76.f64[0]);
        v42 = vmulq_n_f64(v75, v76.f64[0]);
        v41 = *&vmulq_laneq_f64(v76, v74, 1);
      }
    }

    else
    {
      v19.f64[0] = 1.0 / sqrt(v19.f64[0]);
      v20 = vmulq_f64(v18, v19);
      *&v17.f64[1] = vextq_s8(v17, v17, 8uLL).u64[0];
      v21 = vmulq_n_f64(v17, v19.f64[0]);
      v22 = vaddq_f64(v9, v21);
      v23 = vaddq_f64(v10, v20);
      v24 = vmulq_f64(v23, v23);
      v24.f64[0] = 1.0 / sqrt(v24.f64[0] + vaddvq_f64(vmulq_f64(v22, v22)));
      v25 = vmulq_n_f64(v22, v24.f64[0]);
      v26 = vmulq_f64(v23, v24);
      v24.f64[0] = v10.f64[0];
      v24.f64[1] = v9.f64[0];
      *&v22.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v10), v25, 1), v26, v9, 1);
      v27 = vmulq_f64(v10, v26).f64[0];
      v26.f64[1] = v25.f64[0];
      v28.f64[0] = v9.f64[0];
      v28.f64[1] = v13.f64[0];
      v29 = vmlaq_f64(vmulq_f64(v26, vnegq_f64(v28)), v25, v24);
      v30 = v27 + vaddvq_f64(vmulq_f64(v9, v25));
      v31 = vaddq_f64(v6, v21);
      v32 = vaddq_f64(v5, v20);
      v16.f64[0] = 1.0 / sqrt(vmulq_f64(v32, v32).f64[0] + vaddvq_f64(vmulq_f64(v31, v31)));
      v33 = vmulq_n_f64(v31, v16.f64[0]);
      v34 = vmulq_f64(v32, v16);
      v35 = vnegq_f64(v20);
      v24.f64[0] = vmulq_f64(v20, v34).f64[0];
      v20.f64[1] = v21.f64[0];
      v36 = vmlaq_laneq_f64(vmulq_laneq_f64(v35, v33, 1), v34, v21, 1);
      v34.f64[1] = v33.f64[0];
      v37 = vmlaq_f64(vmulq_f64(v34, vnegq_f64(v21)), v33, v20);
      *&v20.f64[0] = v36.i64[0];
      *&v20.f64[1] = v37.i64[0];
      v33.f64[0] = vaddvq_f64(vmulq_f64(v21, v33));
      *&v21.f64[0] = vdupq_laneq_s64(v37, 1).u64[0];
      v21.f64[1] = v24.f64[0] + v33.f64[0];
      v38 = vnegq_f64(v20);
      v39 = vextq_s8(v21, vnegq_f64(v21), 8uLL);
      v40 = vmlaq_laneq_f64(vmulq_n_f64(v20, v30), vextq_s8(v38, v36, 8uLL), v29, 1);
      v41 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v38, v29.f64[0]), vzip1q_s64(v37, v38), v22.f64[0]), vmlaq_laneq_f64(vmulq_n_f64(v21, v30), v39, v29, 1));
      v42 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v21, v29.f64[0]), v39, v22.f64[0]), v40);
    }
  }

  v50.f64[0] = v5.f64[0];
  v50.f64[1] = v6.f64[0];
  v6.f64[1] = v7.f64[0];
  v51 = vmlaq_f64(vmulq_f64(v50, vnegq_f64(0)), xmmword_271103570, v6);
  v52 = vmlaq_f64(vnegq_f64(v7), 0, v5);
  v53 = vmulq_f64(v51, v51);
  v54 = vmulq_f64(v52, v52);
  v52.f64[1] = v51.f64[0];
  v54.f64[0] = 1.0 / sqrt(v53.f64[1] + v54.f64[0] + v53.f64[0]);
  v55 = vmulq_n_f64(v52, v54.f64[0]);
  v56 = vmulq_laneq_f64(v54, v51, 1);
  *&v57.f64[0] = *&vmlaq_f64(vmulq_laneq_f64(vnegq_f64(v5), v55, 1), v56, v7);
  v58 = vmulq_f64(v41, xmmword_271103580);
  v59 = vnegq_f64(v42);
  v60 = vextq_s8(v58, vnegq_f64(v58), 8uLL);
  v61 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v42, v12, 1), vextq_s8(v59, v42, 8uLL), v12.f64[0]), v60, *&v11);
  v62 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v58, v12, 1), v60, v12.f64[0]), vextq_s8(v42, v59, 8uLL), *&v11);
  v63 = vnegq_f64(v62);
  v64 = vextq_s8(v61, vnegq_f64(v61), 8uLL);
  v65 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v61, v41, 1), v64, v41.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v63, v42, 1), vextq_s8(v62, v63, 8uLL), v42.f64[0]));
  v60.f64[0] = vmulq_f64(v56, v65).f64[0];
  v56.f64[1] = v55.f64[0];
  v66 = vmlaq_f64(vmulq_f64(v56, vnegq_f64(v6)), v55, v50);
  v57.f64[1] = v66.f64[0];
  v67 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v62, v41, 1), vextq_s8(v63, v62, 8uLL), v41.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v61, v42, 1), v64, v42.f64[0]));
  return (atan2(v60.f64[0] + vaddvq_f64(vmulq_f64(v55, v67)), vmulq_laneq_f64(v65, v66, 1).f64[0] + vaddvq_f64(vmulq_f64(v57, v67))) + -1.57079633) * 180.0 / 3.14159265;
}

void VLLocationFromCLLocation(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  [v3 coordinate];
  v5 = v4;
  [v3 coordinate];
  v7 = v6;
  [v3 altitude];
  v9 = v8;
  [v3 isCoordinateFused];
  *(a2 + 32) = 0;
  [v3 horizontalAccuracy];
  v11 = v10;
  v12 = [v3 type] - 1;
  if (v12 > 0xC)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_271103590[v12];
  }

  v14 = v11;
  v15 = __sincos_stret(v5 * 0.0174532925);
  v16 = __sincos_stret(v7 * 0.0174532925);
  v17 = 6378137.0 / sqrt(v15.__sinval * -0.00669437999 * v15.__sinval + 1.0);
  v18 = v15.__cosval * (v9 + v17);
  *a2 = v16.__cosval * v18;
  *(a2 + 8) = v16.__sinval * v18;
  *(a2 + 16) = v15.__sinval * (v9 + v17 * 0.99330562);
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;
  v19 = [v3 isCoordinateFused];

  *(a2 + 28) = v19;
}

Class __getCIImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_281181C58)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E2D730;
    v6 = 0;
    qword_281181C58 = _sl_dlopen();
    v2 = v4[0];
    if (qword_281181C58)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreImageLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_281181C58 = result;
  return result;
}

Class __getCIContextClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_281181C58)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E2D730;
    v6 = 0;
    qword_281181C58 = _sl_dlopen();
    v2 = v4[0];
    if (qword_281181C58)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_281181C60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_271065A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VLTileDataProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_271066004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  _Block_object_dispose(&a51, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_271066CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v32 + 32));

  objc_destroyWeak((v33 - 112));
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_271066E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_271067124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2710674DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_271067C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v24 - 256), 8);
  _Block_object_dispose((v24 - 224), 8);
  _Block_object_dispose((v24 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_271068A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose((v21 - 232), 8);

  _Unwind_Resume(a1);
}

void *std::list<VLLocalizationDataKey>::remove(void *result, void *a2)
{
  v23 = &v23;
  __p = &v23;
  v25 = 0;
  v2 = result[1];
  if (v2 == result)
  {
    return result;
  }

  if (&v23 == result)
  {
    while (1)
    {
      v16 = v2[1];
      if (v2[2] == *a2 && v2[3] == a2[1])
      {
        break;
      }

LABEL_27:
      v2 = v16;
      if (v16 == result)
      {
        return result;
      }
    }

    if (v16 == result)
    {
      v18 = 1;
      if (v2 != v16)
      {
LABEL_37:
        v19 = *v16;
        v20 = *(*v16 + 8);
        v21 = *v2;
        *(v21 + 8) = v20;
        *v20 = v21;
        v22 = v23;
        v23[1] = v2;
        *v2 = v22;
        v23 = v19;
        v19[1] = &v23;
      }
    }

    else
    {
      do
      {
        v18 = *(v16 + 16) == *a2;
        if (*(v16 + 16) != *a2)
        {
          break;
        }

        v16 = *(v16 + 8);
      }

      while (v16 != result);
      if (v2 != v16)
      {
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v16 = *(v16 + 8);
    }

    goto LABEL_27;
  }

  v3 = 0;
  v4 = &v23;
  do
  {
    v5 = v2[1];
    if (v2[2] == *a2 && v2[3] == a2[1])
    {
      if (v5 == result)
      {
        v7 = 1;
        if (v2 == v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        do
        {
          v7 = *(v5 + 16) == *a2;
          if (*(v5 + 16) != *a2)
          {
            break;
          }

          v5 = *(v5 + 8);
        }

        while (v5 != result);
        if (v2 == v5)
        {
LABEL_14:
          if (v7)
          {
            goto LABEL_4;
          }

LABEL_21:
          v5 = *(v5 + 8);
          goto LABEL_4;
        }
      }

      v4 = *v5;
      v8 = 1;
      if (*v5 != v2)
      {
        v9 = v2;
        do
        {
          v9 = v9[1];
          ++v8;
        }

        while (v9 != v4);
      }

      result[2] -= v8;
      v3 += v8;
      v10 = v4[1];
      v11 = *v2;
      *(v11 + 8) = v10;
      *v10 = v11;
      v12 = v23;
      v23[1] = v2;
      *v2 = v12;
      v25 = v3;
      v23 = v4;
      v4[1] = &v23;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    v2 = v5;
  }

  while (v5 != result);
  if (v3)
  {
    result = __p;
    v13 = v4[1];
    v14 = *__p;
    *(v14 + 8) = v13;
    *v13 = v14;
    v25 = 0;
    if (result != &v23)
    {
      do
      {
        v15 = result[1];
        operator delete(result);
        result = v15;
      }

      while (v15 != &v23);
    }
  }

  return result;
}

uint64_t *std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void sub_271069644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ___ZL20VLGetTileProviderLogv_block_invoke()
{
  _MergedGlobals_1 = os_log_create("com.apple.VisualLocalization", "TileProvider");

  return MEMORY[0x2821F96F8]();
}

void std::__list_imp<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::__emplace_unique_key_args<VLLocalizationDataKey,std::piecewise_construct_t const&,std::tuple<VLLocalizationDataKey const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_19:
    operator new();
  }

  v3 = bswap64(*a2);
  while (1)
  {
    while (1)
    {
      result = v2;
      v5 = bswap64(v2[4]);
      if (v3 == v5)
      {
        v6 = bswap64(a2[1]);
        v5 = bswap64(result[5]);
        if (v6 == v5)
        {
          break;
        }
      }

      else
      {
        v6 = v3;
      }

      v7 = v6 < v5 ? -1 : 1;
      if ((v7 & 0x80000000) == 0)
      {
        break;
      }

      v2 = *result;
      if (!*result)
      {
        goto LABEL_19;
      }
    }

    v8 = bswap64(result[4]);
    v9 = bswap64(*a2);
    if (v8 == v9)
    {
      v8 = bswap64(result[5]);
      v9 = bswap64(a2[1]);
      if (v8 == v9)
      {
        return result;
      }
    }

    v10 = v8 < v9 ? -1 : 1;
    if ((v10 & 0x80000000) == 0)
    {
      return result;
    }

    v2 = result[1];
    if (!v2)
    {
      goto LABEL_19;
    }
  }
}

void std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::erase(uint64_t a1, void **__p)
{
  v3 = __p[1];
  if (v3)
  {
    v4 = __p[1];
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v6 = __p;
    do
    {
      v5 = v6[2];
      v18 = *v5 == v6;
      v6 = v5;
    }

    while (!v18);
  }

  if (*a1 != __p)
  {
    v7 = *(a1 + 8);
    --*(a1 + 16);
    v8 = *__p;
    if (*__p)
    {
      goto LABEL_10;
    }

LABEL_18:
    v9 = __p;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  *a1 = v5;
  v7 = *(a1 + 8);
  --*(a1 + 16);
  v8 = *__p;
  if (!*__p)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!v3)
  {
    v3 = v8;
    v9 = __p;
    v10 = 0;
    v11 = __p[2];
    v8[2] = v11;
    v12 = *v11;
    if (*v11 == __p)
    {
      goto LABEL_20;
    }

LABEL_14:
    v11[1] = v3;
    v13 = *(v9 + 24);
    if (v9 == __p)
    {
      goto LABEL_15;
    }

LABEL_26:
    v14 = __p[2];
    v14[*v14 != __p] = v9;
    v9[2] = v14;
    v16 = *__p;
    v15 = __p[1];
    v16[2] = v9;
    *v9 = v16;
    v9[1] = v15;
    if (v15)
    {
      v15[2] = v9;
    }

    *(v9 + 24) = *(__p + 24);
    if (v7 == __p)
    {
      v7 = v9;
    }

    if (!v7)
    {
LABEL_81:
      if (!__p[8])
      {
        goto LABEL_84;
      }

LABEL_82:
      v39 = (__p + 6);
      v40 = __p[7];
      v41 = *(__p[6] + 1);
      v42 = *v40;
      *(v42 + 8) = v41;
      *v41 = v42;
      __p[8] = 0;
      if (v40 != (__p + 6))
      {
        do
        {
          v43 = *(v40 + 1);

          operator delete(v40);
          v40 = v43;
        }

        while (v43 != v39);
      }

      goto LABEL_84;
    }

    goto LABEL_31;
  }

  do
  {
    v9 = v3;
    v3 = *v3;
  }

  while (v3);
  v3 = v9[1];
  if (!v3)
  {
LABEL_19:
    v11 = v9[2];
    v10 = 1;
    v12 = *v11;
    if (*v11 == v9)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = 0;
  v11 = v9[2];
  v3[2] = v11;
  v12 = *v11;
  if (*v11 != v9)
  {
    goto LABEL_14;
  }

LABEL_20:
  *v11 = v3;
  if (v9 == v7)
  {
    v12 = 0;
    v7 = v3;
    v13 = *(v9 + 24);
    if (v9 != __p)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12 = v11[1];
    v13 = *(v9 + 24);
    if (v9 != __p)
    {
      goto LABEL_26;
    }
  }

LABEL_15:
  if (!v7)
  {
    goto LABEL_81;
  }

LABEL_31:
  if (!v13)
  {
    goto LABEL_81;
  }

  if (!v10)
  {
    *(v3 + 24) = 1;
    if (!__p[8])
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  while (1)
  {
    v19 = v12[2];
    v20 = *v19;
    if (*v19 != v12)
    {
      if ((v12[3] & 1) == 0)
      {
        *(v12 + 24) = 1;
        *(v19 + 24) = 0;
        v21 = *(v19 + 1);
        v22 = *v21;
        *(v19 + 1) = *v21;
        if (v22)
        {
          *(v22 + 16) = v19;
        }

        v23 = *(v19 + 2);
        v21[2] = v23;
        v23[*v23 != v19] = v21;
        *v21 = v19;
        *(v19 + 2) = v21;
        if (v7 == *v12)
        {
          v7 = v12;
        }

        v12 = *(*v12 + 1);
      }

      v24 = *v12;
      if (*v12 && *(v24 + 24) != 1)
      {
        v25 = v12[1];
        if (v25 && (v25[3] & 1) == 0)
        {
LABEL_77:
          v24 = v12;
        }

        else
        {
          *(v24 + 24) = 1;
          *(v12 + 24) = 0;
          v33 = v24[1];
          *v12 = v33;
          if (v33)
          {
            v33[2] = v12;
          }

          v34 = v12[2];
          v34[*v34 != v12] = v24;
          v24[1] = v12;
          v24[2] = v34;
          v12[2] = v24;
          v25 = v12;
        }

        v35 = v24[2];
        *(v24 + 24) = *(v35 + 24);
        *(v35 + 24) = 1;
        *(v25 + 24) = 1;
        v36 = *(v35 + 8);
        v37 = *v36;
        *(v35 + 8) = *v36;
        if (v37)
        {
          *(v37 + 16) = v35;
        }

        v38 = *(v35 + 16);
        v36[2] = v38;
        v38[*v38 != v35] = v36;
        *v36 = v35;
        *(v35 + 16) = v36;
        goto LABEL_81;
      }

      v25 = v12[1];
      if (v25 && *(v25 + 24) != 1)
      {
        goto LABEL_77;
      }

      *(v12 + 24) = 0;
      v17 = v12[2];
      if (v17 == v7 || (v17[3] & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_38;
    }

    if ((v12[3] & 1) == 0)
    {
      *(v12 + 24) = 1;
      *(v19 + 24) = 0;
      v26 = v20[1];
      *v19 = v26;
      if (v26)
      {
        v26[2] = v19;
      }

      v27 = *(v19 + 2);
      v27[*v27 != v19] = v20;
      v20[1] = v19;
      v20[2] = v27;
      *(v19 + 2) = v20;
      v28 = v12[1];
      if (v7 == v28)
      {
        v7 = v12;
      }

      v12 = *v28;
    }

    v29 = *v12;
    if (*v12 && *(v29 + 24) != 1)
    {
      goto LABEL_87;
    }

    v30 = v12[1];
    if (v30)
    {
      if (*(v30 + 24) != 1)
      {
        break;
      }
    }

    *(v12 + 24) = 0;
    v17 = v12[2];
    v18 = *(v17 + 24) != 1 || v17 == v7;
    if (v18)
    {
LABEL_70:
      *(v17 + 24) = 1;
      if (__p[8])
      {
        goto LABEL_82;
      }

      goto LABEL_84;
    }

LABEL_38:
    v12 = *(v17[2] + (*v17[2] == v17));
  }

  if (v29 && (v29[3] & 1) == 0)
  {
LABEL_87:
    v30 = v12;
    goto LABEL_88;
  }

  *(v30 + 24) = 1;
  *(v12 + 24) = 0;
  v31 = *v30;
  v12[1] = *v30;
  if (v31)
  {
    *(v31 + 16) = v12;
  }

  v32 = v12[2];
  v30[2] = v32;
  v32[*v32 != v12] = v30;
  *v30 = v12;
  v12[2] = v30;
  v29 = v12;
LABEL_88:
  v44 = v30[2];
  *(v30 + 24) = *(v44 + 24);
  *(v44 + 24) = 1;
  *(v29 + 24) = 1;
  v45 = *v44;
  v46 = *(*v44 + 8);
  *v44 = v46;
  if (v46)
  {
    *(v46 + 16) = v44;
  }

  v47 = v44[2];
  v47[*v47 != v44] = v45;
  *(v45 + 8) = v44;
  *(v45 + 16) = v47;
  v44[2] = v45;
  if (__p[8])
  {
    goto LABEL_82;
  }

LABEL_84:

  operator delete(__p);
}