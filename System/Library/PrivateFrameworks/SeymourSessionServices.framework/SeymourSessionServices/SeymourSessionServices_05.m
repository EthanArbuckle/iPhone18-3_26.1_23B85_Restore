uint64_t sub_265CDAFE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - v4;
  v6 = sub_265D59DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  (*(v12 + 16))(&v30 - v14, v1 + OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator__recordBiomeStreams, v11);
  sub_265D58D10();
  result = (*(v12 + 8))(v15, v11);
  if (v33[0] == 1)
  {
    v17 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
    swift_beginAccess();
    sub_265CDB468(v1 + v17, v33);
    v18 = v34;
    result = sub_265CDAFB4(v33);
    if (!v18)
    {
      result = sub_265CDC7F8();
      v19 = result;
      if (result != 4)
      {
        v20 = result;
        sub_265D595F0();
        sub_265D59DC0();
        (*(v7 + 8))(v10, v6);
        if (v19 <= 2)
        {
          v21 = [objc_allocWithZone(MEMORY[0x277CF1958]) init];
          v22 = sub_265C932E0(0, &qword_28003E648, 0x277CF1958);
          v23 = v22;
          v24 = &off_28777D5E0;
        }

        else
        {
          v21 = [objc_allocWithZone(MEMORY[0x277CF19E0]) init];
          v22 = sub_265C932E0(0, &qword_28003E640, 0x277CF19E0);
          v23 = v22;
          v24 = &off_28777D518;
        }

        v32[3] = v22;
        v32[4] = v24;
        v32[0] = v21;
        v25 = sub_265D58A40();
        v26 = sub_265D589D0();
        *&v37 = v25;
        *(&v37 + 1) = v26;
        *v38 = v27;
        *&v38[8] = 0;
        v38[12] = 1;
        *&v38[16] = v20;
        v38[20] = 1;
        __swift_project_boxed_opaque_existential_1(v32, v23);
        (v24[1])(&v37);
        v28 = sub_265D58960();
        v29 = swift_allocObject();
        *(v29 + 16) = 0;
        *(v29 + 24) = 0;
        v28(sub_265CA442C, v29);

        (*(v31 + 8))(v5, v2);
        sub_265C97624(v32, v33);
        v35 = v37;
        *v36 = *v38;
        *&v36[13] = *&v38[13];
        sub_265CDA870(v33);
        sub_265CDAFB4(v33);
        return __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }
    }
  }

  return result;
}

uint64_t sub_265CDB4A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - v4;
  v6 = sub_265D59DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
  swift_beginAccess();
  sub_265CDB468(v0 + v11, &v32);
  if (!*(&v33 + 1))
  {
    return sub_265CDAFB4(&v32);
  }

  v24 = v2;
  v25 = v1;
  v29 = v0;
  v12 = *&v35[0];
  v26 = *(&v34 + 1);
  v13 = *(&v35[0] + 1);
  v28 = v35[1];
  v27 = BYTE4(v35[1]);
  v14 = DWORD2(v35[1]);
  v15 = BYTE12(v35[1]);
  sub_265C033C4(&v32, v36);

  if (v12 == sub_265D589D0() && v13 == v16)
  {

LABEL_7:
    sub_265D595F0();
    sub_265D59DC0();
    (*(v7 + 8))(v10, v6);
    v39[0] = v26;
    v39[1] = v12;
    v39[2] = v13;
    v40 = 1;
    v41 = 1;
    v42 = v14;
    v43 = v15;
    LODWORD(v32) = v28;
    BYTE4(v32) = v27;
    v30 = 1;
    v31 = 1;
    sub_265CDBFD4();
    sub_265CDC028();
    if (sub_265D57F90())
    {
    }

    else
    {
      v19 = v37;
      v20 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v20 + 8))(v39, v19, v20);

      v21 = v25;
      v22 = sub_265D58960();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      v22(sub_265CA4BF4, v23);

      (*(v24 + 8))(v5, v21);
    }

    v34 = 0u;
    memset(v35, 0, 29);
    v33 = 0u;
    v32 = 0u;
    sub_265CDA870(&v32);
    sub_265CDAFB4(&v32);
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  v18 = sub_265D5A3C0();

  if (v18)
  {
    goto LABEL_7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v36);
}

uint64_t sub_265CDB8D4()
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v47 = *(v6 - 8);
  v7 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v38 - v8;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v38 - v11;
  v13 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
  swift_beginAccess();
  sub_265CDB468(v0 + v13, &v49);
  if (!v50)
  {
    return sub_265CDAFB4(&v49);
  }

  v42 = v5;
  v43 = v2;
  v44 = v1;
  v45 = v0;
  v14 = *(&v51 + 1);
  v41 = v51;
  v15 = *v52;
  v46 = v52[8];
  v16 = v52[12];
  v40 = *&v52[16];
  v39 = v52[20];
  sub_265C033C4(&v49, v53);

  if (v14 == sub_265D580D0() && v15 == v17)
  {
  }

  else
  {
    v19 = sub_265D5A3C0();

    if ((v19 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v14 == sub_265D589D0() && v15 == v20)
  {

    goto LABEL_11;
  }

  v21 = sub_265D5A3C0();

  if ((v21 & 1) == 0)
  {
LABEL_15:

    return __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

LABEL_11:
  if (!v16)
  {
    goto LABEL_15;
  }

  sub_265D58110();
  v22 = sub_265D58BB0();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) != 1)
  {
    v24 = sub_265D58BA0();
    (*(v23 + 8))(v12, v22);
    if ((v24 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    if (v46 > 1)
    {
      if (v46 == 2)
      {
        if (v24 <= 1u)
        {
          if (v24)
          {
            goto LABEL_15;
          }

          v25 = 3;
LABEL_32:
          *&v56 = v41;
          *(&v56 + 1) = v14;
          *v57 = v15;
          *&v57[8] = v25;
          v57[12] = 1;
          *&v57[16] = v40;
          v57[20] = v39;
          v26 = v54;
          v27 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          (*(v27 + 8))(&v56, v26, v27);
          v28 = sub_265D58960();
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = 0;
          v28(sub_265CA4BF4, v29);

          (*(v47 + 8))(v9, v6);
          sub_265C97624(v53, &v49);
          v51 = v56;
          *v52 = *v57;
          *&v52[13] = *&v57[13];
          sub_265CDA870(&v49);
          sub_265CDAFB4(&v49);
          v30 = v42;
          sub_265D595F0();
          v31 = sub_265D59DD0();
          v32 = sub_265D5A080();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *&v49 = v34;
            *v33 = 136446210;
            v48 = v25;
            v35 = sub_265D59EC0();
            v37 = sub_265CF4FFC(v35, v36, &v49);

            *(v33 + 4) = v37;
            _os_log_impl(&dword_265C01000, v31, v32, "Recorded biome for event %{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v34);
            MEMORY[0x266770CF0](v34, -1, -1);
            MEMORY[0x266770CF0](v33, -1, -1);
          }

          (*(v43 + 8))(v30, v44);
          return __swift_destroy_boxed_opaque_existential_1Tm(v53);
        }

        if (v24 == 2)
        {
          goto LABEL_15;
        }

LABEL_30:
        if (v46 == 1)
        {
          goto LABEL_15;
        }

        v25 = 1;
        goto LABEL_32;
      }
    }

    else if (v46)
    {
      if (v24 == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    if (v24 - 1 < 2)
    {
      v25 = 2;
      goto LABEL_32;
    }

    if (!v24)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  sub_265CDC07C(v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v53);
}

unint64_t sub_265CDBF80()
{
  result = qword_28003E650;
  if (!qword_28003E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E650);
  }

  return result;
}

unint64_t sub_265CDBFD4()
{
  result = qword_28003E658;
  if (!qword_28003E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E658);
  }

  return result;
}

unint64_t sub_265CDC028()
{
  result = qword_28003E660;
  if (!qword_28003E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E660);
  }

  return result;
}

uint64_t sub_265CDC07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_265CDC0E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v40 - v2;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = sub_265D57CB0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_265D57CA0();
  v45 = objc_opt_self();
  v16 = [v45 standardUserDefaults];
  v44 = "handleSessionActivation(_:)";
  v17 = sub_265D59E90();
  v18 = [v16 dataForKey_];

  if (v18)
  {
    v19 = sub_265D57DC0();
    v21 = v20;

    sub_265CDC7A4();
    v43 = v19;
    sub_265D57C90();
    v22 = v47;
    if (BYTE4(v49) == 1)
    {
      v40 = v46;
      v23 = v49;
      sub_265D595F0();
      sub_265D59DC0();
      (*(v5 + 8))(v12, v4);
      v24 = v21;
      if (v23 <= 2u)
      {
        v31 = [objc_allocWithZone(MEMORY[0x277CF1958]) init];
        v32 = sub_265C932E0(0, &qword_28003E648, 0x277CF1958);
        v33 = v32;
        v34 = &off_28777D5E0;
      }

      else
      {
        v31 = [objc_allocWithZone(MEMORY[0x277CF19E0]) init];
        v32 = sub_265C932E0(0, &qword_28003E640, 0x277CF19E0);
        v33 = v32;
        v34 = &off_28777D518;
      }

      v48 = v32;
      v49 = v34;
      *&v46 = v31;
      v50 = v40;
      v51 = v22;
      v52 = 1;
      v53 = 1;
      v54 = v23;
      v55 = 1;
      __swift_project_boxed_opaque_existential_1(&v46, v33);
      (v34[1])(&v50);

      v35 = v42;
      v36 = sub_265D58960();
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      v36(sub_265CA4BF4, v37);

      sub_265C9889C(v43, v24);
      (*(v41 + 8))(v3, v35);
      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    }

    else
    {

      sub_265D595F0();
      v25 = sub_265D59DD0();
      v26 = sub_265D5A070();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = v21;
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_265C01000, v25, v26, "Unable to record stop event for restored state!", v28, 2u);
        MEMORY[0x266770CF0](v28, -1, -1);
        v29 = v43;
        v30 = v27;
      }

      else
      {
        v29 = v43;
        v30 = v21;
      }

      sub_265C9889C(v29, v30);

      (*(v5 + 8))(v10, v4);
    }
  }

  v38 = [v45 standardUserDefaults];
  v39 = sub_265D59E90();
  [v38 removeObjectForKey_];
}

unint64_t sub_265CDC7A4()
{
  result = qword_28003E668;
  if (!qword_28003E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E668);
  }

  return result;
}

uint64_t sub_265CDC7F8()
{
  v0 = sub_265D581A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58A10();
  v5 = sub_265D58190();
  v7 = v6;
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  if (v9)
  {
    return 0x30102u >> (8 * v5);
  }

  sub_265CA4B90(v5, v7, 0);
  return 4;
}

uint64_t sub_265CDC900()
{
  v1 = 1701869940;
  v2 = 0x7974697669746361;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_265CDC97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265CDCC9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265CDC9B0(uint64_t a1)
{
  v2 = sub_265CDD080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265CDC9EC(uint64_t a1)
{
  v2 = sub_265CDD080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265CDCA28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E688, &qword_265D5C648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265CDD080();
  sub_265D5A4E0();
  v16 = *(v3 + 8);
  v17 = *(v3 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E690, &qword_265D5C650);
  sub_265D57F60();
  BYTE3(v15) = 0;
  sub_265D5A390();
  if (!v2)
  {
    v16 = *(v3 + 6);
    v17 = *(v3 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E698, &qword_265D5C658);
    sub_265D57F60();
    BYTE3(v15) = 1;
    sub_265D5A390();
    v11 = *v3;
    LOBYTE(v16) = 2;
    sub_265D5A370();
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v16) = 3;
    sub_265D5A360();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_265CDCC3C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_265CDCE08(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 29) = *&v7[13];
  }

  return result;
}

uint64_t sub_265CDCC9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_265D5A3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_265D5A3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954 || (sub_265D5A3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_265D5A3C0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_265CDCE08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E670, &qword_265D5C640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265CDD080();
  sub_265D5A4D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v28) = 0;
  v11 = sub_265D5A340();
  LOBYTE(v28) = 1;
  v12 = sub_265D5A340();
  v27 = v11;
  sub_265CDD0D4();
  sub_265D57F70();
  v25 = v29;
  v26 = v28;
  v27 = v12;
  sub_265CDC028();
  sub_265D57F70();
  v13 = v28;
  v14 = v29;
  LOBYTE(v28) = 2;
  v15 = sub_265D5A320();
  v22 = v14;
  v23 = v13;
  v24 = v15;
  LOBYTE(v28) = 3;
  v16 = sub_265D5A310();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v24;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  v20 = v22;
  *(a2 + 24) = v23;
  *(a2 + 28) = v20;
  v21 = v25;
  *(a2 + 32) = v26;
  *(a2 + 36) = v21;
  return result;
}

unint64_t sub_265CDD080()
{
  result = qword_28003E678;
  if (!qword_28003E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E678);
  }

  return result;
}

unint64_t sub_265CDD0D4()
{
  result = qword_28003E680;
  if (!qword_28003E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E680);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265CDD14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_265CDD194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265CDD1F0()
{
  result = qword_28003E6A0;
  if (!qword_28003E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6A0);
  }

  return result;
}

unint64_t sub_265CDD248()
{
  result = qword_28003E6A8;
  if (!qword_28003E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6A8);
  }

  return result;
}

unint64_t sub_265CDD2A0()
{
  result = qword_28003E6B0;
  if (!qword_28003E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6B0);
  }

  return result;
}

void sub_265CDD2F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 28))
  {
    v9 = *(a1 + 24);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v5 + 8))(v8, v4);
    v10 = [objc_allocWithZone(MEMORY[0x277CF19D8]) initWithSessionType:2 stateType:v9 + 1];
    v11 = [v2 source];
    [v11 sendEvent_];

    sub_265D58970();
  }

  else
  {
    sub_265CDD52C();
    v12 = swift_allocError();
    *v13 = 0;
    *(swift_allocObject() + 16) = v12;

    sub_265D58940();
  }
}

unint64_t sub_265CDD52C()
{
  result = qword_28003E6B8;
  if (!qword_28003E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E6B8);
  }

  return result;
}

void sub_265CDD594(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 28))
  {
    v9 = *(a1 + 24);
    v10 = *a1;
    v11 = _HKWorkoutActivityNameForActivityType();
    if (v11)
    {
      v12 = v11;
      sub_265D595F0();
      sub_265D59DC0();
      (*(v5 + 8))(v8, v4);
      v27 = *(a1 + 8);
      v28 = *(a1 + 36);
      v25 = 0;
      v13 = 1;
      v26 = 1;
      sub_265CDA70C();
      sub_265CDD0D4();
      if ((sub_265D57F90() & 1) == 0)
      {
        v27 = *(a1 + 8);
        v28 = *(a1 + 36);
        v25 = 3;
        v26 = 1;
        v13 = sub_265D57F90();
      }

      v14 = qword_265D5C8D0[v9];
      v16 = a1[1];
      v15 = a1[2];
      v17 = objc_allocWithZone(MEMORY[0x277CF1950]);
      v18 = sub_265D59E90();
      v19 = [v17 initWithIsFirstPartyDonation:1 isIndoor:v13 & 1 activityType:v12 activityUUID:v18 eventType:v14 isUpdate:0];

      v20 = [v2 source];
      [v20 sendEvent_];

      sub_265D58970();
      return;
    }

    sub_265CDD52C();
    v23 = swift_allocError();
    *v24 = 1;
    *(swift_allocObject() + 16) = v23;
  }

  else
  {
    sub_265CDD52C();
    v21 = swift_allocError();
    *v22 = 0;
    *(swift_allocObject() + 16) = v21;
  }

  sub_265D58940();
}

