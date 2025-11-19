unint64_t sub_22630C5A8()
{
  result = qword_27D7938A8;
  if (!qword_27D7938A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938A8);
  }

  return result;
}

unint64_t sub_22630C610()
{
  result = qword_27D7938B8;
  if (!qword_27D7938B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938B8);
  }

  return result;
}

unint64_t sub_22630C668()
{
  result = qword_27D7938C0;
  if (!qword_27D7938C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938C0);
  }

  return result;
}

unint64_t sub_22630C6C0()
{
  result = qword_27D7938C8;
  if (!qword_27D7938C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938C8);
  }

  return result;
}

unint64_t sub_22630C714(void *a1, uint64_t a2)
{
  sub_22635096C();

  v4 = [a1 description];
  v5 = sub_22635046C();
  v7 = v6;

  MEMORY[0x22AA7C5B0](v5, v7);

  MEMORY[0x22AA7C5B0](23358, 0xE200000000000000);
  v10 = *(a2 + 16);
  v8 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v8);

  MEMORY[0x22AA7C5B0](93, 0xE100000000000000);
  return 0xD000000000000010;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22630C844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22630C8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_22630C904(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22630C94C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
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

uint64_t sub_22630C9AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22630C9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_22630CA54(char a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    sub_22635096C();

    v3 = 0x7265747369676552;
  }

  else
  {
    sub_22635096C();

    v3 = 0x7473696765726E55;
  }

  v7 = v3;
  v6 = *(a2 + 16);
  v5 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v5);

  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226357210);
  return v7;
}

uint64_t sub_22630CB90(char a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x6C616974696E49;
  }

  sub_22635096C();

  v4 = sub_22630CA54(a1, a2);
  MEMORY[0x22AA7C5B0](v4);

  return 0xD000000000000011;
}

void *sub_22630CC40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E8, &qword_2263548B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939F0, &qword_2263548C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  swift_defaultActor_initialize();
  v10 = [objc_allocWithZone(MEMORY[0x277D23C38]) initWithOptions_];
  v11 = MEMORY[0x277D84F90];
  v0[14] = v10;
  v0[15] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939F8, &qword_2263548C8);
  sub_22634FB6C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A00, &qword_2263548D0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[16] = sub_22634FB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A08, &qword_2263548D8);
  sub_22634FB6C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A10, &qword_2263548E0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[17] = sub_22634FB7C();
  v18 = sub_22635064C();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v1;

  sub_2262FB4D4(0, 0, v5, &unk_2263548F0, v19);

  return v1;
}

uint64_t sub_22630CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22630CF60, 0, 0);
}

uint64_t sub_22630CF60()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_22635064C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v0[7] = sub_2262FB4D4(0, 0, v1, &unk_226354900, v5);

  return MEMORY[0x2822009F8](sub_22630D078, v2, 0);
}

uint64_t sub_22630D078()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 120) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2262DD0D0(0, v2[2] + 1, 1, v2);
    *(v1 + 120) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_2262DD0D0((v4 > 1), v5 + 1, 1, v2);
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 120) = v2;
  swift_endAccess();
  sub_22630E268(0, 0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22630D194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_22635004C();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A30, &qword_226354918) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = sub_22634ED6C();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v12 = sub_2263507BC();
  v4[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A38, &qword_226354920);
  v4[23] = v14;
  v15 = *(v14 - 8);
  v4[24] = v15;
  v16 = *(v15 + 64) + 15;
  v4[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793A40, &qword_226354928);
  v4[26] = v17;
  v18 = *(v17 - 8);
  v4[27] = v18;
  v19 = *(v18 + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22630D3E8, 0, 0);
}

uint64_t sub_22630D3E8()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[13];
  sub_2262D9C1C(0, &qword_28137DF88, 0x277CCA9A0);
  v6 = [swift_getObjCClassFromMetadata() defaultCenter];
  v7 = *MEMORY[0x277D23A70];
  v8 = sub_2263507DC();

  v0[11] = v8;
  sub_2263507CC();
  sub_2263157F8(&qword_28137DFA0, 255, MEMORY[0x277CC9D78]);
  sub_226350A5C();
  MEMORY[0x22AA7CAC0](v3);
  sub_2263506CC();
  sub_226350A2C();
  sub_226350A3C();
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_22630D5BC, 0, 0);
}

uint64_t sub_22630D5BC()
{
  v1 = v0[25];
  v2 = v0[23];
  v0[29] = sub_226350A1C();
  sub_2263157F8(&unk_28137DFA8, 255, MEMORY[0x277CC9D68]);
  v3 = *(MEMORY[0x277D856D8] + 4);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_22630D6B8;
  v5 = v0[21];
  v6 = v0[17];

  return MEMORY[0x282200310](v6, 0, 0);
}

uint64_t sub_22630D6B8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v6 = *v1;

  if (v0)
  {
    v4 = sub_22630D99C;
  }

  else
  {
    (*(v2 + 232))();
    v4 = sub_22630D7E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22630D7E0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2262D67D8(v3, &qword_27D793A30, &qword_226354918);

    return MEMORY[0x2822009F8](sub_22630DE88, 0, 0);
  }

  else
  {
    v4 = v0[25];
    v5 = v0[23];
    (*(v2 + 32))(v0[20], v3, v1);
    v6 = sub_226350A2C();
    v0[31] = v7;
    v12 = (v6 + *v6);
    v8 = v6[1];
    v9 = swift_task_alloc();
    v0[32] = v9;
    *v9 = v0;
    v9[1] = sub_22630D9B4;
    v10 = v0[20];

    return (v12)(v0 + 9, v10);
  }
}

uint64_t sub_22630D9B4()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  *(v1 + 280) = *(v1 + 72);
  *(v1 + 264) = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_22630DB58, 0, 0);
}

uint64_t sub_22630DB74()
{
  v1 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_22630DCB8, Strong, 0);
  }

  else
  {
    v3 = v0[33];

    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[26];
    v7 = v0[22];
    v8 = v0[20];
    v10 = v0[16];
    v9 = v0[17];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v5 + 8))(v4, v6);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22630DCB8()
{
  v21 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  sub_22634FFDC();

  v3 = sub_22635003C();
  v4 = sub_22635071C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = *(v0 + 280);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = sub_22630CA54(v9, v5);
    v14 = sub_226345004(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2262B6000, v3, v4, "Handling metadata change %s...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x22AA7D570](v11, -1, -1);
    MEMORY[0x22AA7D570](v10, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 272);
  sub_22630E268(*(v0 + 280), *(v0 + 264));

  return MEMORY[0x2822009F8](sub_22630DF6C, 0, 0);
}

uint64_t sub_22630DE88()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22630DF6C()
{
  v1 = *(v0 + 272);

  return MEMORY[0x2822009F8](sub_22630D5BC, 0, 0);
}

uint64_t sub_22630DFD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x2822009F8](sub_22630DFF4, 0, 0);
}

uint64_t sub_22630DFF4()
{
  v1 = *(v0 + 112);
  v2 = sub_22634ED5C();
  if (!v2)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D23A80];
  *(v0 + 88) = sub_22635046C();
  *(v0 + 96) = v5;
  sub_22635091C();
  if (!*(v3 + 16) || (v6 = sub_226339494(v0 + 16), (v7 & 1) == 0))
  {

    sub_226315840(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_11;
  }

  sub_2262FB40C(*(v3 + 56) + 32 * v6, v0 + 56);
  sub_226315840(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_11:
    sub_2262D67D8(v0 + 56, &unk_27D793A50, &qword_226354938);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v8 = *(v0 + 16);
  if (v8)
  {
    v9 = 2 * (v8 == 1);
  }

  else
  {
    v9 = 1;
  }

LABEL_13:
  v10 = *(v0 + 112);
  v11 = sub_22634ED5C();
  if (!v11)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_21;
  }

  v12 = v11;
  v13 = *MEMORY[0x277D23A78];
  *(v0 + 88) = sub_22635046C();
  *(v0 + 96) = v14;
  sub_22635091C();
  if (!*(v12 + 16) || (v15 = sub_226339494(v0 + 16), (v16 & 1) == 0))
  {

    sub_226315840(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_21;
  }

  sub_2262FB40C(*(v12 + 56) + 32 * v15, v0 + 56);
  sub_226315840(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_21:
    sub_2262D67D8(v0 + 56, &unk_27D793A50, &qword_226354938);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930A8, &qword_226354940);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 16);
    goto LABEL_23;
  }

LABEL_22:
  v17 = MEMORY[0x277D84F90];
LABEL_23:
  v18 = *(v0 + 104);
  *v18 = v9;
  *(v18 + 8) = v17;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22630E268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = sub_22635004C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  sub_22634FFDC();

  v14 = sub_22635003C();
  v15 = sub_22635071C();

  v16 = os_log_type_enabled(v14, v15);
  v36 = v2;
  v37 = v5;
  v38 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v17 = 136315138;
    if (a2)
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_22635096C();

      v39 = 0xD000000000000011;
      v40 = 0x80000002263571F0;
      v19 = sub_22630CA54(v35, a2);
      MEMORY[0x22AA7C5B0](v19);

      v20 = v39;
      v21 = v40;
    }

    else
    {
      v21 = 0xE700000000000000;
      v20 = 0x6C616974696E49;
    }

    v23 = sub_226345004(v20, v21, v41);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_2262B6000, v14, v15, "Reloading VisualSearch queryable targets for reason '%s'...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x22AA7D570](v18, -1, -1);
    MEMORY[0x22AA7D570](v17, -1, -1);

    v5 = v37;
    v22 = *(v38 + 8);
    v22(v13, v37);
    v3 = v36;
  }

  else
  {

    v22 = *(v6 + 8);
    v22(v13, v5);
  }

  v24 = sub_22630E9D0();
  sub_22634FFDC();

  v25 = sub_22635003C();
  v26 = sub_22635071C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v41[0] = v28;
    *v27 = 136315138;
    if (a2)
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_22635096C();

      v39 = 0xD000000000000011;
      v40 = 0x80000002263571F0;
      v29 = sub_22630CA54(v35, a2);
      MEMORY[0x22AA7C5B0](v29);

      v30 = v39;
      v31 = v40;
    }

    else
    {
      v31 = 0xE700000000000000;
      v30 = 0x6C616974696E49;
    }

    v32 = sub_226345004(v30, v31, v41);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_2262B6000, v25, v26, "Done reloading VisualSearch queryable targets for reason '%s'.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x22AA7D570](v28, -1, -1);
    MEMORY[0x22AA7D570](v27, -1, -1);

    v22(v11, v37);
    v3 = v36;
  }

  else
  {

    v22(v11, v5);
  }

  v33 = *(v3 + 128);
  v39 = v24;
  return sub_22634FB8C();
}

uint64_t sub_22630E8C4()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);

      sub_2263506BC();

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 120);

  v7 = *(v0 + 128);

  v8 = *(v0 + 136);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_22630E9D0()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v62 = v61 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v61 - v9;
  sub_22634FFDC();
  v11 = sub_22635003C();
  v12 = sub_22635071C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2262B6000, v11, v12, "Fetching VisualSearch-related LNQueryMetadata entries from LNMetadataProvider...", v13, 2u);
    MEMORY[0x22AA7D570](v13, -1, -1);
  }

  v14 = *(v2 + 8);
  v65 = v1;
  v66 = v14;
  v67 = v2 + 8;
  v14(v10, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793A18, &qword_226354908);
  sub_22634FC0C();
  v15 = v0;
  if (!v0)
  {
    v61[1] = 0;
    v24 = v74 + 8;
    v25 = 1 << *(v74 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v74[8];
    v28 = (v25 + 63) >> 6;
    v68 = v74;

    v30 = 0;
    v15 = MEMORY[0x277D84F90];
    v63 = v28;
    for (i = v24; ; v24 = i)
    {
      if (v27)
      {
        v31 = v30;
      }

      else
      {
        do
        {
          v31 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_37;
          }

          if (v31 >= v28)
          {

            v55 = v62;
            sub_22634FFDC();

            v56 = sub_22635003C();
            v57 = sub_22635071C();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = v15;
              v59 = swift_slowAlloc();
              *v59 = 134217984;
              *(v59 + 4) = *(v58 + 2);

              _os_log_impl(&dword_2262B6000, v56, v57, "Fetched %ld VisualSearch-related LNQueryMetadata entries from LNMetadataProvider.", v59, 0xCu);
              v60 = v59;
              v15 = v58;
              MEMORY[0x22AA7D570](v60, -1, -1);
            }

            else
            {
            }

            v66(v55, v65);
            return v15;
          }

          v27 = v24[v31];
          ++v30;
        }

        while (!v27);
      }

      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v33 = v32 | (v31 << 6);
      v34 = (*(v68 + 48) + 16 * v33);
      v35 = *(*(v68 + 56) + 8 * v33);
      v36 = v34[1];
      v69 = *v34;
      v37 = v35 + 64;
      v38 = 1 << *(v35 + 32);
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v40 = v39 & *(v35 + 64);
      v41 = (v38 + 63) >> 6;
      v71 = v35;
      swift_bridgeObjectRetain_n();

      v42 = 0;
      for (j = result; v40; *(v53 + 8) = v54)
      {
LABEL_25:
        v44 = __clz(__rbit64(v40)) | (v42 << 6);
        v45 = (*(v71 + 48) + 16 * v44);
        v47 = *v45;
        v46 = v45[1];
        v48 = *(*(v71 + 56) + 8 * v44);

        v72 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_2262DD204(0, *(v15 + 2) + 1, 1, v15);
        }

        v51 = *(v15 + 2);
        v50 = *(v15 + 3);
        v52 = v15;
        if (v51 >= v50 >> 1)
        {
          v52 = sub_2262DD204((v50 > 1), v51 + 1, 1, v15);
        }

        v40 &= v40 - 1;
        *(v52 + 2) = v51 + 1;
        v15 = v52;
        v53 = &v52[40 * v51];
        result = j;
        *(v53 + 4) = v69;
        *(v53 + 5) = result;
        v54 = v72;
        *(v53 + 6) = v73;
        *(v53 + 7) = v46;
      }

      while (1)
      {
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        if (v43 >= v41)
        {
          break;
        }

        v40 = *(v37 + 8 * v43);
        ++v42;
        if (v40)
        {
          v42 = v43;
          goto LABEL_25;
        }
      }

      v30 = v31;
      v28 = v63;
    }
  }

  sub_22634FFDC();
  v16 = v0;
  v17 = sub_22635003C();
  v18 = sub_22635073C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v74 = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_226350C9C();
    v23 = sub_226345004(v21, v22, &v74);

    *(v19 + 4) = v23;
    v15 = v0;
    _os_log_impl(&dword_2262B6000, v17, v18, "Error %s occurred when fetching VisualSearch-related LNQueryMetadata entries from LNMetadataProvider.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x22AA7D570](v20, -1, -1);
    MEMORY[0x22AA7D570](v19, -1, -1);
  }

  v66(v6, v65);
  swift_willThrow();
  return v15;
}

void sub_22630EFD8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22635004C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFDC();
  v9 = sub_22635003C();
  v10 = sub_22635071C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2262B6000, v9, v10, "Use fast path for fetching VisualSearch-related LNQueryMetadata entries.", v11, 2u);
    MEMORY[0x22AA7D570](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = *(a1 + 112);
  sub_2262D9C1C(0, &unk_28137DF90, 0x277D23930);
  v13 = sub_2263507EC();
  v20[0] = 0;
  v14 = [v12 queriesWithCapabilities:32 inputValueType:v13 resultValueType:0 error:v20];

  v15 = v20[0];
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A28, &qword_226354910);
    v16 = sub_2263503EC();
    v17 = v15;

    *a2 = v16;
  }

  else
  {
    v18 = v20[0];
    sub_22634EDAC();

    swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22630F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793990, &unk_226354870);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22630F300, 0, 0);
}

uint64_t sub_22630F300()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v11 = v1[20];
  v12 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_22630F4D0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_2262D9C1C(0, &qword_27D793978, 0x277D23C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793998, &qword_226354D80);
  sub_2263505CC();
  (*(v6 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_22630F6C0;
  v1[13] = &block_descriptor;
  [v11 performConfigurableQuery:v12 completionHandler:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_22630F4D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_22630F64C;
  }

  else
  {
    v3 = sub_22630F5E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22630F5E0()
{
  v1 = *(v0 + 192);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22630F64C()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

void sub_22630F6C0(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793990, &unk_226354870);
    sub_2263505DC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793990, &unk_226354870);
    sub_2263505EC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22630F77C(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = sub_22635004C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFDC();
  v9 = sub_22635003C();
  v10 = sub_22635072C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_226350D3C();
    v15 = sub_226345004(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2262B6000, v9, v10, a3, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x22AA7D570](v12, -1, -1);
    MEMORY[0x22AA7D570](v11, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22630F928(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_22634FBEC();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_22635004C();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22630FAC0, v1, 0);
}

uint64_t sub_22630FAC0()
{
  v160 = v0;
  v159[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  sub_22634FFDC();
  v6 = *(v4 + 16);
  *(v0 + 184) = v6;
  *(v0 + 192) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_22635003C();
  v8 = sub_22635071C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 128);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  if (v9)
  {
    v153 = *(v0 + 136);
    v16 = swift_slowAlloc();
    v147 = v8;
    v17 = swift_slowAlloc();
    v159[0] = v17;
    *v16 = 136315138;
    sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10]);
    v18 = sub_226350C1C();
    v150 = v10;
    v20 = v19;
    v157 = *(v14 + 8);
    v157(v13, v15);
    v21 = sub_226345004(v18, v20, v159);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2262B6000, v7, v147, "Performing open action with target %s...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x22AA7D570](v17, -1, -1);
    MEMORY[0x22AA7D570](v16, -1, -1);

    v22 = *(v11 + 8);
    v22(v150, v153);
  }

  else
  {

    v157 = *(v14 + 8);
    v157(v13, v15);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v23 = *(v0 + 72);
  v24 = *(*(v0 + 80) + 112);
  sub_22634FBAC();
  v25 = sub_22635045C();

  sub_22634FBCC();
  v26 = sub_22635045C();

  *(v0 + 40) = 0;
  v27 = [v24 openActionsForTypeIdentifier:v25 bundleIdentifier:v26 error:v0 + 40];

  v28 = *(v0 + 40);
  if (!v27)
  {
    v73 = v28;
    sub_22634EDAC();

    swift_willThrow();
LABEL_38:
    v135 = *(v0 + 168);
    v134 = *(v0 + 176);
    v137 = *(v0 + 152);
    v136 = *(v0 + 160);
    v139 = *(v0 + 120);
    v138 = *(v0 + 128);
    v141 = *(v0 + 104);
    v140 = *(v0 + 112);

    v142 = *(v0 + 8);
    v143 = *MEMORY[0x277D85DE8];

    return v142();
  }

  v29 = *(v0 + 72);
  sub_2262D9C1C(0, &qword_28137DFE0, 0x277D23730);
  v30 = sub_22635056C();
  *(v0 + 200) = v30;
  v31 = v28;

  v32 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
  *(v0 + 208) = v32;
  sub_22634FBCC();
  v33 = sub_22635045C();

  [v32 setPreferredBundleIdentifier_];

  if (!(v30 >> 62))
  {
    v34 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 216) = v34;
    if (v34)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v108 = sub_226350A6C();
  *(v0 + 216) = v108;
  if (!v108)
  {
LABEL_34:
    v110 = *(v0 + 192);
    v109 = *(v0 + 200);
    v111 = *(v0 + 184);
    v112 = *(v0 + 152);
    v113 = *(v0 + 104);
    v114 = *(v0 + 88);
    v115 = *(v0 + 72);

    sub_22634FFDC();
    v111(v113, v115, v114);
    v116 = sub_22635003C();
    v117 = sub_22635073C();
    v118 = os_log_type_enabled(v116, v117);
    v120 = *(v0 + 144);
    v119 = *(v0 + 152);
    v121 = *(v0 + 136);
    v123 = *(v0 + 96);
    v122 = *(v0 + 104);
    v124 = *(v0 + 88);
    if (v118)
    {
      v156 = *(v0 + 136);
      v125 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v159[0] = v152;
      *v125 = 136315138;
      sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10]);
      v149 = v119;
      v126 = sub_226350C1C();
      v128 = v127;
      v157(v122, v124);
      v129 = sub_226345004(v126, v128, v159);

      *(v125 + 4) = v129;
      _os_log_impl(&dword_2262B6000, v116, v117, "No open action for target %s can be found.", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v152);
      MEMORY[0x22AA7D570](v152, -1, -1);
      MEMORY[0x22AA7D570](v125, -1, -1);

      v130 = v149;
      v131 = v156;
    }

    else
    {

      v157(v122, v124);
      v130 = v119;
      v131 = v121;
    }

    v22(v130, v131);
    v132 = *(v0 + 208);
    sub_226315490();
    swift_allocError();
    *v133 = 5;
    swift_willThrow();

    goto LABEL_38;
  }

LABEL_7:
  v35 = 0;
  while (1)
  {
    *(v0 + 224) = v35;
    v36 = *(v0 + 200);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x22AA7CA30](v35);
    }

    else
    {
      if (v35 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v37 = *(v36 + 8 * v35 + 32);
    }

    *(v0 + 232) = v37;
    *(v0 + 240) = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v22 = [objc_opt_self() policyWithActionMetadata:v37 signals:*(v0 + 208)];
    *(v0 + 248) = v22;
    *(v0 + 48) = 0;
    v38 = [v22 connectionWithUserIdentity:0 error:v0 + 48];
    *(v0 + 256) = v38;
    v39 = *(v0 + 48);
    if (v38)
    {
      break;
    }

    v40 = v39;
    v41 = sub_22634EDAC();

    swift_willThrow();
    v42 = *(v0 + 200);
    if (v42 >> 62)
    {
      if (v42 < 0)
      {
        v44 = *(v0 + 200);
      }

      v43 = sub_226350A6C();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v43, 1))
    {
      goto LABEL_32;
    }

    v45 = v41;
    if (*(v0 + 224) == v43 - 1)
    {
      v105 = *(v0 + 232);
      v106 = *(v0 + 200);
      v107 = *(v0 + 208);

      swift_willThrow();

      goto LABEL_38;
    }

    v47 = *(v0 + 184);
    v46 = *(v0 + 192);
    v48 = *(v0 + 160);
    v49 = *(v0 + 112);
    v50 = *(v0 + 88);
    v51 = *(v0 + 72);
    sub_22634FFDC();
    v47(v49, v51, v50);
    v52 = v45;
    v53 = sub_22635003C();
    v54 = sub_22635073C();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 160);
    v57 = *(v0 + 136);
    v58 = *(v0 + 144);
    v59 = *(v0 + 112);
    v60 = *(v0 + 88);
    v61 = *(v0 + 96);
    if (v55)
    {
      v151 = *(v0 + 232);
      v154 = *(v0 + 136);
      v62 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v159[0] = v146;
      *v62 = 136315394;
      swift_getErrorValue();
      v148 = v56;
      v64 = *(v0 + 16);
      v63 = *(v0 + 24);
      v65 = *(v0 + 32);
      v66 = sub_226350C9C();
      v145 = v45;
      v68 = sub_226345004(v66, v67, v159);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10]);
      v69 = sub_226350C1C();
      v71 = v70;
      v157 = *(v61 + 8);
      v157(v59, v60);
      v72 = sub_226345004(v69, v71, v159);

      *(v62 + 14) = v72;
      _os_log_impl(&dword_2262B6000, v53, v54, "Error %s while executing open action for target %s. Skipping to the next open action...", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v146, -1, -1);
      MEMORY[0x22AA7D570](v62, -1, -1);

      v22 = *(v58 + 8);
      v22(v148, v154);
    }

    else
    {

      v157 = *(v61 + 8);
      v157(v59, v60);
      v22 = *(v58 + 8);
      v22(v56, v57);
    }

    v35 = *(v0 + 240);
    if (v35 == *(v0 + 216))
    {
      goto LABEL_34;
    }
  }

  v74 = *(v0 + 72);
  v155 = *(v0 + 80);
  v158 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939D0, &qword_2263548A8);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2263547A0;
  v76 = v39;
  sub_22634FBAC();
  sub_22634FBDC();
  v77 = objc_allocWithZone(MEMORY[0x277D23800]);
  v78 = sub_22635045C();

  v79 = sub_22635045C();

  v80 = [v77 initWithTypeIdentifier:v78 instanceIdentifier:v79];

  v81 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
  sub_22634FBAC();
  v82 = objc_allocWithZone(MEMORY[0x277D23828]);
  v83 = sub_22635045C();

  v84 = [v82 initWithIdentifier_];

  v85 = objc_allocWithZone(MEMORY[0x277D23958]);
  v86 = v81;
  v87 = [v85 initWithValue:v86 valueType:v84];

  v88 = objc_allocWithZone(MEMORY[0x277D238D8]);
  v89 = sub_22635045C();
  v90 = [v88 initWithIdentifier:v89 value:v87];

  *(v75 + 32) = v90;
  sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
  v91 = sub_22635055C();

  v92 = [v22 actionWithParameters_];

  v93 = [v92 actionWithOpenWhenRun_];
  *(v0 + 264) = v93;

  v94 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
  *(v0 + 272) = v94;
  [v94 setSource_];
  v95 = sub_22635045C();
  [v94 setClientLabel_];

  v96 = [objc_allocWithZone(type metadata accessor for _LinkActionExecutorDelegate()) init];
  *(v0 + 280) = v96;
  v97 = [v158 executorForAction:v93 options:v94 delegate:v96];
  *(v0 + 288) = v97;
  v99 = sub_2263157F8(&qword_27D7939D8, v98, type metadata accessor for LinkManager);
  v100 = swift_task_alloc();
  *(v0 + 296) = v100;
  *(v100 + 16) = v96;
  *(v100 + 24) = v97;
  v101 = *(MEMORY[0x277D85A40] + 4);
  v102 = swift_task_alloc();
  *(v0 + 304) = v102;
  v103 = sub_2262D9C1C(0, &qword_27D7939B0, 0x277D23CA8);
  *v102 = v0;
  v102[1] = sub_226310884;
  v104 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v0 + 64, v155, v99, 0xD000000000000018, 0x80000002263571D0, sub_226315618, v100, v103);
}

