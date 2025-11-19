uint64_t sub_26F76EC38()
{
  *v0;
  *v0;
  sub_26F779298();
}

uint64_t sub_26F76ED28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F771530();
  *a2 = result;
  return result;
}

void sub_26F76ED58(unint64_t *a1@<X8>)
{
  v2 = 0x62616E455F534352;
  v3 = *v1;
  v4 = 0x800000026F77E840;
  if (v3 == 4)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xEB0000000064656CLL;
  }

  if (v3 == 3)
  {
    v2 = 0x62616E455F534D53;
    v4 = 0xEB0000000064656CLL;
  }

  v5 = 0xD000000000000015;
  v6 = 0x800000026F77EA50;
  v7 = 0xD000000000000012;
  if (v3 == 1)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x800000026F77EA70;
  }

  if (*v1)
  {
    v5 = v7;
    v8 = v6;
  }

  else
  {
    v8 = 0x800000026F77EA30;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v2;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_26F76EE18()
{
  v1 = 0x62616E455F534352;
  v2 = *v0;
  if (v2 == 4)
  {
    v1 = 0xD000000000000010;
  }

  if (v2 == 3)
  {
    v1 = 0x62616E455F534D53;
  }

  v3 = 0xD000000000000012;
  if (v2 == 1)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26F76EED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F771530();
  *a1 = result;
  return result;
}

uint64_t sub_26F76EEFC(uint64_t a1)
{
  v2 = sub_26F7718E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76EF38(uint64_t a1)
{
  v2 = sub_26F7718E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F76EFB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  result = sub_26F77157C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
    *(a5 + 1) = BYTE1(result) & 1;
    *(a5 + 2) = BYTE2(result) & 1;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
    *(a5 + 24) = v10;
  }

  return result;
}

uint64_t sub_26F76F054(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  if (v6[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | *v6;
  if (v6[2])
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  return sub_26F76D298(a1, v8 | v9, *(v6 + 1), *(v6 + 2), *(v6 + 3), a4, a5, a6);
}

uint64_t sub_26F76F0BC()
{
  memcpy(__dst, (v0 + 16), 0x170uLL);
  sub_26F76FAF8(__dst);
  v1 = OBJC_IVAR____TtC8TrustKit19ConfigurationsAsset_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigurationsAsset()
{
  result = qword_2806EF8C0;
  if (!qword_2806EF8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F76F1C0()
{
  result = sub_26F779188();
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

uint64_t sub_26F76F264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_26F76F2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F76F35C()
{
  v0 = sub_26F779618();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void *sub_26F76F3A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8D0, &qword_26F77CBD0);
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v70);
  v8 = v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F76F8BC();
  sub_26F779898();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a2;
  v57 = 0;
  sub_26F76F910();
  sub_26F7796A8();
  v69[8] = v66;
  v69[9] = v67;
  *&v69[10] = v68;
  v69[4] = v62;
  v69[5] = v63;
  v69[7] = v65;
  v69[6] = v64;
  v69[0] = v58;
  v69[1] = v59;
  v69[3] = v61;
  v69[2] = v60;
  v47 = 1;
  sub_26F76F964();
  sub_26F7796A8();
  *(&v69[16] + 8) = v54;
  *(&v69[17] + 8) = v55;
  *(&v69[15] + 8) = v53;
  *(&v69[11] + 8) = v49;
  *(&v69[12] + 8) = v50;
  *(&v69[13] + 8) = v51;
  *(&v69[14] + 8) = v52;
  *(&v69[18] + 1) = v56;
  *(&v69[10] + 8) = v48;
  LOBYTE(v27[0]) = 2;
  sub_26F76FA18();
  sub_26F7796A8();
  v22 = BYTE1(v28[0]);
  v23 = LOBYTE(v28[0]);
  v21 = BYTE2(v28[0]);
  v10 = v28[1];
  v24 = v28[2];
  v25 = v28[3];
  v41 = 3;
  sub_26F76FA6C();
  sub_26F7796A8();
  (*(v5 + 8))(v8, v70);
  v17[3] = v42;
  v19 = HIBYTE(v42);
  v11 = v43;
  v70 = v44;
  v12 = v45;
  v20 = v10;
  v18 = v46;
  memcpy(v27, v69, 0x130uLL);
  v13 = v22;
  LOBYTE(v27[38]) = v23;
  BYTE1(v27[38]) = v22;
  v14 = v21;
  BYTE2(v27[38]) = v21;
  v27[39] = v10;
  v27[40] = v24;
  v27[41] = v25;
  LOBYTE(v10) = v42;
  LOWORD(v27[42]) = v42;
  BYTE2(v27[42]) = v43;
  v27[43] = v44;
  v27[44] = v45;
  v15 = v46;
  v27[45] = v46;
  sub_26F76FAC0(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v28, v69, sizeof(v28));
  v29 = v23;
  v30 = v13;
  v31 = v14;
  v32 = v20;
  v33 = v24;
  v34 = v25;
  v35 = v10;
  v36 = v19;
  v37 = v11;
  v38 = v70;
  v39 = v12;
  v40 = v15;
  sub_26F76FAF8(v28);
  return memcpy(v26, v27, 0x170uLL);
}

unint64_t sub_26F76F8BC()
{
  result = qword_2806EF8D8;
  if (!qword_2806EF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8D8);
  }

  return result;
}

unint64_t sub_26F76F910()
{
  result = qword_2806EF8E0;
  if (!qword_2806EF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8E0);
  }

  return result;
}

unint64_t sub_26F76F964()
{
  result = qword_2806EF8E8;
  if (!qword_2806EF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8E8);
  }

  return result;
}

unint64_t sub_26F76FA18()
{
  result = qword_2806EF8F0;
  if (!qword_2806EF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8F0);
  }

  return result;
}

unint64_t sub_26F76FA6C()
{
  result = qword_2806EF8F8;
  if (!qword_2806EF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8F8);
  }

  return result;
}