uint64_t sub_265CDD930()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v3 + 8))(v6, v2);
  [*(v1 + 16) invalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_265CDDA6C(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  if (a1)
  {
    v10 = a1;
    sub_265D595E0();
    v11 = a1;
    v12 = sub_265D59DD0();
    v13 = sub_265D5A070();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = MEMORY[0x2667704D0](v23[2], v23[3]);
      v18 = sub_265CF4FFC(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_265C01000, v12, v13, "Error activating host airplay restriction assertion: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x266770CF0](v15, -1, -1);
      MEMORY[0x266770CF0](v14, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    sub_265D595E0();
    v19 = sub_265D59DD0();
    v20 = sub_265D5A080();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_265C01000, v19, v20, "Airplay restriction bypasser active", v21, 2u);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_265CDDD20(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_265D58EB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 200);
    v11 = *(result + 208);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v5 + 104))(v8, *a3, v4);
    sub_265D583D0();
    sub_265D58C70();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_265CDDEB0(uint64_t a1, unsigned int *a2)
{
  v3 = sub_265D58EB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 200);
    v10 = *(result + 208);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v4 + 104))(v7, *a2, v3);
    sub_265D58C80();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t *sub_265CDE004()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v2 = v0[19];
  swift_unknownObjectRelease();
  v3 = v0[21];
  swift_unknownObjectRelease();
  v4 = v0[24];

  v5 = v0[25];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_265CDE05C()
{
  sub_265CDE004();

  return swift_deallocClassInstance();
}

uint64_t sub_265CDE0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v29);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v9 + 8))(v12, v8);
  sub_265D5A030();
  v14 = v13;
  v15 = *(v2 + 184);
  v16 = sub_265D58B20();
  v18 = v17;
  __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
  v19 = off_28777D8C0[0];
  type metadata accessor for RemoteParticipantHandshakeRegistry();
  v19();
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_265D58B40();
  sub_265D58830();
  sub_265CA4AE8(v32, &qword_28003E6D0, &unk_265D5C9E0);
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = v16;
  v20[4] = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_265CDF3B4;
  *(v21 + 24) = v20;
  v22 = v29;
  v23 = v30;
  (*(v3 + 16))(v30, v7, v29);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  (*(v3 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_265CC4B4C;
  v26[1] = v21;
  sub_265D588C0();
  sub_265D58930();
  return (*(v3 + 8))(v7, v22);
}

uint64_t sub_265CDE438@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - v6;
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v8 + 8))(v11, v7);
  sub_265D5A030();
  v13 = v12;
  v14 = *(v2 + 184);
  v15 = sub_265D58B20();
  v17 = v16;
  __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
  v18 = off_28777D8C0[0];
  type metadata accessor for RemoteParticipantHandshakeRegistry();
  v18();
  sub_265C97624(v2 + 32, v34);
  sub_265D58B40();
  v19 = v30;
  sub_265D58830();
  sub_265CA4AE8(v34, &qword_28003E6D0, &unk_265D5C9E0);
  v20 = swift_allocObject();
  v20[2] = v13;
  v20[3] = v15;
  v20[4] = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_265CDF374;
  *(v21 + 24) = v20;
  v23 = v31;
  v22 = v32;
  v24 = v19;
  (*(v3 + 16))(v31, v19, v32);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = swift_allocObject();
  (*(v3 + 32))(v26 + v25, v23, v22);
  v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_265CC3740;
  v27[1] = v21;
  sub_265D588C0();
  sub_265D58930();
  return (*(v3 + 8))(v24, v22);
}

uint64_t sub_265CDE7C8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v18[2] = a3;
  v18[3] = a2;
  v18[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - v5;
  v7 = sub_265D588C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  sub_265D5A030();
  sub_265D59C80();
  sub_265D59C90();

  sub_265D57F10();
  v14 = sub_265D57F40();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_265D588B0();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v11, v7);
  sub_265D58940();
  return (*(v8 + 8))(v13, v7);
}

void sub_265CDEA20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v77 = a1;
  v82 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v67 - v6;
  v81 = sub_265D588C0();
  v74 = *(v81 - 8);
  v7 = *(v74 + 64);
  v8 = MEMORY[0x28223BE20](v81);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v9;
  MEMORY[0x28223BE20](v8);
  v73 = &v67 - v10;
  v11 = sub_265D58870();
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v67 - v17;
  v19 = sub_265D59BA0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_265D59DE0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v68 = &v67 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v67 - v32;
  sub_265D595E0();
  sub_265D59DC0();
  v34 = *(v25 + 8);
  v79 = v25 + 8;
  v80 = v24;
  v78 = v34;
  v34(v33, v24);
  sub_265D5A030();
  v35 = *(v3 + 136);
  v69 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 112), v35);
  v36 = off_28777D8C8[0];
  type metadata accessor for RemoteParticipantHandshakeRegistry();
  v36();
  v37 = v19;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_265CA4AE8(v18, &qword_28003E6C8, &unk_265D5C9D0);
    sub_265D595E0();
    v38 = sub_265D59DD0();
    v39 = sub_265D5A070();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_265C01000, v38, v39, "No previous outgoing handshake recorded, rejecting", v40, 2u);
      MEMORY[0x266770CF0](v40, -1, -1);
    }

    v78(v29, v80);
    v41 = sub_265D58580();
    sub_265CDF304();
    v42 = swift_allocError();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D52608], v41);
    *(swift_allocObject() + 16) = v42;
    sub_265D58940();
    return;
  }

  (*(v20 + 32))(v23, v18, v19);
  sub_265D59B70();
  v44 = sub_265D58860();
  v46 = v45;
  (*(v75 + 8))(v14, v76);
  if (v44 == sub_265D58860() && v46 == v47)
  {

LABEL_9:
    sub_265D5A030();
    v49 = *(v69 + 184);
    sub_265D58B20();
    sub_265D59C80();
    v50 = v20;
    sub_265D59C90();
    v51 = v71;
    sub_265D57F10();
    v52 = sub_265D57F40();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    v53 = v73;
    sub_265D588B0();
    v54 = v74;
    v55 = v72;
    v56 = v81;
    (*(v74 + 16))(v72, v53, v81);
    v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v58 = swift_allocObject();
    (*(v54 + 32))(v58 + v57, v55, v56);
    sub_265D58940();
    (*(v54 + 8))(v53, v56);
    (*(v50 + 8))(v23, v37);
    return;
  }

  v48 = sub_265D5A3C0();

  if (v48)
  {
    goto LABEL_9;
  }

  v59 = v68;
  sub_265D595E0();
  v60 = sub_265D59DD0();
  v61 = sub_265D5A070();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_265C01000, v60, v61, "Handshake nonce does not match previous outgoing handshake, rejecting", v62, 2u);
    MEMORY[0x266770CF0](v62, -1, -1);
  }

  v78(v59, v80);
  v63 = sub_265D58580();
  sub_265CDF304();
  v64 = swift_allocError();
  (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D52608], v63);
  *(swift_allocObject() + 16) = v64;
  v66 = v64;
  sub_265D58940();
  (*(v20 + 8))(v23, v19);
}

unint64_t sub_265CDF304()
{
  result = qword_28003E220;
  if (!qword_28003E220)
  {
    sub_265D58580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E220);
  }

  return result;
}

uint64_t sub_265CDF374@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_265CDE7C8(&unk_28777D798, sub_265CDF64C, a1);
}

uint64_t sub_265CDF3B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_265CDE7C8(&unk_28777D838, sub_265CDF64C, a1);
}

uint64_t objectdestroy_24Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265CDF49C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265C9EDEC(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_265D588C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265CDF668()
{
  v1 = v0;
  v2 = sub_265D58F70();
  v42 = *(v2 - 8);
  v3 = v42;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v8 + 8))(v11, v7);
  v12 = v1[16];
  v13 = v1[18];
  v41 = v1;
  ObjectType = swift_getObjectType();
  v44 = v12;
  v15 = *MEMORY[0x277D4EC20];
  v43 = *(v3 + 104);
  v43(v6, v15, v2);
  v16 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();

  v37 = v13;
  sub_265D59210();

  v18 = v42 + 8;
  v17 = *(v42 + 8);
  v39 = v2;
  v17(v6, v2);
  v40 = v17;
  v42 = v18;

  swift_unknownObjectRelease();
  v44 = v12;
  v19 = v2;
  v20 = v43;
  v43(v6, *MEMORY[0x277D4EB90], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v38 = ObjectType;
  sub_265D59210();

  v21 = v39;
  v17(v6, v39);

  swift_unknownObjectRelease();
  v44 = v12;
  v20(v6, *MEMORY[0x277D4EB48], v21);
  v22 = v16;
  swift_allocObject();
  v23 = v41;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v24 = v40;
  v40(v6, v21);
  swift_unknownObjectRelease();
  v44 = v12;
  v43(v6, *MEMORY[0x277D4EA70], v21);
  swift_allocObject();
  swift_weakInit();

  sub_265D59210();

  v24(v6, v21);

  swift_unknownObjectRelease();
  v44 = v12;
  v25 = v43;
  v43(v6, *MEMORY[0x277D4E928], v21);
  v36[5] = v22;
  swift_allocObject();
  swift_weakInit();
  sub_265D59200();

  v24(v6, v21);
  swift_unknownObjectRelease();
  v26 = v23[2];
  v37 = v23[4];
  swift_getObjectType();
  v44 = v26;
  LODWORD(v38) = *MEMORY[0x277D4E860];
  v25(v6);
  swift_allocObject();
  swift_weakInit();
  v36[3] = sub_265D58870();
  v36[2] = sub_265D588C0();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v27 = v40;
  v40(v6, v21);
  swift_unknownObjectRelease();
  v28 = v23[5];
  v37 = v23[7];
  v36[4] = swift_getObjectType();
  v44 = v28;
  v29 = v43;
  v43(v6, v38, v21);
  swift_allocObject();
  swift_weakInit();
  v30 = v28;
  swift_unknownObjectRetain_n();
  sub_265D591E0();

  v31 = v39;
  v27(v6, v39);
  swift_unknownObjectRelease();
  v32 = v41[8];
  v36[1] = v41[10];
  v36[0] = swift_getObjectType();
  v44 = v32;
  v29(v6, v38, v31);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v33 = v39;
  v34 = v40;
  v40(v6, v39);
  swift_unknownObjectRelease();
  v44 = v30;
  v43(v6, *MEMORY[0x277D4E858], v33);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v34(v6, v33);
  return swift_unknownObjectRelease();
}