uint64_t sub_226310884()
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 304);
  v13 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_226310DD4;
  }

  else
  {
    v7 = v2[37];
    v8 = v2[25];
    v9 = v2[10];

    v10 = *MEMORY[0x277D85DE8];
    v6 = sub_226310A04;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_226310A04()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_22634FFDC();
  v2(v4, v6, v5);
  v8 = v7;
  v9 = sub_22635003C();
  v10 = sub_22635071C();

  v11 = os_log_type_enabled(v9, v10);
  v47 = *(v0 + 272);
  v48 = *(v0 + 264);
  v49 = *(v0 + 256);
  v50 = *(v0 + 248);
  v51 = *(v0 + 232);
  v12 = *(v0 + 208);
  v52 = v12;
  v53 = *(v0 + 280);
  v13 = *(v0 + 168);
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 120);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v46 = v8;
  if (v11)
  {
    v44 = *(v0 + 288);
    v45 = *(v0 + 136);
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v54[0] = v42;
    *v19 = 136315394;
    sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10]);
    log = v9;
    v20 = sub_226350C1C();
    v43 = v13;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = sub_226345004(v20, v22, v54);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = v8;
    v25 = [v24 description];
    v26 = sub_22635046C();
    v28 = v27;

    v29 = sub_226345004(v26, v28, v54);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_2262B6000, log, v10, "Performed open action for target %s with result %s.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v42, -1, -1);
    MEMORY[0x22AA7D570](v19, -1, -1);

    (*(v14 + 8))(v43, v45);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v31 = *(v0 + 168);
  v30 = *(v0 + 176);
  v33 = *(v0 + 152);
  v32 = *(v0 + 160);
  v35 = *(v0 + 120);
  v34 = *(v0 + 128);
  v37 = *(v0 + 104);
  v36 = *(v0 + 112);

  v38 = *(v0 + 8);
  v39 = *MEMORY[0x277D85DE8];

  return v38(v46);
}

uint64_t sub_226310DD4()
{
  v131 = v0;
  v130[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);

  v7 = *(v0 + 312);
  while (1)
  {
    v8 = *(v0 + 200);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v10 = *(v0 + 200);
      }

      v9 = sub_226350A6C();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v7;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    if (*(v0 + 224) == v9 - 1)
    {
      v51 = *(v0 + 232);
      v52 = *(v0 + 200);
      v53 = *(v0 + 208);

      swift_willThrow();

      goto LABEL_28;
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 160);
    v15 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);
    sub_22634FFDC();
    v13(v15, v17, v16);
    v18 = v11;
    v19 = sub_22635003C();
    v20 = sub_22635073C();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 160);
    v23 = *(v0 + 136);
    v24 = *(v0 + 144);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v27 = *(v0 + 96);
    if (v21)
    {
      v124 = *(v0 + 232);
      v127 = *(v0 + 136);
      v28 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v130[0] = v120;
      *v28 = 136315394;
      swift_getErrorValue();
      v122 = v22;
      v30 = *(v0 + 16);
      v29 = *(v0 + 24);
      v31 = *(v0 + 32);
      v32 = sub_226350C9C();
      v119 = v11;
      v34 = sub_226345004(v32, v33, v130);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10]);
      v35 = sub_226350C1C();
      v37 = v36;
      v38 = v26;
      v39 = *(v27 + 8);
      v39(v25, v38);
      v40 = sub_226345004(v35, v37, v130);

      *(v28 + 14) = v40;
      _os_log_impl(&dword_2262B6000, v19, v20, "Error %s while executing open action for target %s. Skipping to the next open action...", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v120, -1, -1);
      MEMORY[0x22AA7D570](v28, -1, -1);

      v41 = *(v24 + 8);
      v41(v122, v127);
    }

    else
    {

      v42 = v26;
      v39 = *(v27 + 8);
      v39(v25, v42);
      v41 = *(v24 + 8);
      v41(v22, v23);
    }

    v43 = *(v0 + 240);
    if (v43 == *(v0 + 216))
    {
      break;
    }

    *(v0 + 224) = v43;
    v44 = *(v0 + 200);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x22AA7CA30](v43);
    }

    else
    {
      if (v43 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v45 = *(v44 + 8 * v43 + 32);
    }

    *(v0 + 232) = v45;
    *(v0 + 240) = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_32;
    }

    v46 = [objc_opt_self() policyWithActionMetadata:v45 signals:*(v0 + 208)];
    *(v0 + 248) = v46;
    *(v0 + 48) = 0;
    v47 = [v46 connectionWithUserIdentity:0 error:v0 + 48];
    *(v0 + 256) = v47;
    v48 = *(v0 + 48);
    if (v47)
    {
      v76 = *(v0 + 72);
      v126 = *(v0 + 80);
      v129 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939D0, &qword_2263548A8);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_2263547A0;
      v78 = v48;
      sub_22634FBAC();
      sub_22634FBDC();
      v79 = objc_allocWithZone(MEMORY[0x277D23800]);
      v80 = sub_22635045C();

      v81 = sub_22635045C();

      v82 = [v79 initWithTypeIdentifier:v80 instanceIdentifier:v81];

      v83 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
      sub_22634FBAC();
      v84 = objc_allocWithZone(MEMORY[0x277D23828]);
      v85 = sub_22635045C();

      v86 = [v84 initWithIdentifier_];

      v87 = objc_allocWithZone(MEMORY[0x277D23958]);
      v88 = v83;
      v89 = [v87 initWithValue:v88 valueType:v86];

      v90 = objc_allocWithZone(MEMORY[0x277D238D8]);
      v91 = sub_22635045C();
      v92 = [v90 initWithIdentifier:v91 value:v89];

      *(v77 + 32) = v92;
      sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
      v93 = sub_22635055C();

      v94 = [v46 actionWithParameters_];

      v95 = [v94 actionWithOpenWhenRun_];
      *(v0 + 264) = v95;

      v96 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
      *(v0 + 272) = v96;
      [v96 setSource_];
      v97 = sub_22635045C();
      [v96 setClientLabel_];

      v98 = [objc_allocWithZone(type metadata accessor for _LinkActionExecutorDelegate()) init];
      *(v0 + 280) = v98;
      v99 = [v129 executorForAction:v95 options:v96 delegate:v98];
      *(v0 + 288) = v99;
      v101 = sub_2263157F8(&qword_27D7939D8, v100, type metadata accessor for LinkManager);
      v102 = swift_task_alloc();
      *(v0 + 296) = v102;
      *(v102 + 16) = v98;
      *(v102 + 24) = v99;
      v103 = *(MEMORY[0x277D85A40] + 4);
      v104 = swift_task_alloc();
      *(v0 + 304) = v104;
      v105 = sub_2262D9C1C(0, &qword_27D7939B0, 0x277D23CA8);
      *v104 = v0;
      v104[1] = sub_226310884;
      v106 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822008A0](v0 + 64, v126, v101, 0xD000000000000018, 0x80000002263571D0, sub_226315618, v102, v105);
    }

    v49 = v48;
    v50 = sub_22634EDAC();

    v7 = v50;
    swift_willThrow();
  }

  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v56 = *(v0 + 184);
  v57 = *(v0 + 152);
  v58 = *(v0 + 104);
  v59 = *(v0 + 88);
  v60 = *(v0 + 72);

  sub_22634FFDC();
  v56(v58, v60, v59);
  v61 = sub_22635003C();
  v128 = sub_22635073C();
  v62 = os_log_type_enabled(v61, v128);
  v64 = *(v0 + 144);
  v63 = *(v0 + 152);
  v65 = *(v0 + 136);
  v67 = *(v0 + 96);
  v66 = *(v0 + 104);
  v68 = *(v0 + 88);
  if (v62)
  {
    v125 = *(v0 + 136);
    v69 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v130[0] = v123;
    *v69 = 136315138;
    sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10]);
    v121 = v63;
    v70 = sub_226350C1C();
    v72 = v71;
    v39(v66, v68);
    v73 = sub_226345004(v70, v72, v130);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_2262B6000, v61, v128, "No open action for target %s can be found.", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    MEMORY[0x22AA7D570](v123, -1, -1);
    MEMORY[0x22AA7D570](v69, -1, -1);

    v74 = v121;
    v75 = v125;
  }

  else
  {

    v39(v66, v68);
    v74 = v63;
    v75 = v65;
  }

  v41(v74, v75);
  v51 = *(v0 + 208);
  sub_226315490();
  swift_allocError();
  *v107 = 5;
  swift_willThrow();
LABEL_28:

  v109 = *(v0 + 168);
  v108 = *(v0 + 176);
  v111 = *(v0 + 152);
  v110 = *(v0 + 160);
  v113 = *(v0 + 120);
  v112 = *(v0 + 128);
  v115 = *(v0 + 104);
  v114 = *(v0 + 112);

  v116 = *(v0 + 8);
  v117 = *MEMORY[0x277D85DE8];

  return v116();
}

id sub_2263118A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7939B8, &qword_226354898);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793960, &qword_226354820);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate_continuation;
  swift_beginAccess();
  sub_2263155A8(v9, a2 + v12);
  swift_endAccess();
  sub_22634F98C();
  sub_2262D67D8(v9, &unk_27D7939B8, &qword_226354898);
  return [a3 perform];
}

id sub_226311CD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _LinkActionExecutorDelegate()
{
  result = qword_27D793948;
  if (!qword_27D793948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226311DE0()
{
  v0 = sub_22634F9AC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_226311EAC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_226311EAC()
{
  if (!qword_27D793958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793960, &qword_226354820);
    v0 = sub_22635085C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D793958);
    }
  }
}

uint64_t sub_226311F10(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_22635004C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226312008, 0, 0);
}

uint64_t sub_226312008()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  sub_22634FFDC();
  v4 = *v3;
  v0[10] = *v3;
  v5 = v3[1];
  v0[11] = v5;
  v6 = v3[2];
  v0[12] = v6;
  v7 = v3[3];
  v0[13] = v7;
  v8 = v3[4];
  v0[14] = v8;

  v9 = v8;
  v10 = sub_22635003C();
  v11 = sub_22635071C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[6];
  v14 = v0[7];
  v52 = v13;
  v53 = v0[9];
  if (v12)
  {
    v15 = v0[4];
    v51 = v4;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54[0] = v49;
    *v16 = 136315394;
    v17 = sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
    v18 = MEMORY[0x22AA7C630](v15, v17);
    v50 = v9;
    v20 = sub_226345004(v18, v19, v54);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_22635096C();

    MEMORY[0x22AA7C5B0](v51, v5);
    MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
    MEMORY[0x22AA7C5B0](v6, v7);
    MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
    v21 = sub_226345004(0xD000000000000015, 0x8000000226356820, v54);

    *(v16 + 14) = v21;
    v9 = v50;
    _os_log_impl(&dword_2262B6000, v10, v11, "Performing action with parameters %s on actionable target %s...", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v49, -1, -1);
    MEMORY[0x22AA7D570](v16, -1, -1);
  }

  v22 = *(v14 + 8);
  v22(v53, v52);
  v0[15] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
  v0[16] = v23;
  v24 = sub_22635045C();
  [v23 setPreferredBundleIdentifier_];

  v25 = [objc_opt_self() policyWithActionMetadata:v9 signals:v23];
  v0[17] = v25;
  v0[2] = 0;
  v26 = [v25 connectionWithUserIdentity:0 error:v0 + 2];
  v0[18] = v26;
  v27 = v0[2];
  if (v26)
  {
    v28 = v26;
    v29 = v0[4];
    sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
    v30 = v27;
    v31 = sub_22635055C();
    v32 = [v25 actionWithParameters_];

    v33 = [v32 actionWithOpenWhenRun_];
    v0[19] = v33;

    v34 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
    v0[20] = v34;
    [v34 setSource_];
    v35 = sub_22635045C();
    [v34 setClientLabel_];

    v36 = [objc_allocWithZone(type metadata accessor for _LinkActionExecutorDelegate()) init];
    v0[21] = v36;
    v37 = [v28 executorForAction:v33 options:v34 delegate:v36];
    v0[22] = v37;
    v38 = swift_task_alloc();
    v0[23] = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    v39 = *(MEMORY[0x277D85A40] + 4);
    v40 = swift_task_alloc();
    v0[24] = v40;
    v41 = sub_2262D9C1C(0, &qword_27D7939B0, 0x277D23CA8);
    *v40 = v0;
    v40[1] = sub_2263125F8;
    v42 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD000000000000018, 0x80000002263571B0, sub_226315ED0, v38, v41);
  }

  else
  {
    v43 = v27;
    sub_22634EDAC();

    swift_willThrow();
    v45 = v0[8];
    v44 = v0[9];

    v46 = v0[1];
    v47 = *MEMORY[0x277D85DE8];

    return v46();
  }
}

uint64_t sub_2263125F8()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_226312ADC;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_226312748;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226312748()
{
  v50 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  sub_22634FFDC();

  v6 = v1;
  v7 = v5;
  v8 = sub_22635003C();
  v9 = sub_22635071C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v45 = v11;
  v46 = *(v0 + 160);
  v13 = *(v0 + 136);
  v47 = *(v0 + 152);
  v48 = *(v0 + 144);
  v14 = *(v0 + 120);
  if (v10)
  {
    v43 = *(v0 + 120);
    v44 = v7;
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v39 = *(v0 + 128);
    v40 = *(v0 + 56);
    v41 = *(v0 + 48);
    v42 = *(v0 + 64);
    v38 = *(v0 + 136);
    v19 = swift_slowAlloc();
    v37 = v12;
    v20 = swift_slowAlloc();
    v49[0] = v20;
    *v19 = 136315394;
    sub_22635096C();

    MEMORY[0x22AA7C5B0](v17, v18);
    MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
    v21 = v16;
    v7 = v44;
    MEMORY[0x22AA7C5B0](v15, v21);
    MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
    v22 = sub_226345004(0xD000000000000015, 0x8000000226356820, v49);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = v44;
    v24 = [v23 description];
    v25 = sub_22635046C();
    v27 = v26;

    v28 = sub_226345004(v25, v27, v49);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_2262B6000, v8, v9, "Performed action on actionable target %s with result %s.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v20, -1, -1);
    MEMORY[0x22AA7D570](v19, -1, -1);

    v43(v42, v41);
  }

  else
  {
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = *(v0 + 48);

    v14(v29, v31);
  }

  v33 = *(v0 + 64);
  v32 = *(v0 + 72);

  v34 = *(v0 + 8);
  v35 = *MEMORY[0x277D85DE8];

  return v34(v7);
}

uint64_t sub_226312ADC()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);

  v8 = *(v0 + 200);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_226312BC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939A0, &unk_2263542A0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22635004C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226312CE8, 0, 0);
}

uint64_t sub_226312CE8()
{
  v43 = v0;
  v1 = v0[9];
  v2 = v0[3];
  sub_22634FFDC();
  v3 = v2[1];
  v38 = *v2;
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];

  v7 = v6;
  v8 = sub_22635003C();
  v9 = sub_22635071C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  if (v10)
  {
    v35 = v5;
    v14 = swift_slowAlloc();
    v36 = v13;
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136315138;
    sub_22635096C();

    v41 = 0xD000000000000015;
    v42 = 0x8000000226356820;
    MEMORY[0x22AA7C5B0](v38, v3);
    MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
    MEMORY[0x22AA7C5B0](v35, v4);
    MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
    v16 = sub_226345004(0xD000000000000015, 0x8000000226356820, &v40);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_2262B6000, v8, v9, "Performing action with semantic content descriptor on actionable target %s...", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA7D570](v15, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);

    (*(v12 + 8))(v11, v36);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v17 = v0[6];
  v18 = v0[4];
  v19 = v0[2];
  sub_22634F15C();
  swift_getOpaqueTypeConformance2();
  v39 = sub_22634ECEC();
  v0[10] = v39;
  v20 = sub_2262D99F4(v7);
  v21 = v20;
  v22 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v23 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 >> 62)
  {
LABEL_27:
    v24 = sub_226350A6C();
  }

  else
  {
    v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v0;
  v0[11] = v22;
  if (v24)
  {
    v0 = 0;
    do
    {
      v25 = v0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x22AA7CA30](v25, v21);
        }

        else
        {
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_26;
          }

          v26 = *(v21 + 8 * v25 + 32);
        }

        v27 = v26;
        v0 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v28 = [v26 name];
        if (v28)
        {
          break;
        }

LABEL_10:
        ++v25;
        if (v0 == v24)
        {
          goto LABEL_22;
        }
      }

      v29 = v28;
      v30 = [objc_allocWithZone(MEMORY[0x277D238D8]) initWithIdentifier:v28 value:v39];

      if (!v30)
      {
        goto LABEL_10;
      }

      MEMORY[0x22AA7C600]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22635058C();
      }

      sub_2263505AC();
      v22 = v41;
      v37[11] = v41;
    }

    while (v0 != v24);
  }

LABEL_22:

  v32 = swift_task_alloc();
  v37[12] = v32;
  *v32 = v37;
  v32[1] = sub_226313114;
  v33 = v37[3];

  return sub_226311F10(v22, v33);
}

uint64_t sub_226313114(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v8 = sub_226313300;
  }

  else
  {
    *(v4 + 112) = a1;
    v8 = sub_226313260;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226313260()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);
  v6 = *(v0 + 112);

  return v5(v6);
}

uint64_t sub_226313300()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);
  v6 = *(v0 + 104);

  return v5();
}

uint64_t sub_22631339C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2[30] = a1;
  v2[31] = a2;
  v3 = sub_2263507FC();
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v6 = sub_22635080C();
  v2[35] = v6;
  v7 = *(v6 - 8);
  v2[36] = v7;
  v8 = *(v7 + 64) + 15;
  v2[37] = swift_task_alloc();
  v9 = sub_22635004C();
  v2[38] = v9;
  v10 = *(v9 - 8);
  v2[39] = v10;
  v11 = *(v10 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2263135A0, 0, 0);
}

