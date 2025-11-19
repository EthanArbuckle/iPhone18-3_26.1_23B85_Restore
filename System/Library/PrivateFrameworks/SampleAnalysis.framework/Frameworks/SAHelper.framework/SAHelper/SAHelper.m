uint64_t sub_2647DB6D8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647DB724()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647DB75C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2647DB7A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2647DB7EC()
{
  v1 = sub_2647EEEC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7);

  v12 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_2647DB8D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647DB924()
{
  result = 0xD000000000000010;
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80880, &qword_2647EFB90);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D839F8];
    *(v3 + 16) = xmmword_2647EF9C0;
    v5 = MEMORY[0x277D83A80];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v2;
    return sub_2647EF254();
  }

  return result;
}

uint64_t sub_2647DB9D8()
{
  v0 = sub_2647EF1A4();
  __swift_allocate_value_buffer(v0, qword_2814C1230);
  __swift_project_value_buffer(v0, qword_2814C1230);
  return sub_2647EF194();
}

uint64_t sub_2647DBA4C()
{
  v40 = sub_2647EEE44();
  v0 = *(v40 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v39 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2647EEE24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647EEE34();
  v9 = *(v8 - 8);
  v10 = v9;
  v31 = v8;
  v32 = v9;
  v11 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2647EEEE4();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2647EEE54();
  v35 = *(v18 - 8);
  v36 = v18;
  v19 = *(v35 + 64);
  MEMORY[0x28223BE20]();
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2647EEE94();
  v33 = *(v22 - 8);
  v34 = v22;
  v23 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2647EEE04();
  sub_2647EEED4();
  (*(v10 + 104))(v13, *MEMORY[0x277CC9460], v8);
  v26 = v3;
  (*(v4 + 104))(v7, *MEMORY[0x277CC9458], v3);
  v28 = v39;
  v27 = v40;
  (*(v0 + 104))(v39, *MEMORY[0x277CC9468], v40);
  sub_2647EEEF4();
  (*(v0 + 8))(v28, v27);
  (*(v4 + 8))(v7, v26);
  (*(v32 + 8))(v13, v31);
  (*(v37 + 8))(v17, v38);
  v29 = sub_2647EEE14();
  (*(v35 + 8))(v21, v36);
  (*(v33 + 8))(v25, v34);
  return v29;
}

uint64_t sub_2647DBEC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2647EF044();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80810, &qword_2647EFAB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v53 - v10;
  sub_2647EF054();
  if ((*(v5 + 48))(v11, 1, v4) != 1)
  {
    v32 = *(v5 + 32);
    v32(v8, v11, v4);
    v32(a2, v8, v4);
LABEL_11:
    v33 = *(v5 + 56);
    v34 = a2;
    return v33(v34, 0, 1, v4);
  }

  sub_2647EAD34(v11, &qword_27FF80810, &qword_2647EFAB8);
  v12 = sub_2647EF074();
  v14 = v13;
  v59 = v12;
  v60 = v13;
  v57 = 0x6E69676562;
  v58 = 0xE500000000000000;
  sub_2647EAB08();
  if (sub_2647EF3A4() & 1) != 0 || (v59 = v12, v60 = v14, v57 = 0x7472617473, v58 = 0xE500000000000000, (sub_2647EF3A4()))
  {

    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v15 = sub_2647EF1A4();
    __swift_project_value_buffer(v15, qword_2814C1230);
    v16 = sub_2647EF094();
    v17 = *(v16 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20]();
    v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, a1, v16);
    v21 = sub_2647EF184();
    v22 = sub_2647EF364();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v54 = &v53;
      v24 = v23;
      v25 = swift_slowAlloc();
      v56 = a2;
      v26 = v25;
      v59 = v25;
      *v24 = 136315138;
      v27 = sub_2647EF074();
      v55 = v4;
      v29 = v28;
      (*(v17 + 8))(v20, v16);
      v30 = sub_2647E7ED4(v27, v29, &v59);
      v4 = v55;

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2647DA000, v21, v22, "inferred subtype start due to eventType %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v31 = v26;
      a2 = v56;
      MEMORY[0x266741280](v31, -1, -1);
      MEMORY[0x266741280](v24, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v20, v16);
    }

    (*(v5 + 104))(a2, *MEMORY[0x277D20AF0], v4);
    goto LABEL_11;
  }

  v59 = v12;
  v60 = v14;
  v57 = 6581861;
  v58 = 0xE300000000000000;
  if (sub_2647EF3A4())
  {

LABEL_16:
    v56 = a2;
    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v37 = sub_2647EF1A4();
    __swift_project_value_buffer(v37, qword_2814C1230);
    v38 = sub_2647EF094();
    v39 = *(v38 - 8);
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20]();
    v42 = &v53 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42, a1, v38);
    v43 = sub_2647EF184();
    v44 = sub_2647EF364();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v45 = 136315138;
      v46 = sub_2647EF074();
      v55 = &v53;
      v47 = v4;
      v49 = v48;
      (*(v39 + 8))(v42, v38);
      v50 = sub_2647E7ED4(v46, v49, &v59);
      v4 = v47;

      *(v45 + 4) = v50;
      _os_log_impl(&dword_2647DA000, v43, v44, "inferred subtype end due to eventType %s", v45, 0xCu);
      v51 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266741280](v51, -1, -1);
      MEMORY[0x266741280](v45, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v42, v38);
    }

    v52 = v56;
    (*(v5 + 104))(v56, *MEMORY[0x277D20AC8], v4);
    v33 = *(v5 + 56);
    v34 = v52;
    return v33(v34, 0, 1, v4);
  }

  v59 = v12;
  v60 = v14;
  v57 = 0x6873696E6966;
  v58 = 0xE600000000000000;
  v36 = sub_2647EF3A4();

  if (v36)
  {
    goto LABEL_16;
  }

  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t sub_2647DC60C(void *a1)
{
  v1 = 0x646564616F6C6E75;
  if (a1)
  {
    v2 = a1;
    v3 = [v2 loadedRequesters];
    if (v3)
    {
      v4 = v3;
      v5 = sub_2647EF2F4();

      if (*(v5 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80870, &qword_2647EFB10);
        sub_2647EADE0();
        v6 = sub_2647EF214();
        v8 = v7;
      }

      else
      {

        v8 = 0xE600000000000000;
        v6 = 0x656E6F206F6ELL;
      }

      MEMORY[0x266740C20](v6, v8);

      return 0x6220646564616F6CLL;
    }

    else
    {
      v9 = [v2 inMemory];

      if (v9)
      {
        return 0x63696D616E7964;
      }
    }
  }

  return v1;
}

id sub_2647DC780(uint64_t a1)
{
  v2 = sub_2647EF0F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (!MEMORY[0x277D20B88] || v7 != *MEMORY[0x277D20B88])
  {
    if (MEMORY[0x277D20B90] && v7 == *MEMORY[0x277D20B90])
    {
      return [objc_allocWithZone(MEMORY[0x277D4B450]) initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:0 inMemory:0];
    }

    if (MEMORY[0x277D20B78] && v7 == *MEMORY[0x277D20B78])
    {
      return [objc_allocWithZone(MEMORY[0x277D4B450]) initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:0 inMemory:1];
    }

    if (MEMORY[0x277D20B80] && v7 == *MEMORY[0x277D20B80])
    {
      v9 = objc_allocWithZone(MEMORY[0x277D4B450]);
      v10 = sub_2647EF2E4();
      v11 = [v9 initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:v10 inMemory:1];

      return v11;
    }

    (*(v3 + 8))(v6, v2);
  }

  sub_2647EAA54();
  swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 1;
  return swift_willThrow();
}

uint64_t static SAModelInfo.gatherModelInfo(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647DCA88;

  return (sub_2647E8AC0)(a1, a2);
}