unint64_t sub_26F76FB60()
{
  result = qword_2806EF908;
  if (!qword_2806EF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF908);
  }

  return result;
}

unint64_t sub_26F76FBEC()
{
  result = qword_2806EF910;
  if (!qword_2806EF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF910);
  }

  return result;
}

unint64_t sub_26F76FC40()
{
  result = qword_2806EF918;
  if (!qword_2806EF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF918);
  }

  return result;
}

unint64_t sub_26F76FC94()
{
  result = qword_2806EF920;
  if (!qword_2806EF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF920);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26F76FD4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_26F76FD94(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_26F76FE40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_26F76FE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F76FF04()
{
  result = qword_2806EF928;
  if (!qword_2806EF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF928);
  }

  return result;
}

unint64_t sub_26F76FF5C()
{
  result = qword_2806EF930;
  if (!qword_2806EF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF930);
  }

  return result;
}

unint64_t sub_26F76FFB4()
{
  result = qword_2806EF938;
  if (!qword_2806EF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF938);
  }

  return result;
}

uint64_t sub_26F770008(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EFB00, &qword_26F77DB18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7727E8();
  sub_26F779898();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_26F779668();
    v11 = 1;
    sub_26F779668();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_26F7701EC()
{
  v0 = sub_26F779618();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F770238()
{
  v0 = sub_26F779618();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F770284@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v27 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  a4();
  sub_26F779898();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v15 = v9;
  v32 = a5;
  v39 = 0;
  sub_26F772200();
  sub_26F7796A8();
  v16 = v35;
  v17 = v37;
  v30 = v38;
  v31 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
  v39 = 1;
  sub_26F771420(&qword_2806EF990);
  sub_26F7796A8();
  v28 = v17;
  v29 = v16;
  v18 = v35;
  v39 = 2;
  sub_26F7796A8();
  v19 = v35;
  v39 = 3;
  sub_26F7796A8();
  (*(v15 + 8))(v12, v33);
  v20 = v35;
  v21 = v31;

  v22 = v30;

  __swift_destroy_boxed_opaque_existential_1(v34);

  v24 = v19;
  v25 = v32;
  v26 = v28;
  *v32 = v29;
  v25[1] = v21;
  v25[2] = v26;
  v25[3] = v22;
  v25[4] = v18;
  v25[5] = v24;
  v25[6] = v20;
  return result;
}

uint64_t sub_26F770634()
{
  v0 = sub_26F779618();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F770680()
{
  v0 = sub_26F779618();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F7706CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF940, &qword_26F77CFC8);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v27 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F770ADC();
  sub_26F779898();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v46 = a2;
  LOBYTE(v48) = 0;
  sub_26F770B30();
  v11 = v47;
  sub_26F7796A8();
  v12 = v61;
  v44 = v62;
  v45 = v60;
  v42 = v63;
  v43 = *(&v62 + 1);
  v40 = v59;
  v41 = v64;
  LOBYTE(v48) = 1;
  sub_26F770B84();
  sub_26F7796A8();
  v35 = v59;
  v36 = v12;
  v13 = v60;
  v34 = v61;
  v38 = v62;
  v39 = v63;
  v37 = v64;
  v82 = 2;
  sub_26F770BD8();
  sub_26F7796A8();
  (*(v10 + 8))(v8, v11);
  v31 = v79;
  v32 = *(&v78 + 1);
  v29 = v80;
  v30 = *(&v79 + 1);
  v27 = v81;
  v28 = *(&v80 + 1);
  v14 = v41;
  v47 = v78;
  *&v48 = v40;
  v16 = v44;
  v15 = v45;
  *(&v48 + 1) = v45;
  *&v49 = v36;
  v18 = v42;
  v17 = v43;
  *(&v49 + 1) = v44;
  *&v50 = v43;
  *(&v50 + 1) = v42;
  *&v51 = v41;
  *(&v51 + 1) = v35;
  v52 = __PAIR128__(v34, v13);
  v33 = v13;
  v19 = v37;
  v53 = v38;
  *&v54 = v39;
  *(&v54 + 1) = v37;
  v55 = v78;
  v56 = v79;
  v57 = v80;
  v58 = v81;
  sub_26F76FB28(&v48, &v59);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v59 = v40;
  v60 = v15;
  v61 = v36;
  *&v62 = v16;
  *(&v62 + 1) = v17;
  v63 = v18;
  v64 = v14;
  v65 = v35;
  v66 = v33;
  v67 = v34;
  v68 = v38;
  v69 = v39;
  v70 = v19;
  v71 = v47;
  v72 = v32;
  v73 = v31;
  v74 = v30;
  v75 = v29;
  v76 = v28;
  v77 = v27;
  result = sub_26F76F9B8(&v59);
  v21 = v57;
  v22 = v46;
  *(v46 + 128) = v56;
  *(v22 + 144) = v21;
  *(v22 + 160) = v58;
  v23 = v53;
  *(v22 + 64) = v52;
  *(v22 + 80) = v23;
  v24 = v55;
  *(v22 + 96) = v54;
  *(v22 + 112) = v24;
  v25 = v49;
  *v22 = v48;
  *(v22 + 16) = v25;
  v26 = v51;
  *(v22 + 32) = v50;
  *(v22 + 48) = v26;
  return result;
}

unint64_t sub_26F770ADC()
{
  result = qword_2806EF948;
  if (!qword_2806EF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF948);
  }

  return result;
}

unint64_t sub_26F770B30()
{
  result = qword_2806EF950;
  if (!qword_2806EF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF950);
  }

  return result;
}

unint64_t sub_26F770B84()
{
  result = qword_2806EF958;
  if (!qword_2806EF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF958);
  }

  return result;
}

unint64_t sub_26F770BD8()
{
  result = qword_2806EF960;
  if (!qword_2806EF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF960);
  }

  return result;
}