uint64_t sub_2263135A0()
{
  v194 = v0;
  v1 = v0;
  v193[1] = *MEMORY[0x277D85DE8];
  v2 = v0[48];
  v3 = v0[31];
  v4 = v1[30];
  sub_22634FFDC();
  *(v1 + 17) = *v3;
  *(v1 + 19) = *(v3 + 16);
  v5 = *(v3 + 32);
  v1[49] = v5;
  v6 = v4;
  sub_2263153E0((v1 + 17), (v1 + 21));
  sub_2263153E0((v1 + 19), (v1 + 23));
  v7 = v5;
  v8 = sub_22635003C();
  v9 = sub_22635071C();

  sub_22631543C((v1 + 17));
  sub_22631543C((v1 + 19));

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[48];
  v13 = v1[38];
  v12 = v1[39];
  v192 = v1;
  if (v10)
  {
    v180 = v1[48];
    v185 = v7;
    v14 = v1[30];
    v15 = v1[31];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v193[0] = v17;
    *v16 = 136315394;
    v18 = v14;
    v177 = v13;
    v19 = [v18 description];
    v20 = sub_22635046C();
    v22 = v21;

    v1 = v192;
    v23 = sub_226345004(v20, v22, v193);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    v24 = sub_226320200();
    v26 = sub_226345004(v24, v25, v193);

    *(v16 + 14) = v26;
    v7 = v185;
    _os_log_impl(&dword_2262B6000, v8, v9, "Performing intent value query with input value %s on queryable target %s...", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v17, -1, -1);
    MEMORY[0x22AA7D570](v16, -1, -1);

    v27 = *(v12 + 8);
    v27(v180, v177);
  }

  else
  {

    v27 = *(v12 + 8);
    v27(v11, v13);
  }

  v1[50] = v27;
  v28 = v7;
  if (([v28 capabilities] & 0x20) == 0)
  {
    v29 = v1[41];

    sub_22634FFDC();
    v30 = v28;
    v31 = sub_22635003C();
    v32 = sub_22635073C();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v1[41];
    v35 = v1[38];
    v36 = v1[39];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v186 = v27;
      v38 = swift_slowAlloc();
      v193[0] = v38;
      *v37 = 136315138;
      v39 = v30;
      v40 = [v39 description];
      v41 = sub_22635046C();
      v181 = v34;
      v43 = v42;

      v44 = v41;
      v1 = v192;
      v45 = sub_226345004(v44, v43, v193);

      *(v37 + 4) = v45;
      _os_log_impl(&dword_2262B6000, v31, v32, "Query metadata %s does not support intent value query. Aborting...", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);

      v186(v181, v35);
    }

    else
    {

      v27(v34, v35);
    }

    sub_226315490();
    swift_allocError();
    *v77 = 0;
LABEL_19:
    swift_willThrow();
    goto LABEL_20;
  }

  v46 = [v28 inputValueType];
  v1[51] = v46;
  if (!v46)
  {
    v78 = v1[42];

    sub_22634FFDC();
    v79 = v28;
    v80 = sub_22635003C();
    v81 = sub_22635073C();

    v82 = os_log_type_enabled(v80, v81);
    v83 = v1[42];
    v84 = v1[38];
    v85 = v1[39];
    if (v82)
    {
      v86 = swift_slowAlloc();
      v188 = v27;
      v87 = swift_slowAlloc();
      v193[0] = v87;
      *v86 = 136315138;
      v88 = v79;
      v89 = [v88 description];
      v90 = sub_22635046C();
      v183 = v83;
      v92 = v91;

      v93 = v90;
      v1 = v192;
      v94 = sub_226345004(v93, v92, v193);

      *(v86 + 4) = v94;
      _os_log_impl(&dword_2262B6000, v80, v81, "Query metadata %s does not contain input value type. Aborting...", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x22AA7D570](v87, -1, -1);
      MEMORY[0x22AA7D570](v86, -1, -1);

      v188(v183, v84);
    }

    else
    {

      v27(v83, v84);
    }

    sub_226315490();
    swift_allocError();
    *v121 = 1;
    goto LABEL_19;
  }

  v47 = v46;
  if (![v46 valueIsKindOfType_])
  {
    v95 = v1[43];
    v96 = v1[30];

    sub_22634FFDC();
    v97 = v96;
    v98 = v47;
    v99 = sub_22635003C();
    v100 = sub_22635073C();

    v101 = os_log_type_enabled(v99, v100);
    v102 = v1[43];
    v103 = v1[38];
    v104 = v1[39];
    if (v101)
    {
      v184 = v1[43];
      v105 = v1[30];
      v189 = v27;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v193[0] = v107;
      *v106 = 136315394;
      v98 = v98;
      v108 = [v98 description];
      v109 = sub_22635046C();
      v175 = v103;
      v111 = v110;

      v112 = sub_226345004(v109, v111, v193);

      *(v106 + 4) = v112;
      *(v106 + 12) = 2080;
      v113 = v105;
      v114 = [v113 description];
      v115 = sub_22635046C();
      v117 = v116;

      v118 = v115;
      v1 = v192;
      v119 = sub_226345004(v118, v117, v193);

      *(v106 + 14) = v119;
      _os_log_impl(&dword_2262B6000, v99, v100, "Query metadata expects input value type of %s, but input value %s is not a kind of it. Aborting...", v106, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v107, -1, -1);
      MEMORY[0x22AA7D570](v106, -1, -1);

      v189(v184, v175);
    }

    else
    {

      v27(v102, v103);
    }

    sub_226315490();
    swift_allocError();
    *v120 = 2;
    swift_willThrow();

    goto LABEL_20;
  }

  v187 = v27;
  v48 = v1[47];
  v50 = v1[36];
  v49 = v1[37];
  v52 = v1[34];
  v51 = v1[35];
  v53 = v1[32];
  v54 = v1[33];
  v55 = v192[30];
  sub_2262D9C1C(0, &qword_27D793970, 0x277D23B90);
  *v49 = v55;
  (*(v50 + 104))(v49, *MEMORY[0x277D23A20], v51);
  *v52 = v28;
  (*(v54 + 104))(v52, *MEMORY[0x277D23A38], v53);
  v56 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v57 = v55;
  v1 = v192;
  [v56 init];
  v58 = sub_22635081C();
  v192[52] = v58;
  v59 = [objc_opt_self() policyWithEntityQueryMetadata_];
  v192[53] = v59;
  sub_22634FFDC();
  v60 = v58;
  v61 = sub_22635003C();
  v62 = sub_22635071C();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v192[47];
  v66 = v192[38];
  v65 = v192[39];
  v182 = v60;
  if (v63)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v193[0] = v68;
    *v67 = 136315138;
    v69 = v60;
    v178 = v64;
    v70 = [v69 description];
    v174 = v66;
    v71 = sub_22635046C();
    v73 = v72;

    v1 = v192;
    v74 = sub_226345004(v71, v73, v193);

    *(v67 + 4) = v74;
    _os_log_impl(&dword_2262B6000, v61, v62, "Performing query request %s...", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x22AA7D570](v68, -1, -1);
    MEMORY[0x22AA7D570](v67, -1, -1);

    v76 = v174;
    v75 = v178;
  }

  else
  {

    v75 = v64;
    v76 = v66;
  }

  v187(v75, v76);
  v1[25] = 0;
  v135 = [v59 connectionWithError_];
  v1[54] = v135;
  v136 = v1[25];
  if (!v135)
  {
    v144 = v136;
    v145 = sub_22634EDAC();

    swift_willThrow();
    v146 = v1[52];
    v147 = v1[40];
    sub_22634FFDC();
    v148 = v146;
    v149 = v145;
    v150 = sub_22635003C();
    v151 = sub_22635073C();

    v152 = os_log_type_enabled(v150, v151);
    v154 = v1[52];
    v153 = v1[53];
    v156 = v1[50];
    v155 = v1[51];
    v157 = v1[39];
    v158 = v1[40];
    v191 = v1[38];
    if (v152)
    {
      v179 = v1[50];
      v159 = swift_slowAlloc();
      v173 = v158;
      v160 = swift_slowAlloc();
      v193[0] = v160;
      *v159 = 136315394;
      swift_getErrorValue();
      v176 = v155;
      v162 = v1[14];
      v161 = v1[15];
      v163 = v1[16];
      v164 = sub_226350C9C();
      v166 = sub_226345004(v164, v165, v193);

      *(v159 + 4) = v166;
      *(v159 + 12) = 2080;
      v167 = v154;
      v168 = [v167 description];
      v169 = sub_22635046C();
      v171 = v170;

      v1 = v192;
      v172 = sub_226345004(v169, v171, v193);

      *(v159 + 14) = v172;
      _os_log_impl(&dword_2262B6000, v150, v151, "Error %s occurred when performing query request %s.", v159, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v160, -1, -1);
      MEMORY[0x22AA7D570](v159, -1, -1);

      v179(v173, v191);
      swift_willThrow();
    }

    else
    {

      v156(v158, v191);
      swift_willThrow();
    }

LABEL_20:
    v123 = v1[47];
    v122 = v1[48];
    v125 = v1[45];
    v124 = v1[46];
    v127 = v1[43];
    v126 = v1[44];
    v129 = v1[41];
    v128 = v1[42];
    v130 = v192[40];
    v131 = v192[37];
    v190 = v192[34];

    v132 = v192[1];
    v133 = *MEMORY[0x277D85DE8];

    return v132();
  }

  v137 = v135;
  v138 = swift_task_alloc();
  v1[55] = v138;
  *(v138 + 16) = v137;
  *(v138 + 24) = v182;
  v139 = *(MEMORY[0x277D78C00] + 4);
  v140 = v136;
  v141 = swift_task_alloc();
  v1[56] = v141;
  v142 = sub_2262D9C1C(0, &qword_27D793978, 0x277D23C50);
  *v141 = v1;
  v141[1] = sub_2263143FC;
  v143 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821E00F8](v1 + 27, &unk_226354860, v138, sub_22630F770, 0, v142);
}

uint64_t sub_2263143FC()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = sub_2263150AC;
  }

  else
  {
    v5 = *(v2 + 440);

    v4 = sub_22631454C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22631454C()
{
  v147 = v0;
  v146[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 416);
  v2 = *(v0 + 368);
  v3 = *(v0 + 216);
  sub_22634FFDC();
  v4 = v1;
  v5 = sub_22635003C();
  v6 = sub_22635071C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 432);
  v142 = v3;
  if (v7)
  {
    v9 = *(v0 + 416);
    v135 = *(v0 + 368);
    v139 = *(v0 + 400);
    v128 = *(v0 + 312);
    v131 = *(v0 + 304);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v146[0] = v11;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_22635046C();
    v16 = v15;

    v17 = sub_226345004(v14, v16, v146);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v18 = v142;
    v19 = [v18 description];
    v20 = sub_22635046C();
    v22 = v21;

    v23 = sub_226345004(v20, v22, v146);

    *(v10 + 14) = v23;
    _os_log_impl(&dword_2262B6000, v5, v6, "Performed query request %s with response %s.", v10, 0x16u);
    swift_arrayDestroy();
    v24 = v11;
    v3 = v142;
    MEMORY[0x22AA7D570](v24, -1, -1);
    MEMORY[0x22AA7D570](v10, -1, -1);

    v139(v135, v131);
  }

  else
  {
    v25 = *(v0 + 400);
    v26 = *(v0 + 368);
    v27 = *(v0 + 304);
    v28 = *(v0 + 312);

    v25(v26, v27);
  }

  v29 = [v3 value];

  v30 = [v29 value];
  sub_22635088C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793980, &qword_226354868);
  if (swift_dynamicCast())
  {
    v31 = *(v0 + 224);
    v32 = [*(v0 + 392) resultValueType];
    if (v31 >> 62)
    {
LABEL_35:
      v33 = sub_226350A6C();
      if (v33)
      {
LABEL_7:
        v34 = 0;
        v140 = MEMORY[0x277D84F90];
        do
        {
          v35 = v34;
          while (1)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v36 = MEMORY[0x22AA7CA30](v35, v31);
            }

            else
            {
              if (v35 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v36 = *(v31 + 8 * v35 + 32);
            }

            v37 = v36;
            v34 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if ([v32 valueIsKindOfType_])
            {
              break;
            }

            ++v35;
            if (v34 == v33)
            {
              goto LABEL_37;
            }
          }

          v38 = [v37 value];
          sub_22635088C();
          swift_unknownObjectRelease();
          sub_2262D9C1C(0, &qword_27D793808, 0x277D237F0);
          v136 = swift_dynamicCast();
          if (v136)
          {
            v39 = *(v0 + 232);
            v132 = [v37 displayRepresentation];

            v37 = v39;
          }

          else
          {
            v132 = [v37 displayRepresentation];
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v40 = v140;
          }

          else
          {
            v40 = sub_2262DD324(0, *(v140 + 16) + 1, 1, v140);
          }

          v42 = *(v40 + 2);
          v41 = *(v40 + 3);
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v45 = sub_2262DD324((v41 > 1), v42 + 1, 1, v40);
            v43 = v42 + 1;
            v40 = v45;
          }

          *(v40 + 2) = v43;
          v140 = v40;
          v44 = &v40[24 * v42];
          *(v44 + 4) = v37;
          v44[40] = v136 ^ 1;
          *(v44 + 6) = v132;
        }

        while (v34 != v33);
        goto LABEL_37;
      }
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_7;
      }
    }

    v140 = MEMORY[0x277D84F90];
LABEL_37:
    v85 = *(v0 + 416);
    v86 = *(v0 + 360);

    sub_22634FFDC();
    v87 = v85;
    v88 = v32;

    v89 = sub_22635003C();
    v90 = sub_22635071C();

    v91 = os_log_type_enabled(v89, v90);
    v93 = *(v0 + 416);
    v92 = *(v0 + 424);
    v94 = *(v0 + 400);
    v134 = v92;
    v138 = *(v0 + 408);
    v95 = *(v0 + 360);
    v96 = *(v0 + 304);
    v97 = *(v0 + 312);
    v130 = v88;
    if (v91)
    {
      v98 = swift_slowAlloc();
      v126 = v94;
      v122 = swift_slowAlloc();
      v146[0] = v122;
      *v98 = 136315394;
      v99 = v93;
      v124 = v95;
      v100 = [v99 description];
      v101 = sub_22635046C();
      v123 = v96;
      v103 = v102;

      v104 = sub_226345004(v101, v103, v146);

      *(v98 + 4) = v104;
      *(v98 + 12) = 2080;
      v105 = v88;

      v106 = sub_22630C714(v105, v140);
      v108 = v107;

      v109 = sub_226345004(v106, v108, v146);

      *(v98 + 14) = v109;
      _os_log_impl(&dword_2262B6000, v89, v90, "Performed query request %s with result %s.", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v122, -1, -1);
      MEMORY[0x22AA7D570](v98, -1, -1);

      v126(v124, v123);
    }

    else
    {

      v94(v95, v96);
    }

    v111 = *(v0 + 376);
    v110 = *(v0 + 384);
    v113 = *(v0 + 360);
    v112 = *(v0 + 368);
    v115 = *(v0 + 344);
    v114 = *(v0 + 352);
    v117 = *(v0 + 328);
    v116 = *(v0 + 336);
    v118 = *(v0 + 320);
    v119 = *(v0 + 296);
    v145 = *(v0 + 272);

    v120 = *(v0 + 8);
    v121 = *MEMORY[0x277D85DE8];

    return v120(v130, v140);
  }

  v46 = *(v0 + 416);
  v47 = *(v0 + 352);
  sub_22634FFDC();
  v48 = v46;
  v49 = v3;
  v50 = sub_22635003C();
  v51 = sub_22635073C();

  v52 = os_log_type_enabled(v50, v51);
  v54 = *(v0 + 416);
  v53 = *(v0 + 424);
  v55 = *(v0 + 400);
  v56 = *(v0 + 408);
  v137 = *(v0 + 312);
  v141 = *(v0 + 304);
  v143 = *(v0 + 352);
  if (v52)
  {
    v133 = *(v0 + 424);
    v57 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v129 = v56;
    v146[0] = v127;
    *v57 = 136315394;
    v58 = v54;
    v59 = v54;
    v60 = [v59 description];
    v125 = v55;
    v61 = sub_22635046C();
    v63 = v62;

    v54 = v58;
    v64 = sub_226345004(v61, v63, v146);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2080;
    v65 = [v49 value];
    v66 = [v65 value];

    sub_22635088C();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
    v67 = sub_226350D6C();
    v69 = sub_226345004(v67, v68, v146);

    *(v57 + 14) = v69;
    _os_log_impl(&dword_2262B6000, v50, v51, "Response value of query request %s is expected to be [LNValue], but it is %s. Aborting...", v57, 0x16u);
    swift_arrayDestroy();
    v56 = v129;
    MEMORY[0x22AA7D570](v127, -1, -1);
    v70 = v57;
    v53 = v133;
    MEMORY[0x22AA7D570](v70, -1, -1);

    v125(v143, v141);
  }

  else
  {

    v55(v143, v141);
  }

  sub_226315490();
  swift_allocError();
  *v71 = 4;
  swift_willThrow();

  v73 = *(v0 + 376);
  v72 = *(v0 + 384);
  v75 = *(v0 + 360);
  v74 = *(v0 + 368);
  v77 = *(v0 + 344);
  v76 = *(v0 + 352);
  v79 = *(v0 + 328);
  v78 = *(v0 + 336);
  v80 = *(v0 + 320);
  v81 = *(v0 + 296);
  v144 = *(v0 + 272);

  v82 = *(v0 + 8);
  v83 = *MEMORY[0x277D85DE8];

  return v82();
}

uint64_t sub_2263150AC()
{
  v52 = v0;
  v51[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 440);

  v2 = *(v0 + 456);
  v3 = *(v0 + 416);
  v4 = *(v0 + 320);
  sub_22634FFDC();
  v5 = v3;
  v6 = v2;
  v7 = sub_22635003C();
  v8 = sub_22635073C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 416);
    v44 = *(v0 + 424);
    v45 = *(v0 + 408);
    v49 = *(v0 + 400);
    v46 = *(v0 + 312);
    v47 = *(v0 + 304);
    v48 = *(v0 + 320);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51[0] = v11;
    *v10 = 136315394;
    swift_getErrorValue();
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 128);
    v15 = sub_226350C9C();
    v17 = sub_226345004(v15, v16, v51);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v18 = v9;
    v19 = [v18 description];
    v20 = sub_22635046C();
    v22 = v21;

    v23 = v44;
    v24 = sub_226345004(v20, v22, v51);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_2262B6000, v7, v8, "Error %s occurred when performing query request %s.", v10, 0x16u);
    swift_arrayDestroy();
    v25 = v11;
    v26 = v45;
    MEMORY[0x22AA7D570](v25, -1, -1);
    MEMORY[0x22AA7D570](v10, -1, -1);

    v49(v48, v47);
  }

  else
  {
    v18 = *(v0 + 416);
    v23 = *(v0 + 424);
    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    v29 = *(v0 + 312);
    v28 = *(v0 + 320);
    v30 = *(v0 + 304);

    v27(v28, v30);
  }

  swift_willThrow();

  v32 = *(v0 + 376);
  v31 = *(v0 + 384);
  v34 = *(v0 + 360);
  v33 = *(v0 + 368);
  v36 = *(v0 + 344);
  v35 = *(v0 + 352);
  v38 = *(v0 + 328);
  v37 = *(v0 + 336);
  v39 = *(v0 + 320);
  v40 = *(v0 + 296);
  v50 = *(v0 + 272);

  v41 = *(v0 + 8);
  v42 = *MEMORY[0x277D85DE8];

  return v41();
}

unint64_t sub_226315490()
{
  result = qword_27D793968;
  if (!qword_27D793968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793968);
  }

  return result;
}

uint64_t sub_2263154E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2262D641C;

  return sub_22630F230(a1, v5, v4);
}

uint64_t sub_2263155A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7939B8, &qword_226354898);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226315634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2262D641C;

  return sub_22630CEC4(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226315728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2262FF0E0;

  return sub_22630D194(a1, v4, v5, v6);
}

uint64_t sub_2263157F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226315894(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793960, &qword_226354820);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  result = sub_22634F97C();
  if ((result & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate_continuation;
    v16 = (v7 + 48);
    if (a1)
    {
      swift_beginAccess();
      result = (*v16)(v3 + v15, 1, v6);
      if (!result)
      {
        (*(v7 + 16))(v13, v3 + v15, v6);
        v21 = a1;
        v17 = a1;
        sub_2263505EC();
        return (*(v7 + 8))(v13, v6);
      }
    }

    else
    {
      swift_beginAccess();
      result = (*v16)(v3 + v15, 1, v6);
      if (!result)
      {
        (*(v7 + 16))(v11, v3 + v15, v6);
        if (a2)
        {
          v18 = a2;
        }

        else
        {
          sub_226315CA0();
          v18 = swift_allocError();
          *v19 = 1;
        }

        v21 = v18;
        v20 = a2;
        sub_2263505DC();
        return (*(v7 + 8))(v11, v6);
      }
    }
  }

  return result;
}

void sub_226315ACC(void *a1, char a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793960, &qword_226354820);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  if ((sub_22634F97C() & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate_continuation;
    swift_beginAccess();
    if (!(*(v7 + 48))(v4 + v11, 1, v6))
    {
      (*(v7 + 16))(v10, v4 + v11, v6);
      sub_226315CA0();
      v12 = swift_allocError();
      *v13 = a2;
      v17 = v12;
      sub_2263505DC();
      (*(v7 + 8))(v10, v6);
    }
  }

  sub_226315CA0();
  v14 = swift_allocError();
  *v15 = 0;
  v16 = sub_22634ED9C();

  [a1 respondWithError_];
}

unint64_t sub_226315CA0()
{
  result = qword_27D793A60;
  if (!qword_27D793A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A60);
  }

  return result;
}

uint64_t sub_226315D04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226315D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_226315DAC()
{
  result = qword_27D793A68;
  if (!qword_27D793A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A68);
  }

  return result;
}

unint64_t sub_226315E04()
{
  result = qword_27D793A70;
  if (!qword_27D793A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A70);
  }

  return result;
}

unint64_t sub_226315E6C()
{
  result = qword_27D793A78;
  if (!qword_27D793A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A78);
  }

  return result;
}

uint64_t sub_226315ED4()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_226315F28(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_22634F34C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for VisualAction(0);
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v10 = sub_22634F55C();
  v3[10] = v10;
  v11 = *(v10 - 8);
  v3[11] = v11;
  v12 = *(v11 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263160AC, v2, 0);
}

uint64_t sub_2263160AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[3];
  sub_22634F59C();
  sub_22634F52C();
  sub_226316588(&qword_28137E138, 255, MEMORY[0x277D78770]);
  LOBYTE(v5) = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v8 = v0[2];
    v9 = sub_22634F49C();
    v10 = *(v9 + 16);
    if (v10)
    {
      v34 = v0[8];
      v35 = v0[9];
      v33 = v0[7];
      v11 = v0[5];
      sub_2263165D0(0, v10, 0);
      v12 = *(v11 + 16);
      v11 += 16;
      v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v31 = *(v11 + 56);
      v32 = v12;
      v30 = (v11 + 16);
      do
      {
        v36 = v10;
        v14 = v0[9];
        v15 = v0[6];
        v16 = v0[4];
        v32(v15, v13, v16);
        v17 = sub_22634FFAC();
        v19 = v18;
        (*v30)(v14 + v33[5], v15, v16);
        type metadata accessor for VisualAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        *v14 = v17;
        *(v35 + 8) = v19;
        v20 = MEMORY[0x277D84F98];
        *(v14 + v33[6]) = MEMORY[0x277D84F98];
        *(v14 + v33[7]) = v20;
        *(v14 + v33[8]) = v20;
        v22 = *(v7 + 16);
        v21 = *(v7 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2263165D0(v21 > 1, v22 + 1, 1);
        }

        v23 = v0[9];
        *(v7 + 16) = v22 + 1;
        sub_2262FEB84(v23, v7 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22);
        v13 += v31;
        --v10;
      }

      while (v36 != 1);
    }
  }

  v25 = v0[12];
  v24 = v0[13];
  v26 = v0[9];
  v27 = v0[6];

  v28 = v0[1];

  return v28(v7);
}

uint64_t sub_226316390(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226316434;

  return sub_226315F28(a1, a2);
}