uint64_t sub_2647DCA88(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2647DCB88()
{
  v1[5] = v0;
  v1[2] = 122;
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_2647DCC28;

  return sub_2647EBE74(v1 + 2);
}

uint64_t sub_2647DCC28(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *v1;

  if (a1)
  {
    v6 = *(v5 + 8);

    return v6(1);
  }

  else
  {
    *(v3 + 24) = 123;
    v8 = (v3 + 24);
    v9 = swift_task_alloc();
    v8[4] = v9;
    *v9 = v5;
    v9[1] = sub_2647DCDA8;
    v10 = v8[2];

    return sub_2647EBE74(v8);
  }
}

uint64_t sub_2647DCDA8(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;

  if (a1)
  {
    v6 = *(v5 + 8);

    return v6(1);
  }

  else
  {
    *(v3 + 32) = 125;
    v8 = (v3 + 32);
    v9 = swift_task_alloc();
    v8[4] = v9;
    *v9 = v5;
    v9[1] = sub_2647DCF28;
    v10 = v8[1];

    return sub_2647EBE74(v8);
  }
}

uint64_t sub_2647DCF28(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_2647DD024(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_2814C1228 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = sub_2647EF1A4();
    v7 = __swift_project_value_buffer(v6, qword_2814C1230);

    v8 = sub_2647EF184();
    v9 = sub_2647EF364();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      swift_beginAccess();
      *(v10 + 4) = *(a2 + 16);

      _os_log_impl(&dword_2647DA000, v8, v9, "done reading model history (%ld callbacks)", v10, 0xCu);
      MEMORY[0x266741280](v10, -1, -1);
    }

    else
    {
    }

    if (a3 >> 62)
    {
      v11 = sub_2647EF3F4();
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    v12 = 0;
    v40 = a3 & 0xC000000000000001;
    v38 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3;
    v39 = v11;
    while (1)
    {
      if (v40)
      {
        v17 = MEMORY[0x266740D50](v12, a3);
      }

      else
      {
        if (v12 >= *(v38 + 16))
        {
          goto LABEL_36;
        }

        v17 = *(a3 + 8 * v12 + 32);
      }

      v16 = v17;
      v18 = [v17 loadedChanges];
      sub_2647EACEC(0, &qword_2814C11A8, 0x277D4B450);
      a2 = sub_2647EF2F4();

      if (a2 >> 62)
      {
        v19 = sub_2647EF3F4();
        if (!v19)
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {
        v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_29;
        }
      }

      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x266740D50](v21, a2);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v22 = *(a2 + 8 * v21 + 32);
      }

      v15 = v22;

      if ([v15 loaded])
      {
        goto LABEL_10;
      }

      v23 = [v15 endTime];
      if (v23)
      {
        a2 = v23;
        v24 = [v23 ge_];

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

LABEL_30:
      a2 = v16;
      v25 = sub_2647EF184();
      v26 = sub_2647EF364();

      v41 = v16;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        v29 = [a2 identifier];
        v30 = sub_2647EF244();
        v31 = v7;
        v33 = v32;

        v34 = sub_2647E7ED4(v30, v33, &v42);
        v7 = v31;

        *(v27 + 4) = v34;
        _os_log_impl(&dword_2647DA000, v25, v26, "Model %s loaded, not mentioned in the biome stream, must have been loaded the whole time", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v35 = v28;
        a3 = v37;
        MEMORY[0x266741280](v35, -1, -1);
        MEMORY[0x266741280](v27, -1, -1);
      }

      v13 = objc_allocWithZone(MEMORY[0x277D4B450]);
      v14 = sub_2647EF2E4();
      v15 = [v13 initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:v14 inMemory:1];

      [a2 addLoadedChange_];
      v11 = v39;
      v16 = v41;
LABEL_10:

LABEL_11:
      ++v12;

      if (v11 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  __break(1u);
}

unint64_t sub_2647DD4C8(unint64_t result)
{
  if (!(result >> 62))
  {
    v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = result;
  v1 = sub_2647EF3F4();
  result = v4;
  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    return MEMORY[0x266740D50](v3, result);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x266740D50](v3, result);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 8 * v3 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_2647DD570(char *a1, uint64_t a2, NSObject *a3, char *a4, char *a5, char *a6)
{
  v929 = a6;
  v937 = a5;
  v938 = a3;
  v934 = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80808, &qword_2647EFAB0) - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v936 = (&v886 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v930 = &v886 - v10;
  v11 = sub_2647EEEC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v933 = &v886 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v927 = (&v886 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v935 = (&v886 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v928 = &v886 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v886 - v22;
  v24 = sub_2647EEF84();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_2647EF084();
  sub_2647EEF54();
  v940 = *(v25 + 8);
  (v940)(&v886 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v27 = sub_2647EEEB4();
  v28 = *(v12 + 8);
  v931 = v23;
  result = v28(v23, v11);
  if ((v27 & 1) == 0)
  {
    return result;
  }

  v923 = v12;
  v919 = v28;
  v920 = (v12 + 8);
  v924 = v11;
  v30 = sub_2647EF004();
  v31 = 0.0;
  if (v32 != 0.0)
  {
    v30 = sub_2647EF004();
    v31 = v33 - *MEMORY[0x277CBECD0];
  }

  MEMORY[0x28223BE20](v30);
  v939 = a1;
  sub_2647EF084();
  v34 = sub_2647EEF94();
  v925 = &v886;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v886 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2647EEF74();
  (v940)(&v886 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v38 = *(v35 + 88);
  v926 = v34;
  v39 = v38(v37, v34);
  if (MEMORY[0x277D20608] && v39 == *MEMORY[0x277D20608])
  {
    (*(v35 + 96))(&v886 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v926);
    v40 = SASecondsFromNanoseconds(*(*v37 + 16));
    v41 = [objc_opt_self() timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:v40 machContTimeSec:0.0 wallTime:v31];
  }

  else
  {
    if (!MEMORY[0x277D20600] || v39 != *MEMORY[0x277D20600])
    {
      v932 = &v886;
      if (qword_2814C1228 != -1)
      {
        swift_once();
      }

      v87 = sub_2647EF1A4();
      __swift_project_value_buffer(v87, qword_2814C1230);
      v88 = sub_2647EF094();
      v938 = &v886;
      v89 = *(v88 - 8);
      v90 = *(v89 + 64);
      MEMORY[0x28223BE20](v88);
      v92 = &v886 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
      v93 = *(v89 + 16);
      v94 = v939;
      v939 = v95;
      v93(v92, v94);
      v96 = sub_2647EF184();
      LODWORD(v937) = sub_2647EF384();
      if (os_log_type_enabled(v96, v937))
      {
        v97 = swift_slowAlloc();
        v934 = v97;
        v98 = swift_slowAlloc();
        v936 = v98;
        v933 = &v886;
        v946 = v98;
        *v97 = 136315138;
        MEMORY[0x28223BE20](v98);
        v935 = v96;
        v99 = sub_2647EF084();
        v931 = &v886;
        MEMORY[0x28223BE20](v99);
        sub_2647EEF74();
        (v940)(&v886 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
        v100 = v926;
        v101 = sub_2647EF274();
        v103 = sub_2647E7ED4(v101, v102, &v946);

        v104 = v934;
        *(v934 + 4) = v103;
        (*(v89 + 8))(v92, v939);
        v105 = v935;
        _os_log_impl(&dword_2647DA000, v935, v937, "Unhandled timestamp %s", v104, 0xCu);
        v106 = v936;
        __swift_destroy_boxed_opaque_existential_1Tm(v936);
        MEMORY[0x266741280](v106, -1, -1);
        MEMORY[0x266741280](v104, -1, -1);
      }

      else
      {

        (*(v89 + 8))(v92, v939);
        v100 = v926;
      }

      result = (*(v35 + 8))(v37, v100);
      v109 = &v949;
      goto LABEL_22;
    }

    (*(v35 + 96))(&v886 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v926);
    v42 = SASecondsFromNanoseconds(*(*v37 + 16));
    v41 = [objc_opt_self() timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:v42 wallTime:v31];
  }

  v43 = v41;

  v44 = v939;
  v921 = sub_2647EF074();
  v940 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80810, &qword_2647EFAB8);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v886 - v48;
  sub_2647DBEC0(v44, &v886 - v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80818, &qword_2647EFAC0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v926 = &v886 - v52;
  sub_2647EF064();
  v53 = v938;
  swift_beginAccess();
  isa = v53[2].isa;
  v55 = __OFADD__(isa, 1);
  v56 = (isa + 1);
  if (v55)
  {
    __break(1u);
  }

  else
  {
    v914 = v43;
    v912 = v50;
    v918 = v51;
    v911 = v46;
    v913 = v47;
    v922 = &v886;
    v925 = v49;
    v932 = &v886;
    v53[2].isa = v56;
    if (qword_2814C1228 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v57 = sub_2647EF1A4();
  v58 = __swift_project_value_buffer(v57, qword_2814C1230);
  v59 = sub_2647EF094();
  v917 = &v886;
  v60 = *(v59 - 8);
  v61 = v60[8];
  MEMORY[0x28223BE20](v59);
  v62 = &v886 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v60[2];
  v64 = v939;
  v65 = v63(v62, v939, v59);
  v916 = &v886;
  MEMORY[0x28223BE20](v65);
  v66 = v62;
  v67 = v63(v62, v64, v59);
  v915 = &v886;
  MEMORY[0x28223BE20](v67);
  v68 = v62;
  v63(v62, v64, v59);
  v69 = v940;
  swift_bridgeObjectRetain_n();
  v70 = v914;
  v914 = v58;
  v71 = sub_2647EF184();
  v72 = sub_2647EF364();
  v73 = os_log_type_enabled(v71, v72);
  v938 = v70;
  if (v73)
  {
    LODWORD(v909) = v72;
    v910 = v71;
    v74 = swift_slowAlloc();
    v908 = swift_slowAlloc();
    v945[0] = v908;
    *v74 = 136316162;
    [v70 wallTime];
    v75 = sub_2647DBA4C();
    v77 = sub_2647E7ED4(v75, v76, v945);

    *(v74 + 4) = v77;

    *(v74 + 12) = 2048;
    sub_2647EF004();
    *(v74 + 14) = v78;
    v907 = v60[1];
    (v907)(v62, v59);
    *(v74 + 22) = 2080;

    v79 = sub_2647E7ED4(v921, v69, v945);

    *(v74 + 24) = v79;
    v80 = swift_bridgeObjectRelease_n();
    v906 = &v886;
    *(v74 + 32) = 2080;
    MEMORY[0x28223BE20](v80);
    v82 = &v886 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2647EF054();
    v83 = sub_2647EF044();
    v84 = *(v83 - 8);
    if ((*(v84 + 48))(v82, 1, v83) == 1)
    {
      sub_2647EAD34(v82, &qword_27FF80810, &qword_2647EFAB8);
      v85 = 0xE400000000000000;
      v86 = 1701736302;
    }

    else
    {
      v86 = sub_2647EF034();
      v85 = v111;
      (*(v84 + 8))(v82, v83);
    }

    v112 = sub_2647E7ED4(v86, v85, v945);

    *(v74 + 34) = v112;
    v113 = v907;
    v114 = (v907)(v66, v59);
    *(v74 + 42) = 2080;
    v108 = v918;
    MEMORY[0x28223BE20](v114);
    sub_2647EF064();
    v115 = sub_2647EF394();
    v117 = v116;
    sub_2647EAD34(&v886 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80818, &qword_2647EFAC0);
    v118 = sub_2647E7ED4(v115, v117, v945);

    *(v74 + 44) = v118;
    (v113)(v68, v59);
    v119 = v910;
    _os_log_impl(&dword_2647DA000, v910, v909, "%s (%f) model event %s subtype %s for %s", v74, 0x34u);
    v120 = v908;
    swift_arrayDestroy();
    MEMORY[0x266741280](v120, -1, -1);
    MEMORY[0x266741280](v74, -1, -1);
  }

  else
  {

    v107 = v60[1];
    v107(v62, v59);
    swift_bridgeObjectRelease_n();
    v107(v62, v59);
    v107(v62, v59);
    v108 = v918;
  }

  v121 = sub_2647EF174();
  v122 = *(v121 - 8);
  v123 = *(v122 + 64);
  v124 = MEMORY[0x28223BE20](v121);
  MEMORY[0x28223BE20](v124);
  sub_2647EAEF4(v926, &v886 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80818, &qword_2647EFAC0);
  if ((*(v122 + 48))(&v886 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v121) == 1)
  {
    sub_2647EAD34(&v886 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80818, &qword_2647EFAC0);
    v125 = v940;
    v945[0] = v921;
    v945[1] = v940;
    v943 = 0xD00000000000001BLL;
    v944 = 0x80000002647EFE60;
    sub_2647EAB08();
    v126 = sub_2647EF3A4();
    v127 = v925;
    v128 = v924;
    if ((v126 & 1) == 0)
    {

      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      v162 = v127;
      return sub_2647EAD34(v162, &qword_27FF80810, &qword_2647EFAB8);
    }

    v129 = sub_2647EEFE4();
    v130 = *(v129 - 8);
    v131 = *(v130 + 64);
    MEMORY[0x28223BE20](v129);
    v133 = &v886 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2647EEFF4();
    v134 = v936;
    sub_2647EEFD4();
    (*(v130 + 8))(v133, v129);
    v135 = v923;
    if ((*(v923 + 48))(v134, 1, v128) == 1)
    {
      sub_2647EAD34(v134, &qword_27FF80808, &qword_2647EFAB0);
      swift_bridgeObjectRetain_n();
      v136 = sub_2647EF184();
      v137 = sub_2647EF374();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v945[0] = v139;
        *v138 = 136315138;

        v140 = sub_2647E7ED4(v921, v125, v945);

        *(v138 + 4) = v140;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_2647DA000, v136, v137, "%s has no modelManagerRequestIdentifier", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v139);
        MEMORY[0x266741280](v139, -1, -1);
        MEMORY[0x266741280](v138, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_76;
    }

    v178 = v935;
    (*(v135 + 32))(v935, v134, v128);
    v179 = v934;
    swift_beginAccess();
    v180 = *(v179 + 2);
    if (!*(v180 + 16) || (v181 = sub_2647EC7A0(v178), (v182 & 1) == 0))
    {
      swift_endAccess();
      v216 = v933;
      (*(v923 + 16))(v933, v178, v128);
      swift_bridgeObjectRetain_n();
      v217 = sub_2647EF184();
      v218 = sub_2647EF374();
      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        v939 = swift_slowAlloc();
        v945[0] = v939;
        *v219 = 136315394;

        v220 = sub_2647E7ED4(v921, v125, v945);

        *(v219 + 4) = v220;
        swift_bridgeObjectRelease_n();
        *(v219 + 12) = 2080;
        v221 = sub_2647EEEA4();
        v223 = sub_2647E7ED4(v221, v222, v945);

        *(v219 + 14) = v223;

        v224 = v919;
        (v919)(v216, v128);
        _os_log_impl(&dword_2647DA000, v217, v218, "%s %s has no existing execution", v219, 0x16u);
        v225 = v939;
        swift_arrayDestroy();
        MEMORY[0x266741280](v225, -1, -1);
        MEMORY[0x266741280](v219, -1, -1);

        (v224)(v935, v128);
      }

      else
      {

        v297 = v919;
        (v919)(v216, v128);
        swift_bridgeObjectRelease_n();
        (v297)(v178, v128);
      }

LABEL_76:
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      v162 = v925;
      return sub_2647EAD34(v162, &qword_27FF80810, &qword_2647EFAB8);
    }

    v183 = *(*(v180 + 56) + 8 * v181);
    swift_endAccess();
    v184 = *(v923 + 16);
    v185 = v931;
    v923 += 16;
    v937 = v184;
    (v184)(v931, v178, v128);
    swift_beginAccess();
    v186 = v183;
    sub_2647E6DB8(0, v185);
    v187 = swift_endAccess();
    v188 = v913;
    MEMORY[0x28223BE20](v187);
    v189 = (v188 + 15) & 0xFFFFFFFFFFFFFFF0;
    v190 = &v886 - v189;
    sub_2647EAEF4(v925, &v886 - v189, &qword_27FF80810, &qword_2647EFAB8);
    v191 = v938;
    v192 = v186;
    v193 = v191;
    v194 = v192;
    v195 = sub_2647EF184();
    v196 = sub_2647EF364();
    v197 = os_log_type_enabled(v195, v196);
    v938 = v194;
    v939 = v193;
    if (v197)
    {
      v936 = &v886;
      v198 = swift_slowAlloc();
      v934 = swift_slowAlloc();
      v945[0] = v934;
      *v198 = 136315650;
      v199 = [v194 debugDescription];
      v200 = sub_2647EF244();
      v202 = v201;

      v203 = sub_2647E7ED4(v200, v202, v945);

      *(v198 + 4) = v203;

      v933 = &v886;
      *(v198 + 12) = 2080;
      MEMORY[0x28223BE20](v204);
      v205 = &v886 - v189;
      sub_2647EAEF4(&v886 - v189, &v886 - v189, &qword_27FF80810, &qword_2647EFAB8);
      v206 = sub_2647EF044();
      v207 = *(v206 - 8);
      if ((*(v207 + 48))(v205, 1, v206) == 1)
      {
        v208 = 0x7974627573206F6ELL;
        sub_2647EAD34(v205, &qword_27FF80810, &qword_2647EFAB8);
        v209 = 0xEA00000000006570;
      }

      else
      {
        v208 = sub_2647EF034();
        v209 = v365;
        (*(v207 + 8))(v205, v206);
      }

      v366 = sub_2647E7ED4(v208, v209, v945);

      *(v198 + 14) = v366;
      sub_2647EAD34(v190, &qword_27FF80810, &qword_2647EFAB8);
      *(v198 + 22) = 2080;
      v367 = v939;
      v368 = [v939 debugDescription];
      v369 = sub_2647EF244();
      v371 = v370;

      v372 = sub_2647E7ED4(v369, v371, v945);

      *(v198 + 24) = v372;

      _os_log_impl(&dword_2647DA000, v195, v196, "%s %s at %s", v198, 0x20u);
      v373 = v934;
      swift_arrayDestroy();
      MEMORY[0x266741280](v373, -1, -1);
      MEMORY[0x266741280](v198, -1, -1);

      v305 = v913;
    }

    else
    {

      sub_2647EAD34(&v886 - v189, &qword_27FF80810, &qword_2647EFAB8);
      v305 = v188;
    }

    MEMORY[0x28223BE20](v304);
    v374 = (v305 + 15) & 0xFFFFFFFFFFFFFFF0;
    v375 = &v886 - v374;
    v376 = v925;
    sub_2647EAEF4(v925, &v886 - v374, &qword_27FF80810, &qword_2647EFAB8);
    v377 = sub_2647EF044();
    v378 = *(v377 - 8);
    v379 = (*(v378 + 48))(&v886 - v374, 1, v377);
    v380 = v940;
    if (v379 == 1)
    {

      (v919)(v935, v924);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v376, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v375, &qword_27FF80810, &qword_2647EFAB8);
    }

    MEMORY[0x28223BE20](v379);
    v381 = &v886 - v374;
    sub_2647EAEF4(v375, v381, &qword_27FF80810, &qword_2647EFAB8);
    v382 = (*(v378 + 88))(v381, v377);
    if (MEMORY[0x277D20B00] && v382 == *MEMORY[0x277D20B00])
    {

LABEL_115:
LABEL_143:
      (v919)(v935, v924);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v375, &qword_27FF80810, &qword_2647EFAB8);
    }

    v383 = v938;
    if (MEMORY[0x277D20AF0] && v382 == *MEMORY[0x277D20AF0])
    {
      v384 = v927;
      v385 = v924;
      (v937)(v927, v935, v924);
      swift_bridgeObjectRetain_n();
      v386 = sub_2647EF184();
      v387 = sub_2647EF374();
      if (os_log_type_enabled(v386, v387))
      {
        v388 = swift_slowAlloc();
        v937 = &v886;
        v389 = v380;
        v390 = v388;
        v936 = swift_slowAlloc();
        v945[0] = v936;
        *v390 = 136315394;

        v391 = v384;
        v392 = sub_2647E7ED4(v921, v389, v945);

        *(v390 + 4) = v392;
        swift_bridgeObjectRelease_n();
        *(v390 + 12) = 2080;
        v393 = sub_2647EEEA4();
        v395 = sub_2647E7ED4(v393, v394, v945);

        *(v390 + 14) = v395;

        v396 = v919;
        (v919)(v391, v385);
        _os_log_impl(&dword_2647DA000, v386, v387, "%s %s start without any metadata", v390, 0x16u);
        v397 = v936;
        swift_arrayDestroy();
        MEMORY[0x266741280](v397, -1, -1);
        MEMORY[0x266741280](v390, -1, -1);
      }

      else
      {

        v396 = v919;
        (v919)(v384, v385);

        swift_bridgeObjectRelease_n();
      }

      (v396)(v935, v385);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v375, &qword_27FF80810, &qword_2647EFAB8);
    }

    if (MEMORY[0x277D20AC8] && v382 == *MEMORY[0x277D20AC8])
    {

      v398 = v939;
      [v383 setEndTime:v939];
    }

    else
    {
      if (!MEMORY[0x277D20AD0] || v382 != *MEMORY[0x277D20AD0])
      {
        if (!MEMORY[0x277D20AE0] || v382 != *MEMORY[0x277D20AE0])
        {

          (v919)(v935, v924);
          sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
          (*(v378 + 8))(v381, v377);
          return sub_2647EAD34(v375, &qword_27FF80810, &qword_2647EFAB8);
        }

        goto LABEL_115;
      }

      v398 = [v383 startTime];
      [v383 setEndTime:v398];
    }

    goto LABEL_143;
  }

  v935 = &v886;
  v936 = v122;
  v141 = *(v122 + 32);
  v918 = &v886 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v917 = v121;
  v141(v918, &v886 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0), v121);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80820, &qword_2647EFAC8);
  v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v142 - 8);
  v145 = &v886 - v144;
  v146 = sub_2647EEFE4();
  v147 = *(v146 - 8);
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v146);
  v933 = v149;
  v150 = &v886 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2647EEFF4();
  sub_2647EEFB4();
  v153 = *(v147 + 8);
  v152 = (v147 + 8);
  v151 = v153;
  (v153)(v150, v146);
  v154 = sub_2647EF024();
  v155 = *(v154 - 8);
  if ((*(v155 + 48))(v145, 1, v154) == 1)
  {
    sub_2647EAD34(v145, &qword_27FF80820, &qword_2647EFAC8);
    v156 = v940;
    swift_bridgeObjectRetain_n();
    v157 = sub_2647EF184();
    v158 = sub_2647EF364();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v945[0] = v160;
      *v159 = 136315138;

      v161 = sub_2647E7ED4(v921, v156, v945);

      *(v159 + 4) = v161;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2647DA000, v157, v158, "No identifier for %s, ignoring", v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v160);
      MEMORY[0x266741280](v160, -1, -1);
      MEMORY[0x266741280](v159, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (v936[1])(v918, v917);
    sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
    return sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
  }

  v910 = v151;
  v912 = v146;
  v163 = sub_2647EF014();
  v165 = v164;
  (*(v155 + 8))(v145, v154);
  v166 = v937;
  swift_beginAccess();
  v167 = *(v166 + 2);

  v927 = v163;
  v169 = 0;
  v170 = sub_2647EAB5C(v168, v163, v165);

  if (v170)
  {
    v937 = v170;
    swift_bridgeObjectRetain_n();
    v171 = sub_2647EF184();
    v172 = sub_2647EF364();
    v173 = os_log_type_enabled(v171, v172);
    v174 = v918;
    if (v173)
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v943 = v176;
      *v175 = 136315138;

      v177 = sub_2647E7ED4(v927, v165, &v943);

      *(v175 + 4) = v177;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2647DA000, v171, v172, "Found existing model %s", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v176);
      MEMORY[0x266741280](v176, -1, -1);
      MEMORY[0x266741280](v175, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v226 = v936;
    v227 = v917;
  }

  else
  {
    v916 = 0;
    swift_bridgeObjectRetain_n();
    v210 = sub_2647EF184();
    v211 = sub_2647EF364();
    v212 = os_log_type_enabled(v210, v211);
    v174 = v918;
    if (v212)
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v943 = v214;
      *v213 = 136315138;

      v215 = sub_2647E7ED4(v927, v165, &v943);

      *(v213 + 4) = v215;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2647DA000, v210, v211, "Creating new model %s", v213, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v214);
      MEMORY[0x266741280](v214, -1, -1);
      MEMORY[0x266741280](v213, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v226 = v936;
    v227 = v917;
    v228 = objc_allocWithZone(MEMORY[0x277D4B440]);

    v229 = sub_2647EF234();

    v230 = [v228 initWithIdentifier_];

    v231 = v937;
    swift_beginAccess();
    v232 = v230;
    MEMORY[0x266740C50]();
    if (*((*(v231 + 2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v231 + 2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v826 = *((*(v231 + 2) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2647EF304();
    }

    v937 = v232;
    sub_2647EF314();
    swift_endAccess();
    v169 = v916;
  }

  v233 = sub_2647EF164();
  v931 = &v886;
  v915 = *(v233 - 8);
  v234 = v915[8];
  v235 = MEMORY[0x28223BE20](v233);
  v916 = &v886 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v235);
  v237 = (&v886 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
  (v226[2])(v237, v174, v227);
  v238 = (v226[11])(v237, v227);
  if (!MEMORY[0x277D20BB0] || v238 != *MEMORY[0x277D20BB0])
  {
    if (!MEMORY[0x277D20BA8] || v238 != *MEMORY[0x277D20BA8])
    {

      v296 = v226[1];
      v296(v174, v227);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
      return (v296)(v237, v227);
    }

    v916 = v169;
    v921 = &v886;
    (v226[12])(v237, v227);
    v267 = *v237;
    v268 = sub_2647EF114();
    v924 = v267;
    v269 = swift_projectBox();
    v928 = &v886;
    v270 = *(v268 - 8);
    v271 = *(v270 + 64);
    MEMORY[0x28223BE20](v269);
    v919 = v272;
    v923 = v270;
    v274 = *(v270 + 16);
    v273 = (v270 + 16);
    v934 = &v886 - ((&v272[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
    v930 = v268;
    v920 = v274;
    v275 = (v274)();
    v276 = v913;
    MEMORY[0x28223BE20](v275);
    v277 = (v276 + 15) & 0xFFFFFFFFFFFFFFF0;
    v278 = &v886 - v277;
    v279 = v925;
    sub_2647EAEF4(v925, &v886 - v277, &qword_27FF80810, &qword_2647EFAB8);
    v280 = sub_2647EF044();
    v281 = *(v280 - 8);
    v282 = (*(v281 + 48))(&v886 - v277, 1, v280);
    if (v282 != 1)
    {
      v915 = &v886;
      MEMORY[0x28223BE20](v282);
      sub_2647EAEF4(&v886 - v277, &v886 - v277, &qword_27FF80810, &qword_2647EFAB8);
      v283 = (*(v281 + 88))(&v886 - v277, v280);
      if (!MEMORY[0x277D20B00] || v283 != *MEMORY[0x277D20B00])
      {
        if (MEMORY[0x277D20AF0] && v283 == *MEMORY[0x277D20AF0])
        {
          v904 = v273;
          v913 = &v886;
          v911 = (&v886 - v277);
          v909 = v165;
          v284 = sub_2647EF0F4();
          v906 = &v886;
          v285 = *(v284 - 8);
          v286 = *(v285 + 64);
          MEMORY[0x28223BE20](v284);
          v907 = v287;
          v903 = ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
          v908 = (&v886 - v903);
          v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80860, &qword_2647EFB00);
          v288 = *(*(v902 - 8) + 64);
          v289 = (v288 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v902);
          v290 = v934;
          sub_2647EF104();
          v291 = v285;
          v292 = (v285 + 48);
          v293 = *(v285 + 48);
          v916 = v284;
          v294 = v293(&v886 - v289, 1, v284);
          v901 = v288;
          if (v294 == 1)
          {
            v933 = v293;
            v939 = v292;
            v905 = &v886;
            v295 = sub_2647EAD34(&v886 - v289, &qword_27FF80860, &qword_2647EFB00);
            goto LABEL_170;
          }

          v900 = v291;
          v495 = v291[4];
          v496 = v916;
          v497 = v495(v908, &v886 - v289, v916);
          v905 = &v886;
          v498 = MEMORY[0x28223BE20](v497);
          v899 = (&v886 - v903);
          v903 = &v886;
          MEMORY[0x28223BE20](v498);
          sub_2647EF0E4();
          if (v293(&v886 - v289, 1, v496) == 1)
          {
            v933 = v293;
            v939 = v292;
            (v900[1])(v908, v916);
            v295 = sub_2647EAD34(&v886 - v289, &qword_27FF80860, &qword_2647EFB00);
            v290 = v934;
LABEL_170:
            v499 = v919;
            MEMORY[0x28223BE20](v295);
            v500 = &v886 - ((&v499[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
            v501 = v930;
            v502 = v920;
            v503 = (v920)(v500, v290, v930);
            MEMORY[0x28223BE20](v503);
            (v502)(v500, v290, v501);
            v504 = v290;
            v505 = v909;
            swift_bridgeObjectRetain_n();
            v506 = sub_2647EF184();
            v507 = sub_2647EF374();
            v508 = os_log_type_enabled(v506, v507);
            v509 = v925;
            if (v508)
            {
              LODWORD(v914) = v507;
              v919 = v506;
              v920 = &v886;
              v929 = &v886;
              v510 = swift_slowAlloc();
              v912 = swift_slowAlloc();
              v943 = v912;
              *v510 = 136315650;

              v511 = sub_2647E7ED4(v927, v505, &v943);

              *(v510 + 4) = v511;
              v512 = swift_bridgeObjectRelease_n();
              *(v510 + 12) = 2080;
              v513 = v901;
              MEMORY[0x28223BE20](v512);
              v514 = (v513 + 15) & 0xFFFFFFFFFFFFFFF0;
              sub_2647EF104();
              LODWORD(v511) = (v933)(&v886 - v514, 1, v916);
              v515 = sub_2647EAD34(&v886 - v514, &qword_27FF80860, &qword_2647EFB00);
              if (v511 == 1)
              {
                v516 = 0xE600000000000000;
                v517 = 0x29656E6F6E28;
              }

              else
              {
                MEMORY[0x28223BE20](v515);
                sub_2647EF104();
                v517 = sub_2647EF264();
                v516 = v620;
              }

              v621 = sub_2647E7ED4(v517, v516, &v943);

              *(v510 + 14) = v621;
              v622 = *(v923 + 8);
              v623 = v622(v500, v501);
              *(v510 + 22) = 2080;
              MEMORY[0x28223BE20](v623);
              sub_2647EF0E4();
              v624 = (v933)(&v886 - v514, 1, v916);
              v625 = sub_2647EAD34(&v886 - v514, &qword_27FF80860, &qword_2647EFB00);
              if (v624 == 1)
              {
                v626 = 0xE600000000000000;
                v627 = 0x29656E6F6E28;
              }

              else
              {
                MEMORY[0x28223BE20](v625);
                sub_2647EF0E4();
                v627 = sub_2647EF264();
                v626 = v628;
              }

              v629 = sub_2647E7ED4(v627, v626, &v943);

              *(v510 + 24) = v629;

              v630 = v930;
              v622(v500, v930);
              v631 = v919;
              _os_log_impl(&dword_2647DA000, v919, v914, "Model %s assetTransition start with no fromState %s or toState %s", v510, 0x20u);
              v632 = v912;
              swift_arrayDestroy();
              MEMORY[0x266741280](v632, -1, -1);
              MEMORY[0x266741280](v510, -1, -1);

              v622(v934, v630);
              (v936[1])(v918, v917);
              sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
              sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
            }

            else
            {

              v518 = *(v923 + 8);
              v518(v500, v501);
              v518(v500, v501);

              swift_bridgeObjectRelease_n();

              v518(v504, v501);
              (v936[1])(v918, v917);
              sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
              sub_2647EAD34(v509, &qword_27FF80810, &qword_2647EFAB8);
            }

            goto LABEL_204;
          }

          v556 = v899;
          v557 = v916;
          v558 = v495(v899, &v886 - v289, v916);
          v903 = &v886;
          MEMORY[0x28223BE20](v558);
          v560 = (v559 + 15) & 0xFFFFFFFFFFFFFFF0;
          v561 = v900;
          v562 = v900[13];
          LODWORD(v902) = *MEMORY[0x277D20B80];
          v904 = v562;
          (v562)(&v886 - v560);
          sub_2647EAD94(&qword_2814C11D0, MEMORY[0x28221F520]);
          sub_2647EF2C4();
          sub_2647EF2C4();
          v564 = v942;
          v563 = v943;
          v565 = v561[1];
          v920 = (v561 + 1);
          v919 = v565;
          v566 = (v565)(&v886 - v560, v557);
          v567 = v563 == v564;
          v568 = v556;
          if (v567)
          {
            goto LABEL_299;
          }

          MEMORY[0x28223BE20](v566);
          v569 = v916;
          (v904)(&v886 - v560, *MEMORY[0x277D20B90], v916);
          sub_2647EF2C4();
          sub_2647EF2C4();
          v571 = v942;
          v570 = v943;
          v566 = (v919)(&v886 - v560, v569);
          v567 = v570 == v571;
          v568 = v556;
          if (v567)
          {
            goto LABEL_299;
          }

          MEMORY[0x28223BE20](v566);
          v573 = &v886 - ((v572 + 15) & 0xFFFFFFFFFFFFFFF0);
          v574 = v916;
          (v904)(v573, *MEMORY[0x277D20B78], v916);
          sub_2647EF2C4();
          sub_2647EF2C4();
          v576 = v942;
          v575 = v943;
          v566 = (v919)(v573, v574);
          v567 = v575 == v576;
          v568 = v556;
          if (v567)
          {
LABEL_299:
            MEMORY[0x28223BE20](v566);
            v577 = &v886 - v560;
            v578 = v916;
            (v904)(&v886 - v560, v902, v916);
            sub_2647EF2C4();
            sub_2647EF2C4();
            v580 = v942;
            v579 = v943;
            v581 = (v919)(v577, v578);
            if (v579 == v580)
            {
              goto LABEL_194;
            }

            MEMORY[0x28223BE20](v581);
            v583 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
            v584 = v916;
            (v904)(&v886 - v583, *MEMORY[0x277D20B90], v916);
            sub_2647EF2C4();
            sub_2647EF2C4();
            v586 = v942;
            v585 = v943;
            v587 = (v919)(&v886 - v583, v584);
            if (v585 == v586)
            {
              goto LABEL_194;
            }

            MEMORY[0x28223BE20](v587);
            v588 = &v886 - v583;
            v589 = &v886 - v583;
            v590 = v916;
            (v904)(v589, *MEMORY[0x277D20B78], v916);
            sub_2647EF2C4();
            sub_2647EF2C4();
            v592 = v942;
            v591 = v943;
            v566 = (v919)(v588, v590);
            if (v591 == v592)
            {
LABEL_194:

              v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80840, &qword_2647EFAE0);
              v940 = &v886;
              v594 = (*(*(v593 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v593 - 8);
              v596 = (&v886 - v595);
              v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
              v914 = &v886;
              v598 = v597[12];
              v599 = v597[16];
              v600 = v597[20];
              v907 = v597[24];
              MEMORY[0x28223BE20](v597);
              v602 = &v886 - ((v601 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_2647EEFF4();
              v603 = sub_2647EEFC4();
              v604 = v568;
              v606 = v605;
              v607 = (v910)(v602, v912);
              *v596 = v603;
              v596[1] = v606;
              v608 = v934;
              MEMORY[0x266740A40](v607);
              v609 = v938;
              *(v596 + v599) = v938;
              v610 = v900[2];
              v611 = v596 + v600;
              v612 = v908;
              v613 = v916;
              v610(v611, v908, v916);
              v610(v907 + v596, v604, v613);
              (*(*(v597 - 1) + 56))(v596, 0, 1, v597);
              swift_beginAccess();
              v614 = v609;
              sub_2647E6BE8(v596, v927, v909);
              swift_endAccess();

              v615 = v919;
              (v919)(v604, v613);
              (v615)(v612, v613);
              (*(v923 + 8))(v608, v930);
              (v936[1])(v918, v917);
              sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
              sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
              v616 = &v938;
LABEL_256:
              v798 = *(v616 - 32);
              sub_2647EAD34(v911, &qword_27FF80810, &qword_2647EFAB8);
            }
          }

          v939 = &v886;
          v637 = v907;
          MEMORY[0x28223BE20](v566);
          v638 = v916;
          v639 = &v886 - ((v637 + 15) & 0xFFFFFFFFFFFFFFF0);
          v640 = v900[2];
          v641 = v640(v639, v908, v916);
          v933 = &v886;
          MEMORY[0x28223BE20](v641);
          v642 = v639;
          v640(v639, v568, v638);
          v643 = v909;
          swift_bridgeObjectRetain_n();
          v644 = sub_2647EF184();
          LODWORD(v929) = sub_2647EF374();
          if (os_log_type_enabled(v644, v929))
          {
            v645 = swift_slowAlloc();
            v914 = swift_slowAlloc();
            v943 = v914;
            *v645 = 136315650;

            v646 = sub_2647E7ED4(v927, v643, &v943);

            *(v645 + 4) = v646;
            swift_bridgeObjectRelease_n();
            *(v645 + 12) = 2080;
            sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520]);
            v647 = sub_2647EF434();
            v649 = sub_2647E7ED4(v647, v648, &v943);

            *(v645 + 14) = v649;
            v650 = v919;
            (v919)(v639, v638);
            *(v645 + 22) = 2080;
            v651 = sub_2647EF434();
            v653 = sub_2647E7ED4(v651, v652, &v943);

            *(v645 + 24) = v653;

            (v650)(v642, v638);
            _os_log_impl(&dword_2647DA000, v644, v929, "Model %s assetTransition start with unhandled fromState %s or toState %s", v645, 0x20u);
            v654 = v914;
            swift_arrayDestroy();
            MEMORY[0x266741280](v654, -1, -1);
            MEMORY[0x266741280](v645, -1, -1);

            (v650)(v899, v638);
            (v650)(v908, v638);
          }

          else
          {

            v804 = v919;
            (v919)(v639, v638);
            (v804)(v639, v638);

            swift_bridgeObjectRelease_n();

            (v804)(v899, v638);
            (v804)(v908, v638);
          }

          (*(v923 + 8))(v934, v930);
          (v936[1])(v918, v917);
          sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
          v803 = &v938;
LABEL_262:
          v805 = *(v803 - 32);
          sub_2647EAD34(v911, &qword_27FF80810, &qword_2647EFAB8);

          v493 = &v947;
LABEL_165:
          v494 = *(v493 - 32);
          v109 = &v948;
LABEL_22:
          v110 = *(v109 - 32);
          return result;
        }

        if (MEMORY[0x277D20AC8] && v283 == *MEMORY[0x277D20AC8])
        {
          v913 = &v886;
          v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80830, &qword_2647EFAD0);
          v908 = &v886;
          v898 = v323;
          v904 = *(*(v323 - 8) + 64);
          MEMORY[0x28223BE20](v323);
          v912 = &v886 - v324;
          v325 = sub_2647EF0F4();
          v907 = &v886;
          v933 = *(v325 - 8);
          v326 = *(v933 + 8);
          v327 = MEMORY[0x28223BE20](v325);
          v939 = &v886 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0);
          v903 = v328;
          MEMORY[0x28223BE20](v327);
          v901 = v329;
          v910 = (&v886 - v329);
          v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80838, &qword_2647EFAD8);
          v906 = &v886;
          v331 = (*(*(v330 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v330);
          v333 = &v886 - v332;
          v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80840, &qword_2647EFAE0);
          v905 = &v886;
          v900 = *(*(v334 - 8) + 64);
          MEMORY[0x28223BE20](v334 - 8);
          v899 = v335;
          v336 = (&v886 - v335);
          v337 = v929;
          swift_beginAccess();
          sub_2647E6AA4(v927, v165, *(v337 + 2), v336);
          swift_endAccess();
          v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
          v339 = *(v338 - 1);
          if ((*(v339 + 48))(v336, 1, v338) == 1)
          {
            sub_2647EAD34(v336, &qword_27FF80840, &qword_2647EFAE0);
            swift_bridgeObjectRetain_n();
            v340 = sub_2647EF184();
            v341 = sub_2647EF354();
            v342 = os_log_type_enabled(v340, v341);
            v343 = v918;
            if (v342)
            {
              v344 = swift_slowAlloc();
              v345 = swift_slowAlloc();
              v943 = v345;
              *v344 = 136315138;

              v346 = sub_2647E7ED4(v927, v165, &v943);

              *(v344 + 4) = v346;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&dword_2647DA000, v340, v341, "Model %s assetTransition end without start", v344, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v345);
              MEMORY[0x266741280](v345, -1, -1);
              MEMORY[0x266741280](v344, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v923 + 8))(v934, v930);
            (v936[1])(v343, v917);
            sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
            sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
            sub_2647EAD34(v278, &qword_27FF80810, &qword_2647EFAB8);

            v550 = &v947;
            goto LABEL_207;
          }

          v896 = &v886;
          v911 = v278;
          v519 = v338[12];
          v520 = *(v336 + v338[16]);
          v897 = v338[20];
          v902 = v338[24];
          v521 = v330[12];
          v522 = v330[16];
          v909 = v165;
          v894 = v330[20];
          v895 = v330[24];
          *v333 = *v336;
          sub_2647EAE8C(v336 + v519, &v333[v521], &qword_27FF80830, &qword_2647EFAD0);
          *&v333[v522] = v520;
          v523 = v933 + 32;
          v524 = *(v933 + 4);
          (v524)(&v894[v333], v897 + v336, v325);
          (v524)(v895 + v333, v336 + v902, v325);
          v525 = *(v333 + 1);
          v893 = *v333;
          v902 = v525;
          v526 = v330[12];
          v897 = *&v333[v330[16]];
          v527 = v330[20];
          v528 = v330[24];
          sub_2647EAE8C(&v333[v526], v912, &qword_27FF80830, &qword_2647EFAD0);
          (v524)(v939, &v333[v527], v325);
          v529 = &v333[v528];
          v530 = v910;
          v905 = v325;
          v895 = v523;
          v894 = v524;
          v531 = (v524)(v910, v529, v325);
          MEMORY[0x28223BE20](v531);
          v532 = (&v886 - v899);
          (*(v339 + 56))(&v886 - v899, 1, 1, v338);
          swift_beginAccess();
          v533 = v909;

          sub_2647E6BE8(v532, v927, v533);
          swift_endAccess();
          v534 = [v937 loadedChanges];
          sub_2647EACEC(0, &qword_2814C11A8, 0x277D4B450);
          v535 = sub_2647EF2F4();

          v536 = sub_2647DD4C8(v535);

          v906 = &v886;
          v942 = v536;
          v538 = v903;
          v539 = MEMORY[0x28223BE20](v537);
          v540 = (&v886 - v901);
          v541 = v918;
          v929 = v536;
          if (v536)
          {
            MEMORY[0x28223BE20](v539);
            v542 = v536;
            if ([v542 loaded])
            {

              v543 = *MEMORY[0x277D20B80];
              v544 = v933;
              v545 = *(v933 + 13);
            }

            else
            {
              v635 = [v542 inMemory];

              v544 = v933;
              v545 = *(v933 + 13);
              if (v635)
              {
                v636 = MEMORY[0x277D20B78];
              }

              else
              {
                v636 = MEMORY[0x277D20B90];
              }

              v543 = *v636;
            }

            v634 = v905;
            v545(&v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0), v543, v905);
            (v894)(v540, &v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0), v634);
          }

          else
          {
            v544 = v933;
            v634 = v905;
            (*(v933 + 13))(&v886 - v901, *MEMORY[0x277D20B90], v905);
          }

          v655 = sub_2647EAD94(&qword_2814C11D8, MEMORY[0x28221F520]);
          v656 = v939;
          v901 = v540;
          v657 = sub_2647EF224();
          if ((v657 & 1) == 0)
          {
            v899 = &v886;
            v658 = v904;
            MEMORY[0x28223BE20](v657);
            v890 = (v658 + 15) & 0xFFFFFFFFFFFFFFF0;
            v659 = &v886 - v890;
            v660 = sub_2647EAEF4(v912, &v886 - v890, &qword_27FF80830, &qword_2647EFAD0);
            v895 = &v886;
            MEMORY[0x28223BE20](v660);
            v661 = &v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0);
            v662 = *(v544 + 2);
            v894 = v544 + 16;
            v892 = v662;
            v662(v661, v656, v634);
            swift_bridgeObjectRetain_n();
            v663 = v937;
            v664 = sub_2647EF184();
            v891 = sub_2647EF374();
            v665 = os_log_type_enabled(v664, v891);
            v900 = v655;
            v889 = v663;
            if (v665)
            {
              v666 = swift_slowAlloc();
              v888 = swift_slowAlloc();
              v943 = v888;
              *v666 = 136316162;
              v667 = [v663 identifier];
              v887 = v664;
              v668 = v667;
              v669 = sub_2647EF244();
              v670 = v544;
              v672 = v671;

              v673 = sub_2647E7ED4(v669, v672, &v943);

              *(v666 + 4) = v673;

              *(v666 + 12) = 2080;
              MEMORY[0x28223BE20](v674);
              sub_2647EAEF4(v659, &v886 - v890, &qword_27FF80830, &qword_2647EFAD0);
              v675 = sub_2647EF274();
              v677 = sub_2647E7ED4(v675, v676, &v943);

              *(v666 + 14) = v677;
              sub_2647EAD34(v659, &qword_27FF80830, &qword_2647EFAD0);
              *(v666 + 22) = 2080;
              sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520]);
              v678 = sub_2647EF434();
              v680 = sub_2647E7ED4(v678, v679, &v943);

              *(v666 + 24) = v680;
              v681 = *(v670 + 1);
              v681(v661, v905);
              *(v666 + 32) = 2080;
              if (v902)
              {
                v682 = v893;
              }

              else
              {
                v682 = 0x656E6F206F6ELL;
              }

              if (v902)
              {
                v683 = v902;
              }

              else
              {
                v683 = 0xE600000000000000;
              }

              v684 = sub_2647E7ED4(v682, v683, &v943);

              *(v666 + 34) = v684;
              swift_bridgeObjectRelease_n();
              *(v666 + 42) = 2080;
              v685 = v929;
              v686 = v929;
              v687 = sub_2647DC60C(v685);
              v689 = v688;

              v690 = sub_2647E7ED4(v687, v689, &v943);
              v656 = v939;

              *(v666 + 44) = v690;
              v691 = v887;
              _os_log_impl(&dword_2647DA000, v887, v891, "Model %s %s assetTransition %s -> loaded by %s, thought it was already %s, adding missing earlier state", v666, 0x34u);
              v692 = v888;
              swift_arrayDestroy();
              MEMORY[0x266741280](v692, -1, -1);
              v634 = v905;
              MEMORY[0x266741280](v666, -1, -1);
            }

            else
            {

              sub_2647EAD34(v659, &qword_27FF80830, &qword_2647EFAD0);
              v681 = *(v544 + 1);
              v681(v661, v634);
              swift_bridgeObjectRelease_n();
            }

            v693 = v916;
            v694 = sub_2647DC780(v656);
            v538 = v903;
            if (v693)
            {
              v916 = &v886;
              MEMORY[0x28223BE20](v694);
              v695 = &v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0);
              v892(v695, v656, v634);
              v696 = sub_2647EF184();
              v697 = sub_2647EF384();
              if (os_log_type_enabled(v696, v697))
              {
                v698 = swift_slowAlloc();
                v943 = swift_slowAlloc();
                v899 = v681;
                v699 = v943;
                *v698 = 136315138;
                sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520]);
                v700 = sub_2647EF434();
                v702 = sub_2647E7ED4(v700, v701, &v943);

                *(v698 + 4) = v702;
                v538 = v903;
                v703 = v918;
                (v899)(v695, v634);
                v704 = v697;
                v541 = v703;
                _os_log_impl(&dword_2647DA000, v696, v704, "Unable to create model load change for state %s", v698, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v699);
                MEMORY[0x266741280](v699, -1, -1);
                MEMORY[0x266741280](v698, -1, -1);

                v530 = v910;
                goto LABEL_237;
              }

              v681(&v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0), v634);
            }

            else
            {
              v705 = v694;
              swift_beginAccess();
              v942 = v705;
              v706 = v705;

              [v889 addLoadedChange_];
              v929 = v705;
            }

            v530 = v910;
            v541 = v918;
          }

LABEL_237:
          v707 = sub_2647EF224();
          if (v707)
          {
            v708 = v530;
            MEMORY[0x28223BE20](v707);
            v709 = (v538 + 15) & 0xFFFFFFFFFFFFFFF0;
            v710 = v933;
            (*(v933 + 13))(&v886 - v709, *MEMORY[0x277D20B80], v634);
            v711 = sub_2647EF224();
            v916 = *(v710 + 1);
            v712 = (v916)(&v886 - v709, v634);
            if (v711)
            {
              v927 = &v886;
              MEMORY[0x28223BE20](v712);
              v713 = &v886 - v709;
              v714 = *(v933 + 2);
              v715 = v714(&v886 - v709, v939, v634);
              v933 = &v886;
              MEMORY[0x28223BE20](v715);
              v716 = &v886 - v709;
              v714(&v886 - v709, v708, v634);
              v717 = v937;
              v718 = sub_2647EF184();
              v719 = sub_2647EF364();
              LODWORD(v937) = v719;
              if (!os_log_type_enabled(v718, v719))
              {

                v802 = v916;
                (v916)(&v886 - v709, v634);
                (v802)(&v886 - v709, v634);

                (v802)(v901, v634);
                (v802)(v708, v634);
                (v802)(v939, v634);
                sub_2647EAD34(v912, &qword_27FF80830, &qword_2647EFAD0);
                (*(v923 + 8))(v934, v930);
                (v936[1])(v541, v917);
                sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
                sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);

                goto LABEL_259;
              }

              v720 = swift_slowAlloc();
              v920 = swift_slowAlloc();
              v941 = v920;
              *v720 = 136315650;
              v721 = [v717 identifier];
              v919 = v718;
              v722 = v721;
              v723 = sub_2647EF244();
              v725 = v724;

              v726 = sub_2647E7ED4(v723, v725, &v941);

              *(v720 + 4) = v726;

              *(v720 + 12) = 2080;
              sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520]);
              v727 = sub_2647EF434();
              v729 = sub_2647E7ED4(v727, v728, &v941);

              *(v720 + 14) = v729;
              v730 = v916;
              (v916)(v713, v634);
              *(v720 + 22) = 2080;
              v731 = sub_2647EF434();
              v733 = sub_2647E7ED4(v731, v732, &v941);

              *(v720 + 24) = v733;

              (v730)(v716, v634);
              v734 = v919;
              _os_log_impl(&dword_2647DA000, v919, v937, "Model %s assetTransition ignoring %s -> %s", v720, 0x20u);
              v735 = v920;
              swift_arrayDestroy();
              MEMORY[0x266741280](v735, -1, -1);
              MEMORY[0x266741280](v720, -1, -1);

              (v730)(v901, v634);
              (v730)(v708, v634);
              (v730)(v939, v634);
              sub_2647EAD34(v912, &qword_27FF80830, &qword_2647EFAD0);
              (*(v923 + 8))(v934, v930);
              (v936[1])(v918, v917);
              sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
              sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);

              v736 = &v950;
LABEL_241:
              v737 = *(v736 - 32);
LABEL_259:
              v803 = &v940;
              goto LABEL_262;
            }
          }

          v738 = v538;
          v900 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80850, &qword_2647EFAF0);
          v739 = *(*(v900 - 1) + 64);
          v740 = (v739 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v900);
          v741 = &v886 - v740;
          sub_2647EF0D4();
          v742 = sub_2647EF0B4();
          v743 = *(v742 - 8);
          v744 = (*(v743 + 48))(&v886 - v740, 1, v742);
          v745 = v904;
          if (v744 != 1)
          {
            v916 = &v886;
            MEMORY[0x28223BE20](v744);
            v746 = &v886 - v740;
            sub_2647EAEF4(v741, v746, &qword_27FF80850, &qword_2647EFAF0);
            v747 = (*(v743 + 88))(v746, v742);
            if (!MEMORY[0x277D20B70] || v747 != *MEMORY[0x277D20B70])
            {
              if (MEMORY[0x277D20B68] && v747 == *MEMORY[0x277D20B68])
              {
                v903 = &v886;
                v900 = &v886;
                MEMORY[0x28223BE20](v747);
                v748 = &v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0);
                v749 = v933;
                v750 = *(v933 + 2);
                v751 = v905;
                v750(v748, v910, v905);
                v752 = (*(v749 + 11))(v748, v751);
                if (MEMORY[0x277D20B90] && v752 == *MEMORY[0x277D20B90])
                {
                  LODWORD(v899) = 0;
                  v920 = 0;
                  v919 = 0;
                }

                else
                {
                  if (MEMORY[0x277D20B78] && v752 == *MEMORY[0x277D20B78])
                  {
                    v920 = 0;
                    v919 = 0;
                  }

                  else
                  {
                    if (!MEMORY[0x277D20B80] || v752 != *MEMORY[0x277D20B80])
                    {
                      v920 = &v886;
                      MEMORY[0x28223BE20](v752);
                      v808 = &v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0);
                      v809 = (v750)(v808, v939, v905);
                      v919 = &v886;
                      MEMORY[0x28223BE20](v809);
                      v904 = v808;
                      (v750)();
                      swift_bridgeObjectRetain_n();
                      v810 = sub_2647EF184();
                      v811 = sub_2647EF384();
                      v914 = v810;
                      LODWORD(v899) = v811;
                      if (os_log_type_enabled(v810, v811))
                      {
                        v812 = swift_slowAlloc();
                        v898 = swift_slowAlloc();
                        v941 = v898;
                        *v812 = 136315650;
                        v813 = v909;

                        v814 = sub_2647E7ED4(v927, v813, &v941);

                        *(v812 + 4) = v814;
                        swift_bridgeObjectRelease_n();
                        *(v812 + 12) = 2080;
                        v927 = sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520]);
                        v815 = v905;
                        v816 = sub_2647EF434();
                        v818 = sub_2647E7ED4(v816, v817, &v941);

                        *(v812 + 14) = v818;
                        v819 = *(v933 + 1);
                        v933 = ((v933 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                        v819(v808, v815);
                        *(v812 + 22) = 2080;
                        v820 = v904;
                        v821 = sub_2647EF434();
                        v823 = sub_2647E7ED4(v821, v822, &v941);

                        *(v812 + 24) = v823;

                        v819(v820, v815);
                        v824 = v914;
                        _os_log_impl(&dword_2647DA000, v914, v899, "Model %s assetTransition with unhandled fromState %s or toState %s", v812, 0x20u);
                        v825 = v898;
                        swift_arrayDestroy();
                        MEMORY[0x266741280](v825, -1, -1);
                        MEMORY[0x266741280](v812, -1, -1);
                      }

                      else
                      {

                        v819 = *(v933 + 1);
                        v933 = ((v933 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                        v815 = v905;
                        v819(v904, v905);
                        v819(v808, v815);
                        swift_bridgeObjectRelease_n();
                      }

                      v819(v901, v815);
                      v819(v910, v815);
                      v819(v939, v815);
                      sub_2647EAD34(v912, &qword_27FF80830, &qword_2647EFAD0);
                      (*(v923 + 8))(v934, v930);
                      (v936[1])(v918, v917);
                      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
                      sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
                      v819(v748, v905);
                      sub_2647EAD34(v741, &qword_27FF80850, &qword_2647EFAF0);

                      v736 = &v935;
                      goto LABEL_241;
                    }

                    if (v929 && (v806 = [v929 loadedRequesters]) != 0)
                    {
                      v807 = v806;
                      v920 = sub_2647EF2F4();
                    }

                    else
                    {
                      v920 = MEMORY[0x277D84F90];
                    }

                    if (v902)
                    {

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v920 = sub_2647E7DC8(0, *(v920 + 2) + 1, 1, v920);
                      }

                      v828 = *(v920 + 2);
                      v827 = *(v920 + 3);
                      if (v828 >= v827 >> 1)
                      {
                        v920 = sub_2647E7DC8((v827 > 1), v828 + 1, 1, v920);
                      }

                      v829 = v920;
                      *(v920 + 2) = v828 + 1;
                      v830 = &v829[16 * v828];
                      v831 = v902;
                      *(v830 + 4) = v893;
                      *(v830 + 5) = v831;
                    }

                    v919 = v938;
                  }

                  LODWORD(v899) = 1;
                }

                v900 = &v886;
                MEMORY[0x28223BE20](v752);
                v833 = (v832 + 15) & 0xFFFFFFFFFFFFFFF0;
                v834 = &v886 - v833;
                v835 = *MEMORY[0x277D20B58];
                v836 = sub_2647EF0A4();
                v837 = *(v836 - 8);
                (*(v837 + 104))(&v886 - v833, v835, v836);
                (*(v837 + 56))(&v886 - v833, 0, 1, v836);
                v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80858, &qword_2647EFAF8);
                v898 = &v886;
                v839 = (*(*(v838 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                v840 = MEMORY[0x28223BE20](v838 - 8);
                v842 = &v886 - v841;
                v843 = *(v840 + 56);
                sub_2647EAEF4(&v886 - v833, &v886 - v841, &qword_27FF80830, &qword_2647EFAD0);
                sub_2647EAEF4(v912, &v842[v843], &qword_27FF80830, &qword_2647EFAD0);
                v844 = *(v837 + 48);
                v845 = v844(v842, 1, v836);
                if (v845 == 1)
                {
                  sub_2647EAD34(&v886 - v833, &qword_27FF80830, &qword_2647EFAD0);
                  if (v844(&v842[v843], 1, v836) == 1)
                  {
                    sub_2647EAD34(v842, &qword_27FF80830, &qword_2647EFAD0);
                    v846 = 1;
LABEL_291:
                    if (v920)
                    {
                      v853 = v897;
                      v854 = sub_2647EF2E4();
                    }

                    else
                    {
                      v855 = v897;
                      v854 = 0;
                    }

                    v856 = objc_allocWithZone(MEMORY[0x277D4B450]);
                    v857 = v897;
                    v858 = v919;
                    v859 = [v856 initWithTimestamp:v897 endTime:v919 userInitiated:v846 & 1 loadedRequesters:v854 inMemory:v899];

                    [v937 addLoadedChange_];
                    v860 = v859;
                    swift_bridgeObjectRetain_n();
                    v861 = v860;
                    v862 = sub_2647EF184();
                    v863 = sub_2647EF354();
                    if (os_log_type_enabled(v862, v863))
                    {
                      v864 = swift_slowAlloc();
                      v914 = swift_slowAlloc();
                      v941 = v914;
                      *v864 = 136315906;
                      v865 = v909;

                      v866 = sub_2647E7ED4(v927, v865, &v941);

                      *(v864 + 4) = v866;
                      swift_bridgeObjectRelease_n();
                      *(v864 + 12) = 2080;
                      v867 = v929;
                      v868 = v929;
                      v869 = sub_2647DC60C(v867);
                      v871 = v870;

                      v872 = sub_2647E7ED4(v869, v871, &v941);

                      *(v864 + 14) = v872;
                      *(v864 + 22) = 2080;
                      v873 = sub_2647DC60C(v861);
                      v875 = sub_2647E7ED4(v873, v874, &v941);

                      *(v864 + 24) = v875;

                      *(v864 + 32) = 2080;
                      v876 = [v861 debugDescription];
                      v877 = sub_2647EF244();
                      v879 = v878;

                      v880 = sub_2647E7ED4(v877, v879, &v941);

                      *(v864 + 34) = v880;

                      _os_log_impl(&dword_2647DA000, v862, v863, "Model %s %s -> %s: %s", v864, 0x2Au);
                      v881 = v914;
                      swift_arrayDestroy();
                      MEMORY[0x266741280](v881, -1, -1);
                      MEMORY[0x266741280](v864, -1, -1);

                      v882 = *(v933 + 1);
                      v883 = v905;
                      v882(v901, v905);
                      v882(v910, v883);
                      v882(v939, v883);
                      sub_2647EAD34(v912, &qword_27FF80830, &qword_2647EFAD0);
                      (*(v923 + 8))(v934, v930);
                      (v936[1])(v918, v917);
                      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
                      sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
                      sub_2647EAD34(v741, &qword_27FF80850, &qword_2647EFAF0);

                      v796 = &v935;
                      goto LABEL_255;
                    }

                    swift_bridgeObjectRelease_n();

                    v884 = *(v933 + 1);
                    v885 = v905;
                    v884(v901, v905);
                    v884(v910, v885);
                    v884(v939, v885);
                    sub_2647EAD34(v912, &qword_27FF80830, &qword_2647EFAD0);
                    (*(v923 + 8))(v934, v930);
                    (v936[1])(v918, v917);
                    sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
                    sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
                    sub_2647EAD34(v741, &qword_27FF80850, &qword_2647EFAF0);

                    goto LABEL_204;
                  }
                }

                else
                {
                  v895 = &v886;
                  MEMORY[0x28223BE20](v845);
                  v847 = &v886 - v833;
                  sub_2647EAEF4(v842, &v886 - v833, &qword_27FF80830, &qword_2647EFAD0);
                  v848 = v844(&v842[v843], 1, v836);
                  if (v848 != 1)
                  {
                    v904 = &v886;
                    v849 = *(v837 + 64);
                    MEMORY[0x28223BE20](v848);
                    v851 = &v886 - ((v850 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v837 + 32))(v851, &v842[v843], v836);
                    sub_2647EAD94(&qword_2814C11E0, MEMORY[0x28221F500]);
                    v846 = sub_2647EF224();
                    v852 = *(v837 + 8);
                    v852(v851, v836);
                    sub_2647EAD34(v834, &qword_27FF80830, &qword_2647EFAD0);
                    v852(v847, v836);
                    sub_2647EAD34(v842, &qword_27FF80830, &qword_2647EFAD0);
                    goto LABEL_291;
                  }

                  sub_2647EAD34(&v886 - v833, &qword_27FF80830, &qword_2647EFAD0);
                  (*(v837 + 8))(&v886 - v833, v836);
                }

                sub_2647EAD34(v842, &qword_27FF80858, &qword_2647EFAF8);
                v846 = 0;
                goto LABEL_291;
              }

              if (!MEMORY[0x277D20B60] || v747 != *MEMORY[0x277D20B60])
              {
                (*(v743 + 8))(v746, v742);
              }
            }
          }

          v753 = sub_2647EAD34(v741, &qword_27FF80850, &qword_2647EFAF0);
          v927 = &v886;
          MEMORY[0x28223BE20](v753);
          v899 = ((v745 + 15) & 0xFFFFFFFFFFFFFFF0);
          v754 = (&v886 - v899);
          v755 = sub_2647EAEF4(v912, &v886 - v899, &qword_27FF80830, &qword_2647EFAD0);
          v916 = &v886;
          MEMORY[0x28223BE20](v755);
          v903 = &v886 - ((v756 + 15) & 0xFFFFFFFFFFFFFFF0);
          v757 = (v920)();
          v920 = &v886;
          MEMORY[0x28223BE20](v757);
          v758 = &v886 - ((v538 + 15) & 0xFFFFFFFFFFFFFFF0);
          v759 = v933;
          v760 = *(v933 + 2);
          v761 = v905;
          v762 = v760(v758, v939, v905);
          v919 = &v886;
          MEMORY[0x28223BE20](v762);
          v763 = &v886 - ((v738 + 15) & 0xFFFFFFFFFFFFFFF0);
          v764 = v910;
          v760(v758, v910, v761);
          v765 = v937;
          v766 = sub_2647EF184();
          v767 = sub_2647EF364();
          v768 = v767;
          if (os_log_type_enabled(v766, v767))
          {
            v769 = swift_slowAlloc();
            v937 = swift_slowAlloc();
            v941 = v937;
            *v769 = 136316162;
            v770 = [v765 identifier];
            v914 = v766;
            v771 = v770;
            v772 = sub_2647EF244();
            v893 = v739;
            v773 = v765;
            v774 = v772;
            LODWORD(v894) = v768;
            v776 = v775;

            v777 = sub_2647E7ED4(v774, v776, &v941);

            *(v769 + 4) = v777;
            v895 = v773;

            *(v769 + 12) = 2080;
            MEMORY[0x28223BE20](v778);
            sub_2647EAEF4(v754, &v886 - v899, &qword_27FF80830, &qword_2647EFAD0);
            v779 = sub_2647EF274();
            v781 = sub_2647E7ED4(v779, v780, &v941);

            *(v769 + 14) = v781;
            v782 = sub_2647EAD34(v754, &qword_27FF80830, &qword_2647EFAD0);
            *(v769 + 22) = 2080;
            MEMORY[0x28223BE20](v782);
            v783 = v903;
            sub_2647EF0D4();
            v784 = sub_2647EF264();
            v786 = sub_2647E7ED4(v784, v785, &v941);

            *(v769 + 24) = v786;
            v923 = *(v923 + 8);
            (v923)(v783, v930);
            *(v769 + 32) = 2080;
            sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520]);
            v787 = sub_2647EF434();
            v789 = sub_2647E7ED4(v787, v788, &v941);

            *(v769 + 34) = v789;
            v790 = *(v759 + 1);
            v790(v758, v761);
            *(v769 + 42) = 2080;
            v791 = sub_2647EF434();
            v793 = sub_2647E7ED4(v791, v792, &v941);

            *(v769 + 44) = v793;

            v790(v763, v761);
            v794 = v914;
            _os_log_impl(&dword_2647DA000, v914, v894, "Model %s %s assetTransition unhandled result %s for %s -> %s", v769, 0x34u);
            v795 = v937;
            swift_arrayDestroy();
            MEMORY[0x266741280](v795, -1, -1);
            MEMORY[0x266741280](v769, -1, -1);

            v790(v901, v761);
            v790(v910, v761);
            v790(v939, v761);
            sub_2647EAD34(v912, &qword_27FF80830, &qword_2647EFAD0);
            (v923)(v934, v930);
            (v936[1])(v918, v917);
            sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
            sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);

            v796 = &v950;
LABEL_255:
            v797 = *(v796 - 32);
            v616 = &v940;
            goto LABEL_256;
          }

          v799 = *(v759 + 1);
          v799(v763, v761);
          v799(v758, v761);
          v800 = *(v923 + 8);
          v801 = v930;
          v800(v903, v930);
          sub_2647EAD34(v754, &qword_27FF80830, &qword_2647EFAD0);

          v799(v901, v761);
          v799(v764, v761);
          v799(v939, v761);
          sub_2647EAD34(v912, &qword_27FF80830, &qword_2647EFAD0);
          v800(v934, v801);
          (v936[1])(v918, v917);
          sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);