uint64_t sub_26F770C2C()
{
  v0 = sub_26F779768();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F770C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF968, &qword_26F77CFD0);
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v72);
  v8 = &v40 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7713CC();
  sub_26F779898();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v60[0]) = 0;
  sub_26F779688();
  v12 = v11;
  LOBYTE(v60[0]) = 1;
  sub_26F779688();
  v14 = v13;
  LOBYTE(v60[0]) = 2;
  v15 = sub_26F779668();
  v50 = v16;
  LOBYTE(v60[0]) = 3;
  sub_26F779688();
  v18 = v17;
  LOBYTE(v60[0]) = 4;
  sub_26F779688();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF978, &qword_26F77CFD8);
  LOBYTE(v51) = 5;
  sub_26F771AD8(&qword_2806EF980);
  sub_26F7796A8();
  v49 = v60[0];
  LOBYTE(v60[0]) = 6;
  sub_26F779688();
  v22 = v21;
  LOBYTE(v60[0]) = 7;
  sub_26F779688();
  v24 = v23;
  LOBYTE(v60[0]) = 8;
  sub_26F779688();
  v26 = v25;
  LOBYTE(v60[0]) = 9;
  sub_26F779688();
  v28 = v27;
  LOBYTE(v60[0]) = 10;
  sub_26F779688();
  v48 = v29;
  LOBYTE(v60[0]) = 11;
  v30 = sub_26F779698();
  LOBYTE(v60[0]) = 12;
  v47 = sub_26F779678();
  LOBYTE(v60[0]) = 13;
  v46 = sub_26F779678();
  LOBYTE(v60[0]) = 14;
  v45 = sub_26F779678();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
  LOBYTE(v51) = 15;
  v43 = sub_26F771420(&qword_2806EF990);
  v44 = v31;
  sub_26F7796A8();
  v42 = v60[0];
  LOBYTE(v51) = 16;
  sub_26F7796A8();
  v41 = v60[0];
  v68 = 17;
  sub_26F7796A8();
  v44 = 0;
  LOBYTE(v31) = v46 & 1;
  v46 = v45 & 1;
  v47 &= 1u;
  v32 = v47;
  (*(v10 + 8))(v8, v72);
  v72 = v69;
  *&v51 = v12;
  *(&v51 + 1) = v14;
  v33 = v49;
  *&v52 = v15;
  *(&v52 + 1) = v50;
  *&v53 = v18;
  *(&v53 + 1) = v20;
  *&v54 = v49;
  *(&v54 + 1) = v22;
  *&v55 = v24;
  *(&v55 + 1) = v26;
  *&v56 = v28;
  *(&v56 + 1) = v48;
  *&v57 = v30;
  *(&v57 + 1) = v42;
  LOBYTE(v58) = v32;
  BYTE1(v58) = v31;
  LOBYTE(v10) = v46;
  BYTE2(v58) = v46;
  BYTE7(v58) = v71;
  *(&v58 + 3) = v70;
  v34 = v41;
  *(&v58 + 1) = v41;
  v59 = v69;
  sub_26F76FBB4(&v51, v60);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v60[0] = v12;
  v60[1] = v14;
  v60[2] = v15;
  v60[3] = v50;
  v60[4] = v18;
  v60[5] = v20;
  v60[6] = v33;
  v60[7] = v22;
  v60[8] = v24;
  v60[9] = v26;
  v60[10] = v28;
  v60[11] = v48;
  v60[12] = v30;
  v60[13] = v42;
  v61 = v47;
  v62 = v31;
  v63 = v10;
  v65 = v71;
  v64 = v70;
  v66 = v34;
  v67 = v72;
  result = sub_26F76F9E8(v60);
  v36 = v58;
  *(a2 + 96) = v57;
  *(a2 + 112) = v36;
  *(a2 + 128) = v59;
  v37 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v37;
  v38 = v56;
  *(a2 + 64) = v55;
  *(a2 + 80) = v38;
  v39 = v52;
  *a2 = v51;
  *(a2 + 16) = v39;
  return result;
}

unint64_t sub_26F7713CC()
{
  result = qword_2806EF970;
  if (!qword_2806EF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF970);
  }

  return result;
}

uint64_t sub_26F771420(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF988, &qword_26F77CFE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26F771490()
{
  v0 = sub_26F779618();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26F7714DC()
{
  result = qword_2806EF9A0;
  if (!qword_2806EF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9A0);
  }

  return result;
}

uint64_t sub_26F771530()
{
  v0 = sub_26F779618();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F77157C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26F779898();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v12 = sub_26F779678();
  LOBYTE(v23) = 1;
  v20 = sub_26F779678();
  LOBYTE(v23) = 2;
  v19 = sub_26F779678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
  v22 = 3;
  sub_26F771420(&qword_2806EF990);
  sub_26F7796A8();
  v22 = 4;
  sub_26F7796A8();
  v22 = 5;
  v14 = v21;
  sub_26F7796A8();
  (*(v7 + 8))(v10, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v20)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 & 0xFFFFFFFE | v12 & 1;
  if (v19)
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  return v16 | v17;
}

unint64_t sub_26F7718E0()
{
  result = qword_2806EF9B0;
  if (!qword_2806EF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9B0);
  }

  return result;
}

unint64_t sub_26F77196C()
{
  result = qword_2806EF9C0;
  if (!qword_2806EF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9C0);
  }

  return result;
}

unint64_t sub_26F7719F8()
{
  result = qword_2806EF9C8;
  if (!qword_2806EF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9C8);
  }

  return result;
}

unint64_t sub_26F771A84()
{
  result = qword_2806EF9D0;
  if (!qword_2806EF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9D0);
  }

  return result;
}

uint64_t sub_26F771AD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF978, &qword_26F77CFD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationsAsset.SignatureAnalysisConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationsAsset.SignatureAnalysisConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F771CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26F771D30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26F771D90()
{
  result = qword_2806EFA00;
  if (!qword_2806EFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA00);
  }

  return result;
}