uint64_t sub_226316434(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_226316530(uint64_t a1, uint64_t a2)
{
  result = sub_226316588(qword_28137F7C0, a2, type metadata accessor for RemoteCustomActionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226316588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

size_t sub_2263165D0(size_t a1, int64_t a2, char a3)
{
  result = sub_2262DD940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2263165F0(char *a1, int64_t a2, char a3)
{
  result = sub_2262DDA9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226316610(void *a1, int64_t a2, char a3)
{
  result = sub_2262DDBA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226316630(char *a1, int64_t a2, char a3)
{
  result = sub_2262DDEB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226316650(size_t a1, int64_t a2, char a3)
{
  result = sub_2262DDFBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226316670()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = *(v0 + 17);

  v5 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionExecutor_featureConfiguration;
  v6 = sub_22634FCDC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for VisualSearchActionExecutor()
{
  result = qword_28137F1C0;
  if (!qword_28137F1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22631675C()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22631680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = sub_22634EF3C();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = *(*(sub_22634F3FC() - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v11 = sub_22634F9DC();
  v5[17] = v11;
  v12 = *(v11 - 8);
  v5[18] = v12;
  v13 = *(v12 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793088, &qword_226351F40) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v15 = sub_22635004C();
  v5[26] = v15;
  v16 = *(v15 - 8);
  v5[27] = v16;
  v17 = *(v16 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793800, &qword_2263542B0) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v20 = sub_22634F17C();
  v5[35] = v20;
  v21 = *(v20 - 8);
  v5[36] = v21;
  v22 = *(v21 + 64) + 15;
  v5[37] = swift_task_alloc();
  v23 = sub_22634FDDC();
  v5[38] = v23;
  v24 = *(v23 - 8);
  v5[39] = v24;
  v25 = *(v24 + 64) + 15;
  v5[40] = swift_task_alloc();
  v26 = sub_22634EEFC();
  v5[41] = v26;
  v27 = *(v26 - 8);
  v5[42] = v27;
  v5[43] = *(v27 + 64);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v28 = type metadata accessor for VisualAction.Kind(0);
  v5[46] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v5[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226316C5C, v4, 0);
}

uint64_t sub_226316C5C()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[8];
  v4 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(v3 + *(v4 + 20), v2, type metadata accessor for VisualAction.Kind);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();
  sub_22631CCC0(v2, type metadata accessor for VisualAction.Kind);
  if (v1 == 4)
  {
    v5 = v0[8];
    v6 = *(v0[11] + 136);
    v7 = *v5;
    v0[48] = *v5;
    v8 = v5[1];
    v0[49] = v8;
    v9 = swift_task_alloc();
    v0[50] = v9;
    *v9 = v0;
    v9[1] = sub_226316F68;

    return sub_22631D630(v7, v8);
  }

  else
  {
    v11 = v0[7];
    v12 = *MEMORY[0x277D78AE8];
    v13 = sub_22634FB9C();
    (*(*(v13 - 8) + 104))(v11, v12, v13);
    v14 = *MEMORY[0x277D78A40];
    v15 = sub_22634FAEC();
    (*(*(v15 - 8) + 104))(v11, v14, v15);
    v16 = v0[47];
    v18 = v0[44];
    v17 = v0[45];
    v19 = v0[40];
    v20 = v0[37];
    v22 = v0[33];
    v21 = v0[34];
    v24 = v0[31];
    v23 = v0[32];
    v25 = v0[30];
    v27 = v0[29];
    v28 = v0[28];
    v29 = v0[25];
    v30 = v0[24];
    v31 = v0[23];
    v32 = v0[22];
    v33 = v0[21];
    v34 = v0[20];
    v35 = v0[19];
    v36 = v0[16];
    v37 = v0[15];
    v38 = v0[12];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_226316F68(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_226317080, v3, 0);
}

uint64_t sub_226317080()
{
  if (*(v0[51] + 16))
  {
    v2 = v0[39];
    v1 = v0[40];
    v3 = v0[38];
    v4 = v0[10];
    v5 = *(v0[11] + 128);
    v0[52] = v5;
    v6 = sub_22634F9BC();
    (*(*(v6 - 8) + 16))(v1, v4, v6);
    (*(v2 + 104))(v1, *MEMORY[0x277D78CD0], v3);

    return MEMORY[0x2822009F8](sub_226317358, v5, 0);
  }

  else
  {
    v7 = v0[7];

    v8 = *MEMORY[0x277D78AF0];
    v9 = sub_22634FB9C();
    (*(*(v9 - 8) + 104))(v7, v8, v9);
    v10 = *MEMORY[0x277D78A40];
    v11 = sub_22634FAEC();
    (*(*(v11 - 8) + 104))(v7, v10, v11);
    v12 = v0[47];
    v14 = v0[44];
    v13 = v0[45];
    v15 = v0[40];
    v16 = v0[37];
    v18 = v0[33];
    v17 = v0[34];
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[30];
    v24 = v0[29];
    v25 = v0[28];
    v26 = v0[25];
    v27 = v0[24];
    v28 = v0[23];
    v29 = v0[22];
    v30 = v0[21];
    v31 = v0[20];
    v32 = v0[19];
    v33 = v0[16];
    v34 = v0[15];
    v35 = v0[12];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_226317358()
{
  v1 = v0[52];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[11];
  sub_2262E0528(v2, v0[45]);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2263173FC, v5, 0);
}

uint64_t sub_2263173FC()
{
  v1 = v0[51];
  v2 = v0[45];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[9];
  sub_22634F4EC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A80, &qword_226354CF0);
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = *(v4 + 16);
  v0[53] = v10;
  v0[54] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v7, v2, v3);
  (*(v4 + 56))(v7, 0, 1, v3);
  sub_22634F16C();
  v11 = v0[51];
  if (*(v1 + 16) < 2uLL)
  {
    v12 = v0 + 31;
    v20 = v0[31];
    sub_22634FFCC();

    v14 = sub_22635003C();
    v15 = sub_22635071C();
    v21 = os_log_type_enabled(v14, v15);
    v22 = v0[51];
    if (v21)
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = *(v22 + 16);

      v19 = "Starting visual search query with semantic content descriptor on %ld queryable target...";
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v0 + 32;
    v13 = v0[32];
    sub_22634FFCC();

    v14 = sub_22635003C();
    v15 = sub_22635071C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[51];
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = *(v17 + 16);

      v19 = "Starting visual search query with semantic content descriptor on %ld queryable targets...";
LABEL_6:
      _os_log_impl(&dword_2262B6000, v14, v15, v19, v18, 0xCu);
      MEMORY[0x22AA7D570](v18, -1, -1);
      goto LABEL_8;
    }
  }

LABEL_8:

  v23 = *v12;
  v24 = v0[51];
  v25 = v0[37];
  v26 = v0[26];
  v27 = v0[11];
  v28 = *(v0[27] + 8);
  v0[55] = v28;
  v28(v23, v26);
  v29 = sub_22631D5E8(&qword_28137F1D8, type metadata accessor for VisualSearchActionExecutor);
  v0[56] = v29;
  v30 = swift_task_alloc();
  v0[57] = v30;
  v30[2] = v24;
  v30[3] = v27;
  v30[4] = v25;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A88, &qword_226354D08);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A90, &qword_226354D10);
  v33 = *(MEMORY[0x277D858E8] + 4);
  v34 = swift_task_alloc();
  v0[58] = v34;
  *v34 = v0;
  v34[1] = sub_226317798;

  return MEMORY[0x282200600](v0 + 2, v31, v32, v27, v29, &unk_226354D00, v30, v31);
}

uint64_t sub_226317798()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 408);
  v4 = *(*v0 + 88);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_2263178E8, v4, 0);
}

uint64_t sub_2263178E8()
{
  v129 = v0;
  v1 = *(v0 + 240);
  v124 = *(v0 + 16);
  *(v0 + 472) = v124;
  sub_22634FFCC();

  v2 = sub_22635003C();
  v3 = sub_22635071C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v124 + 16);

    _os_log_impl(&dword_2262B6000, v2, v3, "Finished visual search query with scene descriptor and found %ld items.", v4, 0xCu);
    MEMORY[0x22AA7D570](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + 440);
  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  *(v0 + 488) = (*(v0 + 216) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v6, v7);
  v8 = MEMORY[0x277D84F90];
  *(v0 + 48) = sub_2262FE9B0(MEMORY[0x277D84F90]);
  v9 = *(v124 + 16);
  *(v0 + 496) = v9;
  if (v9)
  {
    v10 = 0;
    do
    {
      *(v0 + 504) = v10;
      *(v0 + 512) = v8;
      v12 = *(v0 + 472) + 24 * v10;
      v13 = *(v12 + 32);
      *(v0 + 520) = v13;
      v14 = *(v12 + 40);
      v15 = *(v12 + 48);
      *(v0 + 528) = v15;
      if (v14)
      {
        v16 = *(v0 + 224);
        v17 = v13;
        v18 = v13;
        v19 = v15;
        sub_22634FFCC();
        v20 = v13;
        v21 = sub_22635003C();
        v22 = sub_22635073C();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138412290;
          *(v23 + 4) = v20;
          *v24 = v13;
          v25 = v20;
          _os_log_impl(&dword_2262B6000, v21, v22, "Boxed value %@ is not supported.", v23, 0xCu);
          sub_2262D67D8(v24, &qword_27D793CC0, qword_226352A00);
          MEMORY[0x22AA7D570](v24, -1, -1);
          MEMORY[0x22AA7D570](v23, -1, -1);
        }

        else
        {
        }

        v11 = *(v0 + 488);
        (*(v0 + 440))(*(v0 + 224), *(v0 + 208));
      }

      else
      {
        v26 = v13;
        v27 = v13;
        v28 = v15;
        v29 = [v13 identifier];
        v30 = [v29 typeIdentifier];

        v31 = sub_22635046C();
        v33 = v32;

        *(v0 + 32) = v31;
        *(v0 + 40) = v33;
        MEMORY[0x22AA7C5B0](47, 0xE100000000000000);
        v34 = [v13 identifier];
        v35 = [v34 instanceIdentifier];

        v36 = sub_22635046C();
        v38 = v37;

        MEMORY[0x22AA7C5B0](v36, v38);

        v40 = *(v0 + 32);
        v39 = *(v0 + 40);
        *(v0 + 536) = v40;
        *(v0 + 544) = v39;
        if (v15)
        {
          v71 = v28;
          v72 = swift_task_alloc();
          *(v0 + 552) = v72;
          *v72 = v0;
          v72[1] = sub_2263183D8;
          v73 = *(v0 + 384);
          v74 = *(v0 + 392);
          v75 = *(v0 + 200);
          v76 = *(v0 + 88);

          return sub_22631AC58(v75, v13, v73, v74, v0 + 48);
        }

        v41 = *(v0 + 232);
        sub_22634FFCC();

        v42 = sub_22635003C();
        v43 = sub_22635073C();

        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 488);
        v125 = *(v0 + 440);
        v46 = *(v0 + 232);
        v47 = *(v0 + 208);
        if (v44)
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v128 = v49;
          *v48 = 136315138;
          v50 = sub_226345004(v40, v39, &v128);

          *(v48 + 4) = v50;
          _os_log_impl(&dword_2262B6000, v42, v43, "Entity '%s' does not have a display representation.", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x22AA7D570](v49, -1, -1);
          MEMORY[0x22AA7D570](v48, -1, -1);
        }

        else
        {
        }

        v125(v46, v47);
        v8 = MEMORY[0x277D84F90];
      }

      v10 = *(v0 + 504) + 1;
    }

    while (v10 != *(v0 + 496));
  }

  *(v0 + 560) = v8;
  v51 = *(v0 + 472);

  v52 = *(v0 + 48);

  result = *(v0 + 480);
  if (*(v8 + 16))
  {
LABEL_18:

    v54 = swift_task_alloc();
    *(v0 + 568) = v54;
    *v54 = v0;
    v54[1] = sub_2263190D0;
    v55 = *(v0 + 384);
    v56 = *(v0 + 392);
    v57 = *(v0 + 192);
    v58 = *(v0 + 88);
    v59 = *(v0 + 72);

    return sub_22631B988(v57, v55, v56);
  }

  if (result >> 62)
  {
    if (result < 0)
    {
      v102 = *(v0 + 480);
    }

    v103 = *(v0 + 480);
    v104 = sub_226350A6C();
    result = v103;
    if (v104)
    {
      goto LABEL_23;
    }

LABEL_38:
    v105 = *(v0 + 480);
    goto LABEL_18;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_23:
  if ((result & 0xC000000000000001) != 0)
  {
    v60 = MEMORY[0x22AA7CA30](0, *(v0 + 480));
    v106 = *(v0 + 480);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v60 = *(*(v0 + 480) + 32);
  }

  v61 = [v60 ln_staticDeferredLocalizedString];
  if (v61)
  {
    v62 = v61;
    v64 = *(v0 + 112);
    v63 = *(v0 + 120);
    v65 = *(v0 + 104);
    sub_22634EF2C();
    sub_22634EF0C();
    (*(v64 + 8))(v63, v65);
    v66 = sub_22635045C();

    v67 = [v62 localizedStringForLocaleIdentifier_];

    v68 = sub_22635046C();
    v70 = v69;
  }

  else
  {

    v68 = 0;
    v70 = 0;
  }

  v126 = *(v0 + 448);
  v120 = *(v0 + 432);
  v116 = *(v0 + 360);
  v118 = *(v0 + 424);
  v77 = *(v0 + 336);
  v122 = *(v0 + 344);
  v78 = *(v0 + 328);
  v79 = *(v0 + 288);
  v80 = *(v0 + 296);
  v81 = *(v0 + 280);
  v82 = *(v0 + 88);
  v112 = *(v0 + 96);
  v114 = *(v0 + 352);
  v83 = *(v0 + 56);
  *v83 = v68;
  v83[1] = v70;
  v84 = *MEMORY[0x277D78AC8];
  v85 = sub_22634FB9C();
  (*(*(v85 - 8) + 104))(v83, v84, v85);
  v86 = *MEMORY[0x277D78A40];
  v87 = sub_22634FAEC();
  (*(*(v87 - 8) + 104))(v83, v86, v87);
  (*(v79 + 8))(v80, v81);
  v88 = sub_22635064C();
  (*(*(v88 - 8) + 56))(v112, 1, 1, v88);
  v118(v114, v116, v78);
  v89 = (*(v77 + 80) + 40) & ~*(v77 + 80);
  v90 = swift_allocObject();
  *(v90 + 2) = v82;
  *(v90 + 3) = v126;
  *(v90 + 4) = v82;
  (*(v77 + 32))(&v90[v89], v114, v78);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v112, &unk_226354D30, v90);

  (*(v77 + 8))(v116, v78);
  v91 = *(v0 + 376);
  v93 = *(v0 + 352);
  v92 = *(v0 + 360);
  v94 = *(v0 + 320);
  v95 = *(v0 + 296);
  v97 = *(v0 + 264);
  v96 = *(v0 + 272);
  v99 = *(v0 + 248);
  v98 = *(v0 + 256);
  v100 = *(v0 + 240);
  v107 = *(v0 + 232);
  v108 = *(v0 + 224);
  v109 = *(v0 + 200);
  v110 = *(v0 + 192);
  v111 = *(v0 + 184);
  v113 = *(v0 + 176);
  v115 = *(v0 + 168);
  v117 = *(v0 + 160);
  v119 = *(v0 + 152);
  v121 = *(v0 + 128);
  v123 = *(v0 + 120);
  v127 = *(v0 + 96);

  v101 = *(v0 + 8);

  return v101();
}

uint64_t sub_2263183D8()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2263184E8, v2, 0);
}

uint64_t sub_2263184E8()
{
  v147 = v0;
  v138 = *(v0 + 544);
  v126 = *(v0 + 528);
  v129 = *(v0 + 536);
  v142 = *(v0 + 512);
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v135 = *(v0 + 152);
  v4 = *(v0 + 144);
  v132 = *(v0 + 136);
  v5 = *(v0 + 128);
  sub_2262D66FC(*(v0 + 200), *(v0 + 192), &qword_27D793088, &qword_226351F40);
  v6 = sub_22634F3DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v2, 1, 1, v6);
  v8 = v126;
  sub_22634F3EC();
  sub_22634F9CC();
  (*(v4 + 16))(v135, v3, v132);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_2262DCF24(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v139 = sub_2262DCF24(v11 > 1, v12 + 1, 1, v10);
  }

  else
  {
    v139 = v10;
  }

  v13 = *(v0 + 528);
  v14 = *(v0 + 520);
  v15 = *(v0 + 200);
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);

  (*(v19 + 8))(v16, v18);
  sub_2262D67D8(v15, &qword_27D793088, &qword_226351F40);
  v20 = v139;
  *(v139 + 16) = v12 + 1;
  (*(v19 + 32))(v139 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v12, v17, v18);
  for (i = *(v0 + 504) + 1; i != *(v0 + 496); i = *(v0 + 504) + 1)
  {
    *(v0 + 504) = i;
    *(v0 + 512) = v20;
    v33 = *(v0 + 472) + 24 * i;
    v34 = *(v33 + 32);
    *(v0 + 520) = v34;
    v35 = *(v33 + 40);
    v36 = *(v33 + 48);
    *(v0 + 528) = v36;
    if (v35)
    {
      v37 = *(v0 + 224);
      v38 = v34;
      v39 = v34;
      v40 = v36;
      sub_22634FFCC();
      v41 = v34;
      v42 = sub_22635003C();
      v43 = sub_22635073C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v41;
        *v45 = v34;
        v46 = v41;
        _os_log_impl(&dword_2262B6000, v42, v43, "Boxed value %@ is not supported.", v44, 0xCu);
        sub_2262D67D8(v45, &qword_27D793CC0, qword_226352A00);
        v47 = v45;
        v20 = v139;
        MEMORY[0x22AA7D570](v47, -1, -1);
        MEMORY[0x22AA7D570](v44, -1, -1);
      }

      else
      {
      }

      v32 = *(v0 + 488);
      (*(v0 + 440))(*(v0 + 224), *(v0 + 208));
    }

    else
    {
      v48 = v34;
      v49 = v34;
      v50 = v36;
      v51 = [v34 identifier];
      v52 = [v51 typeIdentifier];

      v53 = sub_22635046C();
      v55 = v54;

      *(v0 + 32) = v53;
      *(v0 + 40) = v55;
      MEMORY[0x22AA7C5B0](47, 0xE100000000000000);
      v56 = [v34 identifier];
      v57 = [v56 instanceIdentifier];

      v58 = sub_22635046C();
      v60 = v59;

      MEMORY[0x22AA7C5B0](v58, v60);

      v62 = *(v0 + 32);
      v61 = *(v0 + 40);
      *(v0 + 536) = v62;
      *(v0 + 544) = v61;
      if (v36)
      {
        v86 = v50;
        v87 = swift_task_alloc();
        *(v0 + 552) = v87;
        *v87 = v0;
        v87[1] = sub_2263183D8;
        v88 = *(v0 + 384);
        v89 = *(v0 + 392);
        v90 = *(v0 + 200);
        v91 = *(v0 + 88);

        return sub_22631AC58(v90, v34, v88, v89, v0 + 48);
      }

      v63 = *(v0 + 232);
      sub_22634FFCC();

      v64 = sub_22635003C();
      v65 = sub_22635073C();

      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 488);
      v143 = *(v0 + 440);
      v68 = *(v0 + 232);
      v69 = *(v0 + 208);
      if (v66)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v146 = v71;
        *v70 = 136315138;
        v72 = sub_226345004(v62, v61, &v146);

        *(v70 + 4) = v72;
        _os_log_impl(&dword_2262B6000, v64, v65, "Entity '%s' does not have a display representation.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x22AA7D570](v71, -1, -1);
        v73 = v70;
        v20 = v139;
        MEMORY[0x22AA7D570](v73, -1, -1);
      }

      else
      {
      }

      v143(v68, v69);
    }
  }

  *(v0 + 560) = v20;
  v22 = *(v0 + 472);

  v23 = *(v0 + 48);

  if (*(v20 + 16))
  {
LABEL_7:
    v24 = *(v0 + 480);

    v25 = swift_task_alloc();
    *(v0 + 568) = v25;
    *v25 = v0;
    v25[1] = sub_2263190D0;
    v26 = *(v0 + 384);
    v27 = *(v0 + 392);
    v28 = *(v0 + 192);
    v29 = *(v0 + 88);
    v30 = *(v0 + 72);

    return sub_22631B988(v28, v26, v27);
  }

  v74 = *(v0 + 480);
  if (v74 >> 62)
  {
    if (v74 < 0)
    {
      v117 = *(v0 + 480);
    }

    result = sub_226350A6C();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if ((v74 & 0xC000000000000001) != 0)
  {
    v75 = MEMORY[0x22AA7CA30](0, *(v0 + 480));
    v118 = *(v0 + 480);
  }

  else
  {
    if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v75 = *(*(v0 + 480) + 32);
  }

  v76 = [v75 ln_staticDeferredLocalizedString];
  if (v76)
  {
    v77 = v76;
    v79 = *(v0 + 112);
    v78 = *(v0 + 120);
    v80 = *(v0 + 104);
    sub_22634EF2C();
    sub_22634EF0C();
    (*(v79 + 8))(v78, v80);
    v81 = sub_22635045C();

    v82 = [v77 localizedStringForLocaleIdentifier_];

    v83 = sub_22635046C();
    v85 = v84;
  }

  else
  {

    v83 = 0;
    v85 = 0;
  }

  v144 = *(v0 + 448);
  v136 = *(v0 + 432);
  v133 = *(v0 + 424);
  v127 = *(v0 + 352);
  v130 = *(v0 + 360);
  v92 = *(v0 + 336);
  v140 = *(v0 + 344);
  v93 = *(v0 + 328);
  v94 = *(v0 + 288);
  v95 = *(v0 + 296);
  v96 = *(v0 + 280);
  v97 = *(v0 + 88);
  v124 = *(v0 + 96);
  v98 = *(v0 + 56);
  *v98 = v83;
  v98[1] = v85;
  v99 = *MEMORY[0x277D78AC8];
  v100 = sub_22634FB9C();
  (*(*(v100 - 8) + 104))(v98, v99, v100);
  v101 = *MEMORY[0x277D78A40];
  v102 = sub_22634FAEC();
  (*(*(v102 - 8) + 104))(v98, v101, v102);
  (*(v94 + 8))(v95, v96);
  v103 = sub_22635064C();
  (*(*(v103 - 8) + 56))(v124, 1, 1, v103);
  v133(v127, v130, v93);
  v104 = (*(v92 + 80) + 40) & ~*(v92 + 80);
  v105 = swift_allocObject();
  *(v105 + 2) = v97;
  *(v105 + 3) = v144;
  *(v105 + 4) = v97;
  (*(v92 + 32))(&v105[v104], v127, v93);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v124, &unk_226354D30, v105);

  (*(v92 + 8))(v130, v93);
  v106 = *(v0 + 376);
  v108 = *(v0 + 352);
  v107 = *(v0 + 360);
  v109 = *(v0 + 320);
  v110 = *(v0 + 296);
  v112 = *(v0 + 264);
  v111 = *(v0 + 272);
  v114 = *(v0 + 248);
  v113 = *(v0 + 256);
  v115 = *(v0 + 240);
  v119 = *(v0 + 232);
  v120 = *(v0 + 224);
  v121 = *(v0 + 200);
  v122 = *(v0 + 192);
  v123 = *(v0 + 184);
  v125 = *(v0 + 176);
  v128 = *(v0 + 168);
  v131 = *(v0 + 160);
  v134 = *(v0 + 152);
  v137 = *(v0 + 128);
  v141 = *(v0 + 120);
  v145 = *(v0 + 96);

  v116 = *(v0 + 8);

  return v116();
}

uint64_t sub_2263190D0()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2263191E0, v2, 0);
}