LABEL_204:
          sub_2647EAD34(v911, &qword_27FF80810, &qword_2647EFAB8);
        }

        if ((!MEMORY[0x277D20AD0] || v283 != *MEMORY[0x277D20AD0]) && (!MEMORY[0x277D20AE0] || v283 != *MEMORY[0x277D20AE0]))
        {
          (*(v281 + 8))(&v886 - v277, v280);
        }
      }

      v279 = v925;
      v276 = v913;
    }

    v399 = sub_2647EAD34(&v886 - v277, &qword_27FF80810, &qword_2647EFAB8);
    MEMORY[0x28223BE20](v399);
    v400 = &v886 - v277;
    sub_2647EAEF4(v279, &v886 - v277, &qword_27FF80810, &qword_2647EFAB8);
    v401 = v937;
    v402 = sub_2647EF184();
    v403 = sub_2647EF374();
    if (os_log_type_enabled(v402, v403))
    {
      v404 = swift_slowAlloc();
      v937 = swift_slowAlloc();
      v943 = v937;
      *v404 = 136315394;
      v405 = [v401 identifier];
      v939 = &v886;
      v406 = v405;
      v407 = sub_2647EF244();
      v409 = v408;

      v410 = sub_2647E7ED4(v407, v409, &v943);

      *(v404 + 4) = v410;

      *(v404 + 12) = 2080;
      MEMORY[0x28223BE20](v411);
      sub_2647EAEF4(v400, &v886 - ((v276 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80810, &qword_2647EFAB8);
      v412 = sub_2647EF264();
      v414 = sub_2647E7ED4(v412, v413, &v943);

      *(v404 + 14) = v414;

      sub_2647EAD34(v400, &qword_27FF80810, &qword_2647EFAB8);
      _os_log_impl(&dword_2647DA000, v402, v403, "Model %s assetTransition unhandled subtype %s", v404, 0x16u);
      v415 = v937;
      swift_arrayDestroy();
      MEMORY[0x266741280](v415, -1, -1);
      MEMORY[0x266741280](v404, -1, -1);

      (*(v923 + 8))(v934, v930);
      (v936[1])(v918, v917);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
    }

    else
    {

      sub_2647EAD34(&v886 - v277, &qword_27FF80810, &qword_2647EFAB8);

      (*(v923 + 8))(v934, v930);
      (v936[1])(v918, v917);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v279, &qword_27FF80810, &qword_2647EFAB8);
    }
  }

  v909 = v165;
  v906 = v152;
  (v226[12])(v237, v227);
  v239 = *v237;
  v240 = swift_projectBox();
  (v915[2])(v916, v240, v233);

  v242 = v913;
  MEMORY[0x28223BE20](v241);
  v243 = (v242 + 15) & 0xFFFFFFFFFFFFFFF0;
  v244 = &v886 - v243;
  v245 = v925;
  sub_2647EAEF4(v925, &v886 - v243, &qword_27FF80810, &qword_2647EFAB8);
  v246 = sub_2647EF044();
  v927 = *(v246 - 1);
  v247 = v927[6];
  v929 = v246;
  v911 = v927 + 6;
  v907 = v247;
  v248 = (v247)(&v886 - v243, 1);
  v908 = v233;
  if (v248 == 1)
  {
    goto LABEL_62;
  }

  v905 = &v886;
  MEMORY[0x28223BE20](v248);
  sub_2647EAEF4(&v886 - v243, &v886 - v243, &qword_27FF80810, &qword_2647EFAB8);
  v249 = v929;
  v250 = (v927[11])(&v886 - v243, v929);
  if (MEMORY[0x277D20B00] && v250 == *MEMORY[0x277D20B00])
  {
LABEL_61:
    v242 = v913;
    v245 = v925;
LABEL_62:
    v251 = sub_2647EAD34(&v886 - v243, &qword_27FF80810, &qword_2647EFAB8);
    MEMORY[0x28223BE20](v251);
    v252 = &v886 - v243;
    sub_2647EAEF4(v245, &v886 - v243, &qword_27FF80810, &qword_2647EFAB8);
    v253 = v937;
    v254 = sub_2647EF184();
    v255 = sub_2647EF364();
    if (os_log_type_enabled(v254, v255))
    {
      v939 = &v886;
      v256 = swift_slowAlloc();
      v937 = swift_slowAlloc();
      v943 = v937;
      *v256 = 136315394;
      v257 = [v253 identifier];
      v258 = sub_2647EF244();
      v260 = v259;

      v261 = sub_2647E7ED4(v258, v260, &v943);

      *(v256 + 4) = v261;

      *(v256 + 12) = 2080;
      MEMORY[0x28223BE20](v262);
      v263 = &v886 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2647EAEF4(v252, v263, &qword_27FF80810, &qword_2647EFAB8);
      v264 = v929;
      if ((v907)(v263, 1, v929) == 1)
      {
        v265 = 0x7974627573206F6ELL;
        sub_2647EAD34(v263, &qword_27FF80810, &qword_2647EFAB8);
        v266 = 0xEA00000000006570;
      }

      else
      {
        v265 = sub_2647EF034();
        v266 = v320;
        (v927[1])(v263, v264);
      }

      v321 = sub_2647E7ED4(v265, v266, &v943);

      *(v256 + 14) = v321;

      sub_2647EAD34(v252, &qword_27FF80810, &qword_2647EFAB8);
      _os_log_impl(&dword_2647DA000, v254, v255, "Model %s mmExecuteRequest %s", v256, 0x16u);
      v322 = v937;
      swift_arrayDestroy();
      MEMORY[0x266741280](v322, -1, -1);
      MEMORY[0x266741280](v256, -1, -1);

      (v915[1])(v916, v908);
      (v936[1])(v918, v917);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      return sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
    }

    else
    {

      sub_2647EAD34(v252, &qword_27FF80810, &qword_2647EFAB8);

      (v915[1])(v916, v908);
      (v936[1])(v918, v917);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      return sub_2647EAD34(v245, &qword_27FF80810, &qword_2647EFAB8);
    }
  }

  if (MEMORY[0x277D20AF0] && v250 == *MEMORY[0x277D20AF0])
  {
    v904 = &v886;
    v298 = sub_2647EF154();
    if (v299)
    {
      v300 = v298;
      v301 = v299;
      v302 = MEMORY[0x266740AB0]();
      if (v303)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v435 = sub_2647EF144();
      if (!v436)
      {
        v302 = MEMORY[0x266740AB0](v435);
        if (v618)
        {
          v302 = MEMORY[0x266740AA0](v302);
          if (v619)
          {
            v301 = 0;
            goto LABEL_152;
          }
        }

        v438 = v302;
        v943 = 0;
        v944 = 0xE000000000000000;
        v439 = 91;
        v440 = 0xE100000000000000;
        goto LABEL_151;
      }

      v300 = v435;
      v301 = v436;
      v302 = MEMORY[0x266740AA0]();
      if (v437)
      {
LABEL_152:
        MEMORY[0x28223BE20](v302);
        v443 = &v886 - ((v442 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_2647EEFF4();
        sub_2647EEFA4();
        v445 = v444;
        (v910)(v443, v912);
        v446 = [objc_allocWithZone(MEMORY[0x277D4B448]) init];
        if (v301)
        {
          v447 = sub_2647EF234();
        }

        else
        {
          v447 = 0;
        }

        v449 = v937;
        v448 = v938;
        [v446 setRequester_];

        if (v445)
        {

          v450 = sub_2647EF234();
        }

        else
        {
          v450 = 0;
        }

        v937 = v445;
        [v446 setUseCaseID_];

        [v446 setStartTime_];
        v451 = v449;
        [v451 addExecution_];
        v452 = v446;
        v453 = v451;
        v454 = v452;
        v455 = sub_2647EF184();
        v456 = sub_2647EF354();
        v457 = os_log_type_enabled(v455, v456);
        v929 = v453;
        v927 = v454;
        if (v457)
        {
          v458 = swift_slowAlloc();
          v913 = swift_slowAlloc();
          v943 = v913;
          *v458 = 136315394;
          v459 = v453;
          v460 = [v453 identifier];
          v461 = sub_2647EF244();
          v463 = v462;

          v464 = sub_2647E7ED4(v461, v463, &v943);

          *(v458 + 4) = v464;

          *(v458 + 12) = 2080;
          v465 = [v454 debugDescription];
          v466 = sub_2647EF244();
          v468 = v467;

          v469 = sub_2647E7ED4(v466, v468, &v943);

          *(v458 + 14) = v469;

          _os_log_impl(&dword_2647DA000, v455, v456, "Model %s mmExecuteRequest start %s", v458, 0x16u);
          v470 = v913;
          swift_arrayDestroy();
          MEMORY[0x266741280](v470, -1, -1);
          MEMORY[0x266741280](v458, -1, -1);
        }

        else
        {
        }

        v471 = v936;
        v472 = v917;
        v473 = v930;
        MEMORY[0x28223BE20](v474);
        v476 = &v886 - ((v475 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_2647EEFF4();
        sub_2647EEFD4();
        (v910)(v476, v912);
        v477 = v923;
        v478 = v924;
        if ((*(v923 + 48))(v473, 1, v924) == 1)
        {
          sub_2647EAD34(v473, &qword_27FF80808, &qword_2647EFAB0);
          v479 = v940;
          swift_bridgeObjectRetain_n();
          v480 = sub_2647EF184();
          v481 = sub_2647EF374();
          if (os_log_type_enabled(v480, v481))
          {
            v482 = swift_slowAlloc();
            v483 = swift_slowAlloc();
            v943 = v483;
            *v482 = 136315138;

            v484 = sub_2647E7ED4(v921, v479, &v943);
            v485 = v915;
            v486 = v244;
            v487 = v484;

            *(v482 + 4) = v487;
            v244 = v486;

            swift_bridgeObjectRelease_n();

            _os_log_impl(&dword_2647DA000, v480, v481, "%s has no modelManagerRequestIdentifier", v482, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v483);
            MEMORY[0x266741280](v483, -1, -1);
            MEMORY[0x266741280](v482, -1, -1);

            (v485[1])(v916, v908);
            (v471[1])(v918, v917);
          }

          else
          {

            swift_bridgeObjectRelease_n();

            (v915[1])(v916, v908);
            (v471[1])(v918, v472);
          }

          sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
          return sub_2647EAD34(v244, &qword_27FF80810, &qword_2647EFAB8);
        }

        v488 = v928;
        (*(v477 + 32))(v928, v473, v478);
        v489 = v934;
        swift_beginAccess();
        v490 = v927;
        v491 = *(v489 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v942 = *(v489 + 2);
        sub_2647ED64C(v490, v488, isUniquelyReferenced_nonNull_native);
        *(v489 + 2) = v942;
        swift_endAccess();

        (v919)(v488, v478);
        (v915[1])(v916, v908);
        (v471[1])(v918, v472);
        sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
        sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
        result = sub_2647EAD34(v244, &qword_27FF80810, &qword_2647EFAB8);
        v493 = &v937;
        goto LABEL_165;
      }
    }

    v438 = v302;
    v943 = 0;
    v944 = 0xE000000000000000;
    MEMORY[0x266740C20](0, 0xE000000000000000);
    MEMORY[0x266740C20](v300, v301);

    v439 = 23328;
    v440 = 0xE200000000000000;
LABEL_151:
    MEMORY[0x266740C20](v439, v440);
    v942 = v438;
    v441 = sub_2647EF434();
    MEMORY[0x266740C20](v441);

    v302 = MEMORY[0x266740C20](93, 0xE100000000000000);
    v301 = v944;
    goto LABEL_152;
  }

  if (MEMORY[0x277D20AC8] && v250 == *MEMORY[0x277D20AC8])
  {
    v306 = [v937 executions];
    sub_2647EACEC(0, &qword_27FF80828, 0x277D4B448);
    v307 = sub_2647EF2F4();

    v308 = sub_2647DD4C8(v307);

    v310 = v915;
    if (!v308)
    {
      goto LABEL_91;
    }

    v311 = [v308 endTime];
    if (v311)
    {
      v312 = v311;

LABEL_91:
      v939 = v244;
      v313 = v913;
      MEMORY[0x28223BE20](v309);
      v314 = (v313 + 15) & 0xFFFFFFFFFFFFFFF0;
      v315 = &v886 - v314;
      v316 = v925;
      sub_2647EAEF4(v925, &v886 - v314, &qword_27FF80810, &qword_2647EFAB8);
      v317 = v937;
      v318 = sub_2647EF184();
      v319 = sub_2647EF374();
      if (os_log_type_enabled(v318, v319))
      {
        goto LABEL_106;
      }

      goto LABEL_147;
    }

    v617 = v938;
    [v308 setEndTime_];
LABEL_209:

    (v310[1])(v916, v908);
    (v226[1])(v918, v227);
    sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
    sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
    return sub_2647EAD34(v244, &qword_27FF80810, &qword_2647EFAB8);
  }

  if (MEMORY[0x277D20AD0] && v250 == *MEMORY[0x277D20AD0])
  {
    v347 = [v937 executions];
    sub_2647EACEC(0, &qword_27FF80828, 0x277D4B448);
    v348 = sub_2647EF2F4();

    v308 = sub_2647DD4C8(v348);

    v310 = v915;
    if (v308)
    {
      v350 = [v308 endTime];
      if (!v350)
      {

        v617 = [v308 startTime];
        [v308 setEndTime_];

        goto LABEL_209;
      }

      v351 = v350;
    }

    v939 = v244;
    v352 = v913;
    MEMORY[0x28223BE20](v349);
    v314 = (v352 + 15) & 0xFFFFFFFFFFFFFFF0;
    v315 = &v886 - v314;
    v316 = v925;
    sub_2647EAEF4(v925, &v886 - v314, &qword_27FF80810, &qword_2647EFAB8);
    v317 = v937;
    v318 = sub_2647EF184();
    v319 = sub_2647EF374();
    if (os_log_type_enabled(v318, v319))
    {
LABEL_106:
      LODWORD(v934) = v319;
      v937 = &v886;
      v353 = swift_slowAlloc();
      v933 = swift_slowAlloc();
      v943 = v933;
      *v353 = 136315394;
      v354 = [v317 identifier];
      v355 = sub_2647EF244();
      v357 = v356;

      v358 = sub_2647E7ED4(v355, v357, &v943);

      *(v353 + 4) = v358;

      *(v353 + 12) = 2080;
      MEMORY[0x28223BE20](v359);
      v360 = &v886 - v314;
      sub_2647EAEF4(v315, &v886 - v314, &qword_27FF80810, &qword_2647EFAB8);
      v361 = v929;
      v362 = (v907)(&v886 - v314, 1, v929);
      v904 = &v886;
      if (v362 == 1)
      {
        v363 = 0x7974627573206F6ELL;
        sub_2647EAD34(v360, &qword_27FF80810, &qword_2647EFAB8);
        v364 = 0xEA00000000006570;
      }

      else
      {
        v363 = sub_2647EF034();
        v364 = v546;
        (v927[1])(v360, v361);
      }

      v547 = v915;
      v548 = sub_2647E7ED4(v363, v364, &v943);

      *(v353 + 14) = v548;

      sub_2647EAD34(v315, &qword_27FF80810, &qword_2647EFAB8);
      _os_log_impl(&dword_2647DA000, v318, v934, "Model %s mmExecuteRequest %s, but we didn't know it was executing", v353, 0x16u);
      v549 = v933;
      swift_arrayDestroy();
      MEMORY[0x266741280](v549, -1, -1);
      MEMORY[0x266741280](v353, -1, -1);

      (v547[1])(v916, v908);
      (v936[1])(v918, v917);
      sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v925, &qword_27FF80810, &qword_2647EFAB8);
      goto LABEL_183;
    }

LABEL_147:

    sub_2647EAD34(v315, &qword_27FF80810, &qword_2647EFAB8);

    (v915[1])(v916, v908);
    (v936[1])(v918, v917);
    sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
    sub_2647EAD34(v316, &qword_27FF80810, &qword_2647EFAB8);
LABEL_183:
    result = sub_2647EAD34(v939, &qword_27FF80810, &qword_2647EFAB8);
    v550 = &v937;
LABEL_207:
    v633 = *(v550 - 32);
    return result;
  }

  if (MEMORY[0x277D20AE0] && v250 == *MEMORY[0x277D20AE0])
  {
    goto LABEL_61;
  }

  v939 = &v886 - v243;
  v416 = v927[1];
  ++v927;
  v934 = v416;
  v417 = (v416)(&v886 - v243, v249);
  v418 = v913;
  MEMORY[0x28223BE20](v417);
  v419 = v925;
  v420 = (v418 + 15) & 0xFFFFFFFFFFFFFFF0;
  v421 = &v886 - v420;
  sub_2647EAEF4(v925, &v886 - v420, &qword_27FF80810, &qword_2647EFAB8);
  v422 = v937;
  v423 = sub_2647EF184();
  v424 = sub_2647EF384();
  if (os_log_type_enabled(v423, v424))
  {
    LODWORD(v933) = v424;
    v937 = &v886;
    v425 = swift_slowAlloc();
    v930 = swift_slowAlloc();
    v943 = v930;
    *v425 = 136315394;
    v426 = [v422 identifier];
    v427 = sub_2647EF244();
    v429 = v428;

    v430 = sub_2647E7ED4(v427, v429, &v943);

    *(v425 + 4) = v430;

    *(v425 + 12) = 2080;
    MEMORY[0x28223BE20](v431);
    sub_2647EAEF4(&v886 - v420, &v886 - v420, &qword_27FF80810, &qword_2647EFAB8);
    v432 = v929;
    if ((v907)(&v886 - v420, 1, v929) == 1)
    {
      v433 = 0x7974627573206F6ELL;
      sub_2647EAD34(&v886 - v420, &qword_27FF80810, &qword_2647EFAB8);
      v434 = 0xEA00000000006570;
    }

    else
    {
      v433 = sub_2647EF034();
      v434 = v551;
      (v934)(&v886 - v420, v432);
    }

    v552 = v925;
    v553 = v915;
    v554 = sub_2647E7ED4(v433, v434, &v943);

    *(v425 + 14) = v554;

    sub_2647EAD34(v421, &qword_27FF80810, &qword_2647EFAB8);
    _os_log_impl(&dword_2647DA000, v423, v933, "Model %s mmExecuteRequest unknown subtype %s", v425, 0x16u);
    v555 = v930;
    swift_arrayDestroy();
    MEMORY[0x266741280](v555, -1, -1);
    MEMORY[0x266741280](v425, -1, -1);

    (v553[1])(v916, v908);
    (v936[1])(v918, v917);
    sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
    sub_2647EAD34(v552, &qword_27FF80810, &qword_2647EFAB8);
  }

  else
  {

    sub_2647EAD34(&v886 - v420, &qword_27FF80810, &qword_2647EFAB8);

    (v915[1])(v916, v908);
    (v936[1])(v918, v917);
    sub_2647EAD34(v926, &qword_27FF80818, &qword_2647EFAC0);
    sub_2647EAD34(v419, &qword_27FF80810, &qword_2647EFAB8);
  }

  return sub_2647EAD34(v939, &qword_27FF80810, &qword_2647EFAB8);
}

uint64_t sub_2647E6AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2647EC824(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v17 = *(v10 - 8);
    sub_2647EAEF4(v9 + *(v17 + 72) * v8, a4, &qword_27FF80848, &qword_2647EFAE8);
    v11 = *(v17 + 56);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a4;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_2647E6BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1, v7) == 1)
  {
    sub_2647EAD34(a1, &qword_27FF80840, &qword_2647EFAE0);
    v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80840, &qword_2647EFAE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20]();
    v11 = &v18 - v10;
    sub_2647E847C(a2, a3, &v18 - v10);

    return sub_2647EAD34(v11, &qword_27FF80840, &qword_2647EFAE0);
  }

  else
  {
    v13 = *(v8 + 64);
    MEMORY[0x28223BE20]();
    v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2647EAE8C(a1, v15, &qword_27FF80848, &qword_2647EFAE8);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2647ED818(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_2647E6DB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_2647ED64C(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_2647EEEC4();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_2647EC7A0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_2647EDC30();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_2647EEEC4();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_2647E8604(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_2647EEEC4();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_2647E7104(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = sub_2647EEE94();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[2] = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F8, &qword_2647EFA98) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v3[3] = v12;
  v13 = swift_task_alloc();
  v3[4] = v13;
  v3[5] = _Block_copy(a3);
  if (a1)
  {
    sub_2647EEE84();
    (*(v8 + 32))(v13, v10, v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = *(v8 + 56);
  v16 = 1;
  v15(v13, v14, 1, v7);
  if (a2)
  {
    sub_2647EEE84();
    (*(v8 + 32))(v12, v10, v7);
    v16 = 0;
  }

  v15(v12, v16, 1, v7);
  v17 = swift_task_alloc();
  v3[6] = v17;
  *v17 = v3;
  v17[1] = sub_2647E7340;

  return sub_2647E8AC0(v13, v12);
}

uint64_t sub_2647E7340()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *v1;

  v7 = v3[4];
  sub_2647EAD34(v3[3], &qword_27FF807F8, &qword_2647EFA98);
  sub_2647EAD34(v7, &qword_27FF807F8, &qword_2647EFA98);
  if (v2)
  {
    v8 = sub_2647EEDF4();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_2647EACEC(0, &qword_2814C1220, 0x277D4B440);
    v8 = sub_2647EF2E4();

    v10 = v8;
    v9 = 0;
  }

  v11 = v8;
  v12 = v4[4];
  v13 = v4[5];
  v16 = v4 + 2;
  v14 = v4[2];
  v15 = v16[1];
  v13[2](v13, v10, v9);

  _Block_release(v13);

  v17 = *(v6 + 8);

  return v17();
}

id SAModelInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SAModelInfo.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SAModelInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SAModelInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SAModelInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2647E7618(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2647EB12C;

  return v7();
}

uint64_t sub_2647E7700(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2647E77E8;

  return v8();
}

uint64_t sub_2647E77E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2647E78DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_2647EAEF4(a3, v24 - v10, &qword_27FF807F0, &qword_2647EFA48);
  v12 = sub_2647EF344();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2647EAD34(v11, &qword_27FF807F0, &qword_2647EFA48);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2647EF334();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2647EF324();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2647EF284() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2647EAD34(a3, &qword_27FF807F0, &qword_2647EFA48);

    return v22;
  }

LABEL_8:
  sub_2647EAD34(a3, &qword_27FF807F0, &qword_2647EFA48);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2647E7BD8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647E7CD0;

  return v7(a1);
}

uint64_t sub_2647E7CD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_2647E7DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80868, &qword_2647EFB08);
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

uint64_t sub_2647E7ED4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2647E7FA0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2647EAFB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2647E7FA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2647E80AC(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_2647EF3E4();
    a6 = v11;
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

uint64_t sub_2647E80AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2647E80F8(a1, a2);
  sub_2647E8228(&unk_28761F550);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2647E80F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2647E8314(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2647EF3E4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2647EF2B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2647E8314(v10, 0);
        result = sub_2647EF3C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2647E8228(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2647E8388(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2647E8314(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80878, &qword_2647EFB18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2647E8388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80878, &qword_2647EFB18);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_2647E847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2647EC824(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2647EDEA4();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v22 = *(v15 - 8);
    sub_2647EAE8C(v14 + *(v22 + 72) * v9, a3, &qword_27FF80848, &qword_2647EFAE8);
    sub_2647E88BC(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_2647E8604(int64_t a1, uint64_t a2)
{
  v4 = sub_2647EEEC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20]();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_2647EF3B4();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_2647EAF5C();
      v23 = sub_2647EF204();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2647E88BC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2647EF3B4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2647EF4A4();

      sub_2647EF294();
      v13 = sub_2647EF4C4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2647E8AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return MEMORY[0x2822009F8](sub_2647E8AE0, 0, 0);
}

uint64_t sub_2647E8AE0()
{
  if (MEMORY[0x277D29ED0])
  {
    v1 = MEMORY[0x277D29ED8] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || MEMORY[0x277D29EE0] == 0 || MEMORY[0x277CF1A58] == 0 || MEMORY[0x277D0DEA0] == 0 || MEMORY[0x277D0DEA8] == 0 || MEMORY[0x277D0DEB0] == 0 || MEMORY[0x277D20B40] == 0 || MEMORY[0x277D20B08] == 0 || MEMORY[0x277D20B10] == 0 || MEMORY[0x277D20B38] == 0 || MEMORY[0x277D20B18] == 0 || MEMORY[0x277D20B28] == 0 || MEMORY[0x277D20B30] == 0)
  {
    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v14 = sub_2647EF1A4();
    __swift_project_value_buffer(v14, qword_2814C1230);
    v15 = sub_2647EF184();
    v16 = sub_2647EF354();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2647DA000, v15, v16, "Not all dependencies are available, returning no models", v17, 2u);
      MEMORY[0x266741280](v17, -1, -1);
    }

    v18 = *(v0 + 8);
    v19 = MEMORY[0x277D84F90];

    return v18(v19);
  }

  else
  {
    if (qword_2814C1338 != -1)
    {
      swift_once();
    }

    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_2647E8D60;

    return sub_2647DCB88();
  }
}

uint64_t sub_2647E8D60(char a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_2647E8E60, 0, 0);
}

uint64_t sub_2647E8E60()
{
  if (*(v0 + 272) == 1)
  {
    v1 = sub_2647EEEC4();
    *(v0 + 144) = v1;
    v2 = *(v1 - 8);
    v3 = v2;
    *(v0 + 152) = v2;
    *(v0 + 160) = *(v2 + 64);
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    sub_2647EEF64();
    v32 = v3;
    v13 = *(v0 + 128);
    v14 = swift_allocObject();
    *(v0 + 176) = v14;
    *(v14 + 16) = MEMORY[0x277D84F90];
    v15 = sub_2647EEE94();
    *(v0 + 184) = v15;
    v16 = *(v15 - 8);
    v17 = v16;
    *(v0 + 192) = v16;
    v18 = *(v16 + 64) + 15;
    v19 = swift_task_alloc();
    *(v0 + 200) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F8, &qword_2647EFA98) - 8) + 64);
    v20 = swift_task_alloc();
    sub_2647EAEF4(v13, v20, &qword_27FF807F8, &qword_2647EFA98);
    v21 = *(v17 + 48);
    *(v0 + 208) = v21;
    *(v0 + 216) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v22 = v21(v20, 1, v15);
    if (v22 == 1)
    {
      sub_2647EAD34(v20, &qword_27FF807F8, &qword_2647EFA98);

LABEL_17:

      v24 = sub_2647EEF24();
      *(v0 + 224) = v24;
      v25 = *(v24 - 8);
      *(v0 + 232) = v25;
      v26 = *(v25 + 64) + 15;
      *(v0 + 240) = swift_task_alloc();
      sub_2647EEF14();
      v27 = *(MEMORY[0x277D29EB8] + 4);
      v28 = swift_task_alloc();
      *(v0 + 248) = v28;
      *v28 = v0;
      v28[1] = sub_2647E938C;

      return MEMORY[0x282188D88]();
    }

    (*(v17 + 32))(v19, v20, v15);

    sub_2647EEE74();
    if (v23 > -600.0)
    {
      (*(v17 + 8))(v19, v15);
      goto LABEL_17;
    }

    sub_2647EEE74();
    v30 = -v29;
    sub_2647EAA54();
    swift_allocError();
    *v31 = v30;
    *(v31 + 8) = 0;
    swift_willThrow();
    (*(v17 + 8))(v19, v15);
    (*(v32 + 8))(v4, v1);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v7 = sub_2647EF1A4();
    __swift_project_value_buffer(v7, qword_2814C1230);
    v8 = sub_2647EF184();
    v9 = sub_2647EF354();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2647DA000, v8, v9, "Apple Intelligence not available, returning no models", v10, 2u);
      MEMORY[0x266741280](v10, -1, -1);
    }

    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_2647E938C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  (*(v3[29] + 8))(v3[30], v3[28]);
  if (v1)
  {
    v7 = sub_2647E9DF4;
  }

  else
  {
    v7 = sub_2647E94FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2647E94FC()
{
  v1 = v0[32];
  v2 = v0[30];

  v3 = *(v1 + 16);
  v4 = v0[32];
  if (v3)
  {
    v5 = sub_2647EEF44();
    v6 = *(v5 - 8);
    v7 = v6[8] + 15;
    v8 = swift_task_alloc();
    v9 = v6[2];
    v6 += 2;
    v10 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v86 = v6[7];
    v88 = v9;
    v11 = (v6 - 1);
    do
    {
      v12 = v0[22];
      v88(v8, v10, v5);
      sub_2647EEF34();
      (*v11)(v8, v5);
      v13 = objc_allocWithZone(MEMORY[0x277D4B440]);
      v14 = sub_2647EF234();

      v15 = [v13 initWithIdentifier_];

      v16 = v15;
      MEMORY[0x266740C50]();
      if (*((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = v0[22] + 16;
        v19 = *((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2647EF304();
      }

      v17 = v0[22] + 16;
      sub_2647EF314();

      v10 += v86;
      --v3;
    }

    while (v3);
    v20 = v0[32];
  }

  else
  {
    v21 = v0[32];

    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v22 = sub_2647EF1A4();
    __swift_project_value_buffer(v22, qword_2814C1230);
    v23 = sub_2647EF184();
    v24 = sub_2647EF364();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2647DA000, v23, v24, "Model manager reports no assets are currently loaded", v25, 2u);
      MEMORY[0x266741280](v25, -1, -1);
    }
  }

  v85 = v0;
  v26 = v0[33];
  v27 = v0[26];
  v28 = v0[27];
  v30 = v0[22];
  v29 = v0[23];
  v31 = v0[15];
  v32 = v0[25] + 15;
  v90 = [objc_opt_self() now];
  v33 = *(v30 + 16);
  v34 = swift_allocObject();
  v84 = v33;

  v35 = MEMORY[0x277D84F90];
  v87 = v34;
  *(v34 + 16) = sub_2647EEA08(MEMORY[0x277D84F90]);
  v36 = swift_allocObject();
  v37 = v35;
  v38 = v36;
  v39 = v85;
  *(v36 + 16) = sub_2647EEBEC(v37);
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v40 = [objc_allocWithZone(MEMORY[0x277CF1A58]) init];
  v41 = swift_task_alloc();
  sub_2647EAEF4(v31, v41, &qword_27FF807F8, &qword_2647EFA98);
  v42 = v27(v41, 1, v29);
  v43 = 0;
  if (v42 != 1)
  {
    v44 = v85[23];
    v45 = v85[24];
    v43 = sub_2647EEE64();
    (*(v45 + 8))(v41, v44);
  }

  [v40 setStartDate_];

  v46 = sub_2647EF1D4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64) + 15;
  v49 = swift_task_alloc();
  sub_2647EF1C4();
  sub_2647EF1B4();
  if (v26)
  {
    (*(v47 + 8))(v49, v46);

    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v50 = sub_2647EF1A4();
    __swift_project_value_buffer(v50, qword_2814C1230);
    v51 = v26;
    v52 = sub_2647EF184();
    v53 = sub_2647EF374();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v85[21];
    v56 = v85[18];
    v57 = v85[19];
    if (v54)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = v26;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v61;
      *v59 = v61;
      _os_log_impl(&dword_2647DA000, v52, v53, "Unable to get model info: %@", v58, 0xCu);
      sub_2647EAD34(v59, &qword_27FF80800, &qword_2647EFAA8);
      MEMORY[0x266741280](v59, -1, -1);
      v39 = v85;
      MEMORY[0x266741280](v58, -1, -1);
    }

    else
    {
    }

    (*(v57 + 8))(v55, v56);
  }

  else
  {
    v62 = v85[21];
    v79 = v38;
    v80 = v85[22];
    v81 = v62;
    v63 = v85[19];
    v64 = v85[20];
    v83 = v40;
    v65 = v85[18];
    (*(v47 + 8))(v49, v46);

    sub_2647EA92C((v85 + 7), (v85 + 2));
    v82 = v85[6];
    __swift_project_boxed_opaque_existential_1(v85 + 2, v85[5]);
    v66 = swift_allocObject();
    v66[2] = v89;
    v66[3] = v84;
    v66[4] = v90;
    v67 = swift_task_alloc();
    (*(v63 + 16))(v67, v62, v65);
    v68 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v69 = (v64 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    (*(v63 + 32))(v72 + v68, v67, v65);
    *(v72 + v69) = v89;
    *(v72 + v70) = v79;
    *(v72 + v71) = v80;
    v39 = v85;
    *(v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8)) = v87;

    swift_retain_n();
    v73 = v90;

    sub_2647EF1F4();

    (*(v63 + 8))(v81, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v85 + 2);
  }

  v74 = v39[21];
  v75 = v39[22];
  swift_beginAccess();
  v76 = *(v75 + 16);

  v77 = v39[1];

  return v77(v76);
}

uint64_t sub_2647E9DF4()
{
  v1 = *(v0 + 240);

  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 200) + 15;
  v51 = [objc_opt_self() now];
  v8 = *(v5 + 16);
  v9 = swift_allocObject();
  v49 = v8;

  v10 = MEMORY[0x277D84F90];
  v48 = v9;
  *(v9 + 16) = sub_2647EEA08(MEMORY[0x277D84F90]);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_2647EEBEC(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x277CF1A58]) init];
  v13 = swift_task_alloc();
  sub_2647EAEF4(v6, v13, &qword_27FF807F8, &qword_2647EFA98);
  v14 = v3(v13, 1, v4);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);
    v15 = sub_2647EEE64();
    (*(v17 + 8))(v13, v16);
  }

  v18 = v12;
  [v12 setStartDate_];

  v19 = sub_2647EF1D4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  sub_2647EF1C4();
  sub_2647EF1B4();
  v23 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = v18;
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 144);
  (*(v20 + 8))(v22, v19);

  sub_2647EA92C((v0 + 56), v0 + 16);
  v46 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v44 = swift_allocObject();
  v42 = v11;
  v44[2] = v11;
  v44[3] = v49;
  v44[4] = v51;
  v27 = swift_task_alloc();
  v28 = v24;
  v29 = *(v24 + 16);
  v30 = v26;
  v43 = v26;
  v29(v27, v23, v26);
  v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = (v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v28 + 32))(v35 + v31, v27, v30);
  *(v35 + v32) = v42;
  *(v35 + v33) = v50;
  *(v35 + v34) = v45;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;

  swift_retain_n();
  v36 = v51;

  sub_2647EF1F4();

  (*(v28 + 8))(v23, v43);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v37 = *(v0 + 168);
  v38 = *(v0 + 176);
  swift_beginAccess();
  v39 = *(v38 + 16);

  v40 = *(v0 + 8);

  return v40(v39);
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