unint64_t sub_26F771DE8()
{
  result = qword_2806EFA08;
  if (!qword_2806EFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA08);
  }

  return result;
}

unint64_t sub_26F771E40()
{
  result = qword_2806EFA10;
  if (!qword_2806EFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA10);
  }

  return result;
}

unint64_t sub_26F771E98()
{
  result = qword_2806EFA18;
  if (!qword_2806EFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA18);
  }

  return result;
}

unint64_t sub_26F771EF0()
{
  result = qword_2806EFA20;
  if (!qword_2806EFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA20);
  }

  return result;
}

unint64_t sub_26F771F48()
{
  result = qword_2806EFA28;
  if (!qword_2806EFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA28);
  }

  return result;
}

unint64_t sub_26F771FA0()
{
  result = qword_2806EFA30;
  if (!qword_2806EFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA30);
  }

  return result;
}

unint64_t sub_26F771FF8()
{
  result = qword_2806EFA38;
  if (!qword_2806EFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA38);
  }

  return result;
}

unint64_t sub_26F772050()
{
  result = qword_2806EFA40;
  if (!qword_2806EFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA40);
  }

  return result;
}

unint64_t sub_26F7720A8()
{
  result = qword_2806EFA48;
  if (!qword_2806EFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA48);
  }

  return result;
}

unint64_t sub_26F772100()
{
  result = qword_2806EFA50;
  if (!qword_2806EFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA50);
  }

  return result;
}

unint64_t sub_26F772158()
{
  result = qword_2806EFA58;
  if (!qword_2806EFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA58);
  }

  return result;
}

unint64_t sub_26F7721AC()
{
  result = qword_2806EFA68;
  if (!qword_2806EFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA68);
  }

  return result;
}

unint64_t sub_26F772200()
{
  result = qword_2806EFA70;
  if (!qword_2806EFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA70);
  }

  return result;
}

unint64_t sub_26F772254()
{
  result = qword_2806EFA80;
  if (!qword_2806EFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA80);
  }

  return result;
}

unint64_t sub_26F7722A8()
{
  result = qword_2806EFA90;
  if (!qword_2806EFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA90);
  }

  return result;
}

unint64_t sub_26F7722FC()
{
  result = qword_2806EFAA0;
  if (!qword_2806EFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonAnalyticsManager.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DaemonAnalyticsManager.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F7724D4()
{
  result = qword_2806EFAB8;
  if (!qword_2806EFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAB8);
  }

  return result;
}

unint64_t sub_26F77252C()
{
  result = qword_2806EFAC0;
  if (!qword_2806EFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAC0);
  }

  return result;
}

unint64_t sub_26F772584()
{
  result = qword_2806EFAC8;
  if (!qword_2806EFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAC8);
  }

  return result;
}

unint64_t sub_26F7725DC()
{
  result = qword_2806EFAD0;
  if (!qword_2806EFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAD0);
  }

  return result;
}

unint64_t sub_26F772634()
{
  result = qword_2806EFAD8;
  if (!qword_2806EFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAD8);
  }

  return result;
}

unint64_t sub_26F77268C()
{
  result = qword_2806EFAE0;
  if (!qword_2806EFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAE0);
  }

  return result;
}

unint64_t sub_26F7726E4()
{
  result = qword_2806EFAE8;
  if (!qword_2806EFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAE8);
  }

  return result;
}

unint64_t sub_26F77273C()
{
  result = qword_2806EFAF0;
  if (!qword_2806EFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAF0);
  }

  return result;
}

unint64_t sub_26F772794()
{
  result = qword_2806EFAF8;
  if (!qword_2806EFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAF8);
  }

  return result;
}

unint64_t sub_26F7727E8()
{
  result = qword_2806EFB08;
  if (!qword_2806EFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB08);
  }

  return result;
}

unint64_t sub_26F772850()
{
  result = qword_2806EFB18;
  if (!qword_2806EFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB18);
  }

  return result;
}

unint64_t sub_26F7728A8()
{
  result = qword_2806EFB20;
  if (!qword_2806EFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB20);
  }

  return result;
}

unint64_t sub_26F772900()
{
  result = qword_2806EFB28;
  if (!qword_2806EFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB28);
  }

  return result;
}