uint64_t sub_265CDFFC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v13);

    v8 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + 16);
    sub_265CD67DC(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_265CE01C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v13);

    v8 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + 16);
    sub_265CD5D68();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_265CE03CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v17);

    v11 = *__swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v5 + 8))(v8, v4);
    v12 = *(v11 + 152);
    v13 = *(v11 + 160);
    swift_getObjectType();
    sub_265D59C10();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_265CE05EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v14);

    v8 = *__swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + 152);
    v10 = *(v8 + 160);
    swift_getObjectType();
    sub_265D59C00();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_265CE0800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v17);

    v12 = *__swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_265D595E0();
    sub_265D59DC0();
    (*(v5 + 8))(v8, v4);
    v13 = *__swift_project_boxed_opaque_existential_1((v12 + 72), *(v12 + 96));
    sub_265D56A50(v9, v10, a2);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_265CE0A2C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v11);

    v7 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
    a2(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
    (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_265CE0B6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[8];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v4 = v0[16];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265CE0CB4()
{
  v0 = sub_265D58040();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_265D57F40();
  __swift_allocate_value_buffer(v2, qword_28003F0A0);
  __swift_project_value_buffer(v2, qword_28003F0A0);
  sub_265D58030();
  return sub_265D57F20();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_265CE0E18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000065646F4D78;
  v3 = 0x656C7069746C756DLL;
  v4 = a1;
  v5 = 0x6E6F436863746177;
  v6 = 0xEF6E6F697463656ELL;
  if (a1 != 4)
  {
    v5 = 0xD000000000000018;
    v6 = 0x8000000265D5FBB0;
  }

  if (a1 == 3)
  {
    v5 = 0x74616E696D726574;
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xD000000000000010;
  v8 = 0x8000000265D5FB50;
  if (a1 != 1)
  {
    v7 = 0xD000000000000017;
    v8 = 0x8000000265D5FB70;
  }

  if (!a1)
  {
    v7 = 0x656C7069746C756DLL;
    v8 = 0xED000065646F4D78;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB000000006E6F69;
      if (v9 != 0x74616E696D726574)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF6E6F697463656ELL;
      if (v9 != 0x6E6F436863746177)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x8000000265D5FBB0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000265D5FB50;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x8000000265D5FB70;
      v3 = 0xD000000000000017;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_265D5A3C0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_265CE101C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x7665446C61636F6CLL;
    }

    if (v2)
    {
      v4 = 0x8000000265D5FBE0;
    }

    else
    {
      v4 = 0xEB00000000656369;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000265D5FC00;
    v3 = 0xD000000000000014;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000265D5FC20;
    }

    else
    {
      v4 = 0x8000000265D5FC40;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x7665446C61636F6CLL;
    }

    if (a2)
    {
      v6 = 0x8000000265D5FBE0;
    }

    else
    {
      v6 = 0xEB00000000656369;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000265D5FC00;
    if (v3 != 0xD000000000000014)
    {
LABEL_37:
      v8 = sub_265D5A3C0();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000265D5FC20;
    }

    else
    {
      v6 = 0x8000000265D5FC40;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_265CE11B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_265CE52C4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_265D58330();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_265CE2A20(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_265CE5B68();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_265D58330();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_265CE4C34(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_265D58330();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_265CE1374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_265D59BA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_265CA4AE8(a1, &qword_28003E6C8, &unk_265D5C9D0);
    v15 = *v3;
    v16 = sub_265CE2890(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_265CE5DE8();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_265CE4F54(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_265CA4AE8(v9, &qword_28003E6C8, &unk_265D5C9D0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_265CE5490(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_265CE15C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_265C033C4(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_265CE5868(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_265CA4AE8(a1, &qword_28003E6E8, &unk_265D5CB70);
    v8 = *v2;
    v9 = sub_265CE2890(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_265CE66D8();
        v14 = v16;
      }

      sub_265C033C4((*(v14 + 56) + 40 * v11), v17);
      sub_265CE5120(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_265CA4AE8(v17, &qword_28003E6E8, &unk_265D5CB70);
  }

  return result;
}

uint64_t sub_265CE16D0()
{
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

uint64_t sub_265CE1800()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_265CE186C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v25 = a3;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_265D58870();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D59BA0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v24, v11);
  v21 = sub_265D588C0();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_265D59B80();
  (*(v17 + 16))(v6, v20, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  swift_beginAccess();
  sub_265CE1374(v6, v25);
  swift_endAccess();
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_265CE1B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v42 - v7;
  v8 = sub_265D59BA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v47 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - v17;
  v53 = sub_265D58870();
  v45 = *(v53 - 8);
  v19 = *(v45 + 64);
  v20 = MEMORY[0x28223BE20](v53);
  v46 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v42 - v23;
  MEMORY[0x28223BE20](v22);
  v52 = v42 - v25;
  swift_beginAccess();
  v50 = a1;
  v26 = *(a1 + 16);
  v27 = *(v26 + 16);
  v51 = a2;
  if (v27 && (v28 = sub_265CE2890(a2), (v29 & 1) != 0))
  {
    (*(v9 + 16))(v18, *(v26 + 56) + *(v9 + 72) * v28, v8);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = *(v9 + 56);
  v31(v18, v30, 1, v8);
  if ((*(v9 + 48))(v18, 1, v8))
  {
    sub_265CA4AE8(v18, &qword_28003E6C8, &unk_265D5C9D0);
    return swift_endAccess();
  }

  else
  {
    v33 = *(v9 + 16);
    v42[1] = v9 + 16;
    v43 = v33;
    v33(v12, v18, v8);
    sub_265CA4AE8(v18, &qword_28003E6C8, &unk_265D5C9D0);
    swift_endAccess();
    sub_265D59B70();
    v44 = *(v9 + 8);
    v44(v12, v8);
    v34 = v45;
    v36 = v52;
    v35 = v53;
    (*(v45 + 32))(v52, v24, v53);
    v37 = *(v34 + 16);
    v42[0] = v31;
    v37(v46, v36, v35);
    v38 = sub_265D588C0();
    v39 = *(v38 - 8);
    v40 = v48;
    (*(v39 + 16))(v48, v49, v38);
    (*(v39 + 56))(v40, 0, 1, v38);
    sub_265D59B80();
    v41 = v47;
    v43(v47, v12, v8);
    (v42[0])(v41, 0, 1, v8);
    swift_beginAccess();
    sub_265CE1374(v41, v51);
    swift_endAccess();
    v44(v12, v8);
    return (*(v34 + 8))(v52, v53);
  }
}

uint64_t sub_265CE2048(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v25 = a3;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_265D58870();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D59BA0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v24, v11);
  v21 = sub_265D588C0();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_265D59B80();
  (*(v17 + 16))(v6, v20, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  swift_beginAccess();
  sub_265CE1374(v6, v25);
  swift_endAccess();
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_265CE231C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_265CE2890(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_265D59BA0();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a3, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = sub_265D59BA0();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

uint64_t sub_265CE2484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_265CE2890(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_265D59BA0();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a3, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = sub_265D59BA0();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

uint64_t sub_265CE25EC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_265C9520C(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;

  v5 = sub_265C9520C(v2);
  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
}

uint64_t sub_265CE27A8()
{
  v1 = *(*v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  return sub_265D58CA0();
}

unint64_t sub_265CE2890(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_265D5A460();
  v4 = sub_265D584C0();
  MEMORY[0x266770530](v4);
  v5 = sub_265D5A4A0();

  return sub_265CE2D98(a1, v5);
}

unint64_t sub_265CE2900(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_265D5A460();
  sub_265D59EF0();

  v4 = sub_265D5A4A0();

  return sub_265CE2E40(a1, v4);
}

unint64_t sub_265CE2A20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_265D58330();
  v5 = MEMORY[0x277D51510];
  sub_265CE68FC(&qword_28003E380, MEMORY[0x277D51510]);
  v6 = sub_265D59E60();
  return sub_265CE3368(a1, v6, MEMORY[0x277D51510], &qword_28003E338, v5, MEMORY[0x277D51528]);
}

unint64_t sub_265CE2AF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_265D5A460();
  sub_265D59EF0();
  v6 = sub_265D5A4A0();

  return sub_265CE3038(a1, a2, v6);
}

unint64_t sub_265CE2B6C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_265D5A460();
  sub_265D59EF0();

  v4 = sub_265D5A4A0();

  return sub_265CE30F0(a1, v4);
}

unint64_t sub_265CE2CC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_265D57E30();
  v5 = MEMORY[0x277CC9578];
  sub_265CE68FC(&qword_2813B9020, MEMORY[0x277CC9578]);
  v6 = sub_265D59E60();
  return sub_265CE3368(a1, v6, MEMORY[0x277CC9578], &qword_28003E6E0, v5, MEMORY[0x277CC9598]);
}

unint64_t sub_265CE2D98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = sub_265D584C0();
      if (v7 == sub_265D584C0())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_265CE2E40(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v21 + 48) + v4))
        {
          v7 = 0xD000000000000016;
        }

        else
        {
          v7 = 0x7665446C61636F6CLL;
        }

        if (*(*(v21 + 48) + v4))
        {
          v8 = 0x8000000265D5FBE0;
        }

        else
        {
          v8 = 0xEB00000000656369;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0xD000000000000014;
        v8 = 0x8000000265D5FC00;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000018;
        }

        else
        {
          v7 = 0xD000000000000010;
        }

        if (v6 == 3)
        {
          v8 = 0x8000000265D5FC20;
        }

        else
        {
          v8 = 0x8000000265D5FC40;
        }
      }

      v9 = 0xD000000000000014;
      v10 = 0xD000000000000018;
      if (v5 == 3)
      {
        v11 = 0x8000000265D5FC20;
      }

      else
      {
        v10 = 0xD000000000000010;
        v11 = 0x8000000265D5FC40;
      }

      if (v5 != 2)
      {
        v9 = v10;
      }

      v12 = 0x8000000265D5FC00;
      if (v5 != 2)
      {
        v12 = v11;
      }

      v13 = 0xD000000000000016;
      if (v5)
      {
        v14 = 0x8000000265D5FBE0;
      }

      else
      {
        v13 = 0x7665446C61636F6CLL;
        v14 = 0xEB00000000656369;
      }

      v15 = v5 <= 1 ? v13 : v9;
      v16 = v5 <= 1 ? v14 : v12;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_265D5A3C0();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_265CE3038(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_265D5A3C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265CE30F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0x74616E696D726574;
          v8 = 0xEB000000006E6F69;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0x6E6F436863746177;
          }

          else
          {
            v7 = 0xD000000000000018;
          }

          if (v6 == 4)
          {
            v8 = 0xEF6E6F697463656ELL;
          }

          else
          {
            v8 = 0x8000000265D5FBB0;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0xD000000000000017;
        }

        if (v6 == 1)
        {
          v8 = 0x8000000265D5FB50;
        }

        else
        {
          v8 = 0x8000000265D5FB70;
        }
      }

      else
      {
        v7 = 0x656C7069746C756DLL;
        v8 = 0xED000065646F4D78;
      }

      v9 = 0xD000000000000018;
      if (v5 == 4)
      {
        v9 = 0x6E6F436863746177;
      }

      v10 = 0xEF6E6F697463656ELL;
      if (v5 != 4)
      {
        v10 = 0x8000000265D5FBB0;
      }

      if (v5 == 3)
      {
        v9 = 0x74616E696D726574;
        v10 = 0xEB000000006E6F69;
      }

      v11 = 0xD000000000000017;
      if (v5 == 1)
      {
        v11 = 0xD000000000000010;
        v12 = 0x8000000265D5FB50;
      }

      else
      {
        v12 = 0x8000000265D5FB70;
      }

      if (!v5)
      {
        v11 = 0x656C7069746C756DLL;
        v12 = 0xED000065646F4D78;
      }

      v13 = v5 <= 2 ? v11 : v9;
      v14 = v5 <= 2 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_265D5A3C0();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_265CE3368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_265CE68FC(v24, v25);
      v20 = sub_265D59E80();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_265CE3508(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_265D58330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF58, &qword_265D5B178);
  v43 = a2;
  result = sub_265D5A2D0();
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
      sub_265CE68FC(&qword_28003E380, MEMORY[0x277D51510]);
      result = sub_265D59E60();
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

uint64_t sub_265CE38E4(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_265D59BA0();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF88, &qword_265D5B1C0);
  v44 = a2;
  result = sub_265D5A2D0();
  v12 = result;
  if (*(v9 + 16))
  {
    v40 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + v25);
      v28 = *(v43 + 72);
      v29 = v26 + v28 * v25;
      if (v44)
      {
        (*v19)(v45, v29, v46);
      }

      else
      {
        (*v41)(v45, v29, v46);
      }

      v30 = *(v12 + 40);
      sub_265D5A460();
      v31 = sub_265D584C0();
      MEMORY[0x266770530](v31);
      result = sub_265D5A4A0();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v45, v46);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_265CE3C4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE88, &qword_265D5B0C0);
  v39 = a2;
  result = sub_265D5A2D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_265D5A460();
      sub_265D59EF0();
      result = sub_265D5A4A0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_265CE3EF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE80, &qword_265D5B0B8);
  v34 = a2;
  result = sub_265D5A2D0();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v34 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_265D5A460();
      sub_265D59EF0();

      result = sub_265D5A4A0();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_265CE4278(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_265D57E30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE98, &qword_265D5B0D0);
  v43 = a2;
  result = sub_265D5A2D0();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
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
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_265CE68FC(&qword_2813B9020, MEMORY[0x277CC9578]);
      result = sub_265D59E60();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_265CE463C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF78, &qword_265D5B1B0);
  result = sub_265D5A2D0();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      sub_265D5A460();
      sub_265D59EF0();

      result = sub_265D5A4A0();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_265CE4990(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF60, &qword_265D5B180);
  result = sub_265D5A2D0();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_265C033C4(v22, v34);
      }

      else
      {
        sub_265C97624(v22, v34);
      }

      v23 = *(v8 + 40);
      sub_265D5A460();
      v24 = sub_265D584C0();
      MEMORY[0x266770530](v24);
      result = sub_265D5A4A0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_265C033C4(v34, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_265CE4C34(int64_t a1, uint64_t a2)
{
  v43 = sub_265D58330();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_265D5A130();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_265CE68FC(&qword_28003E380, MEMORY[0x277D51510]);
      v26 = sub_265D59E60();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_265CE4F54(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265D5A130() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_265D5A460();
      v11 = sub_265D584C0();
      MEMORY[0x266770530](v11);
      result = sub_265D5A4A0();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + v3);
      v15 = (v13 + v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_265D59BA0() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
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

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_265CE5120(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265D5A130() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + v6);
      sub_265D5A460();
      v13 = sub_265D584C0();
      MEMORY[0x266770530](v13);
      result = sub_265D5A4A0();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + v3);
        v17 = (v15 + v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_265CE52C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_265D58330();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_265CE2A20(a2);
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
      sub_265CE5B68();
      goto LABEL_7;
    }

    sub_265CE3508(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_265CE2A20(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_265CE5998(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_265D5A3F0();
    __break(1u);
    return result;
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

uint64_t sub_265CE5490(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_265CE2890(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_265CE5DE8();
      goto LABEL_7;
    }

    sub_265CE38E4(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_265CE2890(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_265D5A3F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_265D59BA0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_265CE5A50(v10, a2, a1, v16);
}

unint64_t sub_265CE55F8(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265CE2B6C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_265CE61BC();
    result = v17;
    goto LABEL_8;
  }

  sub_265CE3EF0(v14, a3 & 1);
  v18 = *v4;
  result = sub_265CE2B6C(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_265D5A3F0();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_265CE5740(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265CE2900(a1);
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
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_265CE658C();
    result = v17;
    goto LABEL_8;
  }

  sub_265CE463C(v14, a2 & 1);
  v18 = *v4;
  result = sub_265CE2900(a1);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a3;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a1;
    *(v20[7] + 8 * result) = a3;
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
  result = sub_265D5A3F0();
  __break(1u);
  return result;
}

uint64_t sub_265CE5868(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_265CE2890(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_265CE66D8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_265CE4990(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_265CE2890(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_265D5A3F0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return sub_265C033C4(a1, v21);
  }

  else
  {

    return sub_265CE5AFC(v9, a2, a1, v20);
  }
}

uint64_t sub_265CE5998(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_265D58330();
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

uint64_t sub_265CE5A50(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_265D59BA0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_265CE5AFC(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_265C033C4(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *sub_265CE5B68()
{
  v1 = v0;
  v34 = sub_265D58330();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF58, &qword_265D5B178);
  v4 = *v0;
  v5 = sub_265D5A2C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_265CE5DE8()
{
  v1 = v0;
  v30 = sub_265D59BA0();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF88, &qword_265D5B1C0);
  v4 = *v0;
  v5 = sub_265D5A2C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

id sub_265CE6050()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE88, &qword_265D5B0C0);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_265CE61BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE80, &qword_265D5B0B8);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_265CE6318()
{
  v1 = v0;
  v30 = sub_265D57E30();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE98, &qword_265D5B0D0);
  v4 = *v0;
  v5 = sub_265D5A2C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void *sub_265CE658C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF78, &qword_265D5B1B0);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_265CE66D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF60, &qword_265D5B180);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + v17);
        sub_265C97624(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_265C033C4(v19, *(v4 + 56) + 40 * v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_265CE68FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265CE6954()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v25[-v3];
  v5 = sub_265D585C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D580E0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_265CE6D1C(v4);
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = sub_265D585B0();
  if (v13)
  {
    v14 = sub_265D587C0();
    v16 = v15;
    if (v14 == sub_265D587C0() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_265D5A3C0();

      if ((v19 & 1) == 0)
      {
        return (*(v6 + 8))(v9, v5);
      }
    }

    v20 = *(v1 + 16);
    if (*(v20 + 120))
    {
      v21 = *(v20 + 16);
      v22 = *(v1 + 16);
      v23 = sub_265D58CA0();
      v24 = *(v20 + 16);
      MEMORY[0x28223BE20](v23);
      *&v25[-32] = v20;
      v25[-24] = 2;
      *&v25[-16] = 0;
      sub_265D58CA0();
    }

    return (*(v6 + 8))(v9, v5);
  }

  sub_265C037E8(v11, v12, 0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_265CE6BE8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_265CE6C44()
{
  v1 = *v0;
  v2 = *(*(*v0 + 16) + 16);
  sub_265D58CA0();
  v3 = *(*(v1 + 16) + 16);
  return sub_265D58CA0();
}

uint64_t sub_265CE6D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CE6DB4()
{
  v22 = sub_265D59DE0();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265D581A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D58AC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58F20();
  sub_265D58A10();
  (*(v10 + 8))(v13, v9);
  v14 = sub_265D58190();
  v16 = v15;
  LOBYTE(v13) = v17;
  (*(v5 + 8))(v8, v4);
  if (v13)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 72) = v14;
    }
  }

  else
  {
    sub_265C037E8(v14, v16, 0);
    sub_265D595F0();
    v19 = sub_265D59DD0();
    v20 = sub_265D5A070();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_265C01000, v19, v20, "Unrecognized media type, failing to activate SessionAppForegrounder", v21, 2u);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    return (*(v0 + 8))(v3, v22);
  }

  return result;
}

uint64_t sub_265CE7090()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 72) = 4;
  }

  return result;
}

uint64_t sub_265CE70E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SessionAppForegrounder.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
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

uint64_t storeEnumTagSinglePayload for SessionAppForegrounder.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_265CE729C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_265CE72B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_265CE72D0(uint64_t a1, uint64_t a2)
{
  v248 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v219 = &v206 - v6;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v221 = *(v222 - 8);
  v7 = *(v221 + 64);
  MEMORY[0x28223BE20](v222);
  v220 = &v206 - v8;
  v218 = sub_265D58130();
  v232 = *(v218 - 8);
  v9 = *(v232 + 64);
  MEMORY[0x28223BE20](v218);
  v231 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D59DE0();
  v250 = *(v11 - 8);
  v251 = v11;
  v12 = *(v250 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v245 = &v206 - v17;
  MEMORY[0x28223BE20](v16);
  v223 = &v206 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6F0, &qword_265D5CCA0);
  v20 = *(v19 - 8);
  v246 = v19;
  v247 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v227 = &v206 - v22;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6F8, &unk_265D5CCA8);
  v23 = *(*(v237 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v237);
  v26 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v233 = &v206 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v225 = &v206 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v230 = &v206 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E700, &qword_265D5CCB8);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v226 = &v206 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v234 = &v206 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v228 = &v206 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v236 = &v206 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v235 = &v206 - v44;
  MEMORY[0x28223BE20](v43);
  v238 = &v206 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v224 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v206 - v50;
  v52 = sub_265D59650();
  v243 = *(v52 - 8);
  v244 = v52;
  v53 = *(v243 + 64);
  MEMORY[0x28223BE20](v52);
  v242 = &v206 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v241 = &v206 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v206 - v59;
  v61 = sub_265D58B10();
  v239 = *(v61 - 8);
  v240 = v61;
  v62 = *(v239 + 64);
  v63 = MEMORY[0x28223BE20](v61);
  v229 = &v206 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v66 = &v206 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v67);
  v70 = MEMORY[0x28223BE20](v69);
  v71 = MEMORY[0x28223BE20](v70);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v206 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v80 = &v206 - v76;
  v249 = v2;
  if (*(v2 + 72) == 4)
  {
    sub_265D595F0();
    v81 = sub_265D59DD0();
    v82 = sub_265D5A070();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_265C01000, v81, v82, "SessionAppForegrounder received session update while inactive, ignoring", v83, 2u);
      MEMORY[0x266770CF0](v83, -1, -1);
    }

    return (*(v250 + 8))(v15, v251);
  }

  v209 = v79;
  v212 = v51;
  v210 = v78;
  v206 = v75;
  v207 = v77;
  v211 = v26;
  v217 = a1;
  v85 = v248;
  sub_265C97870(v248, &v206 - v76, &qword_28003E708, &unk_265D5CCC0);
  v86 = sub_265D58AC0();
  v87 = *(v86 - 8);
  v88 = *(v87 + 48);
  v215 = v87 + 48;
  v214 = v88;
  v89 = v88(v80, 1, v86);
  v216 = v86;
  v213 = v87;
  if (v89 == 1)
  {
    sub_265CA4AE8(v80, &qword_28003E708, &unk_265D5CCC0);
    v90 = v249;
    v91 = *(v249 + 56);
    v92 = sub_265D58B50();
    v94 = v93;
  }

  else
  {
    v92 = sub_265D58A50();
    v95 = v80;
    v94 = v96;
    (*(v87 + 8))(v95, v86);
    v90 = v249;
  }

  v97 = v90[6];
  __swift_project_boxed_opaque_existential_1(v90 + 2, v90[5]);
  v208 = v92;
  sub_265D59960();
  if (sub_265D59980())
  {
    sub_265C97870(v85, v74, &qword_28003E708, &unk_265D5CCC0);
    v98 = v216;
    if (v214(v74, 1, v216) == 1)
    {
      sub_265CA4AE8(v74, &qword_28003E708, &unk_265D5CCC0);
      v100 = v239;
      v99 = v240;
      (*(v239 + 56))(v60, 1, 1, v240);
      v101 = v241;
    }

    else
    {
      sub_265D58A90();
      (*(v213 + 8))(v74, v98);
      v100 = v239;
      v99 = v240;
      v106 = (*(v239 + 48))(v60, 1, v240);
      v101 = v241;
      if (v106 != 1)
      {
        (*(v100 + 32))(v66, v60, v99);
        v108 = sub_265D58B00();
        (*(v100 + 8))(v66, v99);
        if ((v108 & 0x100000000) != 0)
        {
          v107 = v108;
        }

        else
        {
          v107 = 5;
        }

        goto LABEL_19;
      }
    }

    sub_265CA4AE8(v60, &qword_28003E340, &unk_265D5D0C0);
    v107 = 5;
LABEL_19:
    sub_265D58100();
    if ((*(v100 + 48))(v101, 1, v99) == 1)
    {
      sub_265CA4AE8(v101, &qword_28003E340, &unk_265D5D0C0);
      v109 = 5;
    }

    else
    {
      v110 = v229;
      (*(v100 + 32))(v229, v101, v99);
      v111 = sub_265D58B00();
      (*(v100 + 8))(v110, v99);
      if ((v111 & 0x100000000) != 0)
      {
        v109 = v111;
      }

      else
      {
        v109 = 5;
      }
    }

    LODWORD(v245) = v109;
    v112 = *(v249 + 56);
    v113 = sub_265D58B30();
    v114 = v242;
    v115 = v243;
    v116 = v244;
    (*(v243 + 104))(v242, *MEMORY[0x277D4F890], v244);
    v117 = sub_265CA7344(v114, v113);

    (*(v115 + 8))(v114, v116);
    if ((v117 & 1) == 0)
    {
    }

    LODWORD(v240) = v112;
    LODWORD(v241) = v107;
    v243 = v94;
    v118 = v212;
    sub_265D580E0();
    v119 = sub_265D585C0();
    v120 = *(v119 - 8);
    v121 = *(v120 + 48);
    if (v121(v118, 1, v119) == 1)
    {
      sub_265CA4AE8(v118, &qword_28003E560, &unk_265D5CC10);
      v122 = v209;
      sub_265C97870(v85, v209, &qword_28003E708, &unk_265D5CCC0);
      v123 = v216;
      if (v214(v122, 1, v216) == 1)
      {
        v124 = &qword_28003E708;
        v125 = &unk_265D5CCC0;
        v126 = v122;
LABEL_31:
        sub_265CA4AE8(v126, v124, v125);
        v127 = 0;
        v242 = 0;
        v128 = 255;
        goto LABEL_33;
      }

      v118 = v224;
      sub_265D58A60();
      (*(v213 + 8))(v122, v123);
      if (v121(v118, 1, v119) == 1)
      {
        v124 = &qword_28003E560;
        v125 = &unk_265D5CC10;
        v126 = v118;
        goto LABEL_31;
      }
    }

    v127 = sub_265D585B0();
    v242 = v129;
    v131 = v130;
    (*(v120 + 8))(v118, v119);
    v128 = v131 & 1;
LABEL_33:
    v132 = v230;
    sub_265D58110();
    v133 = sub_265D58BB0();
    v134 = *(v133 - 8);
    v135 = *(v134 + 48);
    if (v135(v132, 1, v133) != 1)
    {
      v143 = v235;
      sub_265D58B80();
      (*(v134 + 8))(v132, v133);
      v144 = v246;
      v145 = *(v247 + 56);
      v145(v143, 0, 1, v246);
      v146 = v238;
      sub_265CE8FFC(v143, v238);
      v244 = v145;
      v145(v146, 0, 1, v144);
      v139 = v236;
      goto LABEL_43;
    }

    v239 = v127;
    sub_265CA4AE8(v132, &qword_28003E568, &unk_265D5C010);
    v244 = *(v247 + 56);
    v244(v235, 1, 1, v246);
    v136 = v210;
    sub_265C97870(v248, v210, &qword_28003E708, &unk_265D5CCC0);
    v137 = v216;
    v138 = v214(v136, 1, v216);
    v139 = v236;
    if (v138 == 1)
    {
      v140 = &qword_28003E708;
      v141 = &unk_265D5CCC0;
      v142 = v136;
    }

    else
    {
      v147 = v225;
      sub_265D58AB0();
      (*(v213 + 8))(v136, v137);
      if (v135(v147, 1, v133) != 1)
      {
        sub_265D58B80();
        (*(v134 + 8))(v147, v133);
        v148 = 0;
LABEL_41:
        v149 = v235;
        v146 = v238;
        v127 = v239;
        v150 = v246;
        v244(v238, v148, 1, v246);
        v144 = v150;
        if ((*(v247 + 48))(v149, 1, v150) != 1)
        {
          sub_265CA4AE8(v149, &qword_28003E700, &qword_265D5CCB8);
        }

LABEL_43:
        if (v128 == 255)
        {
          LODWORD(v242) = 0;
        }

        else
        {
          v254 = v127;
          v255 = v242;
          v256 = v128;
          v252 = xmmword_265D5CC20;
          v253 = 1;
          sub_265CE90B4();
          sub_265CE9108();
          LODWORD(v242) = sub_265D57F90();
          sub_265C037E8(v254, v255, v256);
        }

        v151 = *MEMORY[0x277D53C10];
        v152 = sub_265D58B70();
        v239 = *(*(v152 - 8) + 104);
        (v239)(v139, v151, v152);
        swift_storeEnumTagMultiPayload();
        v244(v139, 0, 1, v144);
        v153 = *(v237 + 48);
        v154 = v233;
        sub_265C97870(v146, v233, &qword_28003E700, &qword_265D5CCB8);
        v155 = v154;
        v156 = v247;
        sub_265C97870(v139, v154 + v153, &qword_28003E700, &qword_265D5CCB8);
        v157 = *(v156 + 48);
        v158 = v157(v155, 1, v144);
        v247 = v156 + 48;
        if (v158 == 1)
        {
          sub_265CA4AE8(v139, &qword_28003E700, &qword_265D5CCB8);
          if (v157(v155 + v153, 1, v144) == 1)
          {
            sub_265CA4AE8(v155, &qword_28003E700, &qword_265D5CCB8);
            LODWORD(v235) = 1;
            goto LABEL_53;
          }
        }

        else
        {
          v159 = v228;
          sub_265C97870(v155, v228, &qword_28003E700, &qword_265D5CCB8);
          if (v157(v155 + v153, 1, v144) != 1)
          {
            v160 = v227;
            sub_265CE8FFC(v155 + v153, v227);
            v161 = MEMORY[0x277D53C20];
            sub_265CE906C(&qword_28003E710, MEMORY[0x277D53C20]);
            sub_265CE906C(&qword_28003E718, v161);
            LODWORD(v235) = sub_265D57F90();
            sub_265CA4AE8(v160, &qword_28003E6F0, &qword_265D5CCA0);
            sub_265CA4AE8(v236, &qword_28003E700, &qword_265D5CCB8);
            sub_265CA4AE8(v159, &qword_28003E6F0, &qword_265D5CCA0);
            v144 = v246;
            v146 = v238;
            sub_265CA4AE8(v233, &qword_28003E700, &qword_265D5CCB8);
LABEL_53:
            v162 = v234;
            v163 = sub_265D58B60();
            if (v163 != sub_265D58B60())
            {
              v164 = sub_265D58B60();
              LODWORD(v242) = (v164 == sub_265D58B60()) & v242;
            }

            v165 = sub_265D58B60();
            if (v165 == sub_265D58B60())
            {
              v166 = 0;
              v167 = v232;
              v168 = v231;
              v169 = v217;
LABEL_57:
              v170 = v241;
              v171 = v245;
              goto LABEL_65;
            }

            (v239)(v162, *MEMORY[0x277D53C08], v152);
            swift_storeEnumTagMultiPayload();
            v244(v162, 0, 1, v144);
            v172 = *(v237 + 48);
            v173 = v211;
            sub_265C97870(v146, v211, &qword_28003E700, &qword_265D5CCB8);
            v174 = v173;
            v175 = v246;
            sub_265C97870(v162, v173 + v172, &qword_28003E700, &qword_265D5CCB8);
            if (v157(v173, 1, v175) == 1)
            {
              sub_265CA4AE8(v162, &qword_28003E700, &qword_265D5CCB8);
              v176 = v157(v173 + v172, 1, v175);
              v167 = v232;
              v168 = v231;
              v169 = v217;
              v171 = v245;
              if (v176 == 1)
              {
                sub_265CA4AE8(v173, &qword_28003E700, &qword_265D5CCB8);
                v166 = 1;
LABEL_64:
                v170 = v241;
LABEL_65:
                if (v170 != 5 && (v179 = sub_265D58AF0(), v179 == sub_265D58AF0()) || v171 == 5 || (v180 = sub_265D58AF0(), v180 != sub_265D58AF0()) || ((v235 | v242) & 1) != 0 || (v166 & 1) != 0)
                {
                  sub_265CA4AE8(v146, &qword_28003E700, &qword_265D5CCB8);
                }

                else
                {
                  v183 = v223;
                  sub_265D595E0();
                  v184 = v169;
                  v185 = v218;
                  (*(v167 + 16))(v168, v184, v218);
                  v186 = v207;
                  sub_265C97870(v248, v207, &qword_28003E708, &unk_265D5CCC0);
                  v187 = sub_265D59DD0();
                  v188 = sub_265D5A080();
                  if (os_log_type_enabled(v187, v188))
                  {
                    v189 = swift_slowAlloc();
                    v190 = swift_slowAlloc();
                    v254 = v190;
                    *v189 = 136446466;
                    sub_265CE906C(&qword_28003E4B8, MEMORY[0x277D506A0]);
                    v191 = sub_265D5A3B0();
                    v193 = v192;
                    (*(v167 + 8))(v168, v185);
                    v194 = sub_265CF4FFC(v191, v193, &v254);

                    *(v189 + 4) = v194;
                    *(v189 + 12) = 2082;
                    v195 = sub_265D5A0E0();
                    v197 = v196;
                    sub_265CA4AE8(v186, &qword_28003E708, &unk_265D5CCC0);
                    v198 = sub_265CF4FFC(v195, v197, &v254);

                    *(v189 + 14) = v198;
                    _os_log_impl(&dword_265C01000, v187, v188, "[SessionForegrounder] received update: %{public}s, priorSession: %{public}s", v189, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x266770CF0](v190, -1, -1);
                    MEMORY[0x266770CF0](v189, -1, -1);

                    v146 = v238;
                    (*(v250 + 8))(v223, v251);
                  }

                  else
                  {

                    sub_265CA4AE8(v186, &qword_28003E708, &unk_265D5CCC0);
                    (*(v167 + 8))(v168, v185);
                    (*(v250 + 8))(v183, v251);
                  }

                  v199 = *(v249 + 48);
                  __swift_project_boxed_opaque_existential_1((v249 + 16), *(v249 + 40));
                  v200 = sub_265D57DA0();
                  v201 = v219;
                  (*(*(v200 - 8) + 56))(v219, 1, 1, v200);
                  v202 = v220;
                  sub_265D59970();

                  sub_265CA4AE8(v201, &qword_28003E480, &qword_265D5B940);
                  v203 = v222;
                  v204 = sub_265D58960();
                  v205 = swift_allocObject();
                  *(v205 + 16) = nullsub_9;
                  *(v205 + 24) = 0;
                  v204(sub_265CA442C, v205);

                  (*(v221 + 8))(v202, v203);
                  return sub_265CA4AE8(v146, &qword_28003E700, &qword_265D5CCB8);
                }
              }
            }

            else
            {
              v177 = v226;
              sub_265C97870(v173, v226, &qword_28003E700, &qword_265D5CCB8);
              v178 = v157(v173 + v172, 1, v175);
              v168 = v231;
              v169 = v217;
              if (v178 != 1)
              {
                v181 = v227;
                sub_265CE8FFC(v174 + v172, v227);
                v182 = MEMORY[0x277D53C20];
                sub_265CE906C(&qword_28003E710, MEMORY[0x277D53C20]);
                sub_265CE906C(&qword_28003E718, v182);
                v166 = sub_265D57F90();
                sub_265CA4AE8(v181, &qword_28003E6F0, &qword_265D5CCA0);
                sub_265CA4AE8(v234, &qword_28003E700, &qword_265D5CCB8);
                sub_265CA4AE8(v177, &qword_28003E6F0, &qword_265D5CCA0);
                v146 = v238;
                sub_265CA4AE8(v174, &qword_28003E700, &qword_265D5CCB8);
                v167 = v232;
                goto LABEL_57;
              }

              sub_265CA4AE8(v234, &qword_28003E700, &qword_265D5CCB8);
              sub_265CA4AE8(v177, &qword_28003E6F0, &qword_265D5CCA0);
              v167 = v232;
              v171 = v245;
            }

            sub_265CA4AE8(v173, &qword_28003E6F8, &unk_265D5CCA8);
            v166 = 0;
            goto LABEL_64;
          }

          sub_265CA4AE8(v236, &qword_28003E700, &qword_265D5CCB8);
          sub_265CA4AE8(v159, &qword_28003E6F0, &qword_265D5CCA0);
        }

        sub_265CA4AE8(v155, &qword_28003E6F8, &unk_265D5CCA8);
        LODWORD(v235) = 0;
        goto LABEL_53;
      }

      v140 = &qword_28003E568;
      v141 = &unk_265D5C010;
      v142 = v147;
    }

    sub_265CA4AE8(v142, v140, v141);
    v148 = 1;
    goto LABEL_41;
  }

  v102 = v245;
  sub_265D595F0();
  v103 = sub_265D59DD0();
  v104 = sub_265D5A070();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_265C01000, v103, v104, "SessionAppForegrounder trying to foreground a foregrounded app, ignoring", v105, 2u);
    MEMORY[0x266770CF0](v105, -1, -1);
  }

  return (*(v250 + 8))(v102, v251);
}

uint64_t sub_265CE8FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6F0, &qword_265D5CCA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CE906C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_265CE90B4()
{
  result = qword_28003E720;
  if (!qword_28003E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E720);
  }

  return result;
}

unint64_t sub_265CE9108()
{
  result = qword_28003E728;
  if (!qword_28003E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E728);
  }

  return result;
}

uint64_t sub_265CE915C(uint64_t a1, uint64_t a2)
{
  v188 = a1;
  v3 = sub_265D59DE0();
  v184 = *(v3 - 8);
  v185 = v3;
  v4 = *(v184 + 64);
  MEMORY[0x28223BE20](v3);
  v183 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D581A0();
  v163 = *(v6 - 8);
  v7 = *(v163 + 64);
  MEMORY[0x28223BE20](v6);
  v162 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v177 = &v160 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v176 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v179 = &v160 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v167 = &v160 - v19;
  MEMORY[0x28223BE20](v18);
  v172 = &v160 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v180 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v173 = &v160 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v165 = &v160 - v28;
  MEMORY[0x28223BE20](v27);
  v171 = &v160 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v182 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v181 = &v160 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v161 = &v160 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v178 = &v160 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v164 = &v160 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v160 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v175 = &v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v174 = &v160 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v169 = &v160 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v168 = &v160 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v166 = &v160 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v170 = &v160 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v160 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v160 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v160 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v66 - 8);
  v70 = &v160 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v72 = &v160 - v71;
  v191 = a2;
  sub_265C97870(a2, v65, &qword_28003E708, &unk_265D5CCC0);
  v73 = sub_265D58AC0();
  v74 = *(v73 - 8);
  v189 = *(v74 + 48);
  v190 = v74 + 48;
  v75 = v189(v65, 1, v73);
  v186 = v74;
  v187 = v73;
  if (v75 == 1)
  {
    v160 = v6;
    sub_265CA4AE8(v65, &qword_28003E708, &unk_265D5CCC0);
    v76 = sub_265D57ED0();
    (*(*(v76 - 8) + 56))(v72, 1, 1, v76);
  }

  else
  {
    sub_265D589F0();
    (*(v74 + 8))(v65, v73);
    v76 = sub_265D57ED0();
    if ((*(*(v76 - 8) + 48))(v72, 1, v76) != 1)
    {
      sub_265CA4AE8(v72, &qword_28003E840, &unk_265D5D0D0);
      goto LABEL_9;
    }

    v160 = v6;
  }

  sub_265CA4AE8(v72, &qword_28003E840, &unk_265D5D0D0);
  sub_265D58080();
  sub_265D57ED0();
  v77 = (*(*(v76 - 8) + 48))(v70, 1, v76);
  sub_265CA4AE8(v70, &qword_28003E840, &unk_265D5D0D0);
  if (v77 == 1)
  {
    sub_265C97870(v191, v63, &qword_28003E708, &unk_265D5CCC0);
    v78 = v187;
    if (v189(v63, 1, v187) == 1)
    {
      sub_265CA4AE8(v63, &qword_28003E708, &unk_265D5CCC0);
      v79 = sub_265D58B10();
      (*(*(v79 - 8) + 56))(v43, 1, 1, v79);
      v80 = v186;
      v81 = v181;
      v82 = v172;
      v83 = v171;
    }

    else
    {
      sub_265D58A90();
      v80 = v186;
      (*(v186 + 8))(v63, v78);
      v79 = sub_265D58B10();
      v89 = 1;
      v90 = (*(*(v79 - 8) + 48))(v43, 1, v79);
      v81 = v181;
      v83 = v171;
      if (v90 != 1)
      {
        v82 = v172;
LABEL_16:
        LODWORD(v184) = v89;
        sub_265CA4AE8(v43, &qword_28003E340, &unk_265D5D0C0);
        sub_265C97870(v191, v60, &qword_28003E708, &unk_265D5CCC0);
        if (v189(v60, 1, v78) == 1)
        {
          sub_265CA4AE8(v60, &qword_28003E708, &unk_265D5CCC0);
          v91 = sub_265D58BB0();
          (*(*(v91 - 8) + 56))(v83, 1, 1, v91);
        }

        else
        {
          sub_265D58AB0();
          (*(v80 + 8))(v60, v78);
          v91 = sub_265D58BB0();
          if ((*(*(v91 - 8) + 48))(v83, 1, v91) != 1)
          {
            v92 = 1;
LABEL_21:
            LODWORD(v185) = v92;
            sub_265CA4AE8(v83, &qword_28003E568, &unk_265D5C010);
            v93 = v170;
            sub_265C97870(v191, v170, &qword_28003E708, &unk_265D5CCC0);
            if (v189(v93, 1, v78) == 1)
            {
              sub_265CA4AE8(v93, &qword_28003E708, &unk_265D5CCC0);
              v94 = sub_265D57E80();
              (*(*(v94 - 8) + 56))(v82, 1, 1, v94);
            }

            else
            {
              sub_265D589E0();
              (*(v80 + 8))(v93, v78);
              v94 = sub_265D57E80();
              if ((*(*(v94 - 8) + 48))(v82, 1, v94) != 1)
              {
                v95 = 1;
LABEL_26:
                LODWORD(v183) = v95;
                sub_265CA4AE8(v82, &qword_28003E590, &unk_265D5C030);
                v96 = v173;
                sub_265D58110();
                v97 = sub_265D58BB0();
                v98 = *(v97 - 8);
                v99 = *(v98 + 48);
                if (v99(v96, 1, v97) == 1)
                {
                  sub_265CA4AE8(v96, &qword_28003E568, &unk_265D5C010);
                  v100 = v178;
                }

                else
                {
                  v101 = sub_265D58BA0();
                  v102 = v96;
                  v103 = v101;
                  (*(v98 + 8))(v102, v97);
                  v195 = BYTE4(v103) & 1;
                  v194 = v103;
                  v192 = 3;
                  LODWORD(v188) = 1;
                  v193 = 1;
                  sub_265CEB2F0();
                  sub_265CEB344();
                  v104 = sub_265D57F90();
                  v100 = v178;
                  if (v104)
                  {
                    goto LABEL_35;
                  }
                }

                v105 = v166;
                sub_265C97870(v191, v166, &qword_28003E708, &unk_265D5CCC0);
                if (v189(v105, 1, v78) == 1)
                {
                  sub_265CA4AE8(v105, &qword_28003E708, &unk_265D5CCC0);
                  LODWORD(v188) = 0;
                }

                else
                {
                  sub_265D58AB0();
                  v106 = v180;
                  (*(v186 + 8))(v105, v78);
                  if (v99(v106, 1, v97) == 1)
                  {
                    sub_265CA4AE8(v106, &qword_28003E568, &unk_265D5C010);
                    LODWORD(v188) = 0;
                  }

                  else
                  {
                    v107 = sub_265D58BA0();
                    (*(v98 + 8))(v106, v97);
                    v195 = BYTE4(v107) & 1;
                    v194 = v107;
                    v192 = 3;
                    v193 = 1;
                    sub_265CEB2F0();
                    sub_265CEB344();
                    v100 = v178;
                    LODWORD(v188) = sub_265D57F90();
                  }

                  v81 = v181;
                }

LABEL_35:
                sub_265D58100();
                v108 = sub_265D58B10();
                v109 = *(v108 - 8);
                v110 = *(v109 + 48);
                v111 = 1;
                if (v110(v100, 1, v108) == 1)
                {
                  sub_265CA4AE8(v100, &qword_28003E340, &unk_265D5D0C0);
                }

                else
                {
                  v112 = sub_265D58B00();
                  v113 = v100;
                  v114 = v112;
                  (*(v109 + 8))(v113, v108);
                  v195 = BYTE4(v114) & 1;
                  v194 = v114;
                  v192 = 3;
                  v193 = 1;
                  sub_265CEB248();
                  sub_265CEB29C();
                  if (sub_265D57F90())
                  {
                    goto LABEL_44;
                  }
                }

                v115 = v168;
                sub_265C97870(v191, v168, &qword_28003E708, &unk_265D5CCC0);
                if (v189(v115, 1, v78) == 1)
                {
                  v116 = &qword_28003E708;
                  v117 = &unk_265D5CCC0;
                }

                else
                {
                  v118 = v161;
                  sub_265D58A90();
                  v119 = v115;
                  v115 = v118;
                  (*(v186 + 8))(v119, v78);
                  if (v110(v118, 1, v108) != 1)
                  {
                    v120 = sub_265D58B00();
                    (*(v109 + 8))(v115, v108);
                    v195 = BYTE4(v120) & 1;
                    v194 = v120;
                    v192 = 3;
                    v193 = 1;
                    sub_265CEB248();
                    sub_265CEB29C();
                    v111 = sub_265D57F90();
LABEL_44:
                    sub_265D58100();
                    if (v110(v81, 1, v108) == 1)
                    {
                      sub_265CA4AE8(v81, &qword_28003E340, &unk_265D5D0C0);
                      v121 = v179;
                    }

                    else
                    {
                      v122 = sub_265D58B00();
                      (*(v109 + 8))(v81, v108);
                      v195 = BYTE4(v122) & 1;
                      v194 = v122;
                      v192 = 4;
                      v193 = 1;
                      sub_265CEB248();
                      sub_265CEB29C();
                      v123 = sub_265D57F90();
                      v121 = v179;
                      if (v123)
                      {
                        goto LABEL_54;
                      }
                    }

                    v124 = v169;
                    sub_265C97870(v191, v169, &qword_28003E708, &unk_265D5CCC0);
                    v125 = v187;
                    if (v189(v124, 1, v187) == 1)
                    {
                      sub_265CA4AE8(v124, &qword_28003E708, &unk_265D5CCC0);
                      if (v111)
                      {
                        goto LABEL_54;
                      }

LABEL_52:
                      v127 = 0;
                      goto LABEL_55;
                    }

                    sub_265D58A90();
                    v126 = v182;
                    (*(v186 + 8))(v124, v125);
                    if (v110(v126, 1, v108) == 1)
                    {
                      sub_265CA4AE8(v126, &qword_28003E340, &unk_265D5D0C0);
                      if ((v111 & 1) == 0)
                      {
                        goto LABEL_52;
                      }
                    }

                    else
                    {
                      v128 = sub_265D58B00();
                      (*(v109 + 8))(v126, v108);
                      v195 = BYTE4(v128) & 1;
                      v194 = v128;
                      v192 = 4;
                      v193 = 1;
                      sub_265CEB248();
                      sub_265CEB29C();
                      v121 = v179;
                      v129 = sub_265D57F90();
                      if ((v111 & 1) == 0)
                      {
                        v127 = v129;
LABEL_55:
                        sub_265D58070();
                        v130 = sub_265D57E80();
                        v131 = *(v130 - 8);
                        v132 = *(v131 + 48);
                        v133 = 1;
                        if (v132(v121, 1, v130) == 1)
                        {
                          sub_265CA4AE8(v121, &qword_28003E590, &unk_265D5C030);
                          v134 = v176;
                          v135 = v174;
                        }

                        else
                        {
                          v136 = sub_265D57E70();
                          v137 = v121;
                          v138 = v136;
                          (*(v131 + 8))(v137, v130);
                          v195 = BYTE4(v138) & 1;
                          v194 = v138;
                          v192 = 2;
                          v193 = 1;
                          sub_265CEB1A0();
                          sub_265CEB1F4();
                          v139 = sub_265D57F90();
                          v134 = v176;
                          v135 = v174;
                          if (v139)
                          {
                            goto LABEL_64;
                          }
                        }

                        sub_265C97870(v191, v135, &qword_28003E708, &unk_265D5CCC0);
                        v140 = v187;
                        if (v189(v135, 1, v187) == 1)
                        {
                          v141 = &qword_28003E708;
                          v142 = &unk_265D5CCC0;
                          v143 = v135;
                        }

                        else
                        {
                          sub_265D589E0();
                          (*(v186 + 8))(v135, v140);
                          if (v132(v134, 1, v130) != 1)
                          {
                            v144 = sub_265D57E70();
                            v145 = v134;
                            v146 = v144;
                            (*(v131 + 8))(v145, v130);
                            v195 = BYTE4(v146) & 1;
                            v194 = v146;
                            v192 = 2;
                            v193 = 1;
                            sub_265CEB1A0();
                            sub_265CEB1F4();
                            v133 = sub_265D57F90();
LABEL_64:
                            v147 = v177;
                            v148 = v191;
                            sub_265CEAA08(v191, v177);
                            v149 = sub_265CEAF3C(v147);
                            v150 = v175;
                            sub_265C97870(v148, v175, &qword_28003E708, &unk_265D5CCC0);
                            v151 = v187;
                            if (v189(v150, 1, v187) == 1)
                            {
                              sub_265CA4AE8(v150, &qword_28003E708, &unk_265D5CCC0);
                              if ((v149 & 1) == 0)
                              {
                                goto LABEL_75;
                              }
                            }

                            else
                            {
                              v152 = v162;
                              sub_265D58A10();
                              (*(v186 + 8))(v150, v151);
                              v153 = sub_265D58190();
                              v155 = v154;
                              v157 = v156;
                              (*(v163 + 8))(v152, v160);
                              if (v157)
                              {
                                if (v149)
                                {
                                  v158 = v127 | v133 | ((v153 & 0xFE) == 0);
                                  if ((v188 & 1) == 0)
                                  {
                                    goto LABEL_80;
                                  }

                                  goto LABEL_76;
                                }

LABEL_75:
                                v158 = v127 | v133;
                                if ((v188 & 1) == 0)
                                {
                                  goto LABEL_80;
                                }

LABEL_76:
                                if ((v158 & 1) != 0 || (v184 & 1) == 0 && (v183 & 1) == 0)
                                {
                                  goto LABEL_81;
                                }

                                v158 = v127 | v133;
LABEL_80:
                                if (!(v185 & 1 | ((v158 & 1) == 0)))
                                {
                                  goto LABEL_81;
                                }

                                return sub_265CA4AE8(v147, &qword_28003E2F8, &qword_265D5B680);
                              }

                              sub_265C037E8(v153, v155, 0);
                              if ((v149 & 1) == 0)
                              {
                                goto LABEL_75;
                              }
                            }

                            v159 = (v127 | v133) ^ 1;
                            if ((v188 & 1) == 0)
                            {
                              if ((v159 | v185))
                              {
                                return sub_265CA4AE8(v147, &qword_28003E2F8, &qword_265D5B680);
                              }

                              goto LABEL_81;
                            }

                            if ((v159 & (v184 | v183) & 1) == 0)
                            {
LABEL_81:
                              sub_265CEACA4();
                            }

                            return sub_265CA4AE8(v147, &qword_28003E2F8, &qword_265D5B680);
                          }

                          v141 = &qword_28003E590;
                          v142 = &unk_265D5C030;
                          v143 = v134;
                        }

                        sub_265CA4AE8(v143, v141, v142);
                        v133 = 0;
                        goto LABEL_64;
                      }
                    }

LABEL_54:
                    v127 = 1;
                    goto LABEL_55;
                  }

                  v116 = &qword_28003E340;
                  v117 = &unk_265D5D0C0;
                }

                sub_265CA4AE8(v115, v116, v117);
                v111 = 0;
                goto LABEL_44;
              }
            }

            sub_265CA4AE8(v82, &qword_28003E590, &unk_265D5C030);
            v82 = v167;
            sub_265D58070();
            sub_265D57E80();
            v95 = (*(*(v94 - 8) + 48))(v82, 1, v94) != 1;
            goto LABEL_26;
          }
        }

        sub_265CA4AE8(v83, &qword_28003E568, &unk_265D5C010);
        v83 = v165;
        sub_265D58110();
        sub_265D58BB0();
        v92 = (*(*(v91 - 8) + 48))(v83, 1, v91) != 1;
        goto LABEL_21;
      }

      v82 = v172;
    }

    sub_265CA4AE8(v43, &qword_28003E340, &unk_265D5D0C0);
    v43 = v164;
    sub_265D58100();
    sub_265D58B10();
    v89 = (*(*(v79 - 8) + 48))(v43, 1, v79) != 1;
    goto LABEL_16;
  }

LABEL_9:
  v84 = v183;
  sub_265D595F0();
  v85 = sub_265D59DD0();
  v86 = sub_265D5A080();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_265C01000, v85, v86, "Termination already on session, skipping completion evaluation", v87, 2u);
    MEMORY[0x266770CF0](v87, -1, -1);
  }

  return (*(v184 + 8))(v84, v185);
}