uint64_t sub_2647EA4F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2647E77E8;

  return sub_2647E7104(v2, v3, v5);
}

uint64_t sub_2647EA5B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2647EB12C;

  return sub_2647E7618(v2, v3, v5);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647EA6B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2647EB12C;

  return sub_2647E7700(a1, v4, v5, v7);
}

uint64_t sub_2647EA784(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2647EB12C;

  return sub_2647E7BD8(a1, v5);
}

uint64_t sub_2647EA83C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2647E77E8;

  return sub_2647E7BD8(a1, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2647EA92C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2647EA994(char *a1)
{
  v3 = *(sub_2647EEEC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2647DD570(a1, v1 + v4, v8, v9, v10, v11);
}

unint64_t sub_2647EAA54()
{
  result = qword_2814C11C0;
  if (!qword_2814C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11C0);
  }

  return result;
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

unint64_t sub_2647EAB08()
{
  result = qword_2814C11B8;
  if (!qword_2814C11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11B8);
  }

  return result;
}

void *sub_2647EAB5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (a1 >> 62)
  {
LABEL_21:
    v7 = sub_2647EF3F4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v22 = v6 & 0xC000000000000001;
      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          v9 = MEMORY[0x266740D50](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            return v3;
          }
        }

        else
        {
          if (v8 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v9 = *(v6 + 8 * v8 + 32);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_17;
          }
        }

        v11 = v7;
        v3 = v9;
        v12 = a3;
        v13 = [v9 identifier];
        v14 = sub_2647EF244();
        v16 = v15;

        v17 = v14 == a2 && v16 == v12;
        if (v17)
        {
          goto LABEL_18;
        }

        a3 = v12;
        v18 = sub_2647EF444();

        if (v18)
        {
          return v3;
        }

        ++v8;
        v7 = v11;
        v17 = v10 == v11;
        v6 = v20;
        if (v17)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2647EACEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2647EAD34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2647EAD94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2647EADE0()
{
  result = qword_2814C11B0;
  if (!qword_2814C11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF80870, &qword_2647EFB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11B0);
  }

  return result;
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

uint64_t sub_2647EAE8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2647EAEF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2647EAF5C()
{
  result = qword_2814C11F0;
  if (!qword_2814C11F0)
  {
    sub_2647EEEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11F0);
  }

  return result;
}