uint64_t sub_2263191E0()
{
  v27 = v0[70];
  v50 = v0[56];
  v44 = v0[53];
  v46 = v0[54];
  v36 = v0[44];
  v38 = v0[45];
  v48 = v0[43];
  v1 = v0[36];
  v28 = v0[35];
  v30 = v0[37];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[16];
  v32 = v0[12];
  v34 = v0[41];
  v40 = v0[42];
  v42 = v0[11];
  v26 = v0[7];
  v7 = sub_22634F3DC();
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v8(v5, 1, 1, v7);
  sub_2262D66FC(v2, v4, &qword_27D793088, &qword_226351F40);
  sub_22634F3EC();
  sub_22634F9EC();
  sub_2262D67D8(v2, &qword_27D793088, &qword_226351F40);
  v9 = *MEMORY[0x277D78A30];
  v10 = sub_22634FAEC();
  (*(*(v10 - 8) + 104))(v26, v9, v10);
  (*(v1 + 8))(v30, v28);
  v11 = sub_22635064C();
  (*(*(v11 - 8) + 56))(v32, 1, 1, v11);
  v44(v36, v38, v34);
  v12 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v42;
  *(v13 + 3) = v50;
  *(v13 + 4) = v42;
  (*(v40 + 32))(&v13[v12], v36, v34);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v32, &unk_226354D28, v13);

  (*(v40 + 8))(v38, v34);
  v14 = v0[47];
  v16 = v0[44];
  v15 = v0[45];
  v17 = v0[40];
  v18 = v0[37];
  v20 = v0[33];
  v19 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v23 = v0[30];
  v29 = v0[29];
  v31 = v0[28];
  v33 = v0[25];
  v35 = v0[24];
  v37 = v0[23];
  v39 = v0[22];
  v41 = v0[21];
  v43 = v0[20];
  v45 = v0[19];
  v47 = v0[16];
  v49 = v0[15];
  v51 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_2263195D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v7 = sub_22634F17C();
  v5[42] = v7;
  v8 = *(v7 - 8);
  v5[43] = v8;
  v5[44] = *(v8 + 64);
  v5[45] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A98, &qword_226354D50);
  v5[48] = v10;
  v11 = *(v10 - 8);
  v5[49] = v11;
  v12 = *(v11 + 64) + 15;
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226319758, a4, 0);
}

uint64_t sub_226319758()
{
  v1 = *(v0 + 312);
  *(v0 + 288) = MEMORY[0x277D84F90];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v53 = *(v0 + 352) + 7;
  v55 = *(v0 + 344);
  v57 = v1;

  v11 = 0;
  v56 = v2;
  v54 = v6;
  while (v5)
  {
LABEL_10:
    v14 = *(v0 + 376);
    v58 = *(v0 + 368);
    v15 = *(v0 + 360);
    v16 = *(v0 + 328);
    v17 = *(v0 + 336);
    v59 = *(v0 + 320);
    v18 = *(v57 + 48) + 40 * (__clz(__rbit64(v5)) | (v11 << 6));
    v19 = *(v18 + 16);
    *(v0 + 16) = *v18;
    *(v0 + 32) = v19;
    v62 = *(v18 + 32);
    v20 = *v18;
    *(v0 + 128) = *(v0 + 32);
    *(v0 + 144) = v20;
    v21 = sub_22635064C();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v14, 1, 1, v21);
    (*(v55 + 16))(v15, v16, v17);
    v23 = (*(v55 + 80) + 40) & ~*(v55 + 80);
    v24 = swift_allocObject();
    v24[2] = 0;
    v61 = v24 + 2;
    v24[3] = 0;
    v24[4] = v59;
    (*(v55 + 32))(v24 + v23, v15, v17);
    v60 = v24;
    v25 = v24 + ((v53 + v23) & 0xFFFFFFFFFFFFFFF8);
    v26 = *(v0 + 32);
    *v25 = *(v0 + 16);
    *(v25 + 1) = v26;
    *(v25 + 4) = v62;
    sub_2262D66FC(v14, v58, &qword_27D7939E0, &qword_2263548B0);
    v27 = (*(v22 + 48))(v58, 1, v21);
    v28 = *(v0 + 368);
    v29 = *(v0 + 320);
    if (v27 == 1)
    {
      sub_2263153E0(v0 + 144, v0 + 160);
      sub_2263153E0(v0 + 128, v0 + 176);
      v30 = v62;
      sub_2263153E0(v0 + 144, v0 + 192);
      sub_2263153E0(v0 + 128, v0 + 208);
      v31 = v30;

      sub_2262D67D8(v28, &qword_27D7939E0, &qword_2263548B0);
    }

    else
    {
      sub_2263153E0(v0 + 144, v0 + 224);
      sub_2263153E0(v0 + 128, v0 + 240);
      v32 = v62;
      sub_2263153E0(v0 + 144, v0 + 256);
      sub_2263153E0(v0 + 128, v0 + 272);
      v33 = v32;

      sub_22635063C();
      (*(v22 + 8))(v28, v21);
    }

    if (*v61)
    {
      v34 = v60[3];
      v35 = *v61;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v36 = sub_2263505BC();
      v38 = v37;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = **(v0 + 304);
    v40 = swift_allocObject();
    *(v40 + 16) = &unk_226354D60;
    *(v40 + 24) = v60;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A88, &qword_226354D08);
    v41 = v38 | v36;
    if (v38 | v36)
    {
      v41 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v36;
      *(v0 + 72) = v38;
    }

    v12 = *(v0 + 376);
    v5 &= v5 - 1;
    *(v0 + 80) = 1;
    *(v0 + 88) = v41;
    *(v0 + 96) = v39;
    swift_task_create();

    sub_22631543C(v0 + 144);
    sub_22631543C(v0 + 128);

    v7 = sub_2262D67D8(v12, &qword_27D7939E0, &qword_2263548B0);
    v2 = v56;
    v6 = v54;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v7, v8, v9, v10);
    }

    if (v13 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v13);
    ++v11;
    if (v5)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  v42 = *(v0 + 400);
  v44 = *(v0 + 304);
  v43 = *(v0 + 312);

  v45 = *v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A88, &qword_226354D08);
  sub_2263505FC();
  v46 = sub_22631D5E8(&qword_28137F1D8, type metadata accessor for VisualSearchActionExecutor);
  *(v0 + 408) = v46;
  v47 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  *(v0 + 424) = v47;
  v48 = *(v0 + 320);
  v49 = *(MEMORY[0x277D856B0] + 4);
  v50 = swift_task_alloc();
  *(v0 + 432) = v50;
  *v50 = v0;
  v50[1] = sub_226319D04;
  v51 = *(v0 + 400);
  v10 = *(v0 + 384);
  v7 = v0 + 104;
  v8 = v48;
  v9 = v46;

  return MEMORY[0x2822002E8](v7, v8, v9, v10);
}

uint64_t sub_226319D04()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226319E14, v2, 0);
}

uint64_t sub_226319E14(char *isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 104);
  v6 = *(v4 + 112);
  v7 = *(v4 + 120);
  if (!v5)
  {
    v14 = *(v4 + 424);
    if (!v7)
    {
LABEL_24:
      sub_22631CF04(v5);
LABEL_25:
      *(v4 + 424) = v14;
      v24 = *(v4 + 408);
      v25 = *(v4 + 320);
      v26 = *(MEMORY[0x277D856B0] + 4);
      v27 = swift_task_alloc();
      *(v4 + 432) = v27;
      *v27 = v4;
      v27[1] = sub_226319D04;
      v28 = *(v4 + 400);
      a4 = *(v4 + 384);
      isUniquelyReferenced_nonNull_native = (v4 + 104);
      a2 = v25;
      a3 = v24;

      return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, a2, a3, a4);
    }

LABEL_7:
    v15 = v7;
    MEMORY[0x22AA7C600]();
    if (*((*(v4 + 288) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 288) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((*(v4 + 288) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22635058C();
    }

    sub_2263505AC();
    sub_22631CF04(v5);

    *(v4 + 416) = *(v4 + 288);
    goto LABEL_25;
  }

  if (v5 != 1)
  {
    v16 = *(v6 + 16);
    v17 = *(*(v4 + 424) + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      __break(1u);
    }

    else
    {
      v19 = *(v4 + 112);
      sub_22631CF44(*(v4 + 104));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v4 + 424);
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v23 = v17 + v16;
        }

        else
        {
          v23 = v17;
        }

        isUniquelyReferenced_nonNull_native = sub_2262DD324(isUniquelyReferenced_nonNull_native, v23, 1, *(v4 + 424));
        v14 = isUniquelyReferenced_nonNull_native;
        if (*(v6 + 16))
        {
LABEL_14:
          if ((*(v14 + 3) >> 1) - *(v14 + 2) >= v16)
          {
            swift_arrayInitWithCopy();

            if (!v16)
            {
              goto LABEL_23;
            }

            v20 = *(v14 + 2);
            v21 = __OFADD__(v20, v16);
            v22 = v20 + v16;
            if (!v21)
            {
              *(v14 + 2) = v22;
              goto LABEL_23;
            }

LABEL_31:
            __break(1u);
            return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, a2, a3, a4);
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (!v16)
      {
LABEL_23:

        if (!v7)
        {
          goto LABEL_24;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v4 + 376);
  v10 = *(v4 + 360);
  v9 = *(v4 + 368);
  v11 = *(v4 + 296);
  v30 = *(v4 + 416);
  (*(*(v4 + 392) + 8))(*(v4 + 400), *(v4 + 384));
  *v11 = vextq_s8(v30, v30, 8uLL);

  v12 = *(v4 + 8);

  return v12();
}

uint64_t sub_22631A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a1;
  v6[34] = a6;
  v9 = sub_22634EF3C();
  v6[35] = v9;
  v10 = *(v9 - 8);
  v6[36] = v10;
  v11 = *(v10 + 64) + 15;
  v6[37] = swift_task_alloc();
  v12 = sub_22635004C();
  v6[38] = v12;
  v13 = *(v12 - 8);
  v6[39] = v13;
  v14 = *(v13 + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[43] = v15;
  *v15 = v6;
  v15[1] = sub_22631A298;

  return sub_22631CF84(a5, a6);
}

uint64_t sub_22631A298(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = sub_22631A464;
  }

  else
  {
    *(v6 + 360) = a2;
    *(v6 + 368) = a1;
    v9 = sub_22631A3CC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22631A3CC()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[33];
  *v6 = v0[46];
  v6[1] = v1;
  v6[2] = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_22631A464()
{
  v104 = v0;
  v1 = *(v0 + 352);
  *(v0 + 232) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793998, &qword_226354D80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 336);
    v5 = *(v0 + 272);
    sub_22634FFCC();
    *(v0 + 104) = *v5;
    *(v0 + 120) = *(v5 + 16);
    v6 = *(v5 + 32);
    v7 = v3;
    sub_2263153E0(v0 + 104, v0 + 200);
    sub_2263153E0(v0 + 120, v0 + 216);
    v8 = v6;
    v9 = sub_22635003C();
    v10 = sub_22635073C();

    sub_22631543C(v0 + 104);
    sub_22631543C(v0 + 120);

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 352);
    v13 = *(v0 + 336);
    v14 = *(v0 + 304);
    v15 = *(v0 + 312);
    if (v11)
    {
      v97 = *(v0 + 304);
      loga = *(v0 + 336);
      v16 = *(v0 + 272);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v103 = v18;
      *v17 = 136315394;
      swift_getErrorValue();
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v21 = *(v0 + 32);
      v22 = sub_226350C9C();
      v95 = v12;
      v24 = sub_226345004(v22, v23, &v103);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2080;
      v25 = sub_226320200();
      v27 = sub_226345004(v25, v26, &v103);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_2262B6000, v9, v10, "Error %s occurred while performing standard representation intent value query on %s.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v18, -1, -1);
      MEMORY[0x22AA7D570](v17, -1, -1);

      (*(v15 + 8))(loga, v97);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    v32 = 0;
  }

  else
  {
    v28 = *(v0 + 352);

    *(v0 + 240) = v28;
    v29 = v28;
    sub_22631D59C();
    if (swift_dynamicCast())
    {
      v30 = *(v0 + 328);
      v31 = *(v0 + 272);
      v32 = *(v0 + 248);
      v33 = v32;
      sub_22634FFCC();
      *(v0 + 72) = *v31;
      *(v0 + 88) = *(v31 + 16);
      v34 = *(v31 + 32);
      v35 = v33;
      sub_2263153E0(v0 + 72, v0 + 168);
      sub_2263153E0(v0 + 88, v0 + 184);
      v36 = v34;
      v37 = sub_22635003C();
      v38 = sub_22635073C();

      sub_22631543C(v0 + 72);
      sub_22631543C(v0 + 88);

      if (os_log_type_enabled(v37, v38))
      {
        v98 = v38;
        log = v37;
        v39 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v103 = v96;
        *v39 = 136315394;
        v40 = [v35 ln_staticDeferredLocalizedString];
        if (v40)
        {
          v41 = v40;
          v93 = v39;
          v43 = *(v0 + 288);
          v42 = *(v0 + 296);
          v44 = *(v0 + 280);
          sub_22634EF2C();
          sub_22634EF0C();
          (*(v43 + 8))(v42, v44);
          v39 = v93;
          v45 = sub_22635045C();

          v46 = [v41 localizedStringForLocaleIdentifier_];

          v47 = sub_22635046C();
          v49 = v48;
        }

        else
        {
          v46 = [v35 localizedDescription];

          v47 = sub_22635046C();
          v49 = v77;
        }

        v78 = *(v0 + 352);
        v79 = *(v0 + 312);
        v92 = *(v0 + 304);
        v94 = *(v0 + 328);
        v80 = *(v0 + 272);

        v81 = sub_226345004(v47, v49, &v103);

        *(v39 + 4) = v81;
        *(v39 + 12) = 2080;
        v82 = sub_226320200();
        v84 = sub_226345004(v82, v83, &v103);

        *(v39 + 14) = v84;
        _os_log_impl(&dword_2262B6000, log, v98, "Error %s occurred while performing standard representation intent value query on %s.", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v96, -1, -1);
        MEMORY[0x22AA7D570](v39, -1, -1);

        (*(v79 + 8))(v94, v92);
      }

      else
      {
        v72 = v37;
        v73 = *(v0 + 352);
        v74 = *(v0 + 328);
        v76 = *(v0 + 304);
        v75 = *(v0 + 312);

        (*(v75 + 8))(v74, v76);
      }
    }

    else
    {
      v50 = *(v0 + 352);
      v51 = *(v0 + 320);
      v52 = *(v0 + 272);

      sub_22634FFCC();
      *(v0 + 40) = *v52;
      *(v0 + 56) = *(v52 + 16);
      v53 = *(v52 + 32);
      v54 = v50;
      sub_2263153E0(v0 + 40, v0 + 136);
      sub_2263153E0(v0 + 56, v0 + 152);
      v55 = v53;
      v56 = sub_22635003C();
      v57 = sub_22635073C();
      sub_22631543C(v0 + 40);
      sub_22631543C(v0 + 56);

      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 352);
      v61 = *(v0 + 312);
      v60 = *(v0 + 320);
      v62 = *(v0 + 304);
      if (v58)
      {
        logb = *(v0 + 320);
        v63 = *(v0 + 272);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v103 = v66;
        *v64 = 136315394;
        v67 = sub_226320200();
        v99 = v62;
        v69 = sub_226345004(v67, v68, &v103);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2112;
        v70 = v59;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 14) = v71;
        *v65 = v71;
        _os_log_impl(&dword_2262B6000, v56, v57, "Unexpected error type while performing standard representation intent value query on %s: %@", v64, 0x16u);
        sub_2262D67D8(v65, &qword_27D793CC0, qword_226352A00);
        MEMORY[0x22AA7D570](v65, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x22AA7D570](v66, -1, -1);
        MEMORY[0x22AA7D570](v64, -1, -1);

        (*(v61 + 8))(logb, v99);
      }

      else
      {

        (*(v61 + 8))(v60, v62);
      }

      v32 = 0;
    }
  }

  v86 = *(v0 + 328);
  v85 = *(v0 + 336);
  v87 = *(v0 + 320);
  v88 = *(v0 + 296);
  v89 = *(v0 + 264);
  *v89 = 0;
  v89[1] = 0;
  v89[2] = v32;

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_22631AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_22634F36C() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = sub_22634F37C();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = sub_22634F3BC();
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = *(*(sub_22634EEFC() - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = sub_22635004C();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v19 = type metadata accessor for VisualAction(0);
  v6[20] = v19;
  v20 = *(v19 - 8);
  v6[21] = v20;
  v21 = *(v20 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631AEDC, v5, 0);
}

uint64_t sub_22631AEDC()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 24) identifier];
  v3 = [v2 typeIdentifier];

  v4 = sub_22635046C();
  v6 = v5;

  v7 = *v1;
  if (*(*v1 + 16))
  {
    v8 = sub_22633941C(v4, v6);
    v10 = v9;

    if (v10)
    {
      v12 = *(v0 + 184);
      v11 = *(v0 + 192);
      sub_2262FDAD0(*(v7 + 56) + *(*(v0 + 168) + 72) * v8, v12, type metadata accessor for VisualAction);
      sub_22631CC58(v12, v11, type metadata accessor for VisualAction);
      v13 = *(v0 + 192);
      v14 = *(v0 + 104);
      v41 = *(v0 + 112);
      v42 = *(v0 + 96);
      v43 = *(v0 + 80);
      v44 = *(v0 + 88);
      v45 = *(v0 + 72);
      v46 = *(v0 + 64);
      v15 = *(v0 + 24);
      v47 = *(v0 + 120);
      v48 = *(v0 + 16);
      sub_22634EEEC();
      sub_2262DBE60();
      v16 = v13[1];
      v40 = *v13;

      v17 = [v15 identifier];
      v18 = [v17 typeIdentifier];

      sub_22635046C();
      v19 = [v15 identifier];
      v20 = [v19 instanceIdentifier];

      sub_22635046C();
      sub_22634FBBC();
      (*(v14 + 104))(v41, *MEMORY[0x277D78670], v42);
      (*(v43 + 104))(v44, *MEMORY[0x277D78660], v45);
      sub_22634F35C();
      sub_22634F3AC();
      sub_22631CCC0(v13, type metadata accessor for VisualAction);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      v23 = *(v0 + 176);
      v25 = *(v0 + 144);
      v24 = *(v0 + 152);
      v27 = *(v0 + 112);
      v26 = *(v0 + 120);
      v28 = *(v0 + 88);
      v49 = *(v0 + 64);
      v29 = *(v0 + 16);
      v30 = sub_22634F3DC();
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);

      v31 = *(v0 + 8);

      return v31();
    }
  }

  else
  {
  }

  v33 = *(v0 + 24);
  v34 = *(*(v0 + 56) + 112);
  *(v0 + 200) = v34;
  v35 = [v33 identifier];
  v36 = [v35 typeIdentifier];

  v37 = sub_22635046C();
  v39 = v38;

  *(v0 + 208) = v37;
  *(v0 + 216) = v39;

  return MEMORY[0x2822009F8](sub_22631B310, v34, 0);
}

uint64_t sub_22631B310()
{
  v1 = *(v0 + 200);
  sub_2262F929C(*(v0 + 32), *(v0 + 40), *(v0 + 208), *(v0 + 216), 0, 0, *(v0 + 176));
  *(v0 + 224) = 0;

  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22631B3BC, v2, 0);
}

uint64_t sub_22631B3BC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[6];
  v6 = v0[3];
  sub_22631CC58(v0[22], v1, type metadata accessor for VisualAction);
  v7 = [v6 identifier];
  v8 = [v7 typeIdentifier];

  v9 = sub_22635046C();
  v11 = v10;

  sub_2262FDAD0(v1, v3, type metadata accessor for VisualAction);
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_2262DFD40(v3, v9, v11);
  v12 = v0[24];
  v13 = v0[13];
  v34 = v0[14];
  v35 = v0[12];
  v14 = v0[10];
  v36 = v0[11];
  v37 = v0[9];
  v38 = v0[8];
  v15 = v0[3];
  v39 = v0[15];
  v40 = v0[2];
  sub_22634EEEC();
  sub_2262DBE60();
  v16 = v12[1];
  v33 = *v12;

  v17 = [v15 identifier];
  v18 = [v17 typeIdentifier];

  sub_22635046C();
  v19 = [v15 identifier];
  v20 = [v19 instanceIdentifier];

  sub_22635046C();
  sub_22634FBBC();
  (*(v13 + 104))(v34, *MEMORY[0x277D78670], v35);
  (*(v14 + 104))(v36, *MEMORY[0x277D78660], v37);
  sub_22634F35C();
  sub_22634F3AC();
  sub_22631CCC0(v12, type metadata accessor for VisualAction);
  v21 = v0[23];
  v22 = v0[24];
  v23 = v0[22];
  v25 = v0[18];
  v24 = v0[19];
  v27 = v0[14];
  v26 = v0[15];
  v28 = v0[11];
  v41 = v0[8];
  v29 = v0[2];
  v30 = sub_22634F3DC();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);

  v31 = v0[1];

  return v31();
}

uint64_t sub_22631B750()
{
  v1 = v0[28];
  v2 = v0[18];
  sub_22634FFCC();
  v3 = v1;
  v4 = sub_22635003C();
  v5 = sub_22635073C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2262B6000, v4, v5, "Error fetching open action: %@", v8, 0xCu);
    sub_2262D67D8(v9, &qword_27D793CC0, qword_226352A00);
    MEMORY[0x22AA7D570](v9, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[18], v0[16]);
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[22];
  v16 = v0[18];
  v15 = v0[19];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[11];
  v24 = v0[8];
  v20 = v0[2];
  v21 = sub_22634F3DC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_22631B988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22635004C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = *(*(sub_22634F36C() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = sub_22634F37C();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = sub_22635029C();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v15 = sub_2263502BC();
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();
  v18 = sub_22634F3BC();
  v4[21] = v18;
  v19 = *(v18 - 8);
  v4[22] = v19;
  v20 = *(v19 + 64) + 15;
  v4[23] = swift_task_alloc();
  v21 = *(*(sub_22634EEFC() - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v22 = *(*(type metadata accessor for VisualAction.Kind.SystemTool(0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v23 = type metadata accessor for VisualAction.Kind(0);
  v4[26] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v25 = type metadata accessor for VisualAction(0);
  v4[28] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631BCC4, v3, 0);
}

uint64_t sub_22631BCC4()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 248) = v1;
  return MEMORY[0x2822009F8](sub_22631BCE8, v1, 0);
}

uint64_t sub_22631BCE8()
{
  v1 = *(v0 + 248);
  sub_2262F7F04(*(v0 + 24), *(v0 + 32), *(v0 + 232));
  *(v0 + 256) = 0;
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_22631BD7C, v2, 0);
}

uint64_t sub_22631BD7C()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  sub_22631CC58(v0[29], v1, type metadata accessor for VisualAction);
  sub_2262FDAD0(v1 + *(v3 + 20), v2, type metadata accessor for VisualAction.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = v0[9];
    sub_22634FFCC();
    v6 = sub_22635003C();
    v7 = sub_22635073C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2262B6000, v6, v7, "Programmer error: fetched show visual search results in app action is not a system tool", v8, 2u);
      MEMORY[0x22AA7D570](v8, -1, -1);
    }

    v9 = v0[30];
    v10 = v0[27];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[2];

    (*(v13 + 8))(v11, v12);
    sub_22631CCC0(v9, type metadata accessor for VisualAction);
    v15 = sub_22634F3DC();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_22631CCC0(v10, type metadata accessor for VisualAction.Kind);
  }

  else
  {
    v16 = v0[25];
    v43 = v0[23];
    v44 = v0[22];
    v17 = v0[20];
    v18 = v0[19];
    v40 = v0[18];
    v41 = v0[30];
    v19 = v0[16];
    v39 = v0[17];
    v20 = v0[14];
    v21 = v0[15];
    v47 = v0[13];
    v45 = v0[21];
    v46 = v0[12];
    v48 = v0[11];
    v50 = v0[10];
    v22 = v0[4];
    v42 = v0[3];
    v52 = v0[2];
    sub_22631CC58(v0[27], v16, type metadata accessor for VisualAction.Kind.SystemTool);
    sub_22634EEEC();
    sub_2262DBE60();

    sub_2263500BC();
    sub_2263502AC();
    (*(v18 + 8))(v17, v40);
    (*(v21 + 104))(v19, *MEMORY[0x277D730E8], v20);
    sub_22631D5E8(&qword_27D7930E8, MEMORY[0x277D73100]);
    v23 = sub_22635044C();
    v24 = *(v21 + 8);
    v24(v19, v20);
    v24(v39, v20);
    *v43 = v42;
    *(v43 + 8) = v22;
    *(v43 + 16) = v23 & 1;
    v25 = *MEMORY[0x277D78678];
    (*(v44 + 104))();
    sub_2263500CC();
    (*(v46 + 104))(v47, *MEMORY[0x277D78660], v48);
    sub_22634F35C();
    sub_22634F3AC();
    sub_22631CCC0(v16, type metadata accessor for VisualAction.Kind.SystemTool);
    sub_22631CCC0(v41, type metadata accessor for VisualAction);
    v26 = sub_22634F3DC();
    (*(*(v26 - 8) + 56))(v52, 0, 1, v26);
  }

  v28 = v0[29];
  v27 = v0[30];
  v29 = v0[27];
  v31 = v0[24];
  v30 = v0[25];
  v32 = v0[23];
  v33 = v0[20];
  v35 = v0[16];
  v34 = v0[17];
  v36 = v0[13];
  v49 = v0[10];
  v51 = v0[9];
  v53 = v0[8];

  v37 = v0[1];

  return v37();
}