uint64_t sub_265CEAA08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_265D580F0();
  v12 = sub_265D58600();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    sub_265C97870(a1, v7, &qword_28003E708, &unk_265D5CCC0);
    v15 = sub_265D58AC0();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v7, 1, v15) == 1)
    {
      sub_265CA4AE8(v7, &qword_28003E708, &unk_265D5CCC0);
      (*(v13 + 56))(a2, 1, 1, v12);
    }

    else
    {
      sub_265D58A70();
      (*(v16 + 8))(v7, v15);
    }

    result = v14(v11, 1, v12);
    if (result != 1)
    {
      return sub_265CA4AE8(v11, &qword_28003E2F8, &qword_265D5B680);
    }
  }

  else
  {
    (*(v13 + 32))(a2, v11, v12);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }

  return result;
}

uint64_t sub_265CEACA4()
{
  v1 = v0;
  v2 = sub_265D57ED0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_265D58FD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  (*(v10 + 8))(v13, v9);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  swift_getObjectType();
  sub_265D5A030();
  v17[12] = 1;
  sub_265D57EB0();
  sub_265D58FC0();
  sub_265D58ED0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_265CEAEE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265CEAF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_265D58600();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265C97870(a1, v5, &qword_28003E2F8, &qword_265D5B680);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_265CA4AE8(v5, &qword_28003E2F8, &qword_265D5B680);
LABEL_6:
    v18 = 0;
    return v18 & 1;
  }

  (*(v7 + 32))(v10, v5, v6);
  v11 = sub_265D585E0();
  v13 = v12;
  v22 = v11;
  v23 = v12;
  v15 = v14 & 1;
  v24 = v14 & 1;
  v21 = 3;
  sub_265CA48E8();
  sub_265CA493C();
  v16 = sub_265D57FA0();
  sub_265C037E8(v11, v13, v15);
  if ((v16 & 1) == 0)
  {
    (*(v7 + 8))(v10, v6);
    goto LABEL_6;
  }

  v22 = sub_265D585F0();
  LOBYTE(v23) = v17 & 1;
  v21 = 1;
  sub_265CEB398();
  sub_265CEB3EC();
  v18 = sub_265D57FA0();
  (*(v7 + 8))(v10, v6);
  return v18 & 1;
}