uint64_t sub_2647EAFB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SAError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SAError(uint64_t result, int a2, int a3)
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

uint64_t sub_2647EB0DC(uint64_t a1)
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

uint64_t sub_2647EB0FC(uint64_t result, int a2)
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

uint64_t SAEligibilityChecking.isAppleIntelligenceEligible.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[2] = 122;
  v6 = *(a2 + 8);
  v3[8] = v6;
  v3[9] = (a2 + 8) & 0xFFFFFFFFFFFFLL | 0x9BCC000000000000;
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[10] = v8;
  *v8 = v3;
  v8[1] = sub_2647EB270;

  return (v10)(v3 + 2, a1, a2);
}

uint64_t sub_2647EB270(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  if (a1)
  {
    v6 = *(v5 + 8);

    return v6(1);
  }

  else
  {
    *(v3 + 24) = 123;
    v8 = (v3 + 24);
    v9 = v8[6];
    v16 = (v8[5] + *v8[5]);
    v10 = *(v8[5] + 4);
    v11 = swift_task_alloc();
    v8[8] = v11;
    *v11 = v5;
    v11[1] = sub_2647EB44C;
    v12 = v8[6];
    v13 = v8[3];
    v14 = v8[4];
    v15 = v8[2];

    return v16(v8, v15, v13);
  }
}