uint64_t sub_22631C288()
{
  v1 = v0[32];
  v2 = v0[8];
  sub_22634FFCC();
  v3 = v1;
  v4 = sub_22635003C();
  v5 = sub_22635073C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2262B6000, v4, v5, "Error fetching show visual search results in app action: %@", v8, 0xCu);
    sub_2262D67D8(v9, &qword_27D793CC0, qword_226352A00);
    MEMORY[0x22AA7D570](v9, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v13 = sub_22634F3DC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[27];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];
  v20 = v0[20];
  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[13];
  v26 = v0[10];
  v27 = v0[9];
  v28 = v0[8];

  v24 = v0[1];

  return v24();
}

BOOL sub_22631C4EC(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(a1 + *(v6 + 20), v5, type metadata accessor for VisualAction.Kind);
  v7 = swift_getEnumCaseMultiPayload() == 4;
  sub_22631CCC0(v5, type metadata accessor for VisualAction.Kind);
  return v7;
}

uint64_t sub_22631C5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_22631680C(a1, a2, a3, a4);
}

uint64_t sub_22631C684(uint64_t a1)
{
  result = sub_22631D5E8(&qword_28137F1D8, type metadata accessor for VisualSearchActionExecutor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22631C6DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2262FF0E0;

  return sub_2263195D8(a1, a2, v6, v7, v8);
}

uint64_t sub_22631C7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22631C7C4, a4, 0);
}

uint64_t sub_22631C7C4()
{
  v1 = *(*(v0 + 24) + 128);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2262FD944, v1, 0);
}

void *sub_22631C7E8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22631C808@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22631C838(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_22631C92C;

  return v6(v2 + 16);
}

uint64_t sub_22631C92C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v5 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_22631CA68(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262FF0E0;

  return sub_22631C7A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22631CB60(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_22631C7A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22631CC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22631CCC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22631CD20(uint64_t a1)
{
  v4 = *(sub_22634F17C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2262FF0E0;

  return sub_22631A10C(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_22631CE4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2262D641C;

  return sub_22631C838(a1, v5);
}

void *sub_22631CF04(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_22631CF44(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_22631CF84(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939A0, &unk_2263542A0);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_22635004C();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631D0AC, 0, 0);
}

uint64_t sub_22631D0AC()
{
  v25 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  sub_22634FFDC();
  *(v0 + 16) = *v2;
  *(v0 + 32) = *(v2 + 16);
  v3 = *(v2 + 32);
  sub_2263153E0(v0 + 16, v0 + 48);
  sub_2263153E0(v0 + 32, v0 + 64);
  v4 = v3;
  v5 = sub_22635003C();
  v6 = sub_22635071C();
  sub_22631543C(v0 + 16);
  sub_22631543C(v0 + 32);

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 120);
  if (v7)
  {
    v11 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_226320200();
    v16 = sub_226345004(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2262B6000, v5, v6, "Performing intent value query with standard representation on queryable target %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x22AA7D570](v13, -1, -1);
    MEMORY[0x22AA7D570](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  sub_22634F17C();
  sub_22631D5E8(&qword_27D793AA8, MEMORY[0x277CE3120]);
  sub_22634ECDC();
  swift_getOpaqueTypeConformance2();
  v20 = sub_22634ECEC();
  *(v0 + 144) = v20;
  v21 = swift_task_alloc();
  *(v0 + 152) = v21;
  *v21 = v0;
  v21[1] = sub_22631D32C;
  v22 = *(v0 + 88);

  return sub_22631339C(v20, v22);
}

uint64_t sub_22631D32C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 152);
  v8 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v9 = sub_22631D500;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v9 = sub_22631D460;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22631D460()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);

  return v5(v6, v7);
}

uint64_t sub_22631D500()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);
  v6 = *(v0 + 160);

  return v5();
}

unint64_t sub_22631D59C()
{
  result = qword_27D793AA0;
  if (!qword_27D793AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D793AA0);
  }

  return result;
}

uint64_t sub_22631D5E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22631D630(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_22631D654, v2, 0);
}

uint64_t sub_22631D654()
{
  v1 = v0[8];
  v2 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);
  if (v2)
  {
    v0[5] = v2;
    sub_22631F670(&qword_28137F0D8, type metadata accessor for VisualSearchActionProvider);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *(v3 + 16) = v0 + 5;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22631D844;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v6 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (*(v7 + 16) && (v8 = sub_22633941C(v0[6], v0[7]), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v11 = MEMORY[0x277D84FA0];
    }

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_22631D844()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22631D970, v3, 0);
}

uint64_t sub_22631D970()
{
  v1 = v0[5];

  v2 = v0[8];
  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16) && (v5 = sub_22633941C(v0[6], v0[7]), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = MEMORY[0x277D84FA0];
  }

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22631DA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793AB0, &qword_226354EB8);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793AB8, &qword_226354EC0);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793AC0, qword_226354EC8);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631DBD0, 0, 0);
}

uint64_t sub_22631DBD0()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = *(v0[6] + 128);
  *v5 = 1;
  (*(v7 + 104))(v5, *MEMORY[0x277D85768], v6);
  sub_22634FB5C();
  (*(v7 + 8))(v5, v6);
  sub_22635069C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_22631DD40;
  v12 = v0[16];
  v13 = v0[14];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v13);
}

uint64_t sub_22631DD40()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22631DE3C, 0, 0);
}

uint64_t sub_22631DE3C()
{
  v1 = v0[5];
  v0[18] = v1;
  if (v1)
  {
    v2 = v0[7];
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_22631DF48, Strong, 0);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22631DF48()
{
  v1 = *(v0 + 152);
  sub_22631E06C(*(v0 + 144));

  return MEMORY[0x2822009F8](sub_22631DFBC, 0, 0);
}

uint64_t sub_22631DFBC()
{
  v1 = v0[19];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_22631DD40;
  v4 = v0[16];
  v5 = v0[14];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v5);
}

uint64_t sub_22631E06C(uint64_t a1)
{
  v2 = v1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90);
  v72 = *(v73 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - v5;
  v81 = sub_22635004C();
  v6 = *(v81 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v81);
  v70 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v70 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v70 - v13;
  sub_22634FFCC();
  v15 = sub_22635003C();
  v16 = sub_22635071C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v12;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2262B6000, v15, v16, "Reloading queryable targets...", v18, 2u);
    v19 = v18;
    v12 = v17;
    MEMORY[0x22AA7D570](v19, -1, -1);
  }

  v20 = *(v6 + 8);
  v79 = v6 + 8;
  v80 = v20;
  v20(v14, v81);
  v21 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v83 = v21;
  *(v2 + v21) = MEMORY[0x277D84F98];

  v74 = *(a1 + 16);
  if (v74)
  {
    v24 = (a1 + 64);
    *&v23 = 136315138;
    v76 = v23;
    v25 = v74;
    v77 = v2;
    v75 = v12;
    do
    {
      v82 = v25;
      v32 = *(v24 - 3);
      v33 = *(v24 - 2);
      v34 = *(v24 - 1);
      v35 = *v24;
      v84 = *(v24 - 4);
      v88[0] = v84;
      v88[1] = v32;
      v88[2] = v33;
      v88[3] = v34;
      v88[4] = v35;

      v36 = v35;
      sub_22634FFCC();

      v37 = v36;
      v38 = v12;
      v39 = sub_22635003C();
      v40 = sub_22635072C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v86[0] = v42;
        *v41 = v76;

        v43 = v37;
        v78 = v37;
        v44 = v43;
        v45 = sub_226320200();
        v47 = v46;

        v48 = sub_226345004(v45, v47, v86);
        v2 = v77;

        *(v41 + 4) = v48;
        _os_log_impl(&dword_2262B6000, v39, v40, "Add queryable target: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x22AA7D570](v42, -1, -1);
        MEMORY[0x22AA7D570](v41, -1, -1);

        v12 = v75;
        v80(v75, v81);
        v37 = v78;
      }

      else
      {

        v80(v38, v81);
        v12 = v38;
      }

      v49 = v83;
      swift_beginAccess();
      v50 = *(v2 + v49);
      v51 = *(v50 + 16);

      if (v51 && (v52 = sub_22633941C(v84, v32), (v53 & 1) != 0))
      {
        v54 = *(*(v50 + 56) + 8 * v52);
        swift_endAccess();
        v87 = v54;
      }

      else
      {
        swift_endAccess();
        v87 = MEMORY[0x277D84FA0];
      }

      v26 = v82;

      v27 = v37;
      sub_226309F24(v86, v88);

      v28 = v87;
      v29 = v83;
      swift_beginAccess();
      v30 = *(v2 + v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(v2 + v29);
      *(v2 + v29) = 0x8000000000000000;
      sub_2262E42C0(v28, v84, v32, isUniquelyReferenced_nonNull_native);

      *(v2 + v29) = v85;
      swift_endAccess();

      v24 += 5;
      v25 = v26 - 1;
    }

    while (v25);
  }

  v55 = v70;
  sub_22634FFCC();

  v56 = sub_22635003C();
  v57 = sub_22635071C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134218240;
    *(v58 + 4) = v74;
    *(v58 + 12) = 2048;
    *(v58 + 14) = *(*(v2 + v83) + 16);

    _os_log_impl(&dword_2262B6000, v56, v57, "Reloaded %ld queryable targets from %ld sources.", v58, 0x16u);
    MEMORY[0x22AA7D570](v58, -1, -1);
  }

  else
  {
  }

  result = (v80)(v55, v81);
  v60 = *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);
  v61 = v73;
  v62 = v72;
  v63 = v71;
  if (v60)
  {
    *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state) = 0;
    v64 = *(v60 + 16);
    if (v64)
    {
      v67 = *(v62 + 16);
      v66 = v62 + 16;
      v65 = v67;
      v68 = v60 + ((*(v66 + 64) + 32) & ~*(v66 + 64));
      v69 = *(v66 + 56);
      do
      {
        v65(v63, v68, v61);
        sub_2263505EC();
        (*(v66 - 8))(v63, v61);
        v68 += v69;
        --v64;
      }

      while (v64);
    }
  }

  return result;
}