uint64_t sub_26F7729AC()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC8TrustKit32SenderLookUpDecisioningComponent_logger;
  v3 = sub_26F779188();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F772A78()
{
  result = sub_26F779188();
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

uint64_t sub_26F772B70()
{
  result = type metadata accessor for SpamDecisioningAsset();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26F772C04()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_26F779248();
  v4 = v3;

  qword_28141B5C8 = v2;
  unk_28141B5D0 = v4;
}

void sub_26F772CA8(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26F772D00()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26F772D5C()
{
  result = sub_26F779188();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26F772E10()
{
  sub_26F769E10(v0 + qword_2806EFB58);
  v1 = qword_2806EFB70;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_26F772E88()
{
  sub_26F772E10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChangeTokenCache()
{
  result = qword_2806EFBF8;
  if (!qword_2806EFBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F772F6C()
{
  result = sub_26F779188();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F772FD8()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC8TrustKit23SignaturesSQLiteManager_logger;
  v3 = sub_26F779188();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesSQLiteManager()
{
  result = qword_2806EFC10;
  if (!qword_2806EFC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F7730D0()
{
  result = sub_26F779188();
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

uint64_t sub_26F773188()
{
  sub_26F77331C(v0[2]);
  v1 = OBJC_IVAR____TtC8TrustKit15LookUpOperation_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LookUpOperation()
{
  result = qword_2806EFC28;
  if (!qword_2806EFC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F773280()
{
  result = sub_26F779188();
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

uint64_t sub_26F77331C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26F77332C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC8TrustKit15ReportOperation_logger;
  v3 = sub_26F779188();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportOperation()
{
  result = qword_2806EFC40;
  if (!qword_2806EFC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F773424()
{
  result = sub_26F779188();
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

uint64_t TKRecord.description.getter()
{
  v1 = v0;
  sub_26F7794F8();

  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x274395240](v2, v3);

  MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
  swift_beginAccess();
  v5 = v0[4];
  v4 = v1[5];
  sub_26F7546E4(v5, v4);
  v6 = sub_26F779028();
  v8 = v7;
  sub_26F74F35C(v5, v4);
  MEMORY[0x274395240](v6, v8);

  return 0x444964726F636572;
}

uint64_t TKRecord.__allocating_init(with:recordHash:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  TKRecord.init(with:recordHash:)(a1, a2, a3, a4);
  return v11;
}

void *TKRecord.init(with:recordHash:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v79 = a4;
  v73 = a3;
  v72 = a2;
  v69 = a1;
  v71 = *v4;
  v6 = sub_26F779188();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v70 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EligibilityManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  if (qword_28141B5A8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_28141B5F0);
  v16 = v7[2];
  v16(v13 + v14, v15, v6);
  v5[6] = v13;
  v17 = type metadata accessor for ClientAnalyticsManager();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  if (qword_28141B5B0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v6, qword_28141B608);
  v16(v20 + v21, v22, v6);
  v23 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_eligibilityManager;
  v24 = *(v10 + 48);
  v25 = *(v10 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v16(v26 + OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger, v15, v6);
  *(v20 + v23) = v26;
  v5[7] = v20;
  v27 = OBJC_IVAR____TtC8TrustKit8TKRecord_logger;
  if (qword_2806EF270 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v6, qword_2806F4920);
  v16(v5 + v27, v28, v6);
  v29 = v5[6];
  memset(v77, 0, sizeof(v77));
  v78 = 1;

  v30 = sub_26F76A25C(0, v77);

  if (v30)
  {
    v31 = v72;
    v32 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v32 = v69 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {

      v43 = v70;
      v16(v70, v5 + v27, v6);
      v44 = sub_26F7793C8();
      v68 = 0x800000026F781190;
      v37 = 0xD000000000000013;
      sub_26F756E10(v44, 0xD000000000000013, 0x800000026F781190, 0xD000000000000051, 0x800000026F7810D0, 39);
      v45 = v7[1];
      v69 = (v7 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v72 = v45;
      v45(v43, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
      inited = swift_initStackObject();
      v47 = inited;
      *(inited + 16) = xmmword_26F77A180;
      *(inited + 32) = 0x644964726F636572;
      v40 = inited + 32;
      v48 = 0xEF64696C61766E49;
LABEL_22:
      *(inited + 40) = v48;
      sub_26F766F04();
      *(v47 + 48) = sub_26F779408();
      v41 = v27;
      v42 = sub_26F7693B4(v47);
      v36 = v68;
      goto LABEL_23;
    }

    v33 = v79 >> 62;
    if ((v79 >> 62) > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_21;
      }

      v49 = *(v73 + 16);
      v50 = *(v73 + 24);
    }

    else
    {
      if (!v33)
      {
        if ((v79 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_25:
        v61 = v69;
        v5[2] = v69;
        v5[3] = v31;
        v62 = v73;
        v63 = v79;
        v5[4] = v73;
        v5[5] = v63;
        v64 = v5[7];
        v74 = 0;
        v75 = 0;
        v76 = -1;
        v65 = v31;

        sub_26F7546E4(v62, v63);
        sub_26F74B1B0(0, 0, &v74);

        v66 = sub_26F7793B8();
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_26F7794F8();

        v74 = 0xD00000000000001BLL;
        v75 = 0x800000026F781130;
        MEMORY[0x274395240](v61, v65);

        MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
        v67 = sub_26F779028();
        MEMORY[0x274395240](v67);

        MEMORY[0x274395240](32032, 0xE200000000000000);
        sub_26F756E10(v66, v74, v75, 0xD000000000000051, 0x800000026F7810D0, 67);

        sub_26F74F35C(v62, v63);
        return v5;
      }

      v49 = v73;
      v50 = v73 >> 32;
    }

    if (v49 != v50)
    {
      goto LABEL_25;
    }

LABEL_21:

    v51 = v70;
    v16(v70, v5 + v27, v6);
    v52 = sub_26F7793C8();
    v68 = 0x800000026F781150;
    v37 = 0xD000000000000015;
    sub_26F756E10(v52, 0xD000000000000015, 0x800000026F781150, 0xD000000000000051, 0x800000026F7810D0, 51);
    v53 = v7[1];
    v69 = (v7 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72 = v53;
    v53(v51, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
    inited = swift_initStackObject();
    v47 = inited;
    *(inited + 16) = xmmword_26F77A180;
    v48 = 0x800000026F781170;
    *(inited + 32) = 0xD000000000000011;
    v40 = inited + 32;
    goto LABEL_22;
  }

  v34 = v70;
  v16(v70, v5 + v27, v6);
  v35 = sub_26F7793C8();
  v36 = 0x800000026F7810A0;
  v37 = 0xD000000000000029;
  sub_26F756E10(v35, 0xD000000000000029, 0x800000026F7810A0, 0xD000000000000051, 0x800000026F7810D0, 27);
  v38 = v7[1];
  v69 = (v7 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72 = v38;
  v38(v34, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_26F77A180;
  *(v39 + 32) = 0x626967696C656E69;
  v40 = v39 + 32;
  *(v39 + 40) = 0xEA0000000000656CLL;
  sub_26F766F04();
  *(v39 + 48) = sub_26F779408();
  v41 = v27;
  v42 = sub_26F7693B4(v39);
LABEL_23:
  swift_setDeallocating();
  sub_26F774158(v40);
  v54 = v5[7];
  v74 = v37;
  v75 = v36;
  v76 = 0;

  sub_26F74B1B0(0, v42, &v74);

  sub_26F75E47C(v74, v75, v76);
  sub_26F74AEE0();
  swift_allocError();
  *v55 = v37;
  *(v55 + 8) = v36;
  *(v55 + 16) = 0;
  swift_willThrow();
  sub_26F74F35C(v73, v79);
  v56 = v5[6];

  v57 = v5[7];

  (v72)(v5 + v41, v6);
  v58 = *(*v5 + 48);
  v59 = *(*v5 + 52);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t TKRecord.recordID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TKRecord.recordHash.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_26F7546E4(v1, *(v0 + 40));
  return v1;
}

char *TKRecord.deinit()
{
  v1 = *(v0 + 3);

  sub_26F74F35C(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 6);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC8TrustKit8TKRecord_logger;
  v5 = sub_26F779188();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t TKRecord.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  sub_26F74F35C(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 6);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC8TrustKit8TKRecord_logger;
  v5 = sub_26F779188();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F774158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7F0, &qword_26F77C2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TKRecord()
{
  result = qword_2806EFC58;
  if (!qword_2806EFC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F774214()
{
  result = sub_26F779188();
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

uint64_t sub_26F774328()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F7743E0()
{
  *v0;
  *v0;
  *v0;
  sub_26F779298();
}

uint64_t sub_26F774484()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F774538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F774748();
  *a2 = result;
  return result;
}

void sub_26F774568(unint64_t *a1@<X8>)
{
  v2 = "it.inference.signature_analysis";
  v3 = 0xD000000000000028;
  if (*v1 != 2)
  {
    v3 = 0xD00000000000001CLL;
    v2 = "it.inference.logic_graph";
  }

  v4 = 0xD00000000000002FLL;
  if (*v1)
  {
    v5 = "it.inference.sender_look_up";
  }

  else
  {
    v4 = 0xD00000000000002BLL;
    v5 = "Read_Check_Enabled";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_26F7745E0()
{
  v1 = OBJC_IVAR____TtC8TrustKit22DaemonAnalyticsManager_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8TrustKit22DaemonAnalyticsManager_eligibilityManager);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAnalyticsManager()
{
  result = qword_2806EFC78;
  if (!qword_2806EFC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26F7746F4()
{
  result = qword_2806EFC88;
  if (!qword_2806EFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFC88);
  }

  return result;
}

uint64_t sub_26F774748()
{
  v0 = sub_26F779618();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F774794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26F75E360(a3, v24 - v10);
  v12 = sub_26F779338();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F763768(v11, &qword_2806EF6F0, &qword_26F77C0D8);
  }

  else
  {
    sub_26F779328();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26F7792E8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26F779288() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26F763768(a3, &qword_2806EF6F0, &qword_26F77C0D8);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F763768(a3, &qword_2806EF6F0, &qword_26F77C0D8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26F774A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_26F779338();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8TrustKit13ReportManager_uafAssetManager;
  v7 = *(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_uafAssetManager);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;

  sub_26F774794(0, 0, v4, &unk_26F77E0B8, v8);

  sub_26F763768(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_reportingAsset, &qword_2806EFCE8, &unk_26F77E0C0);
  v9 = *(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_eligibilityManager);

  v10 = *(v0 + v6);

  v11 = *(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_attestationManager);

  v12 = *(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_networkManager);

  v13 = *(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_analyticsManager);

  v14 = *(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager____lazy_storage___angelServerClient);

  v15 = OBJC_IVAR____TtC8TrustKit13ReportManager_logger;
  v16 = sub_26F779188();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t sub_26F774C08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F748118;

  return sub_26F777ED0();
}

uint64_t sub_26F774C98()
{
  sub_26F774A30();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportManager()
{
  result = qword_2806EFCD0;
  if (!qword_2806EFCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F774D44()
{
  sub_26F774E30();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_26F779188();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F774E30()
{
  if (!qword_2806EFCE0)
  {
    type metadata accessor for ReportingAsset();
    v0 = sub_26F779428();
    if (!v1)
    {
      atomic_store(v0, &qword_2806EFCE0);
    }
  }
}

uint64_t sub_26F774E88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26F748118;

  return sub_26F774C08();
}

uint64_t sub_26F774F3C()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC8TrustKit33AdHocSignaturesBackgroundActivity_logger;
  v4 = sub_26F779188();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdHocSignaturesBackgroundActivity()
{
  result = qword_2806EFCF8;
  if (!qword_2806EFCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F77503C()
{
  result = sub_26F779188();
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

uint64_t withTimeout<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EFD08, &qword_26F77E178);
  inited = swift_initStackObject();
  v10[8] = inited;
  *(inited + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2806EFD10, &qword_26F77E180);
  v13 = swift_initStackObject();
  v10[9] = v13;
  *(v13 + 16) = 0;
  type metadata accessor for Executor();
  v14 = swift_allocObject();
  v10[10] = v14;
  swift_defaultActor_initialize();
  *(v14 + 112) = 0;
  v15 = swift_task_alloc();
  v10[11] = v15;
  v15[2] = a6;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = inited;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = v13;
  v16 = swift_task_alloc();
  v10[12] = v16;
  *(v16 + 16) = inited;
  *(v16 + 24) = v13;
  v17 = *(MEMORY[0x277D85A18] + 4);
  v18 = swift_task_alloc();
  v10[13] = v18;
  *v18 = v10;
  v18[1] = sub_26F7752B0;

  return MEMORY[0x282200838](a1, &unk_26F77E190, v15, sub_26F776A3C, v16, a6);
}

uint64_t sub_26F7752B0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v11 = *v0;

  swift_setDeallocating();
  v7 = *(v5 + 16);

  swift_setDeallocating();
  v8 = *(v6 + 16);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_26F775474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_26F7754AC, 0, 0);
}

uint64_t sub_26F7754AC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v11 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v11;
  *(v3 + 72) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_26F7755CC;
  v8 = *(v0 + 80);
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000011, 0x800000026F7813D0, sub_26F776BE0, v3, v8);
}

uint64_t sub_26F7755CC()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F775708, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26F775708()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_26F77576C(uint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26F748118;

  return sub_26F775474(a1, v4, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_26F775858(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a2;
  v46 = a5;
  v47 = a6;
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v48 = a9;
  v12 = sub_26F779318();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v35 - v19;
  sub_26F779358();
  v40 = sub_26F779338();
  v21 = *(v40 - 8);
  v39 = *(v21 + 56);
  v41 = v21 + 56;
  v39(v20, 1, 1, v40);
  v22 = a4;
  v37 = *(v13 + 16);
  v38 = v13 + 16;
  v36 = a1;
  v37(v16, a1, v12);
  v42 = a7;
  v23 = *(v13 + 80);
  v24 = v12;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v26 = v44;
  v27 = v45;
  v25[4] = v48;
  v25[5] = v26;
  v25[6] = v27;
  v25[7] = v22;
  v44 = *(v13 + 32);
  v44(v25 + ((v23 + 64) & ~v23), v16, v12);

  v28 = sub_26F7761A0(0, 0, v20, &unk_26F77E218, v25);
  v29 = *(v46 + 16);
  *(v46 + 16) = v28;

  v39(v20, 1, 1, v40);
  v37(v16, v36, v24);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v31 = v47;
  v30[4] = v48;
  v30[5] = v31;
  v30[6] = v42;
  v30[7] = v28;
  v30[8] = v22;
  v44(v30 + ((v23 + 72) & ~v23), v16, v24);

  v32 = sub_26F774794(0, 0, v20, &unk_26F77E228, v30);
  v33 = *(v43 + 16);
  *(v43 + 16) = v32;
}

uint64_t sub_26F775BD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v10 = *(a8 - 8);
  v8[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v8[6] = v12;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_26F775D28;

  return v16(v12);
}

uint64_t sub_26F775D28()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_26F775F3C;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = sub_26F775E44;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_26F775E44()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_26F776040(v0[3], v0[6], v0[4]) & 1;
  }

  return MEMORY[0x2822009F8](sub_26F775EC4, 0, 0);
}

uint64_t sub_26F775EC4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[6];

  v2 = v0[1];

  return v2();
}

uint64_t sub_26F775F58()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    v2 = v0[4];
    *(v1 + 112) = sub_26F77612C(v0[3], v0[8]) & 1;
  }

  return MEMORY[0x2822009F8](sub_26F775FD8, 0, 0);
}

uint64_t sub_26F775FD8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F776040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779318();
  sub_26F779308();
  return 1;
}

uint64_t sub_26F77612C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x274395DF0](a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779318();
  sub_26F7792F8();
  return 1;
}

uint64_t sub_26F7761A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26F75E360(a3, v27 - v11);
  v13 = sub_26F779338();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26F75E244(v12);
  }

  else
  {
    sub_26F779328();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26F7792E8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26F779288() + 32;
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

      sub_26F75E244(a3);

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

  sub_26F75E244(a3);
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

uint64_t sub_26F776460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_26F7795B8();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F776530, 0, 0);
}

uint64_t sub_26F776530()
{
  v1 = v0[10];
  sub_26F7797C8();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_26F7765F0;
  v3 = v0[10];
  v5 = v0[2];
  v4 = v0[3];

  return sub_26F777094(v5, v4, 0, 0, 1);
}

uint64_t sub_26F7765F0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_26F776864;
  }

  else
  {
    v6 = sub_26F776760;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F776760()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_26F779348();

  return MEMORY[0x2822009F8](sub_26F7767E4, v2, 0);
}

uint64_t sub_26F7767E4()
{
  v1 = v0[5];
  if ((*(v1 + 112) & 1) == 0)
  {
    v2 = v0[6];
    v3 = v0[7];
    *(v1 + 112) = sub_26F7768C8() & 1;
  }

  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26F776864()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_26F7768C8()
{
  sub_26F747008();
  swift_allocError();
  *v0 = 0xD000000000000014;
  *(v0 + 8) = 0x800000026F7813F0;
  *(v0 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779318();
  sub_26F7792F8();
  return 1;
}

uint64_t sub_26F77697C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = *(result + 16);

    sub_26F779348();
  }

  if (*(a2 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779348();
  }

  return result;
}

uint64_t sub_26F776A44(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_26F779428();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26F776AD8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_26F779428();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F776BB0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26F776C14(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v6 = *(sub_26F779318() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26F748118;

  return sub_26F775BD0(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t sub_26F776D58(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v5 = *(sub_26F779318() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26F7486D8;

  return sub_26F776460(a1, v7, v8, v9, v10, v11, v12, v1 + v6);
}

uint64_t sub_26F776EA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F776F9C;

  return v7(a1);
}

uint64_t sub_26F776F9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26F777094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26F7795A8();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26F777194, 0, 0);
}

uint64_t sub_26F777194()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_26F7795B8();
  v7 = sub_26F77754C(&qword_28141B148, MEMORY[0x277D85928]);
  sub_26F7797A8();
  sub_26F77754C(&qword_2806EFD98, MEMORY[0x277D858F8]);
  sub_26F7795C8();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26F777324;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_26F777324()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F7774E0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_26F7774E0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_26F77754C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F777594(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F7486D8;

  return sub_26F776EA4(a1, v5);
}

unint64_t sub_26F777660()
{
  result = qword_2806EFDA0;
  if (!qword_2806EFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFDA0);
  }

  return result;
}

uint64_t sub_26F7776B4()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC8TrustKit28SignaturesBackgroundActivity_logger;
  v4 = sub_26F779188();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesBackgroundActivity()
{
  result = qword_2806EFDB0;
  if (!qword_2806EFDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F7777B4()
{
  result = sub_26F779188();
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

uint64_t sub_26F7779BC()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC8TrustKit15JavaScriptAsset_logger;
  v3 = sub_26F779188();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JavaScriptAsset()
{
  result = qword_2806EFDC8;
  if (!qword_2806EFDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F777AB4()
{
  result = sub_26F779188();
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

uint64_t sub_26F777B50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 userInfo];
  v9 = sub_26F7791F8();

  if (!*(v9 + 16) || (v10 = sub_26F768DE0(0x736544726F727265, 0xE900000000000063), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_26F74B0EC(*(v9 + 56) + 32 * v10, &v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = 2;
  }

  if ([a1 code] && objc_msgSend(a1, sel_code) != 14)
  {
    if ([a1 code] == 1)
    {
      v17 = a2;
      v18 = a3;

      MEMORY[0x274395240](2128672, 0xE300000000000000);
      MEMORY[0x274395240]();

      result = MEMORY[0x274395240](32032, 0xE200000000000000);
      v14 = v18;
      *a4 = v17;
      *(a4 + 8) = v14;
      v15 = 1;
    }

    else
    {
      v17 = a2;
      v18 = a3;

      MEMORY[0x274395240](2128672, 0xE300000000000000);
      MEMORY[0x274395240]();

      result = MEMORY[0x274395240](32032, 0xE200000000000000);
      v16 = v18;
      *a4 = v17;
      *(a4 + 8) = v16;
      v15 = 2;
    }

    *(a4 + 16) = v15;
  }

  else
  {
    v17 = a2;
    v18 = a3;

    MEMORY[0x274395240](2128672, 0xE300000000000000);
    MEMORY[0x274395240]();

    result = MEMORY[0x274395240](32032, 0xE200000000000000);
    v13 = v18;
    *a4 = v17;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t TKError.errorDescription.getter()
{
  v1 = *v0;
  sub_26F75E4D8(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_26F777DE8()
{
  v1 = *v0;
  sub_26F75E4D8(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_26F777E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F777E7C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26F777EF0()
{
  v1 = v0[26];
  v2 = [objc_opt_self() sharedManager];
  v0[27] = v2;
  v0[28] = v1[6];
  v0[29] = v1[7];
  v3 = sub_26F779238();
  v0[30] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF678, &qword_26F77B988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26F77A180;
  v5 = v1[8];
  v0[31] = v5;
  v6 = v1[9];
  v0[32] = v6;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;

  v7 = sub_26F7792C8();
  v0[33] = v7;

  v0[2] = v0;
  v0[3] = sub_26F7780C4;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF640, &qword_26F77E660);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F7526A8;
  v0[13] = &block_descriptor_2;
  v0[14] = v8;
  [v2 unsubscribe:v3 subscriptionNames:v7 queue:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F7780C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_26F7783E8;
  }

  else
  {
    v3 = sub_26F7781D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F7781D4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);

  v12 = sub_26F7793D8();
  sub_26F7794F8();
  MEMORY[0x274395240](0xD000000000000038, 0x800000026F781580);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](v8, v9);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v6, v5);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v4, v2);
  MEMORY[0x274395240](0, 0xE000000000000000);

  MEMORY[0x274395240](2099281184, 0xE400000000000000);
  sub_26F756E10(v12, 0, 0xE000000000000000, 0xD000000000000054, 0x800000026F781520, 76);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26F7783E8()
{
  v1 = v0[33];
  v2 = v0[32];
  v21 = v0[31];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  v22 = v0[34];
  swift_willThrow();

  v23 = sub_26F7793C8();
  sub_26F7794F8();
  MEMORY[0x274395240](0xD00000000000002CLL, 0x800000026F7814D0);
  swift_getErrorValue();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[20];
  v11 = sub_26F7797F8();
  MEMORY[0x274395240](v11);

  MEMORY[0x274395240](0xD000000000000017, 0x800000026F781500);
  v12 = *(v7 + 16);
  v13 = *(v7 + 24);
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](v12, v13);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v6, v4);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v21, v2);
  MEMORY[0x274395240](0, 0xE000000000000000);

  MEMORY[0x274395240](2099281184, 0xE400000000000000);
  sub_26F756E10(v23, 0, 0xE000000000000000, 0xD000000000000054, 0x800000026F781520, 78);

  sub_26F7794F8();
  MEMORY[0x274395240](0xD00000000000002CLL, 0x800000026F7814D0);
  swift_getErrorValue();
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[23];
  v17 = sub_26F7797F8();
  MEMORY[0x274395240](v17);

  MEMORY[0x274395240](0xD000000000000017, 0x800000026F781500);
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](v12, v13);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v6, v4);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v21, v2);
  MEMORY[0x274395240](0, 0xE000000000000000);

  MEMORY[0x274395240](2099281184, 0xE400000000000000);
  sub_26F747008();
  swift_allocError();
  *v18 = 0;
  *(v18 + 8) = 0xE000000000000000;
  *(v18 + 16) = 7;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_26F778808()
{
  v1 = v0;
  sub_26F7794F8();

  MEMORY[0x274395240](*v1, v1[1]);
  MEMORY[0x274395240](0x447465737361202CLL, 0xEF3D4C5255617461);
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v3 = v0 + *(v2 + 20);
  v4 = sub_26F778FE8();
  MEMORY[0x274395240](v4);

  MEMORY[0x274395240](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  MEMORY[0x274395240](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  MEMORY[0x274395240](32032, 0xE200000000000000);
  return 0x3D656D616E207BLL;
}

uint64_t sub_26F778918()
{
  v1 = v0;
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](*v1, v1[1]);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v1[4], v1[5]);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v1[6], v1[7]);
  return 0;
}

uint64_t sub_26F7789F8()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  v3 = *(v0 + 7);
  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtC8TrustKit15UAFAssetManager_logger;
  v6 = sub_26F779188();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F778AF0()
{
  result = sub_26F779188();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F778BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26F778BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F778C90()
{
  result = sub_26F779008();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F778D24()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC8TrustKit14DebugUIManager_logger;
  v3 = sub_26F779188();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugUIManager()
{
  result = qword_2806EFE08;
  if (!qword_2806EFE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F778E1C()
{
  result = sub_26F779188();
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