uint64_t sub_2647EB44C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  if (a1)
  {
    v6 = *(v5 + 8);

    return v6(1);
  }

  else
  {
    *(v3 + 32) = 125;
    v8 = (v3 + 32);
    v9 = v8[5];
    v16 = (v8[4] + *v8[4]);
    v10 = *(v8[4] + 4);
    v11 = swift_task_alloc();
    v8[8] = v11;
    *v11 = v5;
    v11[1] = sub_2647EB628;
    v12 = v8[5];
    v13 = v8[2];
    v14 = v8[3];
    v15 = v8[1];

    return v16(v8, v15, v13);
  }
}

uint64_t sub_2647EB628(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2647EB724()
{
  v0 = sub_2647EF1A4();
  __swift_allocate_value_buffer(v0, qword_2814C1250);
  __swift_project_value_buffer(v0, qword_2814C1250);
  return sub_2647EF194();
}

void *sub_2647EB7A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2647EB7BC()
{
  v1 = *v0;
  sub_2647EF4A4();
  MEMORY[0x266740E30](v1);
  return sub_2647EF4C4();
}

uint64_t sub_2647EB830()
{
  v1 = *v0;
  sub_2647EF4A4();
  MEMORY[0x266740E30](v1);
  return sub_2647EF4C4();
}

uint64_t SAEligibilityChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_2647EE0E0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t SAEligibilityChecker.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_2647EE0E0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2647EB904(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = sub_2647EF344();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v7;

  sub_2647EBBA4(0, 0, v6, &unk_2647EFBB8, v9);
}

uint64_t sub_2647EBA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_2647EBAB0;

  return sub_2647EBE74((v5 + 16));
}