uint64_t sub_22631E794()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_featureConfiguration;
  v3 = sub_22634FCDC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);

  v5 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for VisualSearchActionProvider()
{
  result = qword_28137F0C0;
  if (!qword_28137F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22631E888()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22631E954(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22631E9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22631E9F8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22631EA10(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_22631EA40(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v4 = type metadata accessor for VisualAction(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_22634F55C();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631EB74, v2, 0);
}

uint64_t sub_22631EB74()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[6];
  sub_22634F59C();
  sub_22634F53C();
  sub_22631F670(&qword_28137E138, MEMORY[0x277D78770]);
  LOBYTE(v5) = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[7];
    v8 = *(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);
    if (v8)
    {
      v0[5] = v8;
      sub_22631F670(&qword_28137F0D8, type metadata accessor for VisualSearchActionProvider);
      v9 = swift_task_alloc();
      v0[16] = v9;
      *(v9 + 16) = v0 + 5;
      *(v9 + 24) = v7;
      v10 = *(MEMORY[0x277D859E0] + 4);

      v11 = swift_task_alloc();
      v0[17] = v11;
      *v11 = v0;
      v11[1] = sub_22631EFCC;
    }

    else
    {
      v40 = v0[9];
      v41 = v0[11];
      v39 = v0[8];
      v13 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
      swift_beginAccess();
      v14 = *(v7 + v13);
      v17 = *(v14 + 64);
      v16 = v14 + 64;
      v15 = v17;
      v18 = -1;
      v19 = -1 << *(*(v7 + v13) + 32);
      if (-v19 < 64)
      {
        v18 = ~(-1 << -v19);
      }

      v20 = v18 & v15;
      v21 = (63 - v19) >> 6;
      v42 = *(v7 + v13);
      swift_bridgeObjectRetain_n();
      v22 = 0;
      v12 = MEMORY[0x277D84F90];
      while (v20)
      {
        v44 = v12;
LABEL_15:
        v24 = v0[11];
        v43 = v0[10];
        v25 = (*(v42 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
        v27 = *v25;
        v26 = v25[1];
        v28 = v39[5];
        type metadata accessor for VisualAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        *v24 = v27;
        *(v41 + 8) = v26;
        v29 = MEMORY[0x277D84F98];
        *(v24 + v39[6]) = MEMORY[0x277D84F98];
        *(v24 + v39[7]) = v29;
        *(v24 + v39[8]) = v29;
        sub_2262FEB84(v24, v43);

        v12 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2262DC944(0, v44[2] + 1, 1, v44);
        }

        v31 = v12[2];
        v30 = v12[3];
        if (v31 >= v30 >> 1)
        {
          v12 = sub_2262DC944(v30 > 1, v31 + 1, 1, v12);
        }

        v20 &= v20 - 1;
        v32 = v0[10];
        v12[2] = v31 + 1;
        sub_2262FEB84(v32, v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31);
      }

      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v21)
        {

          goto LABEL_22;
        }

        v20 = *(v16 + 8 * v23);
        ++v22;
        if (v20)
        {
          v44 = v12;
          v22 = v23;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_22:
    v34 = v0[14];
    v33 = v0[15];
    v36 = v0[10];
    v35 = v0[11];

    v37 = v0[1];

    return v37(v12);
  }
}

uint64_t sub_22631EFCC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22631F0F8, v3, 0);
}

uint64_t sub_22631F0F8()
{
  v1 = v0[5];

  v34 = v0[9];
  v35 = v0[11];
  v33 = v0[8];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = -1;
  v9 = -1 << *(*(v2 + v3) + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  v36 = *(v2 + v3);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v32 = v0;
  if (v10)
  {
    while (1)
    {
      v37 = v14;
LABEL_9:
      v18 = v0 + 10;
      v17 = v0[10];
      v16 = v18[1];
      v19 = (*(v36 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      v21 = *v19;
      v20 = v19[1];
      v22 = v33[5];
      type metadata accessor for VisualAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v16 = v21;
      *(v35 + 8) = v20;
      v23 = MEMORY[0x277D84F98];
      *(v16 + v33[6]) = MEMORY[0x277D84F98];
      *(v16 + v33[7]) = v23;
      *(v16 + v33[8]) = v23;
      sub_2262FEB84(v16, v17);

      v14 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_2262DC944(0, v37[2] + 1, 1, v37);
      }

      v25 = v14[2];
      v24 = v14[3];
      v0 = v32;
      if (v25 >= v24 >> 1)
      {
        v14 = sub_2262DC944(v24 > 1, v25 + 1, 1, v14);
      }

      v10 &= v10 - 1;
      v26 = v32[10];
      v14[2] = v25 + 1;
      result = sub_2262FEB84(v26, v14 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v15);
    ++v13;
    if (v10)
    {
      v37 = v14;
      v13 = v15;
      goto LABEL_9;
    }
  }

  v28 = v0[14];
  v27 = v0[15];
  v30 = v0[10];
  v29 = v0[11];

  v31 = v0[1];

  return v31(v14);
}

uint64_t sub_22631F38C(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v10, a1, v6);
  v11 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_2262DD444(0, v11[2] + 1, 1, v11);
    *a2 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_2262DD444(v13 > 1, v14 + 1, 1, v11);
    *a2 = v11;
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  v15 = *a2;
  v16 = *(a3 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);
  *(a3 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state) = v15;
}

uint64_t sub_22631F564(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226316434;

  return sub_22631EA40(v4, a2);
}

uint64_t sub_22631F5F8(uint64_t a1)
{
  result = sub_22631F670(&qword_28137F0D8, type metadata accessor for VisualSearchActionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22631F670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22631F6D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap) = MEMORY[0x277D84F98];
  *(v2 + 112) = a1;
  v9 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_featureConfiguration;
  v10 = sub_22634FCDC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v2 + v9, a2, v10);
  v12 = sub_22635064C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = v13;
  swift_retain_n();
  sub_2262FB4D4(0, 0, v8, &unk_226354EB0, v14);

  (*(v11 + 8))(a2, v10);
  return v2;
}

uint64_t sub_22631F8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2262D641C;

  return sub_22631DA34(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for AppWorkspaceObserver()
{
  result = qword_28137E6D0;
  if (!qword_28137E6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22631FA88()
{
  sub_22631FB18();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22631FB18()
{
  if (!qword_28137DFF0)
  {
    sub_22634FD8C();
    v0 = sub_22635068C();
    if (!v1)
    {
      atomic_store(v0, &qword_28137DFF0);
    }
  }
}

uint64_t sub_22631FB94(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_22634FD8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B28, &qword_226354F08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v20 - v16;
  if (a3)
  {
    v18 = sub_22635056C();
    v19 = a1;
    *v11 = sub_22631FF28(v18);
    (*(v8 + 104))(v11, *a4, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
    sub_22635067C();

    return (*(v13 + 8))(v17, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_22631FF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    sub_2262FB40C(v2, v14);
    sub_2262FB40C(v14, v13);
    sub_226320098();
    if (swift_dynamicCast() && (v4 = [v12 bundleIdentifier], v12, v4))
    {
      v5 = sub_22635046C();
      v7 = v6;

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2262DCFC4(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_2262DCFC4((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_226320098()
{
  result = qword_28137DFB8;
  if (!qword_28137DFB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28137DFB8);
  }

  return result;
}

uint64_t sub_2263200F4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  sub_2262DA244();
  return sub_22635082C() & 1;
}

unint64_t sub_2263201AC()
{
  result = qword_28137E708[0];
  if (!qword_28137E708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28137E708);
  }

  return result;
}

unint64_t sub_226320200()
{
  v1 = v0;
  sub_22635096C();

  MEMORY[0x22AA7C5B0](*v1, v1[1]);
  MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
  MEMORY[0x22AA7C5B0](v1[2], v1[3]);
  MEMORY[0x22AA7C5B0](540945696, 0xE400000000000000);
  v2 = [*(v0 + 32) resultValueType];
  v3 = [v2 description];

  v4 = sub_22635046C();
  v6 = v5;

  MEMORY[0x22AA7C5B0](v4, v6);

  MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_226320320()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_featureConfiguration;
  v3 = sub_22634FCDC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_state);

  v5 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for LinkActionProvider()
{
  result = qword_28137F608;
  if (!qword_28137F608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226320414()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2263204E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v4 = type metadata accessor for VisualAction(0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22634F55C();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22632060C, v2, 0);
}

uint64_t sub_22632060C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[3];
  sub_22634F59C();
  sub_22634F54C();
  sub_226321124(&qword_28137E138, MEMORY[0x277D78770]);
  LOBYTE(v5) = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[4];
    v8 = *(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_state);
    if (v8)
    {
      v0[2] = v8;
      sub_226321124(&qword_28137F618, type metadata accessor for LinkActionProvider);
      v9 = swift_task_alloc();
      v0[12] = v9;
      *(v9 + 16) = v0 + 2;
      *(v9 + 24) = v7;
      v10 = *(MEMORY[0x277D859E0] + 4);

      v11 = swift_task_alloc();
      v0[13] = v11;
      *v11 = v0;
      v11[1] = sub_226320A88;
    }

    else
    {
      v43 = v0[7];
      v13 = *(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions);
      v14 = v13 + 56;
      v40 = v0[5];
      v41 = v0[6];
      v15 = -1;
      v16 = -1 << *(v13 + 32);
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v17 = v15 & *(v13 + 56);
      v18 = (63 - v16) >> 6;
      v44 = v13;
      swift_bridgeObjectRetain_n();
      v19 = 0;
      v12 = MEMORY[0x277D84F90];
      v42 = v14;
      for (i = v18; v17; v18 = i)
      {
        v46 = v12;
LABEL_15:
        v21 = v0[7];
        v22 = (*(v44 + 48) + 56 * (__clz(__rbit64(v17)) | (v19 << 6)));
        v23 = v22[1];
        v25 = v22[2];
        v24 = v22[3];
        v26 = v22[4];
        v27 = v22[5];
        v45 = v22[6];
        v28 = (v21 + v40[5]);
        *v28 = *v22;
        v28[1] = v23;
        v28[2] = v25;
        v28[3] = v24;
        v28[4] = v26;
        v28[5] = v27;
        v28[6] = v45;
        type metadata accessor for VisualAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        *v21 = v25;
        *(v43 + 8) = v24;
        v29 = MEMORY[0x277D84F98];
        *(v21 + v40[6]) = MEMORY[0x277D84F98];
        *(v21 + v40[7]) = v29;
        *(v21 + v40[8]) = v29;

        swift_bridgeObjectRetain_n();

        v30 = v45;
        v12 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2262DC944(0, v46[2] + 1, 1, v46);
        }

        v32 = v12[2];
        v31 = v12[3];
        if (v32 >= v31 >> 1)
        {
          v12 = sub_2262DC944(v31 > 1, v32 + 1, 1, v12);
        }

        v17 &= v17 - 1;
        v33 = v0[7];
        v12[2] = v32 + 1;
        sub_2262FEB84(v33, v12 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32);
        v14 = v42;
      }

      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          goto LABEL_22;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
        if (v17)
        {
          v46 = v12;
          v19 = v20;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_22:
    v35 = v0[10];
    v34 = v0[11];
    v36 = v0[7];

    v37 = v0[1];

    return v37(v12);
  }
}

uint64_t sub_226320A88()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_226320BB4, v3, 0);
}

uint64_t sub_226320BB4()
{
  v1 = v0[2];

  v36 = v0[5];
  v2 = *(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions);
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v33 = v0[6];
  v34 = v0[7];
  v6 = -1;
  v7 = -1 << *(*(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v38 = *(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v35 = v4;
  v32 = v9;
  v37 = v0;
  if (v8)
  {
    while (1)
    {
      v39 = v12;
LABEL_9:
      v14 = v0[7];
      v15 = (*(v38 + 48) + 56 * (__clz(__rbit64(v8)) | (v11 << 6)));
      v16 = v15[1];
      v17 = v15[2];
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[5];
      v21 = v15[6];
      v22 = (v14 + v36[5]);
      *v22 = *v15;
      v22[1] = v16;
      v22[2] = v17;
      v22[3] = v18;
      v22[4] = v19;
      v22[5] = v20;
      v22[6] = v21;
      type metadata accessor for VisualAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v14 = v17;
      *(v34 + 8) = v18;
      v23 = MEMORY[0x277D84F98];
      *(v14 + v36[6]) = MEMORY[0x277D84F98];
      *(v14 + v36[7]) = v23;
      *(v14 + v36[8]) = v23;

      swift_bridgeObjectRetain_n();

      v24 = v21;
      v12 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2262DC944(0, v39[2] + 1, 1, v39);
      }

      v26 = v12[2];
      v25 = v12[3];
      v0 = v37;
      v4 = v35;
      if (v26 >= v25 >> 1)
      {
        v12 = sub_2262DC944(v25 > 1, v26 + 1, 1, v12);
      }

      v8 &= v8 - 1;
      v27 = v37[7];
      v12[2] = v26 + 1;
      result = sub_2262FEB84(v27, v12 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v26);
      v9 = v32;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v13);
    ++v11;
    if (v8)
    {
      v39 = v12;
      v11 = v13;
      goto LABEL_9;
    }
  }

  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[7];

  v31 = v0[1];

  return v31(v12);
}

uint64_t sub_226320E64(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v10, a1, v6);
  v11 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_2262DD444(0, v11[2] + 1, 1, v11);
    *a2 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_2262DD444(v13 > 1, v14 + 1, 1, v11);
    *a2 = v11;
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  v15 = *a2;
  v16 = *(a3 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_state);
  *(a3 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_state) = v15;
}

uint64_t sub_226321038(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226316434;

  return sub_2263204E4(v4, a2);
}

uint64_t sub_2263210CC(uint64_t a1)
{
  result = sub_226321124(&qword_28137F618, type metadata accessor for LinkActionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226321124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RankedVisualBundle()
{
  result = qword_28137F538;
  if (!qword_28137F538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2263211E8()
{
  result = sub_22634F51C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22632126C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2263212D0(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v185 = &v174 - v5;
  v6 = sub_22634F34C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v184 = &v174 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v189 = &v174 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v178 = &v174 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v181 = &v174 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v174 - v20;
  v22 = sub_22634EEFC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v186 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v188 = &v174 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v177 = &v174 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v182 = &v174 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v179 = &v174 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v183 = &v174 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v174 - v37;
  v201 = sub_22635004C();
  v203 = *(v201 - 8);
  v39 = *(v203 + 64);
  v40 = MEMORY[0x28223BE20](v201);
  v42 = &v174 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v191 = &v174 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v180 = &v174 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v187 = &v174 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v174 - v49;
  sub_22635001C();
  v206 = v23;
  v194 = *(v23 + 16);
  v195 = a1;
  v193 = v23 + 16;
  v194(v38, a1, v22);
  v204 = v7;
  v51 = *(v7 + 16);
  v207 = v6;
  v202 = v7 + 16;
  v199 = v51;
  v51(v21, v205, v6);
  v52 = v200;

  v53 = sub_22635003C();
  v54 = sub_22635072C();

  v55 = os_log_type_enabled(v53, v54);
  v192 = v11;
  v190 = v42;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v208 = v197;
    *v56 = 136315906;
    v57 = *v52;
    v58 = sub_226350D6C();
    v60 = sub_226345004(v58, v59, &v208);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_226345004(0xD000000000000017, 0x80000002263575F0, &v208);
    *(v56 + 22) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
    v61 = sub_226350C1C();
    v63 = v62;
    v198 = *(v206 + 8);
    v198(v38, v22);
    v64 = sub_226345004(v61, v63, &v208);

    *(v56 + 24) = v64;
    *(v56 + 32) = 2080;
    v65 = v207;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
    v66 = sub_226350C1C();
    v68 = v67;
    v196 = *(v204 + 8);
    v196(v21, v65);
    v69 = sub_226345004(v66, v68, &v208);
    v52 = v200;

    *(v56 + 34) = v69;
    _os_log_impl(&dword_2262B6000, v53, v54, "%s.%s handlerID = %s, customActionIdentity = %s", v56, 0x2Au);
    v70 = v197;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v70, -1, -1);
    MEMORY[0x22AA7D570](v56, -1, -1);

    v197 = *(v203 + 8);
    (v197)(v50, v201);
    v71 = v206;
  }

  else
  {

    v196 = *(v204 + 8);
    v196(v21, v207);
    v72 = v206;
    v198 = *(v206 + 8);
    v198(v38, v22);
    v197 = *(v203 + 8);
    (v197)(v50, v201);
    v71 = v72;
  }

  swift_beginAccess();
  v73 = v52[14];
  v74 = v194;
  v75 = v195;
  v76 = v189;
  v77 = v191;
  v78 = v188;
  v79 = v187;
  if (!*(v73 + 16) || (v80 = sub_2263395AC(v205), (v81 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_16;
  }

  v82 = v183;
  v74(v183, *(v73 + 56) + *(v71 + 72) * v80, v22);
  swift_endAccess();
  sub_226325D04(&qword_28137FA40, 255, MEMORY[0x277CC95F0]);
  if ((sub_22635044C() & 1) == 0)
  {
    sub_22635001C();
    v199(v181, v205, v207);
    v74(v179, v75, v22);
    v74(v182, v82, v22);
    v102 = sub_22635003C();
    LODWORD(v180) = sub_22635073C();
    if (os_log_type_enabled(v102, v180))
    {
      v103 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v208 = v177;
      *v103 = 136315650;
      sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
      v176 = v102;
      v104 = v181;
      v105 = v207;
      v106 = sub_226350C1C();
      v108 = v107;
      v196(v104, v105);
      v109 = sub_226345004(v106, v108, &v208);

      v178 = v103;
      *(v103 + 4) = v109;
      *(v103 + 12) = 2080;
      sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
      v110 = v179;
      v111 = sub_226350C1C();
      v113 = v112;
      v114 = v198;
      v198(v110, v22);
      v115 = sub_226345004(v111, v113, &v208);
      v78 = v188;
      v75 = v195;
      v116 = v22;
      v77 = v191;

      v117 = v178;
      *(v178 + 14) = v115;
      *(v117 + 11) = 2080;
      v118 = v182;
      v175 = v22;
      v119 = sub_226350C1C();
      v121 = v120;
      v114(v118, v116);
      v122 = sub_226345004(v119, v121, &v208);

      v123 = v178;
      *(v178 + 3) = v122;
      v124 = v176;
      _os_log_impl(&dword_2262B6000, v176, v180, "Attempting to register custom action %s with handler ID %s while it is already registered with handler ID %s. The existing registration will be overwritten.", v123, 0x20u);
      v125 = v177;
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v125, -1, -1);
      v126 = v123;
      v74 = v194;
      MEMORY[0x22AA7D570](v126, -1, -1);

      (v197)(v187, v201);
      v22 = v175;
      v114(v183, v175);
      goto LABEL_15;
    }

    v127 = v198;
    v198(v182, v22);
    v127(v179, v22);
    v196(v181, v207);
    v128 = v79;
LABEL_14:
    (v197)(v128, v201);
    v127(v183, v22);
    goto LABEL_15;
  }

  sub_22635001C();
  v83 = v178;
  v199(v178, v205, v207);
  v84 = v177;
  v74(v177, v75, v22);
  v85 = sub_22635003C();
  v86 = sub_22635071C();
  if (!os_log_type_enabled(v85, v86))
  {

    v127 = v198;
    v198(v84, v22);
    v196(v83, v207);
    v128 = v180;
    goto LABEL_14;
  }

  v87 = swift_slowAlloc();
  v88 = swift_slowAlloc();
  v208 = v88;
  *v87 = 136315394;
  sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
  LODWORD(v187) = v86;
  v89 = v207;
  v90 = sub_226350C1C();
  v91 = v83;
  v92 = v90;
  v94 = v93;
  v196(v91, v89);
  v95 = sub_226345004(v92, v94, &v208);

  *(v87 + 4) = v95;
  *(v87 + 12) = 2080;
  sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
  v96 = sub_226350C1C();
  v98 = v97;
  v99 = v198;
  v198(v84, v22);
  v100 = sub_226345004(v96, v98, &v208);

  *(v87 + 14) = v100;
  _os_log_impl(&dword_2262B6000, v85, v187, "Attempting to register custom action %s with handler ID %s while it is already registered with the this handler ID. No action will be taken.", v87, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AA7D570](v88, -1, -1);
  v101 = v87;
  v74 = v194;
  MEMORY[0x22AA7D570](v101, -1, -1);

  (v197)(v180, v201);
  v99(v183, v22);
  v78 = v188;
  v77 = v191;
  v75 = v195;
LABEL_15:
  v76 = v189;
LABEL_16:
  sub_22635001C();
  v199(v76, v205, v207);
  v74(v78, v75, v22);
  v129 = sub_22635003C();
  v130 = sub_22635071C();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v208 = v132;
    *v131 = 136315394;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
    v133 = v207;
    v134 = sub_226350C1C();
    v135 = v76;
    v136 = v134;
    v138 = v137;
    v196(v135, v133);
    v139 = sub_226345004(v136, v138, &v208);

    *(v131 + 4) = v139;
    *(v131 + 12) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
    v140 = sub_226350C1C();
    v142 = v141;
    v198(v78, v22);
    v143 = sub_226345004(v140, v142, &v208);

    *(v131 + 14) = v143;
    _os_log_impl(&dword_2262B6000, v129, v130, "Registering custom action %s with handler ID %s...", v131, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v132, -1, -1);
    MEMORY[0x22AA7D570](v131, -1, -1);

    v144 = v191;
  }

  else
  {

    v198(v78, v22);
    v196(v76, v207);
    v144 = v77;
  }

  (v197)(v144, v201);
  v145 = v199;
  v146 = v184;
  v147 = v205;
  v148 = v207;
  v199(v184, v205, v207);
  v149 = v185;
  v150 = v194;
  v151 = v195;
  v194(v185, v195, v22);
  (*(v206 + 56))(v149, 0, 1, v22);
  swift_beginAccess();
  sub_2262DFF14(v149, v146);
  swift_endAccess();
  v152 = v190;
  sub_22635001C();
  v145(v192, v147, v148);
  v153 = v186;
  v150(v186, v151, v22);
  v154 = sub_22635003C();
  v155 = sub_22635071C();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = v22;
    v158 = v153;
    v159 = swift_slowAlloc();
    v208 = v159;
    *v156 = 136315394;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
    v160 = v192;
    v161 = v207;
    v162 = sub_226350C1C();
    v163 = v160;
    v164 = v162;
    v166 = v165;
    v196(v163, v161);
    v167 = sub_226345004(v164, v166, &v208);

    *(v156 + 4) = v167;
    *(v156 + 12) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
    v168 = sub_226350C1C();
    v170 = v169;
    v198(v158, v157);
    v171 = sub_226345004(v168, v170, &v208);

    *(v156 + 14) = v171;
    _os_log_impl(&dword_2262B6000, v154, v155, "Registered custom action %s with handler ID %s.", v156, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v159, -1, -1);
    MEMORY[0x22AA7D570](v156, -1, -1);

    v172 = v190;
  }

  else
  {

    v198(v153, v22);
    v196(v192, v207);
    v172 = v152;
  }

  return (v197)(v172, v201);
}

uint64_t sub_226322848(unint64_t a1, uint64_t a2)
{
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B58, &qword_226355230);
  v4 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v162 = &v144 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v148 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v161 = &v144 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v166 = &v144 - v13;
  MEMORY[0x28223BE20](v12);
  v167 = &v144 - v14;
  v15 = sub_22634F34C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v150 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v147 = &v144 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v146 = &v144 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v144 - v24;
  v26 = sub_22634EEFC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v154 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v149 = &v144 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v157 = &v144 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v144 = &v144 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v144 - v37;
  v39 = sub_22635004C();
  v173 = *(v39 - 8);
  v40 = *(v173 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v155 = &v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v153 = &v144 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v152 = &v144 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v144 - v47;
  sub_22635001C();
  v175 = v27;
  v49 = *(v27 + 16);
  v171 = v27 + 16;
  v172 = a1;
  v174 = v49;
  v49(v38, a1, v26);
  v50 = v16[2];
  v165 = a2;
  v158 = v50;
  v159 = v16 + 2;
  v50(v25, a2, v15);
  v51 = v170;

  v52 = v51;
  v53 = sub_22635003C();
  v54 = sub_22635072C();

  v55 = os_log_type_enabled(v53, v54);
  v168 = v39;
  v151 = v15;
  v163 = v16;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v176 = v164;
    *v56 = 136315906;
    v57 = *v52;
    v58 = sub_226350D6C();
    v60 = sub_226345004(v58, v59, &v176);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_226345004(0xD000000000000019, 0x80000002263575D0, &v176);
    *(v56 + 22) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
    v61 = sub_226350C1C();
    v63 = v62;
    v169 = *(v175 + 8);
    v169(v38, v26);
    v64 = sub_226345004(v61, v63, &v176);

    *(v56 + 24) = v64;
    *(v56 + 32) = 2080;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
    v65 = sub_226350C1C();
    v67 = v66;
    v156 = v163[1];
    v156(v25, v15);
    v68 = sub_226345004(v65, v67, &v176);

    *(v56 + 34) = v68;
    v52 = v170;
    _os_log_impl(&dword_2262B6000, v53, v54, "%s.%s handlerID = %s, customActionIdentity = %s", v56, 0x2Au);
    v69 = v164;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v69, -1, -1);
    MEMORY[0x22AA7D570](v56, -1, -1);

    v164 = *(v173 + 8);
    v164(v48, v168);
    v70 = v175;
  }

  else
  {

    v156 = v16[1];
    v156(v25, v15);
    v71 = v175;
    v169 = *(v175 + 8);
    v169(v38, v26);
    v164 = *(v173 + 8);
    v164(v48, v39);
    v70 = v71;
  }

  swift_beginAccess();
  v72 = v52[14];
  v73 = v162;
  v74 = v166;
  if (*(v72 + 16) && (v75 = sub_2263395AC(v165), (v76 & 1) != 0))
  {
    v77 = *(v72 + 56) + *(v70 + 72) * v75;
    v78 = v167;
    v174(v167, v77, v26);
    v79 = 0;
  }

  else
  {
    v79 = 1;
    v78 = v167;
  }

  v80 = *(v70 + 56);
  v80(v78, v79, 1, v26);
  swift_endAccess();
  v174(v74, v172, v26);
  v145 = v80;
  v80(v74, 0, 1, v26);
  v81 = *(v160 + 48);
  sub_226325C94(v78, v73);
  sub_226325C94(v74, v73 + v81);
  v82 = *(v70 + 48);
  v83 = v82(v73, 1, v26);
  v84 = v161;
  if (v83 == 1)
  {
    sub_2262D67D8(v74, &qword_27D793010, &unk_226354CE0);
    sub_2262D67D8(v78, &qword_27D793010, &unk_226354CE0);
    if (v82(v73 + v81, 1, v26) == 1)
    {
      sub_2262D67D8(v73, &qword_27D793010, &unk_226354CE0);
      v85 = v157;
LABEL_19:
      v103 = v152;
      sub_22635001C();
      v104 = v146;
      v105 = v151;
      v158(v146, v165, v151);
      v174(v85, v172, v26);
      v106 = sub_22635003C();
      LODWORD(v167) = sub_22635071C();
      if (os_log_type_enabled(v106, v167))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v176 = v108;
        *v107 = 136315394;
        sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
        v109 = sub_226350C1C();
        v110 = v85;
        v112 = v111;
        v156(v104, v105);
        v113 = sub_226345004(v109, v112, &v176);

        *(v107 + 4) = v113;
        *(v107 + 12) = 2080;
        sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
        v114 = sub_226350C1C();
        v116 = v115;
        v169(v110, v26);
        v117 = sub_226345004(v114, v116, &v176);

        *(v107 + 14) = v117;
        _os_log_impl(&dword_2262B6000, v106, v167, "Unregistering custom action %s with handler ID %s...", v107, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v108, -1, -1);
        MEMORY[0x22AA7D570](v107, -1, -1);

        v118 = v152;
      }

      else
      {

        v169(v85, v26);
        v156(v104, v105);
        v118 = v103;
      }

      v119 = v168;
      v164(v118, v168);
      v120 = v147;
      v121 = v165;
      v122 = v158;
      v158(v147, v165, v105);
      v123 = v148;
      v145(v148, 1, 1, v26);
      swift_beginAccess();
      sub_2262DFF14(v123, v120);
      swift_endAccess();
      v124 = v153;
      sub_22635001C();
      v125 = v150;
      v122(v150, v121, v105);
      v126 = v149;
      v174(v149, v172, v26);
      v127 = sub_22635003C();
      v128 = sub_22635071C();
      v129 = v105;
      if (os_log_type_enabled(v127, v128))
      {
        v130 = v119;
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v176 = v132;
        *v131 = 136315394;
        sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
        v133 = sub_226350C1C();
        v134 = v129;
        v135 = v128;
        v137 = v136;
        v156(v125, v134);
        v138 = sub_226345004(v133, v137, &v176);

        *(v131 + 4) = v138;
        *(v131 + 12) = 2080;
        sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
        v139 = sub_226350C1C();
        v141 = v140;
        v169(v126, v26);
        v142 = sub_226345004(v139, v141, &v176);

        *(v131 + 14) = v142;
        _os_log_impl(&dword_2262B6000, v127, v135, "Unregistered custom action %s with handler ID %s.", v131, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v132, -1, -1);
        MEMORY[0x22AA7D570](v131, -1, -1);

        v97 = v153;
        v98 = v130;
      }

      else
      {

        v169(v126, v26);
        v156(v125, v105);
        v97 = v124;
        v98 = v119;
      }

      return (v164)(v97, v98);
    }

    goto LABEL_13;
  }

  sub_226325C94(v73, v161);
  v86 = v82(v73 + v81, 1, v26);
  v85 = v157;
  if (v86 == 1)
  {
    sub_2262D67D8(v166, &qword_27D793010, &unk_226354CE0);
    sub_2262D67D8(v167, &qword_27D793010, &unk_226354CE0);
    v169(v84, v26);
LABEL_13:
    sub_2262D67D8(v73, &qword_27D793B58, &qword_226355230);
    goto LABEL_14;
  }

  v99 = v73 + v81;
  v100 = v144;
  (*(v70 + 32))(v144, v99, v26);
  sub_226325D04(&qword_28137FA40, 255, MEMORY[0x277CC95F0]);
  v101 = sub_22635044C();
  v102 = v169;
  v169(v100, v26);
  sub_2262D67D8(v166, &qword_27D793010, &unk_226354CE0);
  sub_2262D67D8(v167, &qword_27D793010, &unk_226354CE0);
  v102(v84, v26);
  sub_2262D67D8(v73, &qword_27D793010, &unk_226354CE0);
  if (v101)
  {
    goto LABEL_19;
  }

LABEL_14:
  v87 = v155;
  sub_22635001C();
  v88 = v154;
  v174(v154, v172, v26);
  v89 = sub_22635003C();
  v90 = sub_22635071C();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v176 = v92;
    *v91 = 136315138;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
    v93 = sub_226350C1C();
    v95 = v94;
    v169(v88, v26);
    v96 = sub_226345004(v93, v95, &v176);

    *(v91 + 4) = v96;
    _os_log_impl(&dword_2262B6000, v89, v90, "Attempting to unregister custom action with handler ID %s while it is not registered with this handler ID. No action will be taken.", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    MEMORY[0x22AA7D570](v92, -1, -1);
    MEMORY[0x22AA7D570](v91, -1, -1);
  }

  else
  {

    v169(v88, v26);
  }

  v97 = v87;
  v98 = v168;
  return (v164)(v97, v98);
}

uint64_t sub_226323AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_22634F65C();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = sub_22634F9BC();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v12 = sub_22634F51C();
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();
  v15 = sub_22634F63C();
  v5[30] = v15;
  v16 = *(v15 - 8);
  v5[31] = v16;
  v17 = *(v16 + 64) + 15;
  v5[32] = swift_task_alloc();
  v18 = sub_22634EEFC();
  v5[33] = v18;
  v19 = *(v18 - 8);
  v5[34] = v19;
  v20 = *(v19 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v21 = type metadata accessor for VisualAction.Kind(0);
  v5[40] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v23 = sub_22634F34C();
  v5[42] = v23;
  v24 = *(v23 - 8);
  v5[43] = v24;
  v25 = *(v24 + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v26 = sub_22635004C();
  v5[48] = v26;
  v27 = *(v26 - 8);
  v5[49] = v27;
  v28 = *(v27 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226323EB8, v4, 0);
}

uint64_t sub_226323EB8()
{
  v104 = v0;
  v1 = v0[56];
  v2 = v0[20];
  sub_22635001C();

  v3 = sub_22635003C();
  v4 = sub_22635072C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  v7 = v0[48];
  v8 = v0[49];
  if (v5)
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v103 = v11;
    *v10 = 136315394;
    v12 = *v9;
    v13 = sub_226350D6C();
    v15 = sub_226345004(v13, v14, &v103);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_226345004(0xD00000000000002ALL, 0x80000002263575A0, &v103);
    _os_log_impl(&dword_2262B6000, v3, v4, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v11, -1, -1);
    MEMORY[0x22AA7D570](v10, -1, -1);
  }

  v16 = *(v8 + 8);
  v16(v6, v7);
  v0[57] = v16;
  v17 = v0[40];
  v18 = v0[41];
  v19 = v0[17];
  v20 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v19 + *(v20 + 20), v18);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v21 = v0[47];
    v22 = v0[42];
    v23 = v0[43];
    v24 = v0[41];
    v25 = v0[20];
    v26 = *(v23 + 32);
    v0[58] = v26;
    v0[59] = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26(v21, v24, v22);
    swift_beginAccess();
    v27 = *(v25 + 112);
    if (*(v27 + 16))
    {
      v28 = sub_2263395AC(v0[47]);
      if (v29)
      {
        v30 = v0[39];
        v31 = v0[33];
        v32 = v0[34];
        v33 = v0[20];
        v34 = *(v32 + 16);
        v32 += 16;
        v35 = *(v27 + 56) + *(v32 + 56) * v28;
        v0[60] = v34;
        v0[61] = v32 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v34(v30, v35, v31);
        swift_endAccess();
        v36 = *(v33 + 128);
        v100 = (*(v33 + 120) + **(v33 + 120));
        v37 = *(*(v33 + 120) + 4);
        v38 = swift_task_alloc();
        v0[62] = v38;
        *v38 = v0;
        v38[1] = sub_226324688;
        v39 = v0[39];

        return v100(v39);
      }
    }

    v52 = v0[52];
    v53 = v0[47];
    v55 = v0[43];
    v54 = v0[44];
    v56 = v0[42];
    swift_endAccess();
    sub_22635001C();
    (*(v55 + 16))(v54, v53, v56);
    v57 = sub_22635003C();
    v58 = sub_22635071C();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[52];
    v61 = v0[48];
    v101 = v0[49];
    v62 = v0[47];
    v64 = v0[43];
    v63 = v0[44];
    v65 = v0[42];
    if (v59)
    {
      v98 = v0[52];
      v66 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v103 = v93;
      *v66 = 136315138;
      sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
      v91 = v58;
      v67 = sub_226350C1C();
      v95 = v62;
      v69 = v68;
      v70 = *(v64 + 8);
      v70(v63, v65);
      v71 = sub_226345004(v67, v69, &v103);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_2262B6000, v57, v91, "Custom action %s is not registered.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x22AA7D570](v93, -1, -1);
      MEMORY[0x22AA7D570](v66, -1, -1);

      v16(v98, v61);
      v70(v95, v65);
    }

    else
    {

      v72 = *(v64 + 8);
      v72(v63, v65);
      v16(v60, v61);
      v72(v62, v65);
    }

    v48 = v0[16];
    v51 = MEMORY[0x277D78A48];
  }

  else
  {
    v41 = v0[51];
    sub_226325C38(v0[41]);
    sub_22635001C();
    v42 = sub_22635003C();
    v43 = sub_22635073C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2262B6000, v42, v43, "Visual action kind is not .custom.", v44, 2u);
      MEMORY[0x22AA7D570](v44, -1, -1);
    }

    v45 = v0[51];
    v46 = v0[48];
    v47 = v0[49];
    v48 = v0[16];

    v16(v45, v46);
    v49 = *MEMORY[0x277D78AE8];
    v50 = sub_22634FB9C();
    (*(*(v50 - 8) + 104))(v48, v49, v50);
    v51 = MEMORY[0x277D78A40];
  }

  v73 = *v51;
  v74 = sub_22634FAEC();
  (*(*(v74 - 8) + 104))(v48, v73, v74);
  v76 = v0[55];
  v75 = v0[56];
  v77 = v0[53];
  v78 = v0[54];
  v80 = v0[51];
  v79 = v0[52];
  v81 = v0[50];
  v83 = v0[46];
  v82 = v0[47];
  v84 = v0[45];
  v86 = v0[44];
  v87 = v0[41];
  v88 = v0[39];
  v89 = v0[38];
  v90 = v0[37];
  v92 = v0[36];
  v94 = v0[35];
  v96 = v0[32];
  v97 = v0[29];
  v99 = v0[26];
  v102 = v0[23];

  v85 = v0[1];

  return v85();
}

uint64_t sub_226324688(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[62];
  v6 = v3[20];
  v8 = *v2;
  v4[63] = a1;

  return MEMORY[0x2822009F8](sub_2263247A8, v6, 0);
}

uint64_t sub_2263247A8()
{
  v127 = v0;
  if (v0[63])
  {
    v121 = v0[63];
    v114 = v0[61];
    log = v0[13];
    v2 = v0[46];
    v1 = v0[47];
    v3 = v0[42];
    v4 = v0[43];
    v107 = v0[39];
    v111 = v0[60];
    v99 = v0[33];
    v103 = v0[55];
    v95 = v0[32];
    v97 = v0[38];
    v5 = v0[28];
    v6 = v0[29];
    v7 = v0[26];
    v8 = v0[27];
    v10 = v0[24];
    v9 = v0[25];
    v11 = v0[18];
    v12 = v0[19];
    v13 = *(v4 + 16);
    v0[64] = v13;
    v0[65] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v2, v1, v3);
    (*(v5 + 16))(v6, v11, v8);
    (*(v9 + 16))(v7, v12, v10);
    sub_22634F62C();
    sub_22635001C();
    v111(v97, v107, v99);
    v14 = sub_22635003C();
    v15 = sub_22635072C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[57];
    v18 = v0[55];
    v19 = v0[48];
    v20 = v0[49];
    v21 = v0[38];
    v22 = v0[33];
    v23 = v0[34];
    if (v16)
    {
      v115 = v0[48];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v126 = v25;
      *v24 = 136315138;
      sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
      v104 = v18;
      v108 = v17;
      v26 = sub_226350C1C();
      v28 = v27;
      v100 = v15;
      v29 = *(v23 + 8);
      v29(v21, v22);
      v30 = sub_226345004(v26, v28, &v126);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2262B6000, v14, v100, "Sending custom action execution request to %s...", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x22AA7D570](v25, -1, -1);
      MEMORY[0x22AA7D570](v24, -1, -1);

      v108(v104, v115);
    }

    else
    {

      v29 = *(v23 + 8);
      v29(v21, v22);
      v17(v18, v19);
    }

    v0[66] = v29;
    ObjectType = swift_getObjectType();
    v61 = *(MEMORY[0x277D78B90] + 4);
    v62 = swift_task_alloc();
    v0[67] = v62;
    v63 = sub_226325D04(&qword_27D793B48, 255, MEMORY[0x277D78798]);
    *v62 = v0;
    v62[1] = sub_226325034;
    v64 = v0[32];
    v65 = v0[30];
    v66 = v0[23];

    return MEMORY[0x2821E00A8](v66, v64, ObjectType, v65, log, v63);
  }

  else
  {
    v31 = v0[60];
    v122 = v0[61];
    v32 = v0[53];
    v33 = v0[47];
    v34 = v0[45];
    v35 = v0[42];
    v36 = v0[43];
    v37 = v0[39];
    v38 = v0[36];
    v39 = v0[33];
    sub_22635001C();
    (*(v36 + 16))(v34, v33, v35);
    v31(v38, v37, v39);
    v40 = sub_22635003C();
    v116 = sub_22635073C();
    loga = v40;
    v41 = os_log_type_enabled(v40, v116);
    v42 = v0[57];
    v43 = v0[53];
    v44 = v0[48];
    v123 = v0[49];
    v45 = v0[45];
    v46 = v0[42];
    v47 = v0[43];
    v48 = v0[36];
    v50 = v0[33];
    v49 = v0[34];
    if (v41)
    {
      v112 = v0[53];
      v51 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v126 = v109;
      *v51 = 136315394;
      sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638]);
      v101 = v44;
      v105 = v42;
      v52 = sub_226350C1C();
      v54 = v53;
      (*(v47 + 8))(v45, v46);
      v55 = sub_226345004(v52, v54, &v126);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
      v56 = sub_226350C1C();
      v58 = v57;
      (*(v49 + 8))(v48, v50);
      v59 = sub_226345004(v56, v58, &v126);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_2262B6000, loga, v116, "No message sender for custom action %s found with handler ID %s.", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v109, -1, -1);
      MEMORY[0x22AA7D570](v51, -1, -1);

      v105(v112, v101);
    }

    else
    {

      (*(v49 + 8))(v48, v50);
      (*(v47 + 8))(v45, v46);
      v42(v43, v44);
    }

    v68 = v0[58];
    v67 = v0[59];
    v69 = v0[47];
    v70 = v0[42];
    v124 = v0[39];
    v71 = v0[33];
    v72 = v0[34];
    v73 = v0[16];
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B40, &qword_226355220);
    v75 = *(v74 + 48);
    v76 = *(v74 + 64);
    v68(v73, v69, v70);
    (*(v72 + 32))(v73 + v75, v124, v71);
    *(v73 + v76) = 0;
    v77 = *MEMORY[0x277D78AA8];
    v78 = sub_22634FB9C();
    (*(*(v78 - 8) + 104))(v73, v77, v78);
    v79 = *MEMORY[0x277D78A40];
    v80 = sub_22634FAEC();
    (*(*(v80 - 8) + 104))(v73, v79, v80);
    v82 = v0[55];
    v81 = v0[56];
    v83 = v0[53];
    v84 = v0[54];
    v86 = v0[51];
    v85 = v0[52];
    v87 = v0[50];
    v89 = v0[46];
    v88 = v0[47];
    v90 = v0[45];
    v93 = v0[44];
    v94 = v0[41];
    v96 = v0[39];
    v98 = v0[38];
    v102 = v0[37];
    v106 = v0[36];
    v110 = v0[35];
    v113 = v0[32];
    v117 = v0[29];
    logb = v0[26];
    v125 = v0[23];

    v91 = v0[1];

    return v91();
  }
}