unint64_t sub_265CEB1A0()
{
  result = qword_28003E730;
  if (!qword_28003E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E730);
  }

  return result;
}

unint64_t sub_265CEB1F4()
{
  result = qword_28003E738;
  if (!qword_28003E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E738);
  }

  return result;
}

unint64_t sub_265CEB248()
{
  result = qword_28003E740;
  if (!qword_28003E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E740);
  }

  return result;
}

unint64_t sub_265CEB29C()
{
  result = qword_28003E748;
  if (!qword_28003E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E748);
  }

  return result;
}

unint64_t sub_265CEB2F0()
{
  result = qword_28003E750;
  if (!qword_28003E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E750);
  }

  return result;
}

unint64_t sub_265CEB344()
{
  result = qword_28003E970;
  if (!qword_28003E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E970);
  }

  return result;
}

unint64_t sub_265CEB398()
{
  result = qword_28003E758;
  if (!qword_28003E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E758);
  }

  return result;
}

unint64_t sub_265CEB3EC()
{
  result = qword_28003E760;
  if (!qword_28003E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E760);
  }

  return result;
}

id sub_265CEB440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v37 = MEMORY[0x277D84F90];
  sub_265CF572C(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = sub_265D5A120();
  v2 = v37;
  v8 = result;
  v9 = 0;
  v10 = *(a1 + 36);
  v31 = a1 + 72;
  v32 = v1;
  v33 = a1 + 64;
  v34 = v10;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_33;
    }

    if (v10 != *(v4 + 36))
    {
      goto LABEL_34;
    }

    v13 = *(*(v4 + 48) + v8);
    v35 = v9;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v36 = 0x74616E696D726574;
        v14 = 0xEB000000006E6F69;
      }

      else if (v13 == 4)
      {
        v36 = 0x6E6F436863746177;
        v14 = 0xEF6E6F697463656ELL;
      }

      else
      {
        v36 = 0xD000000000000018;
        v14 = 0x8000000265D5FBB0;
      }
    }

    else if (*(*(v4 + 48) + v8))
    {
      if (v13 == 1)
      {
        v36 = 0xD000000000000010;
        v14 = 0x8000000265D5FB50;
      }

      else
      {
        v36 = 0xD000000000000017;
        v14 = 0x8000000265D5FB70;
      }
    }

    else
    {
      v36 = 0x656C7069746C756DLL;
      v14 = 0xED000065646F4D78;
    }

    v15 = *(*(v4 + 56) + 8 * v8);
    v38 = v2;
    v16 = v4;
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);
    v19 = v2;
    result = v15;
    v2 = v19;
    if (v17 >= v18 >> 1)
    {
      v30 = result;
      sub_265CF572C((v18 > 1), v17 + 1, 1);
      result = v30;
      v2 = v38;
    }

    *(v2 + 16) = v17 + 1;
    v20 = (v2 + 24 * v17);
    v20[4] = v36;
    v20[5] = v14;
    v20[6] = result;
    v11 = 1 << *(v16 + 32);
    v10 = v34;
    if (v8 >= v11)
    {
      goto LABEL_35;
    }

    v5 = v33;
    v21 = *(v33 + 8 * v12);
    if ((v21 & (1 << v8)) == 0)
    {
      goto LABEL_36;
    }

    v4 = v16;
    if (v34 != *(v16 + 36))
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v8 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v12 << 6;
      v24 = v12 + 1;
      v25 = (v31 + 8 * v12);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          v28 = v2;
          result = sub_265CB9728(v8, v34, 0);
          v2 = v28;
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      v29 = v2;
      result = sub_265CB9728(v8, v34, 0);
      v2 = v29;
    }