uint64_t sub_2647EBAB0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2647EBBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2647EAEF4(a3, v27 - v11, &qword_27FF807F0, &qword_2647EFA48);
  v13 = sub_2647EF344();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2647EE70C(v12);
  }

  else
  {
    sub_2647EF334();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2647EF324();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2647EF284() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2647EE70C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2647EE70C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2647EBE74(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2647EBF08, v1, 0);
}

uint64_t sub_2647EBF08()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_2647EC734(v0[10]);
    if (v4 & 1) != 0 && (*(*(v2 + 56) + v3))
    {
      v5 = 1;
      goto LABEL_22;
    }
  }

  v6 = v0[10];
  v0[8] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == sub_2647EF1E4())
  {
    if (v0[8] != 4)
    {
      if (qword_2814C1248 != -1)
      {
        swift_once();
      }

      v17 = sub_2647EF1A4();
      __swift_project_value_buffer(v17, qword_2814C1250);
      v9 = sub_2647EF184();
      v10 = sub_2647EF364();
      if (!os_log_type_enabled(v9, v10))
      {
        v5 = 0;
        goto LABEL_21;
      }

      v18 = v0[10];
      v13 = swift_slowAlloc();
      v5 = 0;
      *v13 = 134217984;
      *(v13 + 4) = v18;
      v14 = "Determined not eligible for domain %llu";
      v12 = 12;
      goto LABEL_20;
    }

    if (qword_2814C1248 != -1)
    {
      swift_once();
    }

    v8 = sub_2647EF1A4();
    __swift_project_value_buffer(v8, qword_2814C1250);
    v9 = sub_2647EF184();
    v10 = sub_2647EF364();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[10];
      v12 = 12;
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v11;
      v5 = 1;
      v14 = "Determined eligible for domain %llu";
LABEL_20:
      _os_log_impl(&dword_2647DA000, v9, v10, v14, v13, v12);
      MEMORY[0x266741280](v13, -1, -1);
      goto LABEL_21;
    }
  }

  else
  {
    if (qword_2814C1248 != -1)
    {
      swift_once();
    }

    v15 = sub_2647EF1A4();
    __swift_project_value_buffer(v15, qword_2814C1250);
    v9 = sub_2647EF184();
    v10 = sub_2647EF374();
    if (os_log_type_enabled(v9, v10))
    {
      v16 = v0[10];
      v12 = 18;
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = v16;
      *(v13 + 12) = 1024;
      *(v13 + 14) = domain_answer;
      v5 = 1;
      v14 = "Unable to determine eligibility for domain %llu, status: %d";
      goto LABEL_20;
    }
  }

  v5 = 1;