uint64_t sub_226325034()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_226325548;
  }

  else
  {
    v6 = sub_226325160;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226325160()
{
  v65 = v0;
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[54];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[33];
  sub_22635001C();
  v2(v5, v4, v6);
  v7 = sub_22635003C();
  v8 = sub_22635072C();
  v9 = os_log_type_enabled(v7, v8);
  v60 = v0[66];
  v10 = v0[57];
  v11 = v0[54];
  v12 = v0[48];
  v13 = v0[49];
  v14 = v0[37];
  v16 = v0[33];
  v15 = v0[34];
  if (v9)
  {
    v57 = v0[54];
    v17 = swift_slowAlloc();
    v54 = v12;
    v18 = swift_slowAlloc();
    v64 = v18;
    *v17 = 136315138;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
    v51 = v10;
    v19 = sub_226350C1C();
    v21 = v20;
    v60(v14, v16);
    v22 = sub_226345004(v19, v21, &v64);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2262B6000, v7, v8, "Received custom action execution response from %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x22AA7D570](v18, -1, -1);
    MEMORY[0x22AA7D570](v17, -1, -1);

    v51(v57, v54);
  }

  else
  {

    v60(v14, v16);
    v10(v11, v12);
  }

  v23 = v0[63];
  v61 = v0[47];
  v24 = v0[43];
  v55 = v0[66];
  v58 = v0[42];
  v52 = v0[39];
  v26 = v0[32];
  v25 = v0[33];
  v28 = v0[30];
  v27 = v0[31];
  v30 = v0[22];
  v29 = v0[23];
  v31 = v0[21];
  v32 = v0[16];
  sub_22634F64C();
  swift_unknownObjectRelease();
  (*(v30 + 8))(v29, v31);
  (*(v27 + 8))(v26, v28);
  v55(v52, v25);
  (*(v24 + 8))(v61, v58);
  v34 = v0[55];
  v33 = v0[56];
  v35 = v0[53];
  v36 = v0[54];
  v38 = v0[51];
  v37 = v0[52];
  v39 = v0[50];
  v41 = v0[46];
  v40 = v0[47];
  v42 = v0[45];
  v45 = v0[44];
  v46 = v0[41];
  v47 = v0[39];
  v48 = v0[38];
  v49 = v0[37];
  v50 = v0[36];
  v53 = v0[35];
  v56 = v0[32];
  v59 = v0[29];
  v62 = v0[26];
  v63 = v0[23];

  v43 = v0[1];

  return v43();
}

uint64_t sub_226325548()
{
  v98 = v0;
  v1 = v0[68];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[50];
  v5 = v0[39];
  v6 = v0[35];
  v7 = v0[33];
  sub_22635001C();
  v3(v6, v5, v7);
  v8 = v1;
  v9 = sub_22635003C();
  v10 = sub_22635073C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[68];
    v90 = v0[50];
    v93 = v0[57];
    v81 = v0[66];
    v84 = v0[49];
    v87 = v0[48];
    v12 = v0[34];
    v13 = v0[35];
    v14 = v0[33];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v97 = v16;
    *v15 = 136315394;
    swift_getErrorValue();
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[10];
    v20 = sub_226350C9C();
    v22 = sub_226345004(v20, v21, &v97);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0]);
    v23 = sub_226350C1C();
    v25 = v24;
    v81(v13, v14);
    v26 = sub_226345004(v23, v25, &v97);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_2262B6000, v9, v10, "Error %s occurred while sending custom action execution request to %s.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v16, -1, -1);
    MEMORY[0x22AA7D570](v15, -1, -1);

    v93(v90, v87);
  }

  else
  {
    v27 = v0[66];
    v28 = v0[57];
    v30 = v0[49];
    v29 = v0[50];
    v31 = v0[48];
    v33 = v0[34];
    v32 = v0[35];
    v34 = v0[33];

    v27(v32, v34);
    v28(v29, v31);
  }

  v70 = v0[64];
  v71 = v0[65];
  v91 = v0[63];
  v94 = v0[66];
  v75 = v0[61];
  v77 = v0[68];
  v73 = v0[60];
  v35 = v0[47];
  v36 = v0[42];
  v37 = v0[43];
  v38 = v0[39];
  v39 = v0[33];
  v85 = v0[32];
  v40 = v0[31];
  v79 = v35;
  v82 = v0[30];
  v41 = v0[16];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B50, &qword_226355228);
  v43 = v42[12];
  v44 = v42[16];
  v88 = (v41 + v42[20]);
  v70(v41, v35, v36);
  v45 = v41 + v43;
  v46 = v38;
  v47 = v39;
  v73(v45, v38, v39);
  *(v41 + v44) = 0;
  swift_getErrorValue();
  v49 = v0[5];
  v48 = v0[6];
  v50 = v0[7];
  v51 = sub_226350C9C();
  v53 = v52;

  swift_unknownObjectRelease();
  (*(v40 + 8))(v85, v82);
  v94(v46, v47);
  (*(v37 + 8))(v79, v36);
  *v88 = v51;
  v88[1] = v53;
  v54 = *MEMORY[0x277D78AB0];
  v55 = sub_22634FB9C();
  (*(*(v55 - 8) + 104))(v41, v54, v55);
  v56 = *MEMORY[0x277D78A40];
  v57 = sub_22634FAEC();
  (*(*(v57 - 8) + 104))(v41, v56, v57);
  v59 = v0[55];
  v58 = v0[56];
  v60 = v0[53];
  v61 = v0[54];
  v63 = v0[51];
  v62 = v0[52];
  v64 = v0[50];
  v66 = v0[46];
  v65 = v0[47];
  v67 = v0[45];
  v72 = v0[44];
  v74 = v0[41];
  v76 = v0[39];
  v78 = v0[38];
  v80 = v0[37];
  v83 = v0[36];
  v86 = v0[35];
  v89 = v0[32];
  v92 = v0[29];
  v95 = v0[26];
  v96 = v0[23];

  v68 = v0[1];

  return v68();
}

BOOL sub_226325AC8(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(a1 + *(v6 + 20), v5);
  v7 = swift_getEnumCaseMultiPayload() == 2;
  sub_226325C38(v5);
  return v7;
}

uint64_t sub_226325B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_226323AFC(a1, a2, a3, a4);
}

uint64_t sub_226325C38(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226325C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226325D04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_226325D50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v153 = a2;
  v145 = a3;
  v148 = a1;
  v147 = sub_22634EECC();
  v152 = *(v147 - 8);
  v4 = *(v152 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualAction(0);
  v149 = *(v6 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = (&v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v140 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v134 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v134 - v15;
  v17 = sub_22634FB0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v134 - v24;
  sub_22634F4AC();
  v26 = sub_22634FA8C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_2262D67D8(v25, &qword_27D793018, &unk_2263552F0);
    v28 = 0;
  }

  else
  {
    sub_22634FA6C();
    (*(v27 + 8))(v25, v26);
    v28 = sub_22634FAFC();
    (*(v18 + 8))(v21, v17);
  }

  v29 = *(v3 + 16);
  v151 = v3;
  v143 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel;
  sub_22632C3D4(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel, v16);
  v30 = sub_22634F47C();
  v31 = *(v30 - 8);
  v141 = *(v31 + 48);
  v142 = v31 + 48;
  if (v141(v16, 1, v30) == 1)
  {
    sub_2262D67D8(v16, &qword_27D792FE0, &unk_226351C10);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = sub_22634F46C();
    v33 = v34;
    (*(v31 + 8))(v16, v30);
  }

  v35 = v151;
  v36 = *(v151 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel);
  v150 = *(v151 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel + 8);
  if (sub_226326E4C())
  {
    v37 = v35 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus;
    v38 = *(v35 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus);
    v39 = *(v37 + 8);
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v40 = sub_22634A558();
  v41 = v154;
  v42 = sub_226306440(v28, v32, v33, v36, v150, v38, v39, v40);
  v43 = v41;
  if (v41)
  {
  }

  v135 = v36;
  v134 = v31;
  v137 = v30;
  v45 = v42;

  v46 = v148;
  v47 = *(v148 + 16);
  v48 = MEMORY[0x277D84F90];
  v138 = v45;
  if (v47)
  {
    v136 = 0;
    v156[0] = MEMORY[0x277D84F90];
    sub_226316630(0, v47, 0);
    v49 = v156[0];
    v50 = v46 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
    v154 = *(v149 + 72);
    v51 = v50;
    v149 = v47;
    do
    {
      v52 = v155;
      sub_22632EDC0(v51, v155, type metadata accessor for VisualAction);
      v53 = sub_2262DBE60();
      v55 = v54;
      sub_22632EE90(v52, type metadata accessor for VisualAction);
      v156[0] = v49;
      v57 = v49[2];
      v56 = v49[3];
      if (v57 >= v56 >> 1)
      {
        sub_226316630((v56 > 1), v57 + 1, 1);
        v49 = v156[0];
      }

      v49[2] = v57 + 1;
      v58 = &v49[2 * v57];
      v58[4] = v53;
      v58[5] = v55;
      v51 += v154;
      --v47;
    }

    while (v47);
    v139 = v49;
    v156[0] = MEMORY[0x277D84F90];
    v59 = v149;
    sub_226316630(0, v149, 0);
    v48 = v156[0];
    do
    {
      v60 = v155;
      sub_22632EDC0(v50, v155, type metadata accessor for VisualAction);
      v62 = *v60;
      v61 = v60[1];

      sub_22632EE90(v60, type metadata accessor for VisualAction);
      v156[0] = v48;
      v64 = v48[2];
      v63 = v48[3];
      if (v64 >= v63 >> 1)
      {
        sub_226316630((v63 > 1), v64 + 1, 1);
        v48 = v156[0];
      }

      v48[2] = v64 + 1;
      v65 = &v48[2 * v64];
      v65[4] = v62;
      v65[5] = v61;
      v50 += v154;
      --v59;
    }

    while (v59);
    v43 = v136;
  }

  else
  {
    v139 = MEMORY[0x277D84F90];
  }

  v66 = sub_22630BD70(v48);

  v67 = sub_22632DE60(v66, v153);
  v68 = *(v67 + 16);
  v154 = v67;
  v136 = v43;
  if (!v68)
  {
    v69 = MEMORY[0x277D84F90];
    v71 = v152;
    goto LABEL_27;
  }

  v69 = sub_2262DD6B8(v68, 0);
  v70 = sub_2262DEE44(v156, v69 + 4, v68, v67);
  v71 = v156[2];

  sub_2262D66F4();
  if (v70 == v68)
  {
    v71 = v152;
    v67 = v154;
LABEL_27:
    v72 = sub_2263270C4(v69);

    v73 = 0;
    v74 = v67 + 56;
    v75 = 1 << *(v67 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v67 + 56);
    v78 = (v75 + 63) >> 6;
    v149 = v72;
    while (1)
    {
      if (!v77)
      {
        while (1)
        {
          v81 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v81 >= v78)
          {
            break;
          }

          v77 = *(v74 + 8 * v81);
          ++v73;
          if (v77)
          {
            v73 = v81;
            goto LABEL_37;
          }
        }

        v103 = v150;
        if (v150)
        {
          v104 = v151;
          __swift_project_boxed_opaque_existential_1((v151 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream), *(v151 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream + 24));
          v105 = v146;
          sub_22634EE7C();
          sub_22634EE5C();
          v107 = v106;
          (v71[1])(v105, v147);
          v108 = sub_22634A630();
          v155 = EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(v139, 0, 0, v135, v103, v108, v107);
        }

        else
        {
          v155 = sub_2262FE100(MEMORY[0x277D84F90]);
          v104 = v151;
        }

        v109 = v143;
        v110 = v144;
        sub_22632C3D4(v104 + v143, v144);
        v111 = v137;
        v112 = v141;
        if (v141(v110, 1, v137) == 1)
        {
          sub_2262D67D8(v110, &qword_27D792FE0, &unk_226351C10);
          v113 = sub_2262FE100(MEMORY[0x277D84F90]);
          v114 = v146;
          v115 = v147;
          v116 = v139;
          v117 = &qword_28137E000;
          v118 = &qword_28137E000;
        }

        else
        {
          sub_22634F46C();
          v119 = *(v134 + 8);
          v119(v110, v111);

          v120 = v140;
          sub_22632C3D4(v104 + v109, v140);
          if (v112(v120, 1, v111) == 1)
          {
            sub_2262D67D8(v120, &qword_27D792FE0, &unk_226351C10);
            v151 = 0;
            v154 = 0;
          }

          else
          {
            v151 = sub_22634F46C();
            v154 = v121;
            v119(v120, v111);
          }

          v114 = v146;
          v115 = v147;
          v117 = &qword_28137E000;
          __swift_project_boxed_opaque_existential_1((v104 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream), *(v104 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream + 24));
          sub_22634EE7C();
          sub_22634EE5C();
          v123 = v122;
          v71 = v152;
          (*(v152 + 8))(v114, v115);
          v124 = sub_22634A630();
          v116 = v139;
          v113 = EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(v139, v151, v154, 0, 0, v124, v123);
          v118 = &qword_28137E000;
        }

        __swift_project_boxed_opaque_existential_1((v104 + v118[442]), *(v104 + v118[442] + 24));
        v125 = v104 + v117[446];
        sub_22634EE7C();
        sub_22634EE5C();
        v127 = v126;
        (v71[1])(v114, v115);
        v128 = sub_22634A630();
        v129 = EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(v116, 0, 0, 0, 0, v128, v127);

        v130 = sub_226327348(v148, v138, v145, v155, v113, v129);

        v131 = v136;
        sub_22632A4A0(v130);
        v133 = v132;

        if (!v131)
        {
          v156[0] = v133;

          sub_22632C444(v156, v153);

          return v156[0];
        }

        return result;
      }

LABEL_37:
      v82 = (*(v67 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v77)))));
      v84 = *v82;
      v83 = v82[1];
      v85 = *(v72 + 16);

      if (v85 && (v86 = sub_22633941C(v84, v83), (v87 & 1) != 0))
      {
        v155 = *(*(v72 + 56) + 8 * v86);
      }

      else
      {
        v155 = 0;
      }

      v88 = v153;
      v89 = *v153;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = *v88;
      v156[0] = v91;
      v92 = sub_22633941C(v84, v83);
      v94 = v91[2];
      v95 = (v93 & 1) == 0;
      v96 = __OFADD__(v94, v95);
      v97 = v94 + v95;
      if (v96)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v71 = v93;
      if (v91[3] < v97)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_46;
      }

      v102 = v92;
      sub_226339F9C();
      v92 = v102;
      v72 = v149;
      if (v71)
      {
LABEL_30:
        v79 = v92;

        v80 = v156[0];
        *(v156[0][7] + 8 * v79) = v155;
        goto LABEL_31;
      }

LABEL_47:
      v80 = v156[0];
      v156[0][(v92 >> 6) + 8] |= 1 << v92;
      v99 = (v80[6] + 16 * v92);
      *v99 = v84;
      v99[1] = v83;
      *(v80[7] + 8 * v92) = v155;
      v100 = v80[2];
      v96 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v96)
      {
        goto LABEL_64;
      }

      v80[2] = v101;
LABEL_31:
      v77 &= v77 - 1;
      v71 = v152;
      *v153 = v80;
      v67 = v154;
    }

    sub_2263366F4(v97, isUniquelyReferenced_nonNull_native);
    v92 = sub_22633941C(v84, v83);
    if ((v71 & 1) != (v98 & 1))
    {
      goto LABEL_66;
    }

LABEL_46:
    v72 = v149;
    if (v71)
    {
      goto LABEL_30;
    }

    goto LABEL_47;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  sub_226350C8C();
  __break(1u);

  __break(1u);
  return result;
}