LABEL_4:
    v9 = v35 + 1;
    v8 = v11;
    if (v35 + 1 == v32)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_265CEB7CC()
{
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

uint64_t sub_265CEB914()
{
  *v0;
  *v0;
  *v0;
  sub_265D59EF0();
}

uint64_t sub_265CEBA38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_265CECF3C();
  *a2 = result;
  return result;
}

void sub_265CEBA68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000065646F4D78;
  v4 = 0x656C7069746C756DLL;
  v5 = 0xEB000000006E6F69;
  v6 = 0x74616E696D726574;
  v7 = 0xEF6E6F697463656ELL;
  v8 = 0x6E6F436863746177;
  if (v2 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = 0x8000000265D5FBB0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000010;
  v10 = 0x8000000265D5FB50;
  if (v2 != 1)
  {
    v9 = 0xD000000000000017;
    v10 = 0x8000000265D5FB70;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_265CEBB54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v100 = &v89 - v3;
  v4 = sub_265D58630();
  v101 = *(v4 - 8);
  v102 = v4;
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v4);
  v92 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v89 - v9;
  v99 = sub_265D58600();
  v103 = *(v99 - 8);
  v10 = *(v103 + 64);
  MEMORY[0x28223BE20](v99);
  v91 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = &v89 - v14;
  v15 = sub_265D57ED0();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v89 - v20;
  v22 = sub_265D585C0();
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v22);
  v89 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v89 - v27;
  v29 = sub_265D582A0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_265C96AD4(MEMORY[0x277D84F90]);
  v106 = 0;
  v107 = 0xE000000000000000;
  LOBYTE(v109) = *v0;
  sub_265D5A290();
  v35 = sub_265D59E90();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = v34;
  sub_265CE55F8(v35, 0, isUniquelyReferenced_nonNull_native);
  v37 = v106;
  v38 = type metadata accessor for SessionCompletionAnalyticsEvent();
  sub_265C97870(&v0[v38[5]], v28, &qword_28003E5A8, &unk_265D5D120);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_265CA4AE8(v28, &qword_28003E5A8, &unk_265D5D120);
  }

  else
  {
    (*(v30 + 32))(v33, v28, v29);
    v39 = sub_265D58290();
    LODWORD(v106) = v39;
    BYTE4(v106) = BYTE4(v39) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E788, &unk_265D5CD88);
    sub_265CECB5C();
    sub_265D57FB0();
    v40 = sub_265D59E90();

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_265CE55F8(v40, 1u, v41);
    v37 = v106;
    (*(v30 + 8))(v33, v29);
  }

  v42 = v0;
  sub_265C97870(&v0[v38[6]], v21, &qword_28003E560, &unk_265D5CC10);
  v44 = v93;
  v43 = v94;
  v45 = (*(v93 + 48))(v21, 1, v94);
  v46 = v103;
  v47 = v96;
  if (v45 == 1)
  {
    sub_265CA4AE8(v21, &qword_28003E560, &unk_265D5CC10);
  }

  else
  {
    v48 = v89;
    (*(v44 + 32))(v89, v21, v43);
    v109 = 0;
    v110 = 0xE000000000000000;
    v49 = sub_265D585B0();
    v51 = v50;
    v106 = v49;
    v107 = v50;
    v53 = v52 & 1;
    v108 = v52 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E780, &qword_265D5CD80);
    sub_265D5A290();
    sub_265C037E8(v49, v51, v53);
    v54 = sub_265D59E90();

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_265CE55F8(v54, 2u, v55);
    v37 = v106;
    v56 = v48;
    v46 = v103;
    (*(v44 + 8))(v56, v43);
  }

  v57 = v99;
  v58 = v97;
  v59 = v95;
  sub_265C97870(&v42[v38[7]], v95, &qword_28003E840, &unk_265D5D0D0);
  if ((*(v47 + 48))(v59, 1, v58) == 1)
  {
    sub_265CA4AE8(v59, &qword_28003E840, &unk_265D5D0D0);
  }

  else
  {
    v60 = v90;
    (*(v47 + 32))(v90, v59, v58);
    v106 = 0;
    v107 = 0xE000000000000000;
    v61 = sub_265D57EC0();
    LODWORD(v109) = v61;
    BYTE4(v109) = BYTE4(v61) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E778, &qword_265D5CD78);
    sub_265D5A290();
    v62 = sub_265D59E90();

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_265CE55F8(v62, 3u, v63);
    v37 = v106;
    (*(v47 + 8))(v60, v58);
  }

  v64 = v98;
  sub_265C97870(&v42[v38[8]], v98, &qword_28003E2F8, &qword_265D5B680);
  if ((*(v46 + 48))(v64, 1, v57) == 1)
  {
    sub_265CA4AE8(v64, &qword_28003E2F8, &qword_265D5B680);
  }

  else
  {
    v65 = v91;
    (*(v46 + 32))(v91, v64, v57);
    v66 = sub_265D585E0();
    v68 = v67;
    v106 = v66;
    v107 = v67;
    v70 = v69 & 1;
    v108 = v69 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E770, &qword_265D5CD70);
    sub_265D57F60();
    sub_265C037E8(v66, v68, v70);
    v109 = v104;
    v110 = v105;
    MEMORY[0x26676FFC0](46, 0xE100000000000000);
    v71 = sub_265D59E90();

    v72 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_265CE55F8(v71, 4u, v72);
    v37 = v106;
    (*(v46 + 8))(v65, v57);
  }

  v74 = v101;
  v73 = v102;
  v75 = &v42[v38[9]];
  v76 = v100;
  sub_265C97870(v75, v100, &qword_28003E540, &qword_265D5BFE0);
  if ((*(v74 + 48))(v76, 1, v73) == 1)
  {
    sub_265CA4AE8(v76, &qword_28003E540, &qword_265D5BFE0);
  }

  else
  {
    v77 = v92;
    (*(v74 + 32))(v92, v76, v73);
    v109 = 0;
    v110 = 0xE000000000000000;
    v78 = sub_265D58620();
    v80 = v79;
    v106 = v78;
    v107 = v79;
    v82 = v81 & 1;
    v108 = v81 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E768, &qword_265D5CD68);
    sub_265D5A290();
    sub_265C037E8(v78, v80, v82);
    v83 = sub_265D59E90();

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_265CE55F8(v83, 5u, v84);
    v37 = v106;
    (*(v74 + 8))(v77, v73);
  }

  v85 = sub_265CEB440(v37);

  if (v85[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE88, &qword_265D5B0C0);
    v86 = sub_265D5A2E0();
  }

  else
  {
    v86 = MEMORY[0x277D84F98];
  }

  v106 = v86;

  sub_265CEC780(v87, 1, &v106);

  return v106;
}