LABEL_21:
  v19 = v0[10];

  swift_beginAccess();
  v20 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2647ED520(v5, v19, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v25;
  swift_endAccess();
LABEL_22:
  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22(v5);
}

unint64_t sub_2647EC2A4()
{
  type metadata accessor for SAEligibilityChecker();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_2647EE0E0(MEMORY[0x277D84F90]);
  *(v0 + 112) = result;
  qword_2814C1340 = v0;
  return result;
}

uint64_t static SAEligibilityChecker.shared.getter()
{
  if (qword_2814C1338 != -1)
  {
    swift_once();
  }
}

uint64_t SAEligibilityChecker.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SAEligibilityChecker.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2647EC3C4(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647EC45C;

  return sub_2647EBE74(a1);
}

uint64_t sub_2647EC45C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2647EC558(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *a1;
  v9 = sub_2647EF344();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v10[5] = v8;

  sub_2647EBBA4(0, 0, v6, &unk_2647EFD50, v10);
}

Swift::Void __swiftcall SAEligibilityChecking.prewarmAppleIntelligence()()
{
  v2 = v1;
  v3 = v0;
  v5 = 122;
  v4 = *(v1 + 16);
  v4(&v5);
  v5 = 123;
  (v4)(&v5, v3, v2);
  v5 = 125;
  (v4)(&v5, v3, v2);
}

unint64_t sub_2647EC734(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2647EF4A4();
  MEMORY[0x266740E30](a1);
  v4 = sub_2647EF4C4();

  return sub_2647EC89C(a1, v4);
}

unint64_t sub_2647EC7A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2647EEEC4();
  sub_2647EE9C4(&qword_2814C11F0);
  v5 = sub_2647EF204();

  return sub_2647EC908(a1, v5);
}

unint64_t sub_2647EC824(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2647EF4A4();
  sub_2647EF294();
  v6 = sub_2647EF4C4();

  return sub_2647ECAB4(a1, a2, v6);
}

unint64_t sub_2647EC89C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2647EC908(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2647EEEC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2647EE9C4(&qword_2814C11E8);
      v16 = sub_2647EF224();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2647ECAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2647EF444())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2647ECB6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80888, &qword_2647EFD58);
  result = sub_2647EF414();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_2647EF4A4();
      MEMORY[0x266740E30](v21);
      result = sub_2647EF4C4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_2647ECDEC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2647EEEC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80898, &qword_2647EFD88);
  v43 = a2;
  result = sub_2647EF414();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2647EE9C4(&qword_2814C11F0);
      result = sub_2647EF204();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2647ED1B4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80890, &qword_2647EFD80);
  v45 = a2;
  result = sub_2647EF414();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
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
    v44 = result;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v48 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
      v47 = &v42;
      v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20]();
      v25 = &v42 - v24;
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 16 * v21);
      v29 = *v27;
      v28 = v27[1];
      v46 = *(v30 + 72);
      v31 = v26 + v46 * v21;
      if (v45)
      {
        sub_2647EE954(v31, &v42 - v24);
      }

      else
      {
        sub_2647EAEF4(v31, &v42 - v24, &qword_27FF80848, &qword_2647EFAE8);
      }

      v32 = v44;
      v33 = *(v44 + 40);
      sub_2647EF4A4();
      sub_2647EF294();
      result = sub_2647EF4C4();
      v34 = -1 << *(v32 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v32 + 48) + 16 * v16);
      *v17 = v29;
      v17[1] = v28;
      result = sub_2647EE954(v25, *(v32 + 56) + v46 * v16);
      ++*(v32 + 16);
      v13 = v48;
      v5 = v43;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      v8 = v44;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    v8 = v44;
    if (v41 >= 64)
    {
      bzero(v10, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_2647ED520(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2647EC734(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2647EDAE4();
    result = v17;
    goto LABEL_8;
  }

  sub_2647ECB6C(v14, a3 & 1);
  v18 = *v4;
  result = sub_2647EC734(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2647EF454();
  __break(1u);
  return result;
}

void sub_2647ED64C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2647EEEC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2647EC7A0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2647EDC30();
      goto LABEL_7;
    }

    sub_2647ECDEC(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_2647EC7A0(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_2647ED988(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_2647EF454();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2647ED818(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2647EC824(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2647EDEA4();
      goto LABEL_7;
    }

    sub_2647ED1B4(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_2647EC824(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2647EF454();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8) - 8) + 72) * v12;

    return sub_2647EE8E4(a1, v20);
  }

LABEL_13:
  sub_2647EDA40(v12, a2, a3, a1, v18);
}

uint64_t sub_2647ED988(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2647EEEC4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2647EDA40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  result = sub_2647EE954(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2647EDAE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80888, &qword_2647EFD58);
  v2 = *v0;
  v3 = sub_2647EF404();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_2647EDC30()
{
  v1 = v0;
  v32 = sub_2647EEEC4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20]();
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80898, &qword_2647EFD88);
  v4 = *v0;
  v5 = sub_2647EF404();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2647EDEA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80890, &qword_2647EFD80);
  v2 = *v0;
  v3 = sub_2647EF404();
  v4 = v3;
  if (*(v2 + 16))
  {
    v33 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v34 = v2;
    v35 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = -1;
    v13 = *(v2 + 64);
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
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v34;
        v21 = 16 * v19;
        v22 = (*(v34 + 48) + 16 * v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
        v36 = &v33;
        v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20]();
        v28 = &v33 - v27;
        v30 = *(v29 + 72) * v19;
        sub_2647EAEF4(*(v20 + 56) + v30, &v33 - v27, &qword_27FF80848, &qword_2647EFAE8);
        v31 = v35;
        v32 = (*(v35 + 48) + v21);
        *v32 = v23;
        v32[1] = v24;
        sub_2647EE954(v28, *(v31 + 56) + v30);
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

        v1 = v33;
        v4 = v35;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_2647EE0E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80888, &qword_2647EFD58);
    v3 = sub_2647EF424();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2647EC734(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_2647EE1C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2647EB12C;

  return sub_2647EBA14(a1, v4, v5, v7, v6);
}

unint64_t sub_2647EE284()
{
  result = qword_2814C1348;
  if (!qword_2814C1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C1348);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SAEligibilityDomain(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SAEligibilityDomain(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t dispatch thunk of SAEligibilityChecking.isEligible(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2647EEDD8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SAEligibilityChecker.isEligible(for:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2647EC45C;

  return v8(a1);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647EE64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2647E77E8;

  return sub_2647EBA14(a1, v4, v5, v7, v6);
}

uint64_t sub_2647EE70C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2647EE774(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2647EB12C;

  return sub_2647E7BD8(a1, v5);
}

uint64_t sub_2647EE82C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2647E77E8;

  return sub_2647E7BD8(a1, v5);
}

uint64_t sub_2647EE8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647EE954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647EE9C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2647EEEC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2647EEA08(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80890, &qword_2647EFD80);
    v3 = sub_2647EF424();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF808A8, &qword_2647EFD98);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v9 = (&v24 - v8);
  if (!v2)
  {
    return v3;
  }

  v10 = *(v6 + 48);
  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);

  while (1)
  {
    sub_2647EAEF4(v11, v9, &qword_27FF808A8, &qword_2647EFD98);
    v14 = *v9;
    v13 = v9[1];
    result = sub_2647EC824(*v9, v13);
    if (v16)
    {
      break;
    }

    v17 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v18 = (v3[6] + 16 * result);
    *v18 = v14;
    v18[1] = v13;
    v19 = v3[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    result = sub_2647EE954(v9 + v10, v19 + *(*(v20 - 8) + 72) * v17);
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_12;
    }

    v3[2] = v23;
    v11 += v12;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2647EEBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF808A0, &qword_2647EFD90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80898, &qword_2647EFD88);
    v8 = sub_2647EF424();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2647EAEF4(v10, v6, &qword_27FF808A0, &qword_2647EFD90);
      result = sub_2647EC7A0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2647EEEC4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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