uint64_t sub_265CEC6EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_265D59100();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_265CEC780(void *a1, char a2, void *a3)
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
  v11 = sub_265CE2AF4(v7, v6);
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
    sub_265CE3C4C(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_265CE2AF4(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_265D5A3F0();
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
  sub_265CE6050();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
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
    sub_265D5A200();
    MEMORY[0x26676FFC0](0xD00000000000001BLL, 0x8000000265D61080);
    sub_265D5A290();
    MEMORY[0x26676FFC0](39, 0xE100000000000000);
    sub_265D5A2A0();
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
      v30 = sub_265CE2AF4(v7, v6);
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
        sub_265CE3C4C(v34, 1);
        v35 = *a3;
        v30 = sub_265CE2AF4(v7, v6);
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

uint64_t type metadata accessor for SessionCompletionAnalyticsEvent()
{
  result = qword_28003E798;
  if (!qword_28003E798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_265CECB5C()
{
  result = qword_28003E790;
  if (!qword_28003E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionCompletionAnalyticsEvent.Field(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionCompletionAnalyticsEvent.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_265CECD28()
{
  sub_265CECE90(319, &qword_28003E7A8, MEMORY[0x277D50E70]);
  if (v0 <= 0x3F)
  {
    sub_265CECE90(319, &qword_28003E7B0, MEMORY[0x277D52940]);
    if (v1 <= 0x3F)
    {
      sub_265CECE90(319, &qword_28003E7B8, MEMORY[0x277D50140]);
      if (v2 <= 0x3F)
      {
        sub_265CECE90(319, &qword_2813B9008, MEMORY[0x277D529D8]);
        if (v3 <= 0x3F)
        {
          sub_265CECE90(319, &qword_28003E7C0, MEMORY[0x277D52CA0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_265CECE90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_265D5A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_265CECEE8()
{
  result = qword_28003E7C8;
  if (!qword_28003E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E7C8);
  }

  return result;
}

uint64_t sub_265CECF3C()
{
  v0 = sub_265D5A2F0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_265CECF90(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CED0AC, 0, 0);
}

uint64_t sub_265CED0AC()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59450();
    v5 = *(MEMORY[0x277D4DFF0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for DistributedSessionEventPublisher();
    v8 = sub_265CF2404(&qword_28003E7F0, type metadata accessor for DistributedSessionEventPublisher);
    *v6 = v0;
    v6[1] = sub_265CED21C;
    v9 = v0[16];

    return MEMORY[0x2821AE8D8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CED21C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CED404, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CED404()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionEventPublisher - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CED5EC(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CED708, 0, 0);
}

uint64_t sub_265CED708()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59020();
    v5 = *(MEMORY[0x277D4DFE0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for DistributedSessionEventPublisher();
    v8 = sub_265CF2404(&qword_28003E7F0, type metadata accessor for DistributedSessionEventPublisher);
    *v6 = v0;
    v6[1] = sub_265CED878;
    v9 = v0[16];

    return MEMORY[0x2821AE8C8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CED878()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CEDA60, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CEDA60()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionEventPublisher - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CEDC48(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58130();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CEDD64, 0, 0);
}

uint64_t sub_265CEDD64()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58E60();
    v5 = *(MEMORY[0x277D4DFE8] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for DistributedSessionEventPublisher();
    v8 = sub_265CF2404(&qword_28003E7F0, type metadata accessor for DistributedSessionEventPublisher);
    *v6 = v0;
    v6[1] = sub_265CEDED4;
    v9 = v0[16];

    return MEMORY[0x2821AE8D0](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CEDED4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CEE0BC, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CEE0BC()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionEventPublisher - Failed to update session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CEE2A4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v8 = sub_265D58280();
  v2[24] = v8;
  v9 = *(v8 - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v35 = *(*(sub_265D58130() - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v36 = sub_265D59090();
  v2[53] = v36;
  v37 = *(v36 - 8);
  v2[54] = v37;
  v38 = *(v37 + 64) + 15;
  v2[55] = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v40 = sub_265D58AC0();
  v2[59] = v40;
  v41 = *(v40 - 8);
  v2[60] = v41;
  v42 = *(v41 + 64) + 15;
  v2[61] = swift_task_alloc();
  v43 = sub_265D59DE0();
  v2[62] = v43;
  v44 = *(v43 - 8);
  v2[63] = v44;
  v45 = *(v44 + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CEEB3C, v1, 0);
}

uint64_t sub_265CEEB3C()
{
  v34 = v0;
  v1 = v0[67];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[17];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[67];
  v11 = v0[62];
  v10 = v0[63];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[59];
  if (v8)
  {
    v32 = v0[62];
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    sub_265CF2404(&qword_28003E7E8, MEMORY[0x277D53AE0]);
    v17 = sub_265D5A3B0();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_265CF4FFC(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v30, "DistributedSessionEventPublisher - starting %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[68] = v21;
  v22 = v0[18];
  v23 = v22[20];
  v24 = v22[21];
  __swift_project_boxed_opaque_existential_1(v22 + 17, v23);
  v25 = *(MEMORY[0x277D4F218] + 4);
  v26 = swift_task_alloc();
  v0[69] = v26;
  v27 = *(v24 + 8);
  *v26 = v0;
  v26[1] = sub_265CEEDD0;
  v28 = v0[57];

  return MEMORY[0x2821AED80](v28, v23, v27);
}

uint64_t sub_265CEEDD0()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_265CEFF24;
  }

  else
  {
    v6 = sub_265CEEEFC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CEEEFC()
{
  v132 = v0;
  v1 = v0[57];
  v2 = v0[58];
  v3 = sub_265D58240();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_265CF2394(v1, v2);
  v4 = v0[70];
  v5 = v0[18];
  v6 = v5[22];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  sub_265D59520();
  if (v4)
  {
    v7 = v0[65];
    sub_265D595E0();
    v8 = v4;
    v9 = sub_265D59DD0();
    v10 = sub_265D5A080();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[68];
    v13 = v0[65];
    v15 = v0[62];
    v14 = v0[63];
    if (v11)
    {
      v129 = v0[65];
      v16 = swift_slowAlloc();
      v128 = v15;
      v17 = swift_slowAlloc();
      v131 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v125 = v12;
      v19 = v0[8];
      v18 = v0[9];
      v20 = v0[10];
      v21 = sub_265D5A400();
      v23 = sub_265CF4FFC(v21, v22, &v131);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_265C01000, v9, v10, "Unable to fetch fitness mode with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266770CF0](v17, -1, -1);
      MEMORY[0x266770CF0](v16, -1, -1);

      v125(v129, v128);
    }

    else
    {

      v12(v13, v15);
    }
  }

  v24 = v5[22];
  __swift_project_boxed_opaque_existential_1((v0[18] + 136), *(v0[18] + 160));
  sub_265D59540();
  v123 = v0[56];
  v126 = v0[58];
  v25 = v0[51];
  v27 = v0[48];
  v26 = v0[49];
  v29 = v0[46];
  v28 = v0[47];
  v31 = v0[44];
  v30 = v0[45];
  v32 = v0[43];
  v93 = v0[42];
  v95 = v0[41];
  v97 = v0[40];
  v99 = v0[39];
  v101 = v0[38];
  v103 = v0[37];
  v105 = v0[36];
  v107 = v0[35];
  v109 = v0[34];
  v111 = v0[33];
  v113 = v0[32];
  v115 = v0[31];
  v117 = v0[30];
  v119 = v0[29];
  v121 = v0[28];
  v34 = v0[17];
  v33 = v0[18];
  v130 = *(v33 + 112);
  v90 = *(v33 + 120);
  sub_265D5A4C0();
  sub_265D589C0();
  sub_265D58CF0();

  v35 = sub_265D58020();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = sub_265D58410();
  (*(*(v36 - 8) + 56))(v26, 1, 1, v36);
  v37 = sub_265D58590();
  (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
  v38 = sub_265D58050();
  (*(*(v38 - 8) + 56))(v28, 1, 1, v38);
  v39 = sub_265D58200();
  (*(*(v39 - 8) + 56))(v29, 1, 1, v39);
  v40 = sub_265D58BC0();
  (*(*(v40 - 8) + 56))(v30, 1, 1, v40);
  v41 = sub_265D583E0();
  (*(*(v41 - 8) + 56))(v31, 1, 1, v41);
  v42 = sub_265D581B0();
  (*(*(v42 - 8) + 56))(v32, 1, 1, v42);
  v43 = sub_265D57F50();
  (*(*(v43 - 8) + 56))(v93, 1, 1, v43);
  v44 = sub_265D582A0();
  (*(*(v44 - 8) + 56))(v95, 1, 1, v44);
  v45 = sub_265D58680();
  (*(*(v45 - 8) + 56))(v97, 1, 1, v45);
  v46 = sub_265D58210();
  (*(*(v46 - 8) + 56))(v99, 1, 1, v46);
  v47 = sub_265D57E80();
  (*(*(v47 - 8) + 56))(v101, 1, 1, v47);
  v48 = sub_265D58430();
  (*(*(v48 - 8) + 56))(v103, 1, 1, v48);
  v49 = sub_265D58300();
  (*(*(v49 - 8) + 56))(v105, 1, 1, v49);
  v50 = sub_265D586F0();
  (*(*(v50 - 8) + 56))(v107, 1, 1, v50);
  v51 = sub_265D57E90();
  (*(*(v51 - 8) + 56))(v109, 1, 1, v51);
  v52 = sub_265D581C0();
  (*(*(v52 - 8) + 56))(v111, 1, 1, v52);
  v53 = sub_265D58BB0();
  (*(*(v53 - 8) + 56))(v113, 1, 1, v53);
  v54 = sub_265D585C0();
  (*(*(v54 - 8) + 56))(v115, 1, 1, v54);
  v55 = sub_265D57EA0();
  (*(*(v55 - 8) + 56))(v117, 1, 1, v55);
  v56 = sub_265D57ED0();
  (*(*(v56 - 8) + 56))(v119, 1, 1, v56);
  sub_265CF2324(v126, v123);
  v57 = sub_265D58400();
  (*(*(v57 - 8) + 56))(v121, 1, 1, v57);
  v82 = v0[67];
  v83 = v0[66];
  v84 = v0[65];
  v85 = v0[64];
  v86 = v0[61];
  v81 = v0[58];
  v87 = v0[57];
  v100 = v0[56];
  v58 = v0[54];
  v78 = v0[53];
  v91 = v0[52];
  v75 = v0[51];
  v76 = v0[55];
  v88 = v0[50];
  v74 = v0[49];
  v92 = v0[48];
  v94 = v0[47];
  v96 = v0[46];
  v102 = v0[45];
  v104 = v0[44];
  v106 = v0[43];
  v108 = v0[42];
  v110 = v0[41];
  v112 = v0[40];
  v114 = v0[39];
  v116 = v0[38];
  v118 = v0[37];
  v59 = v0[35];
  v60 = v0[36];
  v120 = v0[34];
  v122 = v0[33];
  v124 = v0[32];
  v127 = v0[31];
  v61 = v0[29];
  v62 = v0[27];
  v63 = v0[28];
  v89 = v0[26];
  v64 = v0[23];
  v98 = v0[22];
  v65 = v0[20];
  v77 = v0[21];
  v79 = v0[19];
  v80 = v0[18];
  v73 = v0[17];
  swift_getObjectType();
  sub_265D5A030();
  sub_265D585D0();
  v66 = sub_265D58600();
  (*(*(v66 - 8) + 56))(v62, 0, 1, v66);
  v67 = sub_265D58630();
  (*(*(v67 - 8) + 56))(v64, 1, 1, v67);
  v68 = sub_265D58B10();
  (*(*(v68 - 8) + 56))(v98, 1, 1, v68);
  sub_265D5A030();
  sub_265D580B0();
  sub_265D59080();
  sub_265D58ED0();
  (*(v58 + 8))(v76, v78);
  v69 = sub_265D589C0();
  sub_265CA4AE8(v81, &qword_28003E550, &unk_265D5BFF0);
  *v77 = v69;
  (*(v65 + 104))(v77, *MEMORY[0x277D4F250], v79);
  v70 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  (*(v65 + 40))(v80 + v70, v77, v79);
  swift_endAccess();

  v71 = v0[1];

  return v71();
}

uint64_t sub_265CEFF24()
{
  v132 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 528);
  sub_265D595E0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 560);
    v128 = *(v0 + 528);
    v129 = *(v0 + 544);
    v8 = *(v0 + 496);
    v7 = *(v0 + 504);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v131 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = sub_265D5A400();
    v16 = sub_265CF4FFC(v14, v15, &v131);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_265C01000, v4, v5, "Unable to fetch unit preferences with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    v129(v128, v8);
  }

  else
  {
    v17 = *(v0 + 544);
    v18 = *(v0 + 528);
    v19 = *(v0 + 496);
    v20 = *(v0 + 504);

    v17(v18, v19);
  }

  v21 = *(v0 + 464);
  v22 = sub_265D58240();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = *(v0 + 144);
  v24 = v23[22];
  __swift_project_boxed_opaque_existential_1(v23 + 17, v23[20]);
  sub_265D59520();
  v25 = v23[22];
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 136), *(*(v0 + 144) + 160));
  sub_265D59540();
  v124 = *(v0 + 448);
  v126 = *(v0 + 464);
  v26 = *(v0 + 408);
  v28 = *(v0 + 384);
  v27 = *(v0 + 392);
  v30 = *(v0 + 368);
  v29 = *(v0 + 376);
  v32 = *(v0 + 352);
  v31 = *(v0 + 360);
  v33 = *(v0 + 344);
  v94 = *(v0 + 336);
  v96 = *(v0 + 328);
  v98 = *(v0 + 320);
  v100 = *(v0 + 312);
  v102 = *(v0 + 304);
  v104 = *(v0 + 296);
  v106 = *(v0 + 288);
  v108 = *(v0 + 280);
  v110 = *(v0 + 272);
  v112 = *(v0 + 264);
  v114 = *(v0 + 256);
  v116 = *(v0 + 248);
  v118 = *(v0 + 240);
  v120 = *(v0 + 232);
  v122 = *(v0 + 224);
  v35 = *(v0 + 136);
  v34 = *(v0 + 144);
  v130 = *(v34 + 112);
  v91 = *(v34 + 120);
  sub_265D5A4C0();
  sub_265D589C0();
  sub_265D58CF0();

  v36 = sub_265D58020();
  (*(*(v36 - 8) + 56))(v26, 1, 1, v36);
  v37 = sub_265D58410();
  (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
  v38 = sub_265D58590();
  (*(*(v38 - 8) + 56))(v28, 1, 1, v38);
  v39 = sub_265D58050();
  (*(*(v39 - 8) + 56))(v29, 1, 1, v39);
  v40 = sub_265D58200();
  (*(*(v40 - 8) + 56))(v30, 1, 1, v40);
  v41 = sub_265D58BC0();
  (*(*(v41 - 8) + 56))(v31, 1, 1, v41);
  v42 = sub_265D583E0();
  (*(*(v42 - 8) + 56))(v32, 1, 1, v42);
  v43 = sub_265D581B0();
  (*(*(v43 - 8) + 56))(v33, 1, 1, v43);
  v44 = sub_265D57F50();
  (*(*(v44 - 8) + 56))(v94, 1, 1, v44);
  v45 = sub_265D582A0();
  (*(*(v45 - 8) + 56))(v96, 1, 1, v45);
  v46 = sub_265D58680();
  (*(*(v46 - 8) + 56))(v98, 1, 1, v46);
  v47 = sub_265D58210();
  (*(*(v47 - 8) + 56))(v100, 1, 1, v47);
  v48 = sub_265D57E80();
  (*(*(v48 - 8) + 56))(v102, 1, 1, v48);
  v49 = sub_265D58430();
  (*(*(v49 - 8) + 56))(v104, 1, 1, v49);
  v50 = sub_265D58300();
  (*(*(v50 - 8) + 56))(v106, 1, 1, v50);
  v51 = sub_265D586F0();
  (*(*(v51 - 8) + 56))(v108, 1, 1, v51);
  v52 = sub_265D57E90();
  (*(*(v52 - 8) + 56))(v110, 1, 1, v52);
  v53 = sub_265D581C0();
  (*(*(v53 - 8) + 56))(v112, 1, 1, v53);
  v54 = sub_265D58BB0();
  (*(*(v54 - 8) + 56))(v114, 1, 1, v54);
  v55 = sub_265D585C0();
  (*(*(v55 - 8) + 56))(v116, 1, 1, v55);
  v56 = sub_265D57EA0();
  (*(*(v56 - 8) + 56))(v118, 1, 1, v56);
  v57 = sub_265D57ED0();
  (*(*(v57 - 8) + 56))(v120, 1, 1, v57);
  sub_265CF2324(v126, v124);
  v58 = sub_265D58400();
  (*(*(v58 - 8) + 56))(v122, 1, 1, v58);
  v83 = *(v0 + 536);
  v84 = *(v0 + 528);
  v85 = *(v0 + 520);
  v86 = *(v0 + 512);
  v87 = *(v0 + 488);
  v82 = *(v0 + 464);
  v88 = *(v0 + 456);
  v101 = *(v0 + 448);
  v59 = *(v0 + 432);
  v79 = *(v0 + 424);
  v92 = *(v0 + 416);
  v76 = *(v0 + 408);
  v77 = *(v0 + 440);
  v89 = *(v0 + 400);
  v75 = *(v0 + 392);
  v93 = *(v0 + 384);
  v95 = *(v0 + 376);
  v97 = *(v0 + 368);
  v103 = *(v0 + 360);
  v105 = *(v0 + 352);
  v107 = *(v0 + 344);
  v109 = *(v0 + 336);
  v111 = *(v0 + 328);
  v113 = *(v0 + 320);
  v115 = *(v0 + 312);
  v117 = *(v0 + 304);
  v119 = *(v0 + 296);
  v60 = *(v0 + 280);
  v61 = *(v0 + 288);
  v121 = *(v0 + 272);
  v123 = *(v0 + 264);
  v125 = *(v0 + 256);
  v127 = *(v0 + 248);
  v62 = *(v0 + 232);
  v63 = *(v0 + 216);
  v64 = *(v0 + 224);
  v90 = *(v0 + 208);
  v65 = *(v0 + 184);
  v99 = *(v0 + 176);
  v66 = *(v0 + 160);
  v78 = *(v0 + 168);
  v80 = *(v0 + 152);
  v81 = *(v0 + 144);
  v74 = *(v0 + 136);
  swift_getObjectType();
  sub_265D5A030();
  sub_265D585D0();
  v67 = sub_265D58600();
  (*(*(v67 - 8) + 56))(v63, 0, 1, v67);
  v68 = sub_265D58630();
  (*(*(v68 - 8) + 56))(v65, 1, 1, v68);
  v69 = sub_265D58B10();
  (*(*(v69 - 8) + 56))(v99, 1, 1, v69);
  sub_265D5A030();
  sub_265D580B0();
  sub_265D59080();
  sub_265D58ED0();
  (*(v59 + 8))(v77, v79);
  v70 = sub_265D589C0();
  sub_265CA4AE8(v82, &qword_28003E550, &unk_265D5BFF0);
  *v78 = v70;
  (*(v66 + 104))(v78, *MEMORY[0x277D4F250], v80);
  v71 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  (*(v66 + 40))(v81 + v71, v78, v80);
  swift_endAccess();

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_265CF10A0()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[16];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_lock;
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DistributedSessionEventPublisher()
{
  result = qword_2813B8CB0;
  if (!qword_2813B8CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CF11D0()
{
  v0 = sub_265D59930();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_265CF12D0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_265CF12D0()
{
  if (!qword_2813B8FE0)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FE0);
    }
  }
}

uint64_t sub_265CF1378@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CF140C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265CF150C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265CEE2A4(a1);
}

uint64_t sub_265CF15A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4DFF8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DistributedSessionEventPublisher();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v10, a4);
}

uint64_t sub_265CF1668(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C96620;

  return (sub_265CF1EE4)(a1);
}

uint64_t sub_265CF1714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E000] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DistributedSessionEventPublisher();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CF17DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E008] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DistributedSessionEventPublisher();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CF18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E010] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DistributedSessionEventPublisher();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CF196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFF0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DistributedSessionEventPublisher();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v8, a3);
}

uint64_t sub_265CF1A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DistributedSessionEventPublisher();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v8, a3);
}

uint64_t sub_265CF1ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DistributedSessionEventPublisher();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v8, a3);
}

uint64_t sub_265CF1B94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CF1C1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265CF1D58()
{
  result = qword_28003E7E0;
  if (!qword_28003E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E7E0);
  }

  return result;
}

uint64_t sub_265CF1DAC()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265C01000, v5, v6, "DistributedSessionEventPublisher - shouldStartSession - true", v7, 2u);
    MEMORY[0x266770CF0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_265CF1EE4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_265D59DE0();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF2068, v1, 0);
}

uint64_t sub_265CF2068()
{
  v34 = v0;
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[5];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  if (v8)
  {
    v32 = v0[13];
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    sub_265CF2404(&qword_28003E7E8, MEMORY[0x277D53AE0]);
    v17 = sub_265D5A3B0();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v30, "DistributedSessionEventPublisher - Ending %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v0[15];
  v22 = v0[12];
  v24 = v0[8];
  v23 = v0[9];
  v26 = v0[6];
  v25 = v0[7];
  (*(v24 + 104))(v23, *MEMORY[0x277D4F258], v25);
  v27 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  (*(v24 + 40))(v26 + v27, v23, v25);
  swift_endAccess();

  v28 = v0[1];

  return v28();
}

uint64_t sub_265CF2324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CF2394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CF2404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265CF244C(void *a1, unsigned __int8 a2)
{
  v4 = sub_265D59DE0();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[15];
  if (v10)
  {
    v38 = v7;
    v39 = result;
    v41 = a1[14];

    v12 = *(a1[2] + 16);
    MEMORY[0x28223BE20](v11);
    *(&v31 - 16) = a2;
    *(&v31 - 1) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    sub_265D58CA0();
    v14 = v40[0];
    v36 = v40[2];
    v37 = v40[1];
    v15 = sub_265CF2808(v40[0]);
    if (v15)
    {
      v16 = v15;
      sub_265D595F0();
      v17 = sub_265D59DD0();
      v35 = sub_265D5A080();
      if (os_log_type_enabled(v17, v35))
      {
        v34 = v16;
        v18 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40[0] = v32;
        v19 = 0xEB00000000656369;
        v20 = 0x7665446C61636F6CLL;
        v33 = v18;
        *v18 = 136446210;
        v21 = 0x8000000265D5FC00;
        v22 = 0x8000000265D5FC20;
        v23 = 0xD000000000000018;
        if (a2 != 3)
        {
          v23 = 0xD000000000000010;
          v22 = 0x8000000265D5FC40;
        }

        if (a2 == 2)
        {
          v23 = 0xD000000000000014;
        }

        else
        {
          v21 = v22;
        }

        if (a2)
        {
          v20 = 0xD000000000000016;
          v19 = 0x8000000265D5FBE0;
        }

        if (a2 <= 1u)
        {
          v24 = v20;
        }

        else
        {
          v24 = v23;
        }

        if (a2 <= 1u)
        {
          v25 = v19;
        }

        else
        {
          v25 = v21;
        }

        v26 = sub_265CF4FFC(v24, v25, v40);

        v27 = v33;
        *(v33 + 1) = v26;
        _os_log_impl(&dword_265C01000, v17, v35, "Heartbeat coordinator resetting timeout for %{public}s", v27, 0xCu);
        v28 = v32;
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x266770CF0](v28, -1, -1);
        MEMORY[0x266770CF0](v27, -1, -1);

        (*(v38 + 8))(v9, v39);
      }

      else
      {

        (*(v38 + 8))(v9, v39);
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_265D5A0B0();
      swift_unknownObjectRelease();
      v30 = v36;
      v29 = v37;
      sub_265CF28BC(v14);
      sub_265CF2A24(v14, v29, v30, v41, v10);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265CF2808(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_265D58C90();
  swift_beginAccess();
  v5 = *(v2 + 104);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 4;
    v9 = *v6;
    v6 += 4;
    if (v9 == a1)
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      return a1;
    }
  }

  return 0;
}

uint64_t sub_265CF28BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_265D58C90();
  swift_beginAccess();
  v5 = *(v2 + 104);
  v6 = *(v5 + 16);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = v5 + 24 + 32 * v8;
  while (1)
  {
    if (v6 == v8)
    {

      v17 = *(v2 + 104);
      *(v2 + 104) = v9;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    v11 = (v10 + 32);
    ++v8;
    v12 = *(v10 + 8);
    v10 += 32;
    if (v12 != a1)
    {
      v18 = *(v11 - 1);
      v13 = *v11;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_265CF574C(0, *(v9 + 16) + 1, 1);
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_265CF574C((v14 > 1), v15 + 1, 1);
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 32 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v18;
      *(v16 + 56) = v13;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265CF2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a4;
  v45 = a5;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  swift_unknownObjectRetain();
  v15 = sub_265D59DD0();
  v16 = sub_265D5A080();
  swift_unknownObjectRelease();
  v17 = os_log_type_enabled(v15, v16);
  v42 = a3;
  v43 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = v10;
    v20 = v19;
    v46[0] = v19;
    v46[1] = a1;
    *v18 = 136446210;
    v46[2] = a2;
    v46[3] = a3;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v21 = sub_265D59EC0();
    v23 = sub_265CF4FFC(v21, v22, v46);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_265C01000, v15, v16, "Heartbeat coordinator creating expectation for %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266770CF0](v20, -1, -1);
    MEMORY[0x266770CF0](v18, -1, -1);

    (*(v11 + 8))(v14, v41);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v24 = v6[6];
  sub_265D58C90();
  v25 = v6[11];
  v41 = v6[12];
  __swift_project_boxed_opaque_existential_1(v6 + 8, v25);
  v26 = v6[7];
  sub_265CD77F0();
  v27 = sub_265D5A090();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v30 = v42;
  v31 = v43;
  v29[4] = v43;
  v29[5] = v30;
  v32 = v45;
  v29[6] = v44;
  v29[7] = v32;
  swift_unknownObjectRetain();

  v33 = sub_265D592D0();

  swift_beginAccess();
  v34 = v6[13];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[13] = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_265D468F4(0, *(v34 + 2) + 1, 1, v34);
    v6[13] = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v34 = sub_265D468F4((v36 > 1), v37 + 1, 1, v34);
  }

  *(v34 + 2) = v37 + 1;
  v38 = &v34[32 * v37];
  *(v38 + 4) = a1;
  *(v38 + 5) = v31;
  *(v38 + 6) = v30;
  *(v38 + 7) = v33;
  v6[13] = v34;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_265CF2DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v78 = sub_265D58130();
  v72 = *(v78 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x28223BE20](v78);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - v8;
  v10 = sub_265D59DE0();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v67 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v67 - v28;
  v30 = *(v2 + 48);
  v77 = v3;
  v74 = v30;
  sub_265D58CA0();
  v73 = 0;
  v31 = v80;
  if (v80)
  {
    v32 = v79;
    v33 = v81;
    sub_265D58080();
    v34 = sub_265D57ED0();
    if ((*(*(v34 - 8) + 48))(v24, 1, v34) == 1)
    {
      sub_265CF4FB8(v32, v31);
      return sub_265CA4AE8(v24, &qword_28003E840, &unk_265D5D0D0);
    }

    else
    {
      v68 = v32;
      v71 = v33;
      sub_265CA4AE8(v24, &qword_28003E840, &unk_265D5D0D0);
      v40 = v70;
      sub_265D595F0();
      v41 = v72;
      v42 = v69;
      v43 = v78;
      (*(v72 + 16))(v69, a1, v78);
      v44 = sub_265D59DD0();
      v45 = sub_265D5A080();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v79 = v47;
        *v46 = 136446210;
        v48 = sub_265D580D0();
        v50 = v49;
        (*(v41 + 8))(v42, v78);
        v51 = sub_265CF4FFC(v48, v50, &v79);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_265C01000, v44, v45, "Heartbeat coordinator stopping due to termination on session: %{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x266770CF0](v47, -1, -1);
        MEMORY[0x266770CF0](v46, -1, -1);
      }

      else
      {

        (*(v41 + 8))(v42, v43);
      }

      (*(v75 + 8))(v40, v76);
      sub_265D58CA0();
      return sub_265CF4FB8(v68, v31);
    }
  }

  else
  {
    v70 = v9;
    v36 = a1;
    sub_265CF5E0C(v71, v19);
    v37 = sub_265D58AC0();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v19, 1, v37) == 1)
    {
      sub_265CA4AE8(v19, &qword_28003E708, &unk_265D5CCC0);
      v39 = sub_265D57ED0();
      (*(*(v39 - 8) + 56))(v29, 1, 1, v39);
    }

    else
    {
      sub_265D589F0();
      (*(v38 + 8))(v19, v37);
      v39 = sub_265D57ED0();
      if ((*(*(v39 - 8) + 48))(v29, 1, v39) != 1)
      {
        return sub_265CA4AE8(v29, &qword_28003E840, &unk_265D5D0D0);
      }
    }

    sub_265CA4AE8(v29, &qword_28003E840, &unk_265D5D0D0);
    sub_265D58080();
    sub_265D57ED0();
    v52 = (*(*(v39 - 8) + 48))(v27, 1, v39);
    result = sub_265CA4AE8(v27, &qword_28003E840, &unk_265D5D0D0);
    if (v52 == 1)
    {
      v53 = v15;
      sub_265D595F0();
      v54 = v72;
      v55 = v70;
      v56 = v78;
      (*(v72 + 16))(v70, v36, v78);
      v57 = sub_265D59DD0();
      v58 = sub_265D5A080();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v79 = v60;
        *v59 = 136446210;
        v61 = sub_265D580D0();
        v62 = v55;
        v64 = v63;
        (*(v54 + 8))(v62, v56);
        v65 = sub_265CF4FFC(v61, v64, &v79);

        *(v59 + 4) = v65;
        _os_log_impl(&dword_265C01000, v57, v58, "Heartbeat coordinator starting for session %{public}s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x266770CF0](v60, -1, -1);
        MEMORY[0x266770CF0](v59, -1, -1);
      }

      else
      {

        (*(v54 + 8))(v55, v56);
      }

      v66 = (*(v75 + 8))(v53, v76);
      MEMORY[0x28223BE20](v66);
      *(&v67 - 2) = v77;
      *(&v67 - 1) = v36;
      return sub_265D58CA0();
    }
  }

  return result;
}