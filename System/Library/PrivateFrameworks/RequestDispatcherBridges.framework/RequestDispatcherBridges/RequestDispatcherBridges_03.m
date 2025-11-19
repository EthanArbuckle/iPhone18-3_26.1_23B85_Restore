uint64_t sub_22366C1BC()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v9 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    sub_223626478((v2 + 13), &qword_27D08ED00, &qword_22372E408);
    v4 = sub_22366C860;
  }

  else
  {
    v6 = v2[28];
    v5 = v2[29];
    v7 = v2[27];
    sub_223626478((v2 + 13), &qword_27D08ED00, &qword_22372E408);
    (*(v6 + 8))(v5, v7);
    v4 = sub_22366C328;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22366C328()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 592);
  v4 = *(v0 + 568);
  v5 = *(v0 + 496);
  v38 = *(v0 + 488);
  v40 = *(v0 + 504);
  v6 = *(v0 + 464);
  v34 = *(v0 + 456);
  v36 = *(v0 + 480);
  v7 = *(v0 + 408);
  v30 = *(v0 + 400);
  v32 = *(v0 + 424);
  v8 = *(v0 + 296);
  v26 = *(v0 + 288);
  v28 = *(v0 + 304);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 248);
  sub_22372AD68();
  swift_unknownObjectRelease();

  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v28, v26);
  (*(v7 + 8))(v32, v30);
  (*(v6 + 8))(v36, v34);
  (*(v5 + 8))(v40, v38);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 520);
  v15 = *(v0 + 504);
  v17 = *(v0 + 472);
  v16 = *(v0 + 480);
  v18 = *(v0 + 448);
  v20 = *(v0 + 416);
  v19 = *(v0 + 424);
  v21 = *(v0 + 392);
  v24 = *(v0 + 384);
  v25 = *(v0 + 376);
  v27 = *(v0 + 352);
  v29 = *(v0 + 328);
  v31 = *(v0 + 304);
  v33 = *(v0 + 280);
  v35 = *(v0 + 272);
  v37 = *(v0 + 264);
  v39 = *(v0 + 240);
  v41 = *(v0 + 232);
  **(v0 + 192) = 1;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22366C558()
{
  v1 = *(v0 + 568);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);
  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v8 = *(v0 + 424);
  v9 = *(v0 + 400);
  v10 = *(v0 + 408);

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v11 = *(v0 + 600);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  __swift_project_value_buffer(v12, qword_28132B668);
  v13 = v11;
  v14 = sub_22372AC88();
  v15 = sub_22372B278();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_223620000, v14, v15, "Error during GenAI prewarming: %@", v16, 0xCu);
    sub_223626478(v17, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v17, -1, -1);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 544);
  v21 = *(v0 + 536);
  v22 = *(v0 + 520);
  v23 = *(v0 + 504);
  v25 = *(v0 + 472);
  v24 = *(v0 + 480);
  v26 = *(v0 + 448);
  v28 = *(v0 + 416);
  v27 = *(v0 + 424);
  v29 = *(v0 + 392);
  v32 = *(v0 + 384);
  v33 = *(v0 + 376);
  v34 = *(v0 + 352);
  v35 = *(v0 + 328);
  v36 = *(v0 + 304);
  v37 = *(v0 + 280);
  v38 = *(v0 + 272);
  v39 = *(v0 + 264);
  v40 = *(v0 + 240);
  v41 = *(v0 + 232);
  **(v0 + 192) = 0;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_22366C860()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 592);
  v4 = *(v0 + 568);
  v5 = *(v0 + 496);
  v47 = *(v0 + 488);
  v49 = *(v0 + 504);
  v6 = *(v0 + 464);
  v43 = *(v0 + 456);
  v45 = *(v0 + 480);
  v7 = *(v0 + 408);
  v39 = *(v0 + 400);
  v41 = *(v0 + 424);
  v8 = *(v0 + 296);
  v35 = *(v0 + 288);
  v37 = *(v0 + 304);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 248);
  sub_22372AD68();
  swift_unknownObjectRelease();

  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v37, v35);
  (*(v7 + 8))(v41, v39);
  (*(v6 + 8))(v45, v43);
  (*(v5 + 8))(v49, v47);
  v12 = *(v0 + 632);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v13 = sub_22372AC98();
  __swift_project_value_buffer(v13, qword_28132B668);
  v14 = v12;
  v15 = sub_22372AC88();
  v16 = sub_22372B278();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_223620000, v15, v16, "Error during GenAI prewarming: %@", v17, 0xCu);
    sub_223626478(v18, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v18, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 520);
  v24 = *(v0 + 504);
  v26 = *(v0 + 472);
  v25 = *(v0 + 480);
  v27 = *(v0 + 448);
  v29 = *(v0 + 416);
  v28 = *(v0 + 424);
  v30 = *(v0 + 392);
  v33 = *(v0 + 384);
  v34 = *(v0 + 376);
  v36 = *(v0 + 352);
  v38 = *(v0 + 328);
  v40 = *(v0 + 304);
  v42 = *(v0 + 280);
  v44 = *(v0 + 272);
  v46 = *(v0 + 264);
  v48 = *(v0 + 240);
  v50 = *(v0 + 232);
  **(v0 + 192) = 0;

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22366CBC4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED08, &qword_22372E410);
  if (swift_dynamicCast())
  {
    sub_2236241E8(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_2237272A8();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_223626478(__src, &qword_27D08ED10, &qword_22372E418);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22372B4C8();
  }

  sub_22366D8D4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22366F9AC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v10 = sub_22366D99C(sub_22366FA4C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_223727328();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22366DEF4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22372B098();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22372B0C8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22372B4C8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22366DEF4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22372B0A8();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_223727338();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_223727338();
    sub_22366FAB4(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_22366FAB4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2236612D0(*&__src[0], *(&__src[0] + 1));

  sub_223661270(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_22366D0E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECB0, &qword_22372E398);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  (*(v6 + 16))(&v8 - v5, a1);
  return sub_22372AD38();
}

void sub_22366D1E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22362457C(a1, v9);
  if (v2)
  {
    sub_22366E5FC(v9, a2);
  }
}

uint64_t sub_22366D280()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223624EA4;

  return sub_22362BF58();
}

uint64_t sub_22366D30C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for IntelligenceFlowSessionBridge.Error(0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[3] = v5;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_22366D3E0;

  return sub_223669C88(a1, v5);
}

uint64_t sub_22366D3E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    sub_22366E5FC(*(v4 + 24), *(v4 + 16));

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_22366D544(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22366D5E8;

  return sub_22366A464(a1, a2);
}

uint64_t sub_22366D5E8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22366D6E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22366D7DC;

  return v7(a1);
}

uint64_t sub_22366D7DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22366D8D4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22366F8F4(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_223727208();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_2237271B8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_223727318();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_22366D99C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_223661270(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_223661270(v6, v5);
    *v3 = xmmword_22372E0A0;
    sub_223661270(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2237271C8() && __OFSUB__(v6, sub_2237271F8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_223727208();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_2237271A8();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_22366DE40(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_223661270(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22372E0A0;
    sub_223661270(0, 0xC000000000000000);
    sub_223727308();
    result = sub_22366DE40(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22366DD40@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22366F8F4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22366FAC8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22366FB44(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22366DDD4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22366DE40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2237271C8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2237271F8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2237271E8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22366DEF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22372B0D8();
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
    v5 = MEMORY[0x223DE7B00](15, a1 >> 16);
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

uint64_t sub_22366DF70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22366E064;

  return v6(v2 + 32);
}

uint64_t sub_22366E064()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22366E178(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22372AF38();
      sub_22366FDD0(&qword_27D08ECC0, MEMORY[0x277CC5540]);
      result = sub_22372AEF8();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22366E358(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22366E358(uint64_t a1, uint64_t a2)
{
  result = sub_2237271C8();
  if (!result || (result = sub_2237271F8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2237271E8();
      sub_22372AF38();
      sub_22366FDD0(&qword_27D08ECC0, MEMORY[0x277CC5540]);
      return sub_22372AEF8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22366E438@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_22372B468();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22366E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_defaultActor_initialize();
  *(v7 + 208) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  swift_unknownObjectWeakInit();
  *(v7 + 184) = a4;
  *(v7 + 192) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 160));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(v7 + 208) = a7;
  swift_unknownObjectWeakAssign();
  v14 = OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
  v15 = sub_22372AC98();
  (*(*(v15 - 8) + 32))(v7 + v14, a3, v15);
  return v7;
}

uint64_t sub_22366E58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC00, &unk_22372E0B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22366E5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22366E660(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2236242EC;

  return sub_22366A700(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22366E770(uint64_t a1)
{
  result = sub_22366FDD0(&qword_2813291F0, type metadata accessor for IntelligenceFlowSessionController);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for IntelligenceFlowSessionController()
{
  result = qword_2813291D8;
  if (!qword_2813291D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of IntelligenceFlowSessionControllerProtocol.endIntelligenceFlowSessionIfNeeded()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2236242EC;

  return v9(a1, a2);
}

uint64_t _s24RequestDispatcherBridges41IntelligenceFlowSessionControllerProtocolP16sessionClientBox3forAA0fjK0C16SiriMessageTypes6UserIDV_tYa5ErrorQzYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22366FE48;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IntelligenceFlowSessionControllerProtocol.cancelFutureIfExists()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of IntelligenceFlowSessionControllerProtocol.prewarmIntent(withIntentId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22366FE4C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22366ED4C()
{
  result = sub_22372AC98();
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

uint64_t dispatch thunk of IntelligenceFlowSessionController.cancelFutureIfExists()(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return v8(a1);
}

uint64_t dispatch thunk of IntelligenceFlowSessionController.endIntelligenceFlowSessionIfNeeded()()
{
  v2 = *(*v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_223624EA4;

  return v6();
}

uint64_t _s24RequestDispatcherBridges33IntelligenceFlowSessionControllerC16sessionClientBox3forAA0fiJ0C16SiriMessageTypes6UserIDV_tYaAA0deF6BridgeC5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 256);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22366F28C;

  return v10(a1, a2);
}

uint64_t sub_22366F28C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of IntelligenceFlowSessionController.prewarmIntent(withIntentId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22366D5E8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of IntelligenceFlowSessionController.Delegate.sessionController(_:didEstablishSessionWithClientBox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2236242EC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_22366F5F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for LocalIFSessionClient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for LocalIFSessionClient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22366F784(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_22366D6E4(a1, v5);
}

uint64_t sub_22366F83C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_22366DF70(a1, v5);
}

uint64_t sub_22366F8F4(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22366F9AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_223727208();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2237271D8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_223727318();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_22366FA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22366DDD4(sub_22366FBC8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_22366FAB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_223661270(a1, a2);
  }

  return a1;
}

uint64_t sub_22366FAC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_223727208();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2237271B8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_223727318();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22366FB44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_223727208();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2237271B8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22366FBE8()
{
  v1 = v0[3];
  sub_22366E5FC(v0[5], v0[4]);
  sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  v2 = sub_22372B6C8();
  v3 = v0[4];
  if (v2)
  {
    sub_223640240(v0[4], type metadata accessor for IntelligenceFlowSessionBridge.Error);
  }

  else
  {
    v4 = v0[3];
    swift_allocError();
    sub_22366E5FC(v3, v5);
  }

  v7 = v0[4];
  v6 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22366FCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22366FD64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
  }

  return result;
}

unint64_t sub_22366FD7C()
{
  result = qword_27D08ED18;
  if (!qword_27D08ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08ED18);
  }

  return result;
}

uint64_t sub_22366FDD0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 IFSessionMetadata.init(conversationSessionID:languageCode:userID:clientAuditToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for IFSessionMetadata();
  v13 = a6 + v12[7];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  v14 = sub_223727408();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = (a6 + v12[5]);
  *v15 = a2;
  v15[1] = a3;
  v16 = v12[6];
  v17 = sub_22372A548();
  (*(*(v17 - 8) + 32))(a6 + v16, a4, v17);
  result = *a5;
  v19 = *(a5 + 16);
  *v13 = *a5;
  *(v13 + 16) = v19;
  *(v13 + 32) = *(a5 + 32);
  return result;
}

uint64_t SessionCreationSemantics.hashValue.getter()
{
  v1 = *v0;
  sub_22372B7A8();
  MEMORY[0x223DE8200](v1);
  return sub_22372B7C8();
}

unint64_t sub_22366FFE8()
{
  result = qword_27D08ED20;
  if (!qword_27D08ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08ED20);
  }

  return result;
}

void sub_223670064()
{
  sub_223727408();
  if (v0 <= 0x3F)
  {
    sub_22372A548();
    if (v1 <= 0x3F)
    {
      sub_223670108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_223670108()
{
  if (!qword_281328D78)
  {
    type metadata accessor for audit_token_t(255);
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_281328D78);
    }
  }
}

uint64_t dispatch thunk of IntelligenceFlowClientProvider.openSession(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22366F28C;

  return v11(a1, a2, a3);
}

unint64_t sub_2236702C0()
{
  if (*v0)
  {
    result = 1682532722;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_2236702F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000223734E10 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1682532722 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22372B6E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2236703E0(uint64_t a1)
{
  v2 = sub_223671834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22367041C(uint64_t a1)
{
  v2 = sub_223671834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceSessionClientMessage.sessionClientMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28132B710;
  v4 = sub_223727D38();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteIntelligenceSessionClientMessage.__allocating_init(build:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return RemoteIntelligenceSessionClientMessage.init(build:)(a1, a2);
}

uint64_t RemoteIntelligenceSessionClientMessage.init(build:)(void (*a1)(char *), uint64_t a2)
{
  v43 = a2;
  v44 = a1;
  v41 = *v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED38, &qword_22372E568);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v40 - v6;
  v8 = sub_223727D38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_223727408();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v20(&v18[v14[7]], 1, 1, v19);
  v21 = v14[8];
  (*(v9 + 56))(&v18[v21], 1, 1, v8);
  v22 = v14[9];
  sub_2237273F8();
  v20(&v18[v22], 0, 1, v19);
  v18[v14[10]] = 2;
  v44(v18);
  sub_223634890(&v18[v21], v7, &qword_27D08ED38, &qword_22372E568);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v23 = v45;
    sub_223626478(v7, &qword_27D08ED38, &qword_22372E568);
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_27D097088);
    v25 = sub_22372AC88();
    v26 = sub_22372B278();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46[0] = v28;
      *v27 = 136446210;
      v46[1] = v41;
      swift_getMetatypeMetadata();
      v29 = sub_22372B038();
      v31 = sub_223623274(v29, v30, v46);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_223620000, v25, v26, "Could not build %{public}s: Builder has missing required fields", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x223DE8A80](v28, -1, -1);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    sub_223670A74(v18);
    type metadata accessor for RemoteIntelligenceSessionClientMessage(0);
    v32 = *(*v23 + 48);
    v33 = *(*v23 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v35 = v42;
    (*(v9 + 32))(v42, v7, v8);
    v36 = v45;
    (*(v9 + 16))(v45 + qword_28132B710, v35, v8);
    v37 = sub_223634890(&v18[v22], v36 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);
    MEMORY[0x28223BE20](v37, v38);
    *(&v40 - 2) = v18;
    v39 = RemoteIntelligenceSessionMessage.init(build:)(sub_22367182C);
    (*(v9 + 8))(v35, v8);
    sub_223670A74(v18);
    return v39;
  }
}

uint64_t sub_223670A74(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223670AF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_223651744(a2, a1);
  LOBYTE(v2) = *(v2 + *(type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0) + 32));
  result = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  *(a1 + *(result + 20)) = v2;
  return result;
}

uint64_t RemoteIntelligenceSessionClientMessage.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RemoteIntelligenceSessionClientMessage.init(from:)(a1);
}

uint64_t RemoteIntelligenceSessionClientMessage.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v29 - v6;
  v8 = sub_223727D38();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED40, &qword_22372E570);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v29 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_223671834();
  sub_22372B7D8();
  if (v1)
  {
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    type metadata accessor for RemoteIntelligenceSessionClientMessage(0);
    v23 = *(*v28 + 48);
    v24 = *(*v28 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v29;
    v21 = v13;
    LOBYTE(v32[0]) = 0;
    sub_2236719AC(&qword_27D08EAE8, MEMORY[0x277D1CE68]);
    v22 = v30;
    sub_22372B648();
    (*(v20 + 32))(v33 + qword_28132B710, v22, v8);
    v26 = sub_223727408();
    LOBYTE(v32[0]) = 1;
    sub_2236719AC(&qword_27D08ED50, MEMORY[0x277CC95F0]);
    sub_22372B648();
    (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
    sub_223671888(v7, v33 + qword_28132B708);
    v27 = v31;
    sub_223623934(v31, v32);
    v28 = RemoteIntelligenceSessionMessage.init(from:)(v32);
    (*(v21 + 8))(v17, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return v28;
}

uint64_t sub_223670F94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED58, &qword_22372E578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223671834();
  sub_22372B7E8();
  v13 = 0;
  sub_223727D38();
  sub_2236719AC(&qword_27D08ED60, MEMORY[0x277D1CE68]);
  sub_22372B6A8();
  if (!v1)
  {
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
    sub_2236718F8();
    sub_22372B6A8();
    sub_22370D2DC(a1);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t RemoteIntelligenceSessionClientMessage.Builder.optedInToDataSharing.setter(char a1)
{
  result = type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_223671560()
{
  v1 = qword_28132B710;
  v2 = sub_223727D38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_223626478(v0 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);
}

uint64_t RemoteIntelligenceSessionClientMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = qword_28132B710;
  v5 = sub_223727D38();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_223626478(v0 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);
  return v0;
}

uint64_t RemoteIntelligenceSessionClientMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = qword_28132B710;
  v5 = sub_223727D38();
  v6 = *(*(v5 - 8) + 8);

  v6(v0 + v4, v5);
  sub_223626478(v0 + qword_28132B708, &unk_27D08E530, &unk_22372CB10);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_223671834()
{
  result = qword_27D08ED48;
  if (!qword_27D08ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08ED48);
  }

  return result;
}

uint64_t sub_223671888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2236718F8()
{
  result = qword_27D08ED68;
  if (!qword_27D08ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D08E530, &unk_22372CB10);
    sub_2236719AC(&unk_28132B610, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08ED68);
  }

  return result;
}

uint64_t sub_2236719AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2236719F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_223671A5C()
{
  v0 = sub_223727D38();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_223671C88(319, &qword_28132B5F0, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_223671BB0()
{
  sub_223671C88(319, &qword_28132B5F0, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_223671C88(319, &qword_27D08ED80, MEMORY[0x277D1CE68]);
    if (v1 <= 0x3F)
    {
      sub_223671CDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_223671C88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_223671CDC()
{
  if (!qword_281328DB0)
  {
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_281328DB0);
    }
  }
}

unint64_t sub_223671D40()
{
  result = qword_27D08ED88;
  if (!qword_27D08ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08ED88);
  }

  return result;
}

unint64_t sub_223671D98()
{
  result = qword_27D08ED90;
  if (!qword_27D08ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08ED90);
  }

  return result;
}

unint64_t sub_223671DF0()
{
  result = qword_27D08ED98;
  if (!qword_27D08ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08ED98);
  }

  return result;
}

uint64_t IntelligenceFlowSessionControllerDelegateWrapper.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t IntelligenceFlowSessionControllerDelegateWrapper.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_223671E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  return MEMORY[0x2822009F8](sub_223671EA8, 0, 0);
}

uint64_t sub_223671EA8()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = v2;
  swift_unownedRetainStrong();
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_223671F98;
    v4 = v0[5];

    return sub_22363AB04(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_223671F98()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t IntelligenceFlowSessionControllerDelegateWrapper.deinit()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  return v0;
}

uint64_t IntelligenceFlowSessionControllerDelegateWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_223672100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  return MEMORY[0x2822009F8](sub_223672120, 0, 0);
}

uint64_t sub_223672120()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = v2;
  swift_unownedRetainStrong();
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_223675320;
    v4 = v0[5];

    return sub_22363AB04(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22367222C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = *(v14 + 48);
  v23 = *(v14 + 52);
  v24 = swift_allocObject();
  sub_223672304(a1, a2, a3, a4, a5, a6, a7, a8, v26, a10, a11, a12, a13, a14);
  return v24;
}

void *sub_223672304(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v63 = a8;
  v80 = a7;
  v65 = a4;
  v81 = a11;
  v82 = a2;
  v18 = sub_22372A8F8();
  v74 = *(v18 - 8);
  v75 = v18;
  v19 = *(v74 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v73 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v66 = &v62 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v67 = &v62 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v68 = &v62 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v69 = &v62 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v76 = &v62 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v72 = &v62 - v39;
  swift_defaultActor_initialize();
  v40 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
  v41 = sub_22372A3B8();
  (*(*(v41 - 8) + 56))(v14 + v40, 1, 1, v41);
  v42 = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers) = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers) = v42;
  *(v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v83);
  sub_22372A838();
  sub_2236241E8(&v83, v14 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager);
  sub_22372A828();
  v14[14] = a3;
  v14[15] = a12;
  v64 = a12;
  v14[16] = a5;
  v14[17] = a13;
  v43 = type metadata accessor for IntelligenceFlowSessionBridge(0);
  sub_223728478();
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v44 = sub_223674BEC(qword_281329478, type metadata accessor for IntelligenceFlowSessionBridge);
  sub_223674BEC(&unk_28132B598, MEMORY[0x277D5CB48]);
  v45 = sub_223674BEC(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  v78 = a3;
  swift_unknownObjectRetain();
  v46 = a5;
  v47 = v76;
  v79 = v46;
  swift_unknownObjectRetain();
  v70 = v43;
  v48 = v77;
  sub_22372A918();
  v71 = v45;
  if (v48)
  {
    v49 = v47;
    v51 = v74;
    v50 = v75;
    v52 = *(v74 + 32);
    v53 = v72;
    v52(v72, v49, v75);
    v54 = v73;
    v52(v73, v53, v50);
    (*(v51 + 16))(a14, v54, v50);
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v51 + 8))(v54, v50);
    __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  }

  else
  {
    sub_223728038();
    sub_223674BEC(&qword_28132B5B8, MEMORY[0x277D5CB18]);
    sub_22372A918();
    sub_223728068();
    sub_223674BEC(&qword_28132B5B0, MEMORY[0x277D5CB28]);
    v77 = v44;
    sub_22372A918();
    sub_223727E88();
    sub_223674BEC(&unk_28132B5D0, MEMORY[0x277D5CAD0]);
    sub_22372A918();
    sub_223728918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_223674BEC(&qword_28132B578, MEMORY[0x277D5CBE0]);
    sub_22372A918();
    if (v65)
    {
      type metadata accessor for IFSessionService.Context();
      v56 = swift_unknownObjectRetain();
      v57 = sub_223657840(v56, v63, v64);
      swift_beginAccess();
      if (!qword_28132B7D8)
      {
        v86 = v57;
        sub_223675170();
        sub_22372AB78();
      }

      if (qword_281328E50 != -1)
      {
        swift_once();
      }

      v58 = sub_22372AC98();
      __swift_project_value_buffer(v58, qword_28132B668);
      v59 = sub_22372AC88();
      v60 = sub_22372B268();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_223620000, v59, v60, "Not starting Remote gateway", v61, 2u);
        MEMORY[0x223DE8A80](v61, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v83);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v83);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return v15;
}

void *sub_223672C88(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372EA28;
  *(v2 + 24) = a1;

  return &unk_22372EA38;
}

void *sub_223672D00(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372EA08;
  *(v2 + 24) = a1;

  return &unk_22372EA18;
}

void *sub_223672D78(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372E9E8;
  *(v2 + 24) = a1;

  return &unk_22372E9F8;
}

uint64_t sub_223672DF0()
{
  sub_22366E5FC(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

void *sub_223672E60(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372E9C8;
  *(v2 + 24) = a1;

  return &unk_22372E9D8;
}

uint64_t sub_223672ED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223624EA4;

  return sub_223673DC4(a1);
}

void *sub_223672F70(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_22372E9A8;
  *(v2 + 24) = a1;

  return &unk_22372E9B8;
}

uint64_t sub_223672FE8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *a1;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_2236730E0;

  return v9(v5);
}

uint64_t sub_2236730E0()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t _s24RequestDispatcherBridges29IntelligenceFlowSessionBridgeC12setupContext21subscriptionRegistrarACxh_q_htAC5ErrorOYKc04SiriaB00g5SetupI0RzAH0g12SubscriptionK0R_r0_lufC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v56 = a6;
  v57 = a5;
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v55 = a1;
  v7 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v61 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22372AC98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v54 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA0, &qword_22372E730);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v53 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v49 - v22;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v24 = v11;
  v25 = __swift_project_value_buffer(v11, qword_28132B668);
  v26 = sub_22372AC88();
  v27 = sub_22372B268();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v62[0] = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_223623274(0xD000000000000029, 0x8000000223734E50, v62);
    _os_log_impl(&dword_223620000, v26, v27, "%{public}s Using LocalIntelligenceFlowClientProvider", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x223DE8A80](v29, -1, -1);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }

  v30 = *(v16 + 36);
  v51 = v16;
  v31 = v12;
  v32 = *(v12 + 16);
  v33 = v23;
  v32(&v23[v30], v25, v24);
  *v23 = 0;
  v52 = type metadata accessor for IntelligenceFlowSessionControllerDelegateWrapper();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v49[1] = v34 + 16;
  v35 = v53;
  sub_223634890(v23, v53, &qword_27D08EDA0, &qword_22372E730);
  v36 = v54;
  v32(v54, v25, v24);
  v37 = type metadata accessor for IntelligenceFlowSessionController();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v40 + 208) = 0;
  *(v40 + 112) = 0u;
  *(v40 + 128) = 0u;
  *(v40 + 144) = 0u;
  swift_unknownObjectWeakInit();
  *(v40 + 184) = v51;
  *(v40 + 192) = &protocol witness table for LocalIntelligenceFlowClientProvider<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 160));
  sub_2236747E4(v35, boxed_opaque_existential_1);
  *(v40 + 208) = &protocol witness table for IntelligenceFlowSessionControllerDelegateWrapper;
  swift_unknownObjectWeakAssign();

  (*(v31 + 32))(v40 + OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger, v36, v24);
  v42 = sub_223674BEC(&qword_2813291E8, type metadata accessor for IntelligenceFlowSessionController);

  v43 = v61;
  v48 = v42;
  v44 = v62[4];
  v45 = sub_22367222C(v55, v58, v40, 1, v34, v59, v60, v37, v52, v57, v56, v48, &protocol witness table for IntelligenceFlowSessionControllerDelegateWrapper, v61);
  sub_223626478(v33, &qword_27D08EDA0, &qword_22372E730);
  if (v44)
  {

    sub_22366E5FC(v43, v50);
  }

  else
  {
    swift_beginAccess();
    v46 = *(v34 + 16);

    swift_unownedRelease();
    *(v34 + 16) = v45;
    swift_endAccess();
    swift_unownedRetain();
  }

  return v45;
}

uint64_t sub_22367371C()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  sub_22366E5FC(v0[18], v0[17]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2236737C4()
{
  v1 = v0[51];
  v2 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_22372A398();
  v3 = swift_task_alloc();
  v0[61] = v3;
  *v3 = v0;
  v3[1] = sub_223673888;
  v4 = v0[60];
  v5 = v0[45];

  return sub_223646C78(v5, v4);
}

uint64_t sub_223673888()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 360);
  v5 = *(*v1 + 352);
  v6 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 496) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 312);
  if (v0)
  {
    v9 = sub_223673B9C;
  }

  else
  {
    v9 = sub_223673AD4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_223673A10()
{
  v1 = v0[48];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[42];
  (*(v0[50] + 8))(v0[51], v0[49]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_223673AD4()
{
  v1 = v0[60];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = v0[51];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[45];
  v9 = v0[42];

  v10 = v0[1];

  return v10();
}

uint64_t sub_223673B9C()
{
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B668);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[50];
  v9 = v0[51];
  v11 = v0[49];
  if (v6)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_223620000, v4, v5, "Publishing external agent outcome failed with error: %@", v12, 0xCu);
    sub_223626478(v13, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  else
  {
    v16 = v0[60];
  }

  (*(v10 + 8))(v9, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v17 = v0[51];
  v18 = v0[47];
  v19 = v0[48];
  v20 = v0[45];
  v21 = v0[42];

  v22 = v0[1];

  return v22();
}

uint64_t sub_223673DC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2237287C8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223673E84, v1, 0);
}

uint64_t sub_223673E84()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_2237287D8();
  LODWORD(v4) = (*(v2 + 88))(v1, v3);
  v5 = *MEMORY[0x277D5CB88];
  (*(v2 + 8))(v1, v3);
  if (v4 == v5 && (v6 = v0[3], v7 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated, v0[7] = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated, (*(v6 + v7) & 1) == 0))
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_28132B668);
    v12 = sub_22372AC88();
    v13 = sub_22372B268();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223620000, v12, v13, "AJAX routing detected - initiating GenAI prewarming", v14, 2u);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }

    v15 = v0[3];

    v17 = *(v15 + 112);
    v16 = *(v15 + 120);
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 96);
    v22 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[8] = v21;
    *v21 = v0;
    v21[1] = sub_223674138;

    return v22(0xD000000000000069, 0x8000000223734FD0, ObjectType, v16);
  }

  else
  {
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_223674138(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_223674250, v3, 0);
}

uint64_t sub_223674250()
{
  *(*(v0 + 24) + *(v0 + 56)) = *(v0 + 72);
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2236742C4()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  v2[18] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
  v5 = v2[11];
  if (v0)
  {
    v6 = sub_223674538;
  }

  else
  {
    v6 = sub_2236743F8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2236743F8()
{
  v1 = v0[16] + 1;
  if (v1 == v0[14])
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[11];

    v5 = *(v4 + v3);
    *(v0[11] + v0[12]) = MEMORY[0x277D84F90];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v0[16] = v1;
    v8 = v0[15];
    v9 = v0[10];
    sub_223623934(v0[13] + 40 * v1 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_2236742C4;
    v11 = v0[10];

    return sub_223646C78(v9 + v8, v11);
  }
}

uint64_t sub_223674538()
{
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B668);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_223620000, v4, v5, "Publishing external agent outcome failed with error: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[16] + 1;
  if (v12 == v0[14])
  {
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];

    v16 = *(v15 + v14);
    *(v0[11] + v0[12]) = MEMORY[0x277D84F90];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[16] = v12;
    v19 = v0[15];
    v20 = v0[10];
    sub_223623934(v0[13] + 40 * v12 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_2236742C4;
    v22 = v0[10];

    return sub_223646C78(v20 + v19, v22);
  }
}

uint64_t sub_2236747E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA0, &qword_22372E730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceFlowSessionBridge.deinit()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);
  swift_unknownObjectRelease();
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo, &qword_27D08EDA8, &qword_22372E738);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager));
  v3 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers);

  v4 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t IntelligenceFlowSessionBridge.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);
  swift_unknownObjectRelease();
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo, &qword_27D08EDA8, &qword_22372E738);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager));
  v3 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers);

  v4 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_223674970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  v14 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s24RequestDispatcherBridges29IntelligenceFlowSessionBridgeC12setupContext21subscriptionRegistrarACxh_q_htAC5ErrorOYKc04SiriaB00g5SetupI0RzAH0g12SubscriptionK0R_r0_lufC(a1, a2, a3, a4, a5, a6, v18);
  if (v7)
  {
    v20 = result;
    sub_22366E5FC(v18, v22);
    return v20;
  }

  return result;
}

double SessionStartedMessage.intelligenceFlowMetadata.getter@<D0>(uint64_t a1@<X8>)
{
  sub_223729D58();
  v2 = sub_223728428();
  v4 = v3;
  v5 = type metadata accessor for IFSessionMetadata();
  v6 = a1 + v5[6];
  sub_22372A528();
  v7 = a1 + v5[7];
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = (a1 + v5[5]);
  *v8 = v2;
  v8[1] = v4;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  sub_223728438();
  result = *&v10;
  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  return result;
}

double sub_223674AF8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_223729D58();
  v4 = sub_223728428();
  v6 = v5;
  v7 = type metadata accessor for IFSessionMetadata();
  v8 = a1 + v7[6];
  sub_22372A528();
  v9 = a1 + v7[7];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = (a1 + v7[5]);
  *v10 = v4;
  v10[1] = v6;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  sub_223728438();
  result = *&v12;
  *v9 = v12;
  *(v9 + 16) = v13;
  *(v9 + 32) = v14;
  return result;
}

uint64_t sub_223674BEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of IntelligenceFlowSessionControllerDelegateWrapper.sessionController(_:didEstablishSessionWithClientBox:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_223624EA4;

  return v12(a1, a2, a3);
}

void sub_223674E08()
{
  sub_223674EEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_223674EEC()
{
  if (!qword_28132B4F0)
  {
    sub_22372A3B8();
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_28132B4F0);
    }
  }
}

unint64_t sub_223674F94()
{
  result = sub_22372A8F8();
  if (v1 <= 0x3F)
  {
    result = sub_22367501C();
    if (v2 <= 0x3F)
    {
      result = sub_223675080();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22367501C()
{
  result = qword_281328CE0;
  if (!qword_281328CE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281328CE0);
  }

  return result;
}

ValueMetadata *sub_223675080()
{
  result = qword_281329550[0];
  if (!qword_281329550[0])
  {
    result = &type metadata for RemoteIntelligenceError;
    atomic_store(&type metadata for RemoteIntelligenceError, qword_281329550);
  }

  return result;
}

uint64_t sub_2236750B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223675114(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223675170()
{
  result = qword_281329C60;
  if (!qword_281329C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281329C60);
  }

  return result;
}

uint64_t sub_2236751C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223672ED8(a1);
}

uint64_t sub_22367525C(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_223672FE8(a1, v7, v6, a2);
}

uint64_t sub_22367532C()
{
  result = sub_22372AC98();
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

uint64_t sub_2236753D8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = *v1;
  v2[11] = *v1;
  v4 = sub_22372A548();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = sub_223727408();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE48, &unk_22372EB30) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE50, &qword_22372EB60) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v13 = sub_223727DD8();
  v2[24] = v13;
  v14 = *(v13 - 8);
  v2[25] = v14;
  v15 = *(v14 + 64) + 15;
  v2[26] = swift_task_alloc();
  v16 = *(v3 + 80);
  v2[27] = v16;
  v17 = *(v16 - 8);
  v2[28] = v17;
  v18 = *(v17 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236756EC, 0, 0);
}

uint64_t sub_2236756EC()
{
  v39 = v0;
  v1 = *(v0 + 216);
  v29 = *(v0 + 240);
  v30 = *(v0 + 208);
  v35 = *(v0 + 200);
  v36 = *(v0 + 192);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);
  v34 = *(v0 + 120);
  v31 = *(v0 + 80);
  v2 = *(v0 + 72);
  v26 = *(v0 + 88);
  v27 = *(v0 + 64);
  v3 = *(v2 + 24);
  v28 = *(v2 + 32);
  v4 = type metadata accessor for IFSessionMetadata();
  *(v0 + 280) = *(v4 + 24);
  swift_unknownObjectRetain();
  v5 = sub_22372A518();
  v7 = v6;
  v8 = *(v2 + qword_27D0970B8);
  v9 = sub_2237275D8();
  v10 = objc_allocWithZone(v9);

  v38[3] = v9;
  v38[4] = &off_2836C4328;
  v38[0] = [v10 init];
  v11 = *(v26 + 88);
  (*(v11 + 16))(v3, v28, v5, v7, v8, v38, v1, v11);
  sub_223727DC8();
  *(v0 + 40) = v2;
  sub_2236291DC(*(v27 + *(v4 + 20)), *(v27 + *(v4 + 20) + 8), v31, &off_2836C5250, v32);
  v12 = sub_223727B98();
  (*(*(v12 - 8) + 56))(v32, 0, 1, v12);
  sub_223727DA8();
  sub_223629A60();
  v13 = sub_223727B68();
  (*(*(v13 - 8) + 56))(v33, 0, 1, v13);
  sub_223727D88();
  v14 = sub_2237273B8();
  v16 = v15;
  *(v0 + 248) = v15;
  (*(v35 + 16))(v34, v30, v36);
  (*(v35 + 56))(v34, 0, 1, v36);
  v17 = *(v11 + 8);
  *(v0 + 256) = v17;
  v18 = *(v17 + 24);
  v37 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_223675A70;
  v21 = *(v0 + 240);
  v22 = *(v0 + 216);
  v23 = *(v0 + 160);
  v24 = *(v0 + 120);

  return v37(v23, v14, v16, v24, v22, v17);
}

uint64_t sub_223675A70()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 248);
  sub_223676344(*(v2 + 120));

  if (v0)
  {
    v6 = sub_223675EC4;
  }

  else
  {
    v6 = sub_223675BC0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_223675BC0()
{
  v37 = *(v0 + 280);
  v39 = *(v0 + 256);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v28 = *(v0 + 240);
  v4 = *(v0 + 168);
  v30 = *(v0 + 152);
  v32 = *(v0 + 144);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v35 = *(v0 + 96);
  v9 = *(v0 + 64);
  (*(v5 + 32))(v4, *(v0 + 160), v6);
  type metadata accessor for SessionClientBox(0);
  (*(v2 + 16))(v1, v28, v3);
  v10 = *(v5 + 16);
  v10(v30, v9, v6);
  v10(v32, v4, v6);
  (*(v7 + 16))(v8, v9 + v37, v35);
  v40 = sub_22362E4DC(v1, v30, v32, v8, v3, v39);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B668);
  v12 = sub_22372AC88();
  v13 = sub_22372B268();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_223620000, v12, v13, "Set up Remote IF Session successfully", v14, 2u);
    MEMORY[0x223DE8A80](v14, -1, -1);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v25 = *(v0 + 216);
  v26 = *(v0 + 232);
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = *(v0 + 168);
  v27 = *(v0 + 184);
  v29 = *(v0 + 176);
  v31 = *(v0 + 160);
  v33 = *(v0 + 152);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v34 = *(v0 + 144);
  v36 = *(v0 + 120);
  v38 = *(v0 + 112);

  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);
  (*(v16 + 8))(v15, v25);

  v23 = *(v0 + 8);

  return v23(v40);
}

uint64_t sub_223675EC4()
{
  v35 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B668);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[34];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_22372B738();
    v14 = sub_223623274(v12, v13, &v34);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_223620000, v4, v5, "Failed to start IF Session: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v15 = v0[34];
  v17 = v0[29];
  v16 = v0[30];
  v19 = v0[27];
  v18 = v0[28];
  v21 = v0[25];
  v20 = v0[26];
  v23 = v0[23];
  v22 = v0[24];
  v27 = v0[22];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[18];
  v32 = v0[15];
  v33 = v0[14];
  swift_willThrow();
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v16, v19);

  v24 = v0[1];
  v25 = v0[34];

  return v24();
}

uint64_t sub_223676138()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = qword_27D0970B0;
  v3 = sub_22372AC98();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_27D0970B8);

  return v0;
}

uint64_t sub_2236761B0()
{
  sub_223676138();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_223676230@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_27D0970B0;
  v5 = sub_22372AC98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2236762AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22363FFE8;

  return sub_2236753D8(a1);
}

uint64_t sub_223676344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LocalIntelligenceFlowClientProvider.init(logger:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = *(type metadata accessor for LocalIntelligenceFlowClientProvider() + 36);
  v5 = sub_22372AC98();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t LocalIntelligenceFlowClientProvider.logger.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_22372AC98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2236764C8()
{
  (*(v0[35] + 8))(v0[37], v0[34]);
  v22 = v0[40];
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[12];
  v21 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_223676634()
{
  v49 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 64);
  v4 = v1;
  v5 = sub_22372AC88();
  v6 = sub_22372B278();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, v48);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = sub_22372B738();
    v15 = sub_223623274(v13, v14, v48);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_223620000, v5, v6, "%{public}s Failed to start IF Session: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v16 = *(v0 + 360);
  v46 = *(v0 + 296);
  v17 = *(v0 + 272);
  v18 = *(v0 + 280);
  v19 = *(v0 + 264);
  v20 = *(v0 + 240);
  v21 = *(v0 + 248);
  v22 = *(v0 + 224);
  v23 = *(v0 + 232);
  v24 = *(v0 + 216);
  swift_willThrow();
  (*(v22 + 8))(v23, v24);
  (*(v21 + 8))(v19, v20);
  (*(v18 + 8))(v46, v17);
  v47 = *(v0 + 360);
  v26 = *(v0 + 288);
  v25 = *(v0 + 296);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v29 = *(v0 + 232);
  v31 = *(v0 + 200);
  v30 = *(v0 + 208);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v34 = *(v0 + 176);
  v37 = *(v0 + 168);
  v38 = *(v0 + 160);
  v39 = *(v0 + 152);
  v40 = *(v0 + 144);
  v41 = *(v0 + 136);
  v42 = *(v0 + 128);
  v43 = *(v0 + 120);
  v44 = *(v0 + 96);
  v45 = *(v0 + 88);

  v35 = *(v0 + 8);

  return v35();
}

unint64_t sub_22367692C()
{
  result = qword_281328D70;
  if (!qword_281328D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D70);
  }

  return result;
}

uint64_t sub_223676978@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE78, &qword_22372EB80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_22372AFD8();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_22372AFD8();
    v11 = [v9 stringForKey_];

    if (v11)
    {
      sub_22372AFE8();

      sub_223727D48();
      v12 = sub_223727D58();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 1, v12) != 1)
      {
        (*(v13 + 32))(a1, v6, v12);
        return (*(v13 + 56))(a1, 0, 1, v12);
      }

      sub_223626478(v6, &qword_27D08EE78, &qword_22372EB80);
    }

    else
    {
    }
  }

  v14 = sub_223727D58();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_223676BC8()
{
  result = sub_22372AC98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223676C6C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_22372B558();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223DE7ED0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_223676D90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v36 = &v33 - v7;
  v8 = sub_223729F08();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v33 - v16;
  v18 = v9[13];
  v18(&v33 - v16, *MEMORY[0x277D5CF30], v8);
  sub_223685890(&qword_28132B538, MEMORY[0x277D5CF58]);
  v38 = a3;
  sub_22372B0F8();
  sub_22372B0F8();
  if (v40 == v42 && v41 == v43)
  {
    v37 = 1;
  }

  else
  {
    v37 = sub_22372B6E8();
  }

  v19 = v9[1];
  v19(v17, v8);

  v18(v14, *MEMORY[0x277D5CF40], v8);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v40 == v42 && v41 == v43)
  {
    v19(v14, v8);

    v20 = v39;
  }

  else
  {
    v21 = sub_22372B6E8();
    v19(v14, v8);

    v20 = v39;
    if (((v21 | v37) & 1) == 0)
    {
      return;
    }
  }

  v22 = qword_28132A1A0;
  v23 = qword_28132B858;
  swift_beginAccess();
  v24 = v36;
  sub_223634890(v20 + v23, v36, &unk_27D08F6F0, &qword_223732CD0);
  LOBYTE(v23) = sub_223724934((v20 + v22), v24);
  sub_223626478(v24, &unk_27D08F6F0, &qword_223732CD0);
  if (v23)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v25 = sub_22372AC98();
    __swift_project_value_buffer(v25, qword_28132B680);
    v26 = sub_22372AC88();
    v27 = sub_22372B268();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_223620000, v26, v27, "MUX: Copy user selection from previous request because Siri is prompting", v28, 2u);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_223677288(v34, v35);
  }

  else if (v37)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v29 = sub_22372AC98();
    __swift_project_value_buffer(v29, qword_28132B680);
    v30 = sub_22372AC88();
    v31 = sub_22372B268();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_223620000, v30, v31, "MUX: Local request without Siri prompt. Creating new muxContext with the active user", v32, 2u);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    sub_223677758(v34, v35);
  }
}

void sub_223677288(uint64_t a1, unint64_t a2)
{
  v3 = *(&v2[1].isa + qword_28132A200);
  if (v3)
  {
    v6 = *(&v2->isa + qword_28132A200);
    v7 = *(&v2->isa + qword_28132A1E8);
    v8 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (*(v9 + 16))
    {
      oslog = v2;

      v10 = sub_2236261A0(v6, v3);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v13 = sub_22372AC98();
        __swift_project_value_buffer(v13, qword_28132B680);

        v14 = sub_22372AC88();
        v15 = sub_22372B268();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v32 = v12;
          v17 = swift_slowAlloc();
          v36[0] = v17;
          *v16 = 136315394;
          v18 = sub_223623274(v6, v3, v36);

          *(v16 + 4) = v18;
          *(v16 + 12) = 2080;
          *(v16 + 14) = sub_223623274(a1, a2, v36);
          _os_log_impl(&dword_223620000, v14, v15, "MUX: Successfully copy muxRequestContext from previous requestId %s to new requestId %s", v16, 0x16u);
          swift_arrayDestroy();
          v19 = v17;
          v12 = v32;
          MEMORY[0x223DE8A80](v19, -1, -1);
          MEMORY[0x223DE8A80](v16, -1, -1);
        }

        else
        {
        }

        swift_beginAccess();

        v29 = *(v7 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v7 + v8);
        *(v7 + v8) = 0x8000000000000000;
        sub_22368D88C(v12, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v7 + v8) = v35;
        swift_endAccess();
        v31 = *(&oslog->isa + qword_28132A208);
        *(&oslog->isa + qword_28132A208) = v12;

        return;
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_28132B680);

    v24 = sub_22372AC88();
    v25 = sub_22372B268();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36[0] = v27;
      *v26 = 136315138;
      v28 = sub_223623274(v6, v3, v36);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_223620000, v24, v25, "MUX: Can not copy previous muxRequestContext to local request with prevRequestId %s due to nil prevMuxRequestContext", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_28132B680);
    osloga = sub_22372AC88();
    v21 = sub_22372B268();
    if (os_log_type_enabled(osloga, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_223620000, osloga, v21, "MUX: Can not copy previous muxRequestContext to local request due to no prevRequestId", v22, 2u);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }
  }
}

void sub_223677758(uint64_t a1, unint64_t a2)
{
  v132 = a1;
  v133 = a2;
  v3 = sub_22372A3C8();
  v126 = *(v3 - 8);
  v127 = v3;
  v4 = *(v126 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v125 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_223727408();
  v121 = *(v122 - 1);
  v7 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v8);
  v120 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEA0, &qword_22372EC30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v117 = (&v110 - v13);
  v128 = sub_22372A458();
  v131 = *(v128 - 8);
  v14 = *(v131 + 64);
  v16 = MEMORY[0x28223BE20](v128, v15);
  v119 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v129 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v110 - v23;
  v25 = sub_22372A298();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v29 = MEMORY[0x28223BE20](v25, v28);
  v116 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v110 - v32;
  v34 = sub_22372A548();
  v134 = *(v34 - 8);
  v35 = *(v134 + 64);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v123 = &v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v118 = &v110 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v110 - v43;
  v130 = v2;
  v45 = *(v2 + qword_28132A1E8);
  v46 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
  swift_beginAccess();
  v115 = v26[2];
  v115(v33, v45 + v46, v25);
  sub_22372A268();
  v47 = v26[1];
  v48 = v33;
  v49 = v134;
  v47(v48, v25);
  if ((*(v49 + 48))(v24, 1, v34) == 1)
  {
    sub_223626478(v24, &unk_27D08E990, &qword_22372FCF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v50 = sub_22372AC98();
    __swift_project_value_buffer(v50, qword_28132B680);
    v51 = sub_22372AC88();
    v52 = sub_22372B278();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_223620000, v51, v52, "MUX: Request is a local request without activeUserSharedUserId which is unexpected", v53, 2u);
      MEMORY[0x223DE8A80](v53, -1, -1);
    }

    sub_223677288(v132, v133);
  }

  else
  {
    v54 = *(v49 + 32);
    v124 = v44;
    v114 = v34;
    v112 = v49 + 32;
    v111 = v54;
    v54(v44, v24, v34);
    v55 = v47;
    v56 = v116;
    v115(v116, v45 + v46, v25);
    v57 = v117;
    sub_22372A258();
    v55(v56, v25);
    v58 = v131;
    v59 = *(v131 + 48);
    v60 = v128;
    v61 = v59(v57, 1, v128);
    v113 = v45;
    if (v61 == 1)
    {
      v62 = *(v58 + 104);
      v62(v129, *MEMORY[0x277D5D230], v60);
      if (v59(v57, 1, v60) != 1)
      {
        sub_223626478(v57, &qword_27D08EEA0, &qword_22372EC30);
      }
    }

    else
    {
      (*(v58 + 32))(v129, v57, v60);
      v62 = *(v58 + 104);
    }

    v110 = v62;
    LODWORD(v115) = *MEMORY[0x277D5D238];
    v63 = v119;
    (v62)(v119);
    sub_22372A448();
    v64 = *(v58 + 8);
    v131 = v58 + 8;
    v64(v63, v60);
    v65 = v64;
    v117 = v64;
    type metadata accessor for MUXRequestContext();
    swift_allocObject();
    v66 = sub_22362A78C(v132, v133);

    v67 = v120;
    sub_2237273F8();
    v68 = sub_2237273B8();
    v116 = v68;
    v70 = v69;
    (*(v121 + 8))(v67, v122);
    v71 = *(v66 + 40);
    *(v66 + 32) = v68;
    *(v66 + 40) = v70;
    v72 = v70;
    v73 = v66;

    v110(v63, v115, v60);
    LOBYTE(v66) = sub_22372A448();
    v65(v63, v60);
    v74 = v134;
    v75 = *(v134 + 16);
    v76 = v118;
    v77 = v114;
    v75(v118, v124, v114);
    v78 = v75;
    LODWORD(v121) = v66 & 1;
    v79 = type metadata accessor for MUXLocalRequestTRPCandidateContext(0);
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    v82 = swift_allocObject();
    v83 = v123;
    v78(v123, v76, v77);
    LODWORD(v66) = sub_22372A418();
    v84 = *(v74 + 8);
    v134 = v74 + 8;
    v122 = v84;
    v84(v76, v77);
    *(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = 0;
    *(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = 0;
    *(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
    v85 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
    v86 = sub_223727678();
    (*(*(v86 - 8) + 56))(v82 + v85, 1, 1, v86);
    v87 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
    v88 = sub_223727758();
    (*(*(v88 - 8) + 56))(v82 + v87, 1, 1, v88);
    *(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
    *(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
    *(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
    *(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
    v89 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    v90 = sub_22372AEE8();
    (*(*(v90 - 8) + 56))(v82 + v89, 1, 1, v90);
    v91 = v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
    *v91 = 0;
    *(v91 + 8) = 1;
    v92 = v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    v111(v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v83, v77);
    v93 = type metadata accessor for MUXUserAttributes();
    *(v92 + v93[5]) = 4;
    *(v92 + v93[6]) = 0;
    *(v92 + v93[8]) = v66;
    *(v92 + v93[7]) = 0;
    *(v92 + v93[9]) = 1;
    *(v92 + v93[10]) = v121;
    v94 = (v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
    v95 = v116;
    *v94 = v116;
    v94[1] = v72;
    v96 = (v82 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    *v96 = v95;
    v96[1] = v72;

    sub_2236B4024(v82);

    v97 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
    v98 = v113;
    swift_beginAccess();
    v99 = v133;

    v100 = *(v98 + v97);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = *(v98 + v97);
    *(v98 + v97) = 0x8000000000000000;
    sub_22368D88C(v73, v132, v99, isUniquelyReferenced_nonNull_native);

    *(v98 + v97) = v136;
    swift_endAccess();
    v102 = v130;
    v103 = *(v130 + qword_28132A208);
    *(v130 + qword_28132A208) = v73;

    v104 = *(v102 + qword_28132A1A0 + 32);
    __swift_project_boxed_opaque_existential_1((v102 + qword_28132A1A0), *(v102 + qword_28132A1A0 + 24));
    v135[3] = v77;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v135);
    v106 = v124;
    v78(boxed_opaque_existential_1, v124, v77);
    v108 = v125;
    v107 = v126;
    v109 = v127;
    (*(v126 + 104))(v125, *MEMORY[0x277D5D1C0], v127);
    sub_22372A4B8();

    (*(v107 + 8))(v108, v109);
    v117(v129, v128);
    v122(v106, v77);
    sub_223626478(v135, &unk_27D08F750, &qword_22372C960);
  }
}

void sub_2236783E4(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MUXUserAttributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v191 = v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22372A548();
  v10 = *(v9 - 8);
  v193 = v9;
  v194 = v10;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v190 = v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v192 = v182 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v199 = v182 - v20;
  v21 = sub_223727678();
  v197 = *(v21 - 8);
  v198 = v21;
  v22 = *(v197 + 8);
  MEMORY[0x28223BE20](v21, v23);
  v195 = v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = v182 - v28;
  v200 = a1;
  v30 = sub_223728CF8();
  v32 = v31;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v33 = sub_22372AC98();
  v34 = __swift_project_value_buffer(v33, qword_28132B680);

  v35 = sub_22372AC88();
  v36 = sub_22372B268();

  v37 = os_log_type_enabled(v35, v36);
  v196 = v29;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = v34;
    v40 = swift_slowAlloc();
    v203 = v40;
    *v38 = 136315138;
    *(v38 + 4) = sub_223623274(v30, v32, &v203);
    _os_log_impl(&dword_223620000, v35, v36, "MUX: Handling MUXNLTRPCandidateMessage for trpId: %s.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v41 = v40;
    v34 = v39;
    MEMORY[0x223DE8A80](v41, -1, -1);
    MEMORY[0x223DE8A80](v38, -1, -1);
  }

  v42 = qword_28132A208;
  v43 = *(v3 + qword_28132A208);
  swift_beginAccess();
  v44 = *(v43 + 48);
  if (!*(v44 + 16))
  {
    goto LABEL_37;
  }

  v45 = sub_2236261A0(v30, v32);
  if ((v46 & 1) == 0)
  {

    goto LABEL_37;
  }

  v187 = v30;
  v47 = *(*(v44 + 56) + 8 * v45);

  v48 = type metadata accessor for MUXTRPCandidateContext(0);
  v49 = swift_dynamicCastClass();
  if (!v49)
  {

    v30 = v187;
LABEL_37:

    v89 = sub_22372AC88();
    v90 = sub_22372B278();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = v30;
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v202[0] = v93;
      *v92 = 136315138;
      v94 = sub_223623274(v91, v32, v202);

      *(v92 + 4) = v94;
      _os_log_impl(&dword_223620000, v89, v90, "MUX: Could not find any TRP context for userLevelTRPCandidateId: %s.. ignoring MUXNLTRPCandidateMessage", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x223DE8A80](v93, -1, -1);
      MEMORY[0x223DE8A80](v92, -1, -1);
    }

    else
    {
    }

LABEL_40:

    return;
  }

  v182[1] = v48;
  v188 = v49;
  v182[2] = v34;
  v182[0] = v42;
  v184 = v32;
  v185 = v3;
  v183 = v2;
  v186 = v47;

  v50 = sub_223728618();
  v51 = v50;
  v52 = v50 + 64;
  v53 = 1 << *(v50 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v50 + 64);
  v56 = (v53 + 63) >> 6;

  v58 = 0;
  v59 = MEMORY[0x277D84F90];
  v189 = v57;
  while (v55)
  {
LABEL_18:
    v61 = __clz(__rbit64(v55)) | (v58 << 6);
    v62 = *(*(v51 + 56) + 8 * v61);
    if (v62)
    {
      v63 = *(*(v51 + 48) + 16 * v61 + 8);

      v64 = v62;
      v65 = sub_22372A1E8();
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v66 = *(v65 + 16);
    v67 = v59[2];
    v68 = v67 + v66;
    if (__OFADD__(v67, v66))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v68 > v59[3] >> 1)
    {
      if (v67 <= v68)
      {
        v70 = v67 + v66;
      }

      else
      {
        v70 = v67;
      }

      v59 = sub_2237111F8(isUniquelyReferenced_nonNull_native, v70, 1, v59);
    }

    v55 &= v55 - 1;
    if (*(v65 + 16))
    {
      v71 = (v59[3] >> 1) - v59[2];
      v72 = *(sub_223727618() - 8);
      if (v71 < v66)
      {
        goto LABEL_77;
      }

      v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v74 = *(v72 + 72);
      swift_arrayInitWithCopy();

      v51 = v189;
      if (v66)
      {
        v75 = v59[2];
        v76 = __OFADD__(v75, v66);
        v77 = v75 + v66;
        if (v76)
        {
          goto LABEL_78;
        }

        v59[2] = v77;
      }
    }

    else
    {

      v51 = v189;
      if (v66)
      {
        goto LABEL_76;
      }
    }
  }

  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v60 >= v56)
    {
      break;
    }

    v55 = *(v52 + 8 * v60);
    ++v58;
    if (v55)
    {
      v58 = v60;
      goto LABEL_18;
    }
  }

  v78 = *(v188 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  *(v188 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = v59;

  v79 = sub_223728618();
  sub_2236F5150(v79);
  v81 = v80;
  v83 = v82;

  if (v81 && (, v83))
  {
    v84 = v195;
    sub_22372A1F8();

    v86 = v196;
    v85 = v197;
    v87 = v84;
    v88 = v198;
    (*(v197 + 4))(v196, v87, v198);
  }

  else
  {
    v86 = v196;
    v85 = v197;
    v88 = v198;
    (*(v197 + 13))(v196, *MEMORY[0x277D5DBB0], v198);
  }

  v95 = v183;
  v96 = v185;
  (*(v85 + 7))(v86, 0, 1, v88);
  v97 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  v98 = v188;
  swift_beginAccess();
  sub_2236719F4(v86, v98 + v97, &qword_27D08EEB0, qword_22372FF80);
  swift_endAccess();
  v99 = v199;
  sub_223727748();
  v100 = sub_223727758();
  (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
  v101 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  swift_beginAccess();
  sub_2236719F4(v99, v98 + v101, &qword_27D08F920, qword_223730410);
  swift_endAccess();
  v102 = sub_223728618();
  v103 = *(v98 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse);
  *(v98 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = v102;

  v104 = sub_223728628();
  v105 = *(v98 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions);
  *(v98 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = v104;

  v106 = sub_223679638(v98);
  if (v95)
  {

LABEL_44:

    return;
  }

  if (!v106)
  {
    goto LABEL_52;
  }

  v107 = v106;
  v108 = swift_dynamicCastClass();
  if (!v108)
  {

LABEL_52:

    v133 = v184;

    v89 = sub_22372AC88();
    v134 = sub_22372B278();

    if (os_log_type_enabled(v89, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v202[0] = v136;
      *v135 = 136315138;
      v137 = sub_223623274(v187, v133, v202);

      *(v135 + 4) = v137;
      _os_log_impl(&dword_223620000, v89, v134, "MUX: Post NL User Selection failed for userLevelTRPCandidateId: %s.", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v136);
      MEMORY[0x223DE8A80](v136, -1, -1);
      MEMORY[0x223DE8A80](v135, -1, -1);
    }

    else
    {
    }

    goto LABEL_40;
  }

  v109 = v108;
  v110 = v192;
  v111 = v200;
  sub_223728D08();
  v112 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v198 = v109;
  v113 = v109 + v112;
  v114 = v191;
  sub_22368509C(v113, v191);
  v115 = v193;
  v116 = v194;
  v117 = v190;
  (*(v194 + 32))(v190, v114, v193);
  v199 = v107;

  LOBYTE(v114) = sub_22372A538();
  v118 = *(v116 + 8);
  v118(v117, v115);
  v194 = v116 + 8;
  v197 = v118;
  v118(v110, v115);
  if (v114)
  {

    v119 = v184;

    v120 = v111;
    v121 = sub_22372AC88();
    v122 = sub_22372B288();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v201[0] = v200;
      *v123 = 136315394;
      v124 = v192;
      sub_223728D08();
      sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
      LODWORD(v196) = v122;
      v125 = v193;
      v126 = sub_22372B6B8();
      v128 = v127;
      v197(v124, v125);
      v129 = sub_223623274(v126, v128, v201);

      *(v123 + 4) = v129;
      *(v123 + 12) = 2080;
      v130 = sub_223623274(v187, v119, v201);

      *(v123 + 14) = v130;
      _os_log_impl(&dword_223620000, v121, v196, "MUX: Since postNL user selected user is the same as the current user: %s, posting NLTRPCandidateMessage for userLevelTRPCandidateId: %s and proceeding to commit.", v123, 0x16u);
      v131 = v200;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v131, -1, -1);
      v132 = v123;
      v96 = v185;
      MEMORY[0x223DE8A80](v132, -1, -1);
    }

    else
    {
    }

    v152 = sub_223729D38();
    v153 = v198;
    sub_22367B538(v198, v152);

    if (*(v96 + qword_28132A190))
    {
      v154 = v182[0];
      v155 = *(v96 + v182[0]);
      v156 = *(v153 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
      v157 = *(v153 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

      sub_2236B477C(v156, v157, v153);

      v158 = *(*(v96 + v154) + 96);
      if (v158)
      {
        v159 = v158;
        sub_2236CD958(v159);
      }
    }

    else
    {

      sub_22367BB18(v153);
    }

    return;
  }

  v138 = v184;

  v139 = v111;
  v140 = sub_22372AC88();
  v141 = sub_22372B288();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    v201[0] = v200;
    *v142 = 136315394;
    v143 = v141;
    v144 = v192;
    sub_223728D08();
    sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
    v145 = v193;
    v146 = sub_22372B6B8();
    v148 = v147;
    v197(v144, v145);
    v149 = sub_223623274(v146, v148, v201);

    *(v142 + 4) = v149;
    *(v142 + 12) = 2080;
    v150 = sub_223623274(v187, v138, v201);

    *(v142 + 14) = v150;
    _os_log_impl(&dword_223620000, v140, v143, "MUX: Since postNL user selected user is NOT the same as the current user: %s, will not post NLTRPCandidateMessage for userLevelTRPCandidateId: %s.", v142, 0x16u);
    v151 = v200;
    swift_arrayDestroy();
    v96 = v185;
    MEMORY[0x223DE8A80](v151, -1, -1);
    MEMORY[0x223DE8A80](v142, -1, -1);
  }

  else
  {
  }

  v160 = v182[0];
  v161 = *(v96 + v182[0]);
  v162 = v188;
  v163 = *(v188 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v164 = *(v188 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  sub_2236B477C(v163, v164, v162);

  v165 = *(v96 + v160);
  v166 = *(v165 + 40);
  if (!v166 || ((v167 = v198, *(v165 + 32) != *(v198 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId)) || v166 != *(v198 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8)) && (sub_22372B6E8() & 1) == 0)
  {
LABEL_74:

    goto LABEL_44;
  }

  v168 = sub_22372AC88();
  v169 = sub_22372B288();

  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v204 = v171;
    *v170 = 136315138;
    v172 = *(v96 + v182[0]);
    v173 = *(v172 + 40);
    v201[0] = *(v172 + 32);
    v201[1] = v173;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
    v174 = sub_22372B038();
    v176 = sub_223623274(v174, v175, &v204);

    *(v170 + 4) = v176;
    v96 = v185;
    _os_log_impl(&dword_223620000, v168, v169, "MUX: Top-level trpId=%s has been selected, but selected user for that top-level TRP has changed.", v170, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v171);
    MEMORY[0x223DE8A80](v171, -1, -1);
    v177 = v170;
    v167 = v198;
    MEMORY[0x223DE8A80](v177, -1, -1);
  }

  v179 = *(v167 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v178 = *(v167 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  v180 = (v96 + qword_28132B868);
  v181 = *(v96 + qword_28132B868 + 8);
  *v180 = v179;
  v180[1] = v178;
}

uint64_t sub_223679638(uint64_t a1)
{
  v2 = v1;
  v281 = sub_22372AEE8();
  v285 = *(v281 - 8);
  v4 = *(v285 + 64);
  v6 = MEMORY[0x28223BE20](v281, v5);
  v8 = &v250 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v250 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE88, &qword_223730060);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v280 = &v250 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v250 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v276 = &v250 - v22;
  v284 = sub_223729F08();
  v287 = *(v284 - 8);
  v23 = *(v287 + 64);
  MEMORY[0x28223BE20](v284, v24);
  v277 = &v250 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v26 = *(*(v282 - 8) + 64);
  MEMORY[0x28223BE20](v282, v27);
  v283 = &v250 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v279 = &v250 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v286 = &v250 - v35;
  v36 = sub_22372A548();
  v291 = *(v36 - 8);
  v292 = v36;
  v37 = *(v291 + 64);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v275 = &v250 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v289 = &v250 - v42;
  v296 = sub_22372A298();
  v294 = *(v296 - 1);
  v43 = *(v294 + 64);
  MEMORY[0x28223BE20](v296, v44);
  v295 = (&v250 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8, v48);
  v303 = &v250 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v51 = *(*(v50 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v50 - 8, v52);
  v288 = &v250 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v250 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8, v60);
  v293 = &v250 - v61;
  v62 = type metadata accessor for MUXUserAttributes();
  v63 = *(*(v62 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v67 = MEMORY[0x28223BE20](v65, v66);
  v69 = MEMORY[0x28223BE20](v67, v68);
  v74 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  if (!v74)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v95 = sub_22372AC98();
    __swift_project_value_buffer(v95, qword_28132B680);

    v96 = sub_22372AC88();
    v97 = sub_22372B278();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v300[0] = v99;
      *v98 = 136315138;
      v100 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v101 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v102 = sub_223623274(v100, v101, v300);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_223620000, v96, v97, "MUX: Should not be calling doPostNLUserSelection without nlParses for candidateId: %s, cannot proceed with post NL user selection.", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x223DE8A80](v99, -1, -1);
      MEMORY[0x223DE8A80](v98, -1, -1);
    }

    return 0;
  }

  v256 = v8;
  v75 = *(v2 + qword_28132A1E0);
  if (!v75)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    sub_22372A778();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v74;
  }

  v254 = v72;
  v251 = v71;
  v252 = v11;
  v250 = v20;
  v278 = &v250 - v70;
  v272 = v73;
  v273 = v69;
  sub_223623934(v2 + qword_28132A1F0, v300);
  v274 = v301;
  v267 = v302;
  v271 = __swift_project_boxed_opaque_existential_1(v300, v301);
  v255 = a1;
  v76 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
  v269 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v266 = v76;
  v77 = qword_28132A208;
  v268 = *(*(v2 + qword_28132A208) + 72);
  v270 = v268;

  v78 = v75;

  v265 = sub_223727F08();
  v79 = qword_28132B8A8;
  swift_beginAccess();
  v253 = v79;
  v290 = v57;
  sub_223634890(v2 + v79, v57, &unk_27D08E990, &qword_22372FCF0);
  v263 = qword_28132A1A0;
  v80 = *(v2 + qword_28132A200 + 8);
  v264 = *(v2 + qword_28132A200);
  v262 = v80;
  v81 = v2;
  v82 = *(v2 + qword_28132A1E8);
  v83 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
  swift_beginAccess();
  v260 = *(v82 + v83);
  v84 = qword_28132B858;
  swift_beginAccess();
  sub_223634890(v81 + v84, v303, &unk_27D08F6F0, &qword_223732CD0);

  v258 = v78;
  LOBYTE(v78) = sub_223727EF8();
  swift_beginAccess();
  v85 = v294;
  v86 = v295;
  (*(v294 + 16))();
  v257 = v77;
  v87 = *(*(v81 + v77) + 80);
  v88 = v267;
  v259 = *(v267 + 16);
  v261 = v87;
  v249 = v88;
  v248 = v274;
  v274 = v81;
  v89 = v293;
  v259(v269, v266, v74, v268, v265, v290, v81 + v263, v264, v262, v260, v303, v78 & 1, v86, v87, v248, v249);

  (*(v85 + 8))(v295, v296);
  sub_223626478(v303, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v290, &unk_27D08E990, &qword_22372FCF0);
  v90 = v273;
  if ((*(v272 + 48))(v89, 1) == 1)
  {
    sub_223626478(v89, &qword_27D08EE90, &unk_22372FF60);
    __swift_destroy_boxed_opaque_existential_1Tm(v300);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v91 = sub_22372AC98();
    __swift_project_value_buffer(v91, qword_28132B680);
    v92 = sub_22372AC88();
    v93 = sub_22372B278();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_223620000, v92, v93, "MUX: selectPostNLUser: Something went wrong during post NL user selection. Was unable to select a user.", v94, 2u);
      MEMORY[0x223DE8A80](v94, -1, -1);
    }

    return 0;
  }

  sub_2236852F0(v89, v278);
  __swift_destroy_boxed_opaque_existential_1Tm(v300);
  v103 = *(v274 + v257);
  v105 = *(v255 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v104 = *(v255 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  v296 = (v255 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  swift_beginAccess();
  v106 = *(v103 + 56);
  if (*(v106 + 16))
  {

    v107 = sub_2236261A0(v105, v104);
    v109 = v108;

    v110 = v297;
    if (v109)
    {
      v111 = *(*(v106 + 56) + 8 * v107);

      MEMORY[0x28223BE20](v112, v113);
      v114 = v278;
      v248 = v278;
      v74 = sub_223676C6C(sub_223685A48, &v247, v111);

      if (v74)
      {
        v297 = v110;
        v115 = *(v114 + v90[6]);

        sub_2236B138C(v115);
        v116 = *(v114 + v90[5]);

        sub_2236B1508(v116);

        LODWORD(v116) = *(v114 + v90[8]);

        sub_2236B1684(v116);

        LOBYTE(v116) = *(v114 + v90[7]);

        sub_2236B1800(v116);

        LOBYTE(v116) = *(v114 + v90[9]);

        sub_2236B197C(v116);

        LOBYTE(v116) = *(v114 + v90[10]);

        sub_2236B1AF8(v116);

        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  else
  {
    v110 = v297;
  }

  v117 = v292;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v118 = sub_22372AC98();
  v119 = __swift_project_value_buffer(v118, qword_28132B680);
  v120 = v278;
  v121 = v254;
  sub_22368509C(v278, v254);
  v303 = v119;
  v122 = sub_22372AC88();
  v123 = sub_22372B278();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v299 = v125;
    *v124 = 136315138;
    sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
    v126 = sub_22372B6B8();
    v127 = v110;
    v129 = v128;
    sub_223685354(v121);
    v130 = sub_223623274(v126, v129, &v299);
    v110 = v127;
    v117 = v292;

    *(v124 + 4) = v130;
    _os_log_impl(&dword_223620000, v122, v123, "MUX: selectPostNLUser: Could not find CandidateContext for selectedUserId: %s. Trying to use unknown user's candidate.", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    v131 = v125;
    v120 = v278;
    MEMORY[0x223DE8A80](v131, -1, -1);
    MEMORY[0x223DE8A80](v124, -1, -1);
  }

  else
  {

    sub_223685354(v121);
  }

  v132 = v288;
  v133 = v257;
  v134 = v274;
  sub_223634890(v274 + v253, v288, &unk_27D08E990, &qword_22372FCF0);
  v135 = v291;
  if ((*(v291 + 48))(v132, 1, v117) == 1)
  {
    sub_223626478(v132, &unk_27D08E990, &qword_22372FCF0);
    v136 = sub_22372AC88();
    v137 = sub_22372B278();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_223620000, v136, v137, "MUX: selectPostNLUser: sharedUserId of unknown user is nil. Will not post NL output. Request will time out.", v138, 2u);
      MEMORY[0x223DE8A80](v138, -1, -1);
    }

    v139 = v120;
LABEL_46:
    sub_223685354(v139);
    return 0;
  }

  (*(v135 + 32))(v289, v132, v117);
  v140 = *(v134 + v133);
  v142 = *v296;
  v141 = v296[1];
  swift_beginAccess();
  v143 = *(v140 + 56);
  if (!*(v143 + 16))
  {
    v163 = v120;
LABEL_42:
    v150 = v289;
LABEL_43:
    v165 = sub_22372AC88();
    v166 = sub_22372B278();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&dword_223620000, v165, v166, "MUX: selectPostNLUser: Could not find context for unknown user. Will not post NL output. Request will time out.", v167, 2u);
      MEMORY[0x223DE8A80](v167, -1, -1);
    }

    (*(v291 + 8))(v150, v292);
    v139 = v163;
    goto LABEL_46;
  }

  v144 = sub_2236261A0(v142, v141);
  v146 = v145;

  if ((v146 & 1) == 0)
  {

    v163 = v278;
    goto LABEL_42;
  }

  v147 = *(*(v143 + 56) + 8 * v144);

  MEMORY[0x28223BE20](v148, v149);
  v150 = v289;
  v248 = v289;
  v74 = sub_223676C6C(sub_2236853B0, &v247, v147);

  if (!v74)
  {
    v163 = v278;
    goto LABEL_43;
  }

  v297 = v110;

  sub_2236B138C(-1);

  sub_2236B1508(0);

  v151 = sub_22372A418();
  sub_2236B1684(v151);

  sub_2236B1800(1);

  sub_2236B197C(0);

  sub_2236B1AF8(0);

  (*(v291 + 8))(v150, v117);
LABEL_34:
  v152 = qword_28132B888;
  v153 = v274;
  swift_beginAccess();
  v155 = v286;
  v154 = v287;
  v156 = v284;
  (*(v287 + 104))(v286, *MEMORY[0x277D5CF40], v284);
  (*(v154 + 56))(v155, 0, 1, v156);
  v157 = v153 + v152;
  v158 = *(v282 + 48);
  v159 = v283;
  sub_223634890(v157, v283, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v155, v159 + v158, &qword_27D08E9D0, &qword_22372D1E0);
  v160 = *(v154 + 48);
  if (v160(v159, 1, v156) == 1)
  {
    sub_223626478(v155, &qword_27D08E9D0, &qword_22372D1E0);
    v161 = v160(v159 + v158, 1, v156);
    v162 = v297;
    if (v161 == 1)
    {
      sub_223626478(v159, &qword_27D08E9D0, &qword_22372D1E0);
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  v164 = v279;
  sub_223634890(v159, v279, &qword_27D08E9D0, &qword_22372D1E0);
  if (v160(v159 + v158, 1, v156) == 1)
  {
    sub_223626478(v286, &qword_27D08E9D0, &qword_22372D1E0);
    (*(v287 + 8))(v164, v156);
    v162 = v297;
LABEL_40:
    sub_223626478(v159, &qword_27D08F740, &unk_223731DC0);
LABEL_59:
    v214 = v278;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v215 = sub_22372AC98();
    v216 = __swift_project_value_buffer(v215, qword_28132B680);
    v217 = sub_22372AC88();
    v218 = sub_22372B268();
    if (os_log_type_enabled(v217, v218))
    {
      v219 = swift_slowAlloc();
      v303 = v216;
      v220 = v219;
      v221 = swift_slowAlloc();
      v298[0] = v221;
      *v220 = 136315138;
      v222 = *(v74 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v223 = *(v74 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v224 = v162;
      v225 = sub_223623274(v222, v223, v298);
      v214 = v278;

      *(v220 + 4) = v225;
      v162 = v224;
      _os_log_impl(&dword_223620000, v217, v218, "MUX: Post NL candidate already has passed all re-trigger checks, there is no need to re-trigger NL for this candidate ID: %s.", v220, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v221);
      MEMORY[0x223DE8A80](v221, -1, -1);
      MEMORY[0x223DE8A80](v220, -1, -1);
    }

    v176 = v252;
    v226 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    swift_beginAccess();
    v227 = v74 + v226;
    v228 = v280;
    sub_223634890(v227, v280, &qword_27D08EE88, &qword_223730060);
    v229 = v285;
    v230 = v281;
    if ((*(v285 + 48))(v228, 1, v281) == 1)
    {
      sub_223685354(v214);

      sub_223626478(v228, &qword_27D08EE88, &qword_223730060);
      return v74;
    }

    (*(v229 + 32))(v176, v228, v230);
    v231 = v256;
    sub_22372AED8();
    sub_223685890(&qword_27D08EE98, MEMORY[0x277D851E0]);
    if (sub_22372AFB8())
    {
      v232 = sub_22372AC88();
      v233 = sub_22372B278();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        *v234 = 0;
        _os_log_impl(&dword_223620000, v232, v233, "MUX: Detected inconsistency in observed timestamps. Please alert Siri Orchestration | Client.", v234, 2u);
        MEMORY[0x223DE8A80](v234, -1, -1);
      }

      v235 = *(v285 + 8);
      v235(v256, v230);
      v235(v252, v230);
      sub_223685354(v278);
      return v74;
    }

    v303 = sub_22372AEC8();
    v236 = sub_22372AEC8();

    v237 = *(v229 + 8);
    v237(v231, v230);
    v237(v176, v230);
    sub_223685354(v278);
    if (v303 >= v236)
    {
      v238 = v74 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
      *v238 = (v303 - v236) / 0xF4240;
      *(v238 + 8) = 0;
      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_83;
  }

  v169 = v287;
  v170 = v277;
  (*(v287 + 32))(v277, v159 + v158, v156);
  sub_223685890(&unk_28132B540, MEMORY[0x277D5CF58]);
  LODWORD(v303) = sub_22372AFC8();
  v171 = v164;
  v172 = *(v169 + 8);
  v172(v170, v156);
  sub_223626478(v286, &qword_27D08E9D0, &qword_22372D1E0);
  v172(v171, v156);
  sub_223626478(v159, &qword_27D08E9D0, &qword_22372D1E0);
  v162 = v297;
  if ((v303 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_50:

  v174 = sub_2236853D0(v173);

  if ((v174 & 1) == 0)
  {
    goto LABEL_59;
  }

  type metadata accessor for MUXSpeechTRPCandidateContext(0);
  v175 = swift_dynamicCastClass();
  if (v175)
  {
    v176 = v175;
    v177 = qword_281328E58;

    if (v177 == -1)
    {
LABEL_53:
      v178 = sub_22372AC98();
      v179 = __swift_project_value_buffer(v178, qword_28132B680);
      v180 = sub_22372AC88();
      v181 = sub_22372B288();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        v297 = v162;
        v298[0] = v296;
        *v182 = 136315394;
        v295 = v180;
        v184 = *(v74 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v183 = *(v74 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

        v185 = sub_223623274(v184, v183, v298);
        v303 = v179;
        v186 = v185;

        *(v182 + 4) = v186;
        *(v182 + 12) = 2080;
        v187 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v188 = v251;
        sub_22368509C(v74 + v187, v251);
        LODWORD(v294) = v181;
        v189 = v291;
        v190 = v292;
        v191 = v275;
        (*(v291 + 32))(v275, v188, v292);
        sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
        v192 = sub_22372B6B8();
        v194 = v193;
        (*(v189 + 8))(v191, v190);
        v195 = sub_223623274(v192, v194, v298);

        *(v182 + 14) = v195;
        v180 = v295;
        _os_log_impl(&dword_223620000, v295, v294, "MUX: After examining post NL user selection results, it is necessary to retrigger NL for userLevelCandidateId: %s of user id: %s by posting TRPCandidateForPlannerMessage.", v182, 0x16u);
        v196 = v296;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v196, -1, -1);
        MEMORY[0x223DE8A80](v182, -1, -1);
      }

      v197 = v278;
      if (*(v274 + qword_28132B8C0))
      {
        v303 = sub_22372A708();
        v199 = v198;
        v200 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v201 = v176 + v200;
        v202 = v251;
        sub_22368509C(v201, v251);
        v203 = v291;
        v204 = v275;
        (*(v291 + 32))(v275, v202, v292);
        v205 = *(v176 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v206 = *(v176 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
        v207 = *(v176 + OBJC_IVAR____TtC24RequestDispatcherBridges28MUXSpeechTRPCandidateContext_trpMessage);

        sub_223682D1C(v303, v199, v204, v205, v206, v207);

        (*(v203 + 8))(v204, v292);

        goto LABEL_57;
      }

      v244 = sub_22372AC88();
      v245 = sub_22372B278();
      if (os_log_type_enabled(v244, v245))
      {
        v246 = swift_slowAlloc();
        *v246 = 0;
        _os_log_impl(&dword_223620000, v244, v245, "MUX: Cannot retrigger as child request was not found. Request will time out.", v246, 2u);
        MEMORY[0x223DE8A80](v246, -1, -1);
      }

      else
      {
      }

      sub_223685354(v197);

      return 0;
    }

LABEL_83:
    swift_once();
    goto LABEL_53;
  }

LABEL_57:
  v208 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
  swift_beginAccess();
  v209 = v276;
  sub_223634890(v74 + v208, v276, &qword_27D08EE88, &qword_223730060);
  v210 = v285;
  v211 = v281;
  v212 = (*(v285 + 48))(v209, 1, v281);
  sub_223626478(v209, &qword_27D08EE88, &qword_223730060);
  if (v212 == 1)
  {

    v213 = v250;
    sub_22372AED8();

    sub_223685354(v278);
    (*(v210 + 56))(v213, 0, 1, v211);
    swift_beginAccess();
    sub_2236719F4(v213, v74 + v208, &qword_27D08EE88, &qword_223730060);
    swift_endAccess();
LABEL_72:

    return v74;
  }

  v239 = v278;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v240 = sub_22372AC98();
  __swift_project_value_buffer(v240, qword_28132B680);
  v241 = sub_22372AC88();
  v242 = sub_22372B278();
  if (os_log_type_enabled(v241, v242))
  {
    v243 = swift_slowAlloc();
    *v243 = 0;
    _os_log_impl(&dword_223620000, v241, v242, "MUX: Detected a strange state where it looks like NL was re-triggered twice for the same candidate.", v243, 2u);
    MEMORY[0x223DE8A80](v243, -1, -1);
  }

  sub_223685354(v239);
  return v74;
}

void sub_22367B538(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) && *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions))
  {
    MEMORY[0x28223BE20](a1, a2);
    v3 = objc_allocWithZone(sub_223728388());

    v4 = sub_2237282E8();

    if (v4)
    {
      sub_2236B1FA4(2u);
      *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 2;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v5 = sub_22372AC98();
      __swift_project_value_buffer(v5, qword_28132B680);
      v6 = v4;

      v7 = sub_22372AC88();
      v8 = sub_22372B268();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v38[0] = v11;
        *v9 = 138412546;
        *(v9 + 4) = v6;
        *v10 = v4;
        *(v9 + 12) = 2080;
        v12 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
        v13 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v14 = *(v12 + 8);
        v15 = v6;

        v16 = sub_223623274(v13, v14, v38);

        *(v9 + 14) = v16;
        _os_log_impl(&dword_223620000, v7, v8, "MUX: Posting NLTRPCandidateMessage: %@ for trpID: %s.", v9, 0x16u);
        sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v10, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x223DE8A80](v11, -1, -1);
        MEMORY[0x223DE8A80](v9, -1, -1);
      }

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_223729D88();

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v25 = sub_22372AC98();
      __swift_project_value_buffer(v25, qword_28132B680);

      v26 = sub_22372AC88();
      v27 = sub_22372B278();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38[0] = v29;
        *v28 = 136315394;
        v30 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
        v31 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

        v32 = sub_223623274(v30, v31, v38);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
        v34 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v35 = *(v33 + 8);

        v36 = sub_223623274(v34, v35, v38);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_223620000, v26, v27, "MUX: NLTRPCandidateMessage could not be created for topLevelCandidateId: %s and userLevelCandidateId: %s.", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v29, -1, -1);
        MEMORY[0x223DE8A80](v28, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v17 = sub_22372AC98();
    __swift_project_value_buffer(v17, qword_28132B680);

    v37 = sub_22372AC88();
    v18 = sub_22372B288();

    if (os_log_type_enabled(v37, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v21 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v23 = *(v21 + 8);

      v24 = sub_223623274(v22, v23, v38);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_223620000, v37, v18, "MUX: tcuMappedNLResponse/tcuMappedNLRepetitions not available for trpId: %s, cannot proceed with posting NLTRPCandidateMessage.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22367BB18(uint64_t a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v60 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v61 = v7;
    *v6 = 136315138;
    v8 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v9 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v10 = sub_223623274(v8, v9, &v61);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_223620000, v4, v5, "MUX: Attempting commit logic for candidateId: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v11 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) > 2u)
  {

    goto LABEL_17;
  }

  v12 = sub_22372B6E8();

  if (v12)
  {
LABEL_17:

    v18 = sub_22372AC88();
    v19 = sub_22372B268();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315138;
    v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v23 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v24 = sub_223623274(v22, v23, &v61);

    *(v20 + 4) = v24;
    v25 = "MUX: Given Candidate ID : %s has already been finalized, no further action needed.";
    goto LABEL_19;
  }

  v13 = *(v59 + qword_28132A208);
  v14 = *(v13 + 40);
  if (!v14)
  {

    v18 = sub_22372AC88();
    v19 = sub_22372B268();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315138;
    v27 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v28 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v29 = sub_223623274(v27, v28, &v61);

    *(v20 + 4) = v29;
    v25 = "MUX: Cannot commit for userLevelCandidateId  %s because endpoint signal does not seem to have arrived.";
    goto LABEL_19;
  }

  v15 = (a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  if (*(v13 + 32) != *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId) || v14 != *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8))
  {
    v58 = *(v13 + 32);
    if ((sub_22372B6E8() & 1) == 0)
    {

      v18 = sub_22372AC88();
      v33 = sub_22372B288();

      if (!os_log_type_enabled(v18, v33))
      {

        goto LABEL_21;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61 = v35;
      *v34 = 136315650;
      v36 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v37 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v38 = sub_223623274(v36, v37, &v61);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v40 = *v15;
      v39 = v15[1];

      v41 = sub_223623274(v40, v39, &v61);

      *(v34 + 14) = v41;
      *(v34 + 22) = 2080;
      v42 = sub_223623274(v58, v14, &v61);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_223620000, v18, v33, "MUX: Cannot commit for userLevelCandidateId  %s because given Candidate's topLevelCandidateId: %s and selectedTopLevelCandidateId :%s do not match.", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v35, -1, -1);
      v26 = v34;
      goto LABEL_20;
    }
  }

  if (!*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {

    v18 = sub_22372AC88();
    v19 = sub_22372B288();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315138;
    v30 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v31 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v32 = sub_223623274(v30, v31, &v61);

    *(v20 + 4) = v32;
    v25 = "MUX: nlUserParses not available for candidateId: %s, not committing.";
LABEL_19:
    _os_log_impl(&dword_223620000, v18, v19, v25, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    v26 = v20;
LABEL_20:
    MEMORY[0x223DE8A80](v26, -1, -1);
    goto LABEL_21;
  }

  v17 = *(a1 + v11);
  if (v17 > 1)
  {
    v43 = v60;
    if (v17 == 2)
    {

      goto LABEL_33;
    }
  }

  else
  {
    v43 = v60;
  }

  v44 = sub_22372B6E8();

  if ((v44 & 1) == 0)
  {

    v18 = sub_22372AC88();
    v48 = sub_22372B288();

    if (os_log_type_enabled(v18, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61 = v50;
      *v49 = 136315138;
      v51 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v52 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v53 = sub_223623274(v51, v52, &v61);

      *(v49 + 4) = v53;
      v54 = "MUX: NL Results were not processed for candidateId: %s, not committing. This is unusual.";
LABEL_39:
      _os_log_impl(&dword_223620000, v18, v48, v54, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x223DE8A80](v50, -1, -1);
      MEMORY[0x223DE8A80](v49, -1, -1);
    }

LABEL_21:

    return;
  }

LABEL_33:
  v45 = sub_223679638(a1);
  if (v43)
  {
    return;
  }

  if (!v45)
  {

    v18 = sub_22372AC88();
    v48 = sub_22372B278();

    if (!os_log_type_enabled(v18, v48))
    {
      goto LABEL_21;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = v50;
    *v49 = 136315138;
    v55 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v56 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v57 = sub_223623274(v55, v56, &v61);

    *(v49 + 4) = v57;
    v54 = "MUX: Post NL User Selection failed for candidateId: %s, not committing.";
    goto LABEL_39;
  }

  type metadata accessor for MUXTRPCandidateContext(0);
  v46 = swift_dynamicCastClass();
  if (v46)
  {
    v47 = v46;

    sub_22368110C(v47);
  }

  else
  {
  }
}

void sub_22367C454(void *a1)
{
  v2 = v1;
  v4 = sub_22372A548();
  v135 = *(v4 - 8);
  v5 = *(v135 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v130 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_22372A3C8();
  v132 = *(v133 - 8);
  v8 = *(v132 + 64);
  MEMORY[0x28223BE20](v133, v9);
  v131 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22372A298();
  v140 = *(v141 - 8);
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v141, v12);
  v139 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v145 = &v115 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v144 = &v115 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v138 = &v115 - v25;
  v137 = type metadata accessor for MUXUserAttributes();
  v136 = *(v137 - 8);
  v26 = *(v136 + 64);
  v28 = MEMORY[0x28223BE20](v137, v27);
  v30 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v143 = &v115 - v32;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v134 = v30;
  v33 = sub_22372AC98();
  v34 = __swift_project_value_buffer(v33, qword_28132B680);
  v35 = a1;
  v142 = v34;
  v36 = sub_22372AC88();
  v37 = sub_22372B268();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_223620000, v36, v37, "MUX: received MultiUserTRPCandidateRequestMessage: %@", v38, 0xCu);
    sub_223626478(v39, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v39, -1, -1);
    MEMORY[0x223DE8A80](v38, -1, -1);
  }

  v41 = sub_223729D38();
  v43 = v42;
  v44 = sub_223728CF8();
  v46 = v45;
  v47 = sub_2237298A8();
  v48 = v149;
  sub_223681E7C(v41, v43, v44, v46, v47);
  if (v48)
  {
  }

  else
  {
    v118 = v35;
    v129 = 0;
    v116 = v4;

    sub_223623934(v2 + qword_28132A1F0, &v146);
    v127 = v147;
    v126 = v148;
    v128 = __swift_project_boxed_opaque_existential_1(&v146, v147);
    v49 = qword_28132A208;
    v122 = *(*(v2 + qword_28132A208) + 72);
    v50 = v122;
    v51 = qword_28132B858;
    swift_beginAccess();
    sub_223634890(v2 + v51, v144, &unk_27D08F6F0, &qword_223732CD0);
    v149 = (v2 + qword_28132A1A0);
    v52 = *(v2 + qword_28132A1E8);
    v53 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
    swift_beginAccess();
    v54 = *(v52 + v53);
    v55 = *(v2 + qword_28132A200 + 8);
    v125 = *(v2 + qword_28132A200);
    v124 = v55;
    v56 = qword_28132B8A8;
    swift_beginAccess();
    sub_223634890(v2 + v56, v145, &unk_27D08E990, &qword_22372FCF0);
    v123 = v50;

    LOBYTE(v56) = sub_22367D204();
    v57 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
    swift_beginAccess();
    v58 = v140;
    v59 = v139;
    v60 = v141;
    (*(v140 + 16))(v139, v52 + v57, v141);
    v117 = v49;
    v61 = *(*(v2 + v49) + 80);
    v119 = v2;
    v62 = v126;
    v120 = *(v126 + 8);
    v121 = v61;
    v114 = v62;
    v113 = v61;
    v63 = v138;
    v64 = v144;
    v65 = v145;
    v120(v122, v144, v149, v54, v125, v124, v145, v56 & 1, v59, v113, v127, v114);

    (*(v58 + 8))(v59, v60);
    sub_223626478(v65, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v64, &unk_27D08F6F0, &qword_223732CD0);
    if ((*(v136 + 48))(v63, 1, v137) == 1)
    {
      sub_223626478(v63, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(&v146);
      v66 = sub_22372AC88();
      v67 = sub_22372B278();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_223620000, v66, v67, "MUX: Something went wrong during user selection. Was unable to select a user.", v68, 2u);
        MEMORY[0x223DE8A80](v68, -1, -1);
      }
    }

    else
    {
      v69 = v63;
      v70 = v143;
      sub_2236852F0(v69, v143);
      __swift_destroy_boxed_opaque_existential_1Tm(&v146);
      v71 = sub_223728CF8();
      v73 = v72;
      v74 = v117;
      v75 = v119;
      v76 = *(v119 + v117);

      v77 = sub_22367D398(v71, v73, v70, v76);

      if (v77)
      {
        v78 = *(v75 + v74);

        v79 = sub_223728CF8();
        v81 = v80;

        sub_2236B477C(v79, v81, v77);

        v82 = v149[4];
        __swift_project_boxed_opaque_existential_1(v149, v149[3]);
        v83 = v116;
        v147 = v116;
        v84 = __swift_allocate_boxed_opaque_existential_1(&v146);
        v85 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v86 = v134;
        sub_22368509C(v77 + v85, v134);
        v149 = *(v135 + 32);
        (v149)(v84, v86, v83);

        v87 = v132;
        v88 = v131;
        v89 = v133;
        (*(v132 + 104))(v131, *MEMORY[0x277D5D1C0], v133);
        sub_22372A4B8();
        (*(v87 + 8))(v88, v89);
        sub_223626478(&v146, &unk_27D08F750, &qword_22372C960);

        v90 = sub_22372AC88();
        v91 = sub_22372B268();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v146 = v145;
          *v92 = 136315650;
          v94 = *(v77 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
          v93 = *(v77 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

          v95 = sub_223623274(v94, v93, &v146);
          v96 = v135;
          v97 = v95;

          *(v92 + 4) = v97;
          LODWORD(v144) = v91;
          v98 = v116;
          *(v92 + 12) = 2080;
          v100 = *(v77 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
          v99 = *(v77 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

          v101 = sub_223623274(v100, v99, &v146);

          *(v92 + 14) = v101;
          *(v92 + 22) = 2080;
          v102 = v77 + v85;
          v103 = v134;
          sub_22368509C(v102, v134);
          v104 = v130;
          (v149)(v130, v103, v98);
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
          v105 = sub_22372B6B8();
          v107 = v106;
          (*(v96 + 8))(v104, v98);
          v108 = sub_223623274(v105, v107, &v146);

          *(v92 + 24) = v108;
          _os_log_impl(&dword_223620000, v90, v144, "MUX: selectPreNLUser: For topLevelCandidateId: %s and userLevelCandidateId: %s), user: %s was chosen for running NL.", v92, 0x20u);
          v109 = v145;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v109, -1, -1);
          MEMORY[0x223DE8A80](v92, -1, -1);
        }

        sub_223729D38();
        sub_22367DA44(v77);
      }

      else
      {
        v110 = sub_22372AC88();
        v111 = sub_22372B278();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_223620000, v110, v111, "MUX: selectPreNLUser: Something went wrong when selecting the candidate context. Somehow couldn't find a trpCandidateContext. This is not expected to ever happen.", v112, 2u);
          MEMORY[0x223DE8A80](v112, -1, -1);
        }
      }

      sub_223685354(v143);
    }
  }
}

uint64_t sub_22367D204()
{
  v1 = *(v0 + qword_28132A1E0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_223727EF8();
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    v4 = swift_allocError();
    sub_22372A778();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v5 = sub_22372AC98();
    __swift_project_value_buffer(v5, qword_28132B680);
    v2 = sub_22372AC88();
    v6 = sub_22372B278();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223620000, v2, v6, "MUX: Setting isRMVEnabled as false due to nil MuxContextMessage", v7, 2u);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_22367D398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v78 = &v70 - v11;
  v12 = sub_22372A548();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v70 - v24;
  v79 = v13;
  v80 = v26;
  v27 = *(v13 + 16);
  v27(&v70 - v24, a3);
  v28 = sub_2236B4B18(a1, a2, v25);
  if (!v28)
  {
    v72 = v27;
    v73 = a4;
    v75 = a1;
    v76 = v25;
    v33 = v79;
    v32 = v80;
    v74 = v18;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v34 = sub_22372AC98();
    v35 = __swift_project_value_buffer(v34, qword_28132B680);
    v36 = v22;
    v37 = v32;
    v72(v22, v76, v32);
    v38 = a2;

    v72 = v35;
    v39 = sub_22372AC88();
    v40 = sub_22372B278();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v75;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v81[0] = v71;
      *v43 = 136315394;
      sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
      v44 = sub_22372B6B8();
      v46 = v45;
      v47 = v36;
      v48 = *(v33 + 8);
      v48(v47, v37);
      v49 = sub_223623274(v44, v46, v81);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_223623274(v42, v38, v81);
      _os_log_impl(&dword_223620000, v39, v40, "MUX: Could not find TRPCandidateContext for selectedUserId: %s and topLevelTrpCandidateId: %s, meaning we are missing the selected user's ASR output. Trying to use unknown user's RC.", v43, 0x16u);
      v50 = v71;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v50, -1, -1);
      MEMORY[0x223DE8A80](v43, -1, -1);

      v51 = v33;
    }

    else
    {

      v51 = v33;
      v52 = v36;
      v48 = *(v33 + 8);
      v48(v52, v37);
    }

    v53 = v74;
    v54 = v37;
    v55 = qword_28132B8A8;
    v56 = v77;
    swift_beginAccess();
    v57 = v56 + v55;
    v58 = v78;
    sub_223634890(v57, v78, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v51 + 48))(v58, 1, v54) == 1)
    {
      sub_223626478(v58, &unk_27D08E990, &qword_22372FCF0);
      v59 = sub_22372AC88();
      v60 = sub_22372B278();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_223620000, v59, v60, "MUX: selectPreNLUser: sharedUserId of unknown user is nil. Will not post ASR output. Request will time out.", v61, 2u);
        MEMORY[0x223DE8A80](v61, -1, -1);
      }

      v48(v76, v54);
    }

    else
    {
      (*(v51 + 32))(v53, v58, v54);
      v62 = sub_2236B4B18(v75, v38, v53);
      if (v62)
      {
        v29 = v62;

        sub_2236B138C(-1);
        sub_2236B1508(0);
        v63 = sub_22372A418();
        sub_2236B1684(v63);
        sub_2236B1800(1);
        sub_2236B197C(0);
        sub_2236B1AF8(0);

        v48(v53, v54);
        v48(v76, v54);
        return v29;
      }

      v64 = sub_22372AC88();
      v65 = sub_22372B278();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v76;
      if (v66)
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_223620000, v64, v65, "MUX: selectPreNLUser: Could not find trpCandidateContext for unknown user. Will not post ASR output. Request will time out.", v68, 2u);
        MEMORY[0x223DE8A80](v68, -1, -1);
      }

      v48(v53, v54);
      v48(v67, v54);
    }

    return 0;
  }

  v29 = v28;
  v30 = type metadata accessor for MUXUserAttributes();
  v31 = *(a3 + v30[6]);

  sub_2236B138C(v31);
  sub_2236B1508(*(a3 + v30[5]));
  sub_2236B1684(*(a3 + v30[8]));
  sub_2236B1800(*(a3 + v30[7]));
  sub_2236B197C(*(a3 + v30[9]));
  sub_2236B1AF8(*(a3 + v30[10]));

  (*(v79 + 8))(v25, v80);
  return v29;
}

void sub_22367DA44(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MUXSpeechTRPCandidateContext(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_2236B1FA4(1u);
    *(v5 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 1;
    v6 = *(v5 + OBJC_IVAR____TtC24RequestDispatcherBridges28MUXSpeechTRPCandidateContext_trpMessage);
    MEMORY[0x28223BE20](v7, v8);
    objc_allocWithZone(sub_223728CE8());
    v9 = v6;
    v10 = sub_223728C68();
    if (v10)
    {
      v11 = v10;

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v12 = sub_22372AC98();
      __swift_project_value_buffer(v12, qword_28132B680);
      v13 = v11;
      v14 = sub_22372AC88();
      v15 = sub_22372B268();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v11;
        v18 = v13;
        _os_log_impl(&dword_223620000, v14, v15, "MUX: Posted TRPCandidateRequestMessage: %@", v16, 0xCu);
        sub_223626478(v17, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v17, -1, -1);
        MEMORY[0x223DE8A80](v16, -1, -1);
      }

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_223729D88();
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v19 = *(v2 + qword_28132A1D8);
      v20 = sub_22372A768();
      v22 = v21;
      v23 = v13;
      sub_223728CF8();

      sub_2236C4060(v20, v22);
    }

    else
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      v27 = swift_allocError();
      *v28 = 0xD000000000000019;
      v28[1] = 0x8000000223735150;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v29 = sub_22372AC98();
      __swift_project_value_buffer(v29, qword_28132B680);

      v30 = sub_22372AC88();
      v31 = sub_22372B278();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38[0] = v33;
        *v32 = 136315138;
        v34 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v35 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

        v36 = sub_223623274(v34, v35, v38);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_223620000, v30, v31, "MUX: Unable to post TRPCandidateMessage for trpId : %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x223DE8A80](v33, -1, -1);
        MEMORY[0x223DE8A80](v32, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v37 = sub_22372AC88();
    v25 = sub_22372B268();
    if (os_log_type_enabled(v37, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_223620000, v37, v25, "MUX: Unable to post TRPCandidateRequestMessage. Request will time out", v26, 2u);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }
  }
}

void sub_22367DFBC(void *a1)
{
  v3 = v1;
  v5 = sub_22372A548();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEA8, &qword_22372EC48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v65 - v17;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v19 = sub_22372AC98();
  v20 = __swift_project_value_buffer(v19, qword_28132B680);
  v21 = a1;
  v71 = v20;
  v22 = sub_22372AC88();
  v23 = sub_22372B268();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_223620000, v22, v23, "MUX: received MultiUserTextBasedRootTRPCandidateRequestMessage: %@", v24, 0xCu);
    sub_223626478(v25, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v25, -1, -1);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  sub_22367E714(v21);
  if (!v2)
  {
    v27 = *(v3 + qword_28132A1E0);
    if (v27)
    {
      v67 = 0;
      v28 = qword_28132B858;
      swift_beginAccess();
      sub_223634890(v3 + v28, v18, &unk_27D08F6F0, &qword_223732CD0);
      v29 = *(v3 + qword_28132A1E8);
      v30 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
      swift_beginAccess();
      v31 = sub_22372A298();
      v32 = *(v31 - 8);
      (*(v32 + 16))(v13, v29 + v30, v31);
      (*(v32 + 56))(v13, 0, 1, v31);
      v33 = v27;
      v34 = sub_22372A9F8();
      sub_223626478(v13, &qword_27D08EEA8, &qword_22372EC48);
      sub_223626478(v18, &unk_27D08F6F0, &qword_223732CD0);
      v35 = qword_28132A208;
      v36 = *(v3 + qword_28132A208);

      if (v34)
      {
        v37 = v34;
        v38 = sub_223728C08();
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      sub_2236B3B58(v38);

      v39 = *(v3 + v35);
      v40 = *(v39 + 80);
      *(v39 + 80) = v34;
      v41 = v37;

      if (v34 && (v42 = v41, v43 = sub_223728C08(), v42, v43) && (v44 = [v43 userClassified], v43, v44))
      {
        v66 = v33;
        sub_22372AFE8();

        v45 = v68;
        sub_22372A508();
        v46 = *(v3 + v35);

        v47 = sub_223728CF8();
        v49 = sub_2236B4B18(v47, v48, v45);

        if (v49)
        {
          v50 = sub_22372A768();
          v52 = v51;
          v53 = *(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
          v54 = *(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

          sub_22367EB84(v50, v52, v45, v53, v54, v21);

          v55 = *(v3 + v35);

          v56 = sub_223728CF8();
          sub_2236B477C(v56, v57, v49);
        }

        else
        {
          v62 = sub_22372AC88();
          v63 = sub_22372B278();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_223620000, v62, v63, "MUX: Unable to retrieve MUXTextTRPCandidateContext. Request will timeout.", v64, 2u);
            MEMORY[0x223DE8A80](v64, -1, -1);
          }

          else
          {
          }
        }

        (*(v69 + 8))(v45, v70);
      }

      else
      {
        v58 = sub_22372AC88();
        v59 = sub_22372B278();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = v33;
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_223620000, v58, v59, "MUX: Unable to retrieve selected user id from UserIdentificationMessage. Request will timeout.", v61, 2u);
          MEMORY[0x223DE8A80](v61, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      sub_22372A778();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

void sub_22367E714(void *a1)
{
  v3 = v1;
  v5 = sub_22372A548();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_28132A1E0);
  if (v12)
  {
    v43 = v9;
    v44 = v8;
    v13 = qword_281328E58;
    v45 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    v15 = __swift_project_value_buffer(v14, qword_28132B680);
    v16 = a1;
    v42[1] = v15;
    v17 = sub_22372AC88();
    v18 = sub_22372B268();

    v19 = os_log_type_enabled(v17, v18);
    v46 = v2;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = v21;
      *v20 = 136315394;
      v22 = sub_223728CF8();
      v24 = sub_223623274(v22, v23, &v47);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_223729D38();
      v27 = sub_223623274(v25, v26, &v47);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_223620000, v17, v18, "MUX: updateRequestContext objects for TRP ID: %s and requestId: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    v28 = *(v3 + qword_28132A208);

    v29 = sub_223729CC8();
    v31 = v30;
    sub_223728D08();
    v32 = sub_223728CF8();
    sub_2236B3CB8(v29, v31, v11, v32, v33);

    (*(v43 + 8))(v11, v44);

    v34 = sub_22372AC88();
    v35 = sub_22372B268();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136315138;

      v38 = sub_2236B2D5C();
      v40 = v39;

      v41 = sub_223623274(v38, v40, &v47);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_223620000, v34, v35, "MUX: Created %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x223DE8A80](v37, -1, -1);
      MEMORY[0x223DE8A80](v36, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    sub_22372A778();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void sub_22367EB84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_22372A548();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[4] = v7;
  v41[5] = a1;
  v41[6] = a2;
  v41[7] = a3;
  v41[8] = a6;
  v41[9] = a4;
  v41[10] = a5;
  v20 = objc_allocWithZone(sub_223729A18());
  v21 = sub_223729988();
  if (v21)
  {
    v22 = v21;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_28132B680);
    (*(v15 + 16))(v19, a3, v14);

    v24 = sub_22372AC88();
    v25 = sub_22372B268();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42[0] = v27;
      *v26 = 136315394;
      v28 = sub_22372A768();
      v30 = sub_223623274(v28, v29, v42);
      v41[1] = v7;
      v31 = v30;

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = sub_22372A518();
      v34 = v33;
      (*(v15 + 8))(v19, v14);
      v35 = sub_223623274(v32, v34, v42);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_223620000, v24, v25, "MUX: Going to post TextBasedTRPCandidateForPlannerMessage for root request: %s  and selected UserId %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v36 = sub_22372AC98();
    __swift_project_value_buffer(v36, qword_28132B680);

    v37 = sub_22372AC88();
    v38 = sub_22372B278();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_223623274(a1, a2, v42);
      _os_log_impl(&dword_223620000, v37, v38, "MUX: Failed to create TextBasedTRPCandidateForPlannerMessage for root request: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x223DE8A80](v40, -1, -1);
      MEMORY[0x223DE8A80](v39, -1, -1);
    }
  }
}

void sub_22367EFB0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v127 = sub_22372A298();
  v125 = *(v127 - 8);
  v6 = *(v125 + 64);
  MEMORY[0x28223BE20](v127, v7);
  v124 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v122 = &v108 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v123 = &v108 - v16;
  v121 = type metadata accessor for MUXUserAttributes();
  v119 = *(v121 - 8);
  v17 = *(v119 + 64);
  MEMORY[0x28223BE20](v121, v18);
  v120 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v108 - v23;
  v25 = qword_28132A1A0;
  v26 = qword_28132B858;
  swift_beginAccess();
  v117 = v26;
  sub_223634890(&v4[v26], v24, &unk_27D08F6F0, &qword_223732CD0);
  v118 = v25;
  LODWORD(v129) = sub_223724934(&v4[v25], v24);
  v126 = v24;
  sub_223626478(v24, &unk_27D08F6F0, &qword_223732CD0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v27 = sub_22372AC98();
  v28 = __swift_project_value_buffer(v27, qword_28132B680);
  v29 = a1;
  v128 = v28;
  v30 = sub_22372AC88();
  v31 = sub_22372B268();

  v32 = os_log_type_enabled(v30, v31);
  v133 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v130[0] = v116;
    *v33 = 138412802;
    *(v33 + 4) = v29;
    *v34 = v29;
    *(v33 + 12) = 2080;
    v35 = v29;
    v36 = sub_223729D38();
    v38 = sub_223623274(v36, v37, v130);

    *(v33 + 14) = v38;
    v3 = v2;
    *(v33 + 22) = 1024;
    v39 = v129;
    *(v33 + 24) = v129 & 1;
    _os_log_impl(&dword_223620000, v30, v31, "MUX: received MultiUserRootTRPCandidateRequestMessage: %@ for requestId %s with isSiriPrompting = %{BOOL}d", v33, 0x1Cu);
    sub_223626478(v34, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v34, -1, -1);
    v40 = v116;
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x223DE8A80](v40, -1, -1);
    MEMORY[0x223DE8A80](v33, -1, -1);

    if (v39)
    {
LABEL_8:
      v42 = v133;
      v43 = v4;
      v44 = sub_223729D38();
      v46 = v45;
      v47 = sub_223728CF8();
      v49 = v48;
      v50 = sub_2237298C8();
      v51 = v43;
      sub_223681E7C(v44, v46, v47, v49, v50);
      if (v3)
      {
      }

      else
      {

        sub_2236DC060(v42, sub_22367FC3C, 0);
        v129 = 0;
        sub_223623934(&v43[qword_28132A1F0], v130);
        v52 = v132;
        v115 = v131;
        v116 = __swift_project_boxed_opaque_existential_1(v130, v131);
        v53 = qword_28132A208;
        v112 = *(*&v43[qword_28132A208] + 72);
        v54 = v112;
        sub_223634890(&v43[v117], v126, &unk_27D08F6F0, &qword_223732CD0);
        v55 = *&v43[qword_28132A1E8];
        v56 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
        swift_beginAccess();
        v57 = v43;
        v58 = *(v55 + v56);
        v59 = *&v51[qword_28132A200 + 8];
        v117 = *&v51[qword_28132A200];
        v114 = v59;
        v60 = qword_28132B8A8;
        swift_beginAccess();
        v61 = &v51[v60];
        v62 = v122;
        sub_223634890(v61, v122, &unk_27D08E990, &qword_22372FCF0);
        v113 = v54;

        v63 = sub_22367D204();
        v64 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
        swift_beginAccess();
        v65 = v125;
        v66 = v55 + v64;
        v67 = v124;
        (*(v125 + 16))(v124, v66, v127);
        v109 = v53;
        v68 = *(*&v57[v53] + 80);
        v110 = *(v52 + 8);
        v111 = v68;
        v107 = v68;
        v69 = v123;
        v70 = v126;
        v110(v112, v126, &v57[v118], v58, v117, v114, v62, v63 & 1, v67, v107, v115, v52);

        (*(v65 + 8))(v67, v127);
        sub_223626478(v62, &unk_27D08E990, &qword_22372FCF0);
        sub_223626478(v70, &unk_27D08F6F0, &qword_223732CD0);
        if ((*(v119 + 48))(v69, 1, v121) == 1)
        {
          sub_223626478(v69, &qword_27D08EE90, &unk_22372FF60);
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          v71 = sub_22372AC88();
          v72 = sub_22372B278();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_223620000, v71, v72, "MUX: Something went wrong during preNL user selection. Was unable to select a user.", v73, 2u);
            MEMORY[0x223DE8A80](v73, -1, -1);
          }
        }

        else
        {
          v87 = v120;
          sub_2236852F0(v69, v120);
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          v88 = sub_223728CF8();
          v90 = v89;
          v91 = v109;
          v92 = *&v57[v109];

          v93 = sub_22367D398(v88, v90, v87, v92);

          if (v93)
          {
            v94 = sub_22372A768();
            v96 = v95;
            v97 = *(v93 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
            v98 = *(v93 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

            v99 = v120;
            sub_22367FCA8(v94, v96, v120, v97, v98);

            v100 = *&v57[qword_28132A1D8];
            sub_2236C574C();
            v101 = *&v57[v91];

            v102 = sub_223728CF8();
            sub_2236B477C(v102, v103, v93);

            sub_223685354(v99);
          }

          else
          {
            v104 = sub_22372AC88();
            v105 = sub_22372B278();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              *v106 = 0;
              _os_log_impl(&dword_223620000, v104, v105, "MUX: selectPreNLUser: Something went wrong when selecting the candidate context. Somehow couldn't find a trpCandidateContext. This is not expected to ever happen.", v106, 2u);
              MEMORY[0x223DE8A80](v106, -1, -1);
            }

            sub_223685354(v120);
          }
        }
      }

      return;
    }
  }

  else
  {

    if (v129)
    {
      goto LABEL_8;
    }
  }

  v41 = qword_28132A208;
  if (*(*&v4[qword_28132A208] + 72))
  {
    goto LABEL_8;
  }

  v74 = v133;
  v75 = sub_22372AC88();
  v76 = sub_22372B278();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v133 = v4;
    v79 = v78;
    v130[0] = v78;
    *v77 = 136315138;
    v80 = sub_223729D38();
    v82 = sub_223623274(v80, v81, v130);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_223620000, v75, v76, "MUX: Caching MultiUserRootTRP and skipping processing because we have not received scores yet for requestId %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v83 = v79;
    v4 = v133;
    MEMORY[0x223DE8A80](v83, -1, -1);
    MEMORY[0x223DE8A80](v77, -1, -1);
  }

  v84 = *&v4[v41];
  v85 = *(v84 + 88);
  *(v84 + 88) = v74;
  v86 = v74;
}

uint64_t sub_22367FB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_223624EA4;

  return v11(a1, ObjectType, a3);
}

void *sub_22367FC3C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_22372EC40;
}

void sub_22367FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v36 = sub_22372A548();
  v10 = *(v36 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v36, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2237298C8();
  v16 = sub_22372A518();
  if (*(v15 + 16))
  {
    v35 = a5;
    v18 = sub_2236261A0(v16, v17);
    v20 = v19;

    if (v20)
    {
      v36 = *(*(v15 + 56) + 8 * v18);

      sub_223682D1C(a1, a2, a3, a4, v35, v36);
      v21 = v36;

      return;
    }
  }

  else
  {
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v22 = sub_22372AC98();
  __swift_project_value_buffer(v22, qword_28132B680);
  v23 = v36;
  (*(v10 + 16))(v14, a3, v36);

  v24 = sub_22372AC88();
  v25 = sub_22372B278();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v26 = 136315394;
    v28 = sub_22372A768();
    v30 = sub_223623274(v28, v29, &v37);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = sub_22372A518();
    v33 = v32;
    (*(v10 + 8))(v14, v23);
    v34 = sub_223623274(v31, v33, &v37);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_223620000, v24, v25, "MUX: can not access selectedUserLevelTRPCandidate from MultiUserRootTRPCandidateRequestMessage for root request: %s and selected userId %s.", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v27, -1, -1);
    MEMORY[0x223DE8A80](v26, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v23);
  }
}

void sub_22367FFFC(void *a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = a1;
  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_223620000, v5, v6, "MUX: received message: %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  if (*(*(v1 + qword_28132A208) + 40))
  {
    v10 = sub_22372AC88();
    v11 = sub_22372B278();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_223620000, v10, v11, "MUX: Selected topLevelCandidateId should be nil at this point.", v12, 2u);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }

  else
  {
    v13 = sub_223729B58();
    sub_2236801F8(v13, v14);
  }
}

void sub_2236801F8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(a1, a2, &v26);
    _os_log_impl(&dword_223620000, v7, v8, "MUX: Caching topLevel selected candidateId: %s in RequestContext.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v11 = qword_28132A208;
  v12 = *(v3 + qword_28132A208);
  v13 = *(v12 + 40);
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v14 = *(v3 + v11);
  swift_beginAccess();
  v15 = *(v14 + 64);
  if (!*(v15 + 16))
  {
    goto LABEL_10;
  }

  v16 = sub_2236261A0(a1, a2);
  if ((v17 & 1) == 0)
  {

LABEL_10:

    v19 = sub_22372AC88();
    v20 = sub_22372B278();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(a1, a2, &v27);
      _os_log_impl(&dword_223620000, v19, v20, "MUX: No user was picked for topLevelCandidateId: %s. Cannot proceed.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    goto LABEL_19;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  if (*(v18 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v18 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
  {
    v23 = sub_22372B6E8();

    if ((v23 & 1) == 0)
    {
      sub_22367BB18(v18);

      return;
    }
  }

  else
  {
  }

  v19 = sub_22372AC88();
  v24 = sub_22372B278();
  if (os_log_type_enabled(v19, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_223620000, v19, v24, "MUX: Detected highly unusual state where ASR output seems to have been finalized before the StoppedListeningForSpeechContinuation message arrived", v25, 2u);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

LABEL_19:
}

void sub_223680618(void *a1)
{
  v3 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v5 = sub_22372AC98();
  __swift_project_value_buffer(v5, qword_28132B680);
  v6 = a1;
  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_223620000, v7, v8, "MUX: received UserIdentificationMessage: %@", v9, 0xCu);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v12 = sub_223728C08();
  if (v12)
  {
    v13 = qword_28132A208;
    v14 = *(v3 + qword_28132A208);
    v15 = *(v14 + 72);
    *(v14 + 72) = v12;
    if (v15)
    {
      v16 = v12;

      v17 = *(v3 + v13);
      v18 = *(v17 + 80);
      *(v17 + 80) = v6;
      v19 = v6;

      v20 = *(*(v3 + v13) + 96);
      if (!v20)
      {
LABEL_18:

        return;
      }

      v21 = v20;
      sub_2236CD958(v21);
      if (!v2)
      {

        goto LABEL_18;
      }
    }

    else
    {
      v28 = *(v3 + v13);
      v29 = *(v28 + 80);
      *(v28 + 80) = v6;
      v30 = v12;
      v31 = v6;
      v16 = v30;

      v32 = *(*(v3 + v13) + 88);
      if (!v32)
      {
        goto LABEL_18;
      }

      v21 = v32;
      v33 = sub_22372AC88();
      v34 = sub_22372B268();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_223620000, v33, v34, "MUX: Replaying cached MultiUserRootTRPCandidateRequestMessage", v35, 2u);
        MEMORY[0x223DE8A80](v35, -1, -1);
      }

      sub_22367EFB0(v21);
      if (!v2)
      {
        v36 = *(v3 + v13);
        v37 = *(v36 + 88);
        *(v36 + 88) = 0;

        v38 = *(*(v3 + v13) + 96);
        if (v38)
        {
          v39 = v38;
          sub_2236CD958(v39);
        }
      }
    }

    return;
  }

  v22 = v6;
  v23 = sub_22372AC88();
  v24 = sub_22372B278();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_223620000, v23, v24, "MUX: Received User Identification message without voice ID score card: %@. This might be expected in the future, but for now this is unexpected.", v25, 0xCu);
    sub_223626478(v26, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v26, -1, -1);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }
}

void sub_2236809CC()
{
  v1 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = sub_22372AC88();
  v4 = sub_22372B268();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223620000, v3, v4, "MUX: Handling FlowPluginInfoMessage", v5, 2u);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v6 = sub_2237290A8();
  v8 = v7;
  v9 = *(v1 + qword_28132A208);
  swift_beginAccess();
  v10 = *(v9 + 48);
  if (*(v10 + 16))
  {

    v11 = sub_2236261A0(v6, v8);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      type metadata accessor for MUXTRPCandidateContext(0);
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;

        v16 = sub_223728298();
        sub_223680CA4(v15, v16 & 1);

        return;
      }
    }

    else
    {
    }
  }

  v17 = sub_22372AC88();
  v18 = sub_22372B278();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    v21 = sub_223623274(v6, v8, &v22);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_223620000, v17, v18, "MUX: handleFlowPluginInfoMessage: Unable to find candidate context for id: %s, this can affect Conversation.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v19, -1, -1);
  }

  else
  {
  }
}

void sub_223680CA4(uint64_t a1, int a2)
{
  v37 = a2;
  v4 = type metadata accessor for MUXUserAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = v36 - v17;
  v36[1] = sub_22372A768();
  v36[2] = v19;
  v20 = qword_28132B888;
  swift_beginAccess();
  v36[0] = v2;
  sub_223634890(v2 + v20, v18, &qword_27D08E9D0, &qword_22372D1E0);
  v21 = sub_223729F08();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v18, 1, v21) == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback);
    v24 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    swift_beginAccess();
    v25 = *(v24 + *(v4 + 20));
    v26 = *(v24 + *(v4 + 28));
    sub_22368509C(v24, v8);
    v27 = sub_22372A548();
    v28 = *(v27 - 8);
    (*(v28 + 32))(v13, v8, v27);
    (*(v28 + 56))(v13, 0, 1, v27);
    v29 = sub_22372AA48();

    sub_223626478(v13, &unk_27D08E990, &qword_22372FCF0);
    (*(v22 + 8))(v18, v21);
    if (v29)
    {
      v30 = sub_22372A748();
      aBlock[4] = sub_223682B78;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22365AC5C;
      aBlock[3] = &block_descriptor_11;
      v31 = _Block_copy(aBlock);
      v32 = v29;
      [v30 handleCommand:v32 completion:v31];
      _Block_release(v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v33 = sub_22372AC98();
      __swift_project_value_buffer(v33, qword_28132B680);
      v32 = sub_22372AC88();
      v34 = sub_22372B278();
      if (os_log_type_enabled(v32, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_223620000, v32, v34, "MUX: Could not send VoiceIdentificationSignal", v35, 2u);
        MEMORY[0x223DE8A80](v35, -1, -1);
      }
    }
  }
}

void sub_22368110C(uint64_t a1)
{
  v2 = sub_22372A3C8();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MUXUserAttributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22372A548();
  v11 = *(v64 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v64, v13);
  v63 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v15 = sub_22372AC98();
  v16 = __swift_project_value_buffer(v15, qword_28132B680);

  v67 = v16;
  v17 = sub_22372AC88();
  v18 = sub_22372B268();

  v19 = os_log_type_enabled(v17, v18);
  v68 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v69[0] = v21;
    *v20 = 136315138;
    v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v23 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
    v62 = v2;

    v24 = sub_223623274(v22, v23, v69);
    a1 = v68;
    v2 = v62;

    *(v20 + 4) = v24;
    _os_log_impl(&dword_223620000, v17, v18, "MUX: Proceeding to post StoppedListeningForSpeechContinuation for given TRP Id: %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v20, -1, -1);
  }

  v25 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(a1 + v25, v10);
  v26 = v63;
  v27 = v10;
  v28 = v64;
  (*(v11 + 32))(v63, v27, v64);
  v29 = *(v71 + qword_28132A1A0 + 32);
  __swift_project_boxed_opaque_existential_1((v71 + qword_28132A1A0), *(v71 + qword_28132A1A0 + 24));
  v70 = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  (*(v11 + 16))(boxed_opaque_existential_1, v26, v28);
  v31 = v66;
  v32 = v65;
  (*(v66 + 104))(v65, *MEMORY[0x277D5D1C0], v2);
  sub_22372A4B8();
  v33 = v32;
  v34 = v68;
  (*(v31 + 8))(v33, v2);
  (*(v11 + 8))(v26, v28);
  sub_223626478(v69, &unk_27D08F750, &qword_22372C960);
  v35 = qword_28132A208;
  v36 = v71;
  v37 = *(v71 + qword_28132A208);
  v38 = (v34 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v39 = *(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  v40 = *(v37 + 40);
  *(v37 + 32) = *(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  *(v37 + 40) = v39;

  sub_2236B1FA4(3u);
  *(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 3;
  v42 = *v38;
  v41 = v38[1];
  v43 = *(v36 + v35);

  sub_2236B477C(v42, v41, v34);

  MEMORY[0x28223BE20](v44, v45);
  *(&v62 - 2) = v36;
  *(&v62 - 1) = v34;
  v46 = objc_allocWithZone(sub_223729B68());
  v47 = sub_223729AE8();
  if (v47)
  {
    v48 = v47;
    v49 = v47;
    v50 = sub_22372AC88();
    v51 = sub_22372B268();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v48;
      v54 = v49;
      _os_log_impl(&dword_223620000, v50, v51, "MUX: posting StoppedListeningForSpeechContinuation message: %@", v52, 0xCu);
      sub_223626478(v53, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v53, -1, -1);
      MEMORY[0x223DE8A80](v52, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v69, v70);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v69);
  }

  else
  {

    v55 = sub_22372AC88();
    v56 = sub_22372B278();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v69[0] = v58;
      *v57 = 136315138;
      v59 = *(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v60 = *(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v61 = sub_223623274(v59, v60, v69);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_223620000, v55, v56, "MUX: Failed to create StoppedListeningForSpeechContinuationMessage for rcId: %s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x223DE8A80](v58, -1, -1);
      MEMORY[0x223DE8A80](v57, -1, -1);
    }
  }
}

uint64_t sub_223681814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = *MEMORY[0x277D5CDD8];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_223729B18();
  sub_22372A728();
  sub_223729AF8();
  sub_22372A778();
  v17 = sub_223727408();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  sub_223729B48();
  sub_22372A768();
  sub_223729B38();
  v18 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v19 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  return sub_223729B28();
}

uint64_t sub_223681A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a6;
  v53 = a7;
  v50[2] = a3;
  v51 = a5;
  v50[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v54 = v50 - v10;
  v11 = type metadata accessor for MUXUserAttributes();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = v50 - v30;
  v32 = *MEMORY[0x277D5CDE0];
  v33 = sub_223729DE8();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v31, v32, v33);
  (*(v34 + 56))(v31, 0, 1, v33);
  sub_223728348();
  sub_22372A728();
  sub_2237282F8();
  sub_22372A778();
  v35 = sub_223727408();
  (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
  sub_223728378();

  sub_223728368();
  v36 = v51;
  v37 = *(v51 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v38 = *(v51 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  sub_223728308();

  sub_223728318();

  sub_223728338();
  v39 = v36 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v39, v16);
  v40 = sub_22372A548();
  v41 = *(v40 - 8);
  (*(v41 + 32))(v21, v16, v40);
  (*(v41 + 56))(v21, 0, 1, v40);
  sub_223728358();
  v42 = *(v39 + v12[8]);
  v43 = *(v39 + v12[7]);
  v44 = *(v39 + v12[10]);
  v45 = *(v39 + v12[11]);
  v46 = *(v39 + v12[12]) & 1;
  v47 = v54;
  sub_22372A428();
  v48 = sub_22372A438();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  return sub_223728328();
}

void sub_223681E7C(int64_t a1, NSObject *a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v123 = a5;
  v124 = a3;
  v12 = sub_22372A548();
  v125 = *(v12 - 8);
  isa = v125[8].isa;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v117 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v116 = v105 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v105 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v128 = v105 - v25;
  if (qword_281328E58 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v26 = sub_22372AC98();
    v27 = __swift_project_value_buffer(v26, qword_28132B680);

    v130 = v27;
    v28 = sub_22372AC88();
    v29 = sub_22372B268();

    v30 = os_log_type_enabled(v28, v29);
    v127 = a4;
    v129 = v12;
    v113 = v23;
    if (v30)
    {
      v31 = a4;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v131 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_223623274(v124, v31, &v131);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_223623274(a1, a2, &v131);
      _os_log_impl(&dword_223620000, v28, v29, "MUX: updateRequestContext objects for TRP ID: %s and requestId: %s", v32, 0x16u);
      swift_arrayDestroy();
      v34 = v33;
      v12 = v129;
      MEMORY[0x223DE8A80](v34, -1, -1);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    v35 = *(v8 + qword_28132A1E0);
    if (!v35)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223685890(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      sub_22372A778();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v114 = qword_28132A208;
    a2 = *(*(v8 + qword_28132A208) + 72);
    if (!a2)
    {
      break;
    }

    v112 = v8;
    v105[1] = v7;
    v23 = (v123 + 64);
    v36 = 1 << *(v123 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v8 = v37 & *(v123 + 64);
    a1 = (v36 + 63) >> 6;
    v115 = &v125[2];
    v126 = &v125[1];
    v109 = v125 + 4;
    v108 = v35;
    v125 = a2;

    v38 = 0;
    *&v39 = 136315138;
    v107 = v39;
    *&v39 = 136315394;
    v106 = v39;
    v7 = v128;
    v110 = a1;
    v111 = v23;
    while (v8)
    {
      a4 = v38;
LABEL_16:
      v40 = __clz(__rbit64(v8)) | (a4 << 6);
      v41 = (*(v123 + 48) + 16 * v40);
      v43 = *v41;
      v42 = v41[1];
      v44 = *(*(v123 + 56) + 8 * v40);

      v120 = sub_223728CF8();
      v46 = v45;
      v122 = v44;

      sub_22372A508();
      v47 = [v125 spIdKnownUserScores];
      if (!v47)
      {
        __break(1u);
        return;
      }

      v48 = v47;
      sub_223685980();
      v49 = sub_22372AF58();

      if (*(v49 + 16))
      {
        v50 = sub_2236261A0(v43, v42);
        v52 = v51;

        if (v52)
        {
          v53 = *(*(v49 + 56) + 8 * v50);

          LODWORD(v121) = [v53 intValue];

          goto LABEL_26;
        }
      }

      else
      {
      }

      if ((sub_22372AA18() & 1) == 0)
      {
        v54 = v113;
        (*v115)(v113, v7, v12);
        v55 = sub_22372AC88();
        v56 = sub_22372B278();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v131 = v121;
          *v57 = v107;
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
          v58 = sub_22372B6B8();
          v60 = v59;
          (*v126)(v113, v12);
          v61 = sub_223623274(v58, v60, &v131);

          *(v57 + 4) = v61;
          _os_log_impl(&dword_223620000, v55, v56, "MUX: Encountered known userId: %s in speechPackage for which no VoiceIdScores are available. This can lead to issues for User Selection. Defaulting to -1 for now.", v57, 0xCu);
          v62 = v121;
          __swift_destroy_boxed_opaque_existential_1Tm(v121);
          MEMORY[0x223DE8A80](v62, -1, -1);
          MEMORY[0x223DE8A80](v57, -1, -1);
        }

        else
        {

          (*v126)(v54, v12);
        }
      }

      LODWORD(v121) = -1;
LABEL_26:
      v8 &= v8 - 1;
      v63 = v127;

      v64 = sub_22372AC88();
      v65 = sub_22372B268();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v131 = v67;
        *v66 = v106;
        v68 = sub_223623274(v120, v46, &v131);

        *(v66 + 4) = v68;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_223623274(v124, v63, &v131);
        _os_log_impl(&dword_223620000, v64, v65, "MUX: Caching TRP ID: %s from Multi-user TRP ID: %s.", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v67, -1, -1);
        MEMORY[0x223DE8A80](v66, -1, -1);
      }

      else
      {
      }

      v120 = *(v112 + v114);

      v119 = [v125 userIdentityClassification];
      sub_22372A418();
      v118 = sub_22372B308();
      v69 = v116;
      v70 = *v115;
      v71 = v129;
      (*v115)(v116, v128, v129);
      v72 = type metadata accessor for MUXSpeechTRPCandidateContext(0);
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      v75 = swift_allocObject();
      v76 = v122;
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges28MUXSpeechTRPCandidateContext_trpMessage) = v122;
      v77 = v117;
      v70(v117, v69, v71);
      v78 = v76;
      v79 = sub_223728CF8();
      v81 = v80;
      v122 = *v126;
      v122(v69, v71);
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = 0;
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = 0;
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
      v82 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
      v83 = sub_223727678();
      (*(*(v83 - 8) + 56))(v75 + v82, 1, 1, v83);
      v84 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
      v85 = sub_223727758();
      (*(*(v85 - 8) + 56))(v75 + v84, 1, 1, v85);
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
      *(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
      v86 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
      v87 = sub_22372AEE8();
      (*(*(v87 - 8) + 56))(v75 + v86, 1, 1, v87);
      v88 = v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
      *v88 = 0;
      *(v88 + 8) = 1;
      v89 = v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
      (v109->isa)(v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v77, v71);
      v90 = type metadata accessor for MUXUserAttributes();
      *(v89 + v90[5]) = v119;
      *(v89 + v90[6]) = v121;
      *(v89 + v90[8]) = v118;
      *(v89 + v90[7]) = 0;
      *(v89 + v90[9]) = 2;
      *(v89 + v90[10]) = 2;
      v91 = (v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
      v92 = v127;
      *v91 = v124;
      v91[1] = v92;
      v93 = (v75 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      *v93 = v79;
      v93[1] = v81;

      sub_2236B4024(v75);

      a2 = sub_22372AC88();
      v94 = sub_22372B268();

      if (os_log_type_enabled(a2, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v131 = v96;
        *v95 = v107;

        v97 = sub_2236B22BC();
        v121 = v78;
        v99 = v98;

        v100 = sub_223623274(v97, v99, &v131);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_223620000, a2, v94, "MUX: Created %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x223DE8A80](v96, -1, -1);
        MEMORY[0x223DE8A80](v95, -1, -1);
      }

      else
      {
      }

      v7 = v128;
      v12 = v129;
      v122(v128, v129);
      v38 = a4;
      a1 = v110;
      v23 = v111;
    }

    while (1)
    {
      a4 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (a4 >= a1)
      {

        return;
      }

      v8 = *&v23[8 * a4];
      ++v38;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v101 = v35;
  v102 = sub_22372AC88();
  v103 = sub_22372B278();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_223620000, v102, v103, "MUX: updateRequestContext failed because latestVoiceIdScoreCard is nil", v104, 2u);
    MEMORY[0x223DE8A80](v104, -1, -1);
  }
}

void sub_223682B78(uint64_t a1, void *a2)
{
  if (qword_281328E68 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B698);
  v4 = a2;
  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v9 = sub_22372B038();
    v11 = sub_223623274(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_223620000, oslog, v5, "MUX: Sent VoiceIdentificationSignal, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
  }
}

void sub_223682D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v65 = sub_22372A548();
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v65, v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v64 - v21;
  v66 = v7;
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v72 = a6;
  v23 = objc_allocWithZone(sub_223729228());
  v24 = sub_2237291A8();
  if (v24)
  {
    v64 = v24;
    v25 = *(v7 + qword_28132A208);
    swift_beginAccess();
    v26 = *(v25 + 48);
    if (*(v26 + 16))
    {

      v27 = sub_2236261A0(a4, a5);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        type metadata accessor for MUXTRPCandidateContext(0);
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v31 = v30;

          sub_2236B1FA4(1u);

          *(v31 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 1;

LABEL_18:
          v50 = v65;
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v51 = sub_22372AC98();
          __swift_project_value_buffer(v51, qword_28132B680);
          (*(v14 + 16))(v22, a3, v50);

          v52 = sub_22372AC88();
          v53 = sub_22372B268();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v73[0] = v55;
            *v54 = 136315394;
            v56 = sub_22372A768();
            v58 = sub_223623274(v56, v57, v73);

            *(v54 + 4) = v58;
            *(v54 + 12) = 2080;
            v59 = sub_22372A518();
            v61 = v60;
            (*(v14 + 8))(v22, v50);
            v62 = sub_223623274(v59, v61, v73);

            *(v54 + 14) = v62;
            _os_log_impl(&dword_223620000, v52, v53, "MUX: Going to post TRPCandidateForPlannerMessage for root request: %s  and selected UserId %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE8A80](v55, -1, -1);
            MEMORY[0x223DE8A80](v54, -1, -1);
          }

          else
          {

            (*(v14 + 8))(v22, v50);
          }

          sub_22372A758();
          __swift_project_boxed_opaque_existential_1(v73, v73[3]);
          v63 = v64;
          sub_223729D88();

          __swift_destroy_boxed_opaque_existential_1Tm(v73);
          return;
        }
      }

      else
      {
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v45 = sub_22372AC98();
    __swift_project_value_buffer(v45, qword_28132B680);

    v46 = sub_22372AC88();
    v47 = sub_22372B278();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v73[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_223623274(a4, a5, v73);
      _os_log_impl(&dword_223620000, v46, v47, "MUX: Failed to update candidateState. MUXTRPCandidateContext for TRPCandidateId %s not found", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223DE8A80](v49, -1, -1);
      MEMORY[0x223DE8A80](v48, -1, -1);
    }

    goto LABEL_18;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v32 = sub_22372AC98();
  __swift_project_value_buffer(v32, qword_28132B680);
  v33 = v65;
  (*(v14 + 16))(v19, a3, v65);

  v34 = sub_22372AC88();
  v35 = sub_22372B278();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v73[0] = v37;
    *v36 = 136315394;
    v38 = sub_22372A768();
    v40 = sub_223623274(v38, v39, v73);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    v41 = sub_22372A518();
    v43 = v42;
    (*(v14 + 8))(v19, v33);
    v44 = sub_223623274(v41, v43, v73);

    *(v36 + 14) = v44;
    _os_log_impl(&dword_223620000, v34, v35, "MUX: Failed to create TRPCandidateForPlannerMessage for root request: %s and selected userId %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v37, -1, -1);
    MEMORY[0x223DE8A80](v36, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v19, v33);
  }
}

uint64_t sub_22368340C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v29 = a3;
  v30 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v29 - v20;
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_223729DE8();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v21, v22, v23);
  (*(v24 + 56))(v21, 0, 1, v23);
  sub_2237299B8();
  sub_22372A728();
  sub_223729998();
  sub_22372A778();
  v25 = sub_223727408();
  (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
  sub_2237299E8();

  sub_2237299D8();
  v26 = sub_22372A548();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v11, v30, v26);
  (*(v27 + 56))(v11, 0, 1, v26);
  sub_2237299C8();
  sub_223729CC8();
  sub_2237299F8();

  return sub_2237299A8();
}

uint64_t sub_2236836F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a6;
  v33 = a8;
  v30 = a3;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v30 - v21;
  v23 = *MEMORY[0x277D5CDD8];
  v24 = sub_223729DE8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  sub_2237291E8();
  sub_22372A728();
  sub_2237291B8();
  sub_22372A778();
  v26 = sub_223727408();
  (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
  sub_223729218();

  sub_223729208();
  v27 = sub_22372A548();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v12, v31, v27);
  (*(v28 + 56))(v12, 0, 1, v27);
  sub_2237291F8();

  sub_2237291C8();
  sub_223728C58();
  return sub_2237291D8();
}

uint64_t sub_2236839E4()
{
  v1[17] = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0) - 8);
  v1[18] = v2;
  v1[19] = *(v2 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v3 = sub_223727408();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  v6 = type metadata accessor for MUXUserAttributes();
  v1[25] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = sub_22372A548();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v1[29] = *(v9 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223683BBC, 0, 0);
}

uint64_t sub_223683BBC()
{
  v131 = v0;
  v1 = *(v0 + 136);
  v2 = qword_28132A208;
  *(v0 + 256) = qword_28132A208;
  v3 = *(v1 + v2);
  v5 = v3[4];
  v4 = v3[5];
  *(v0 + 264) = v4;
  if (!v4)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
      v112 = *(v0 + 136);
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);

    v27 = sub_22372AC88();
    v28 = sub_22372B278();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = *(v0 + 136);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v130 = v31;
    *v30 = 136315138;
    v32 = sub_22372A768();
    v34 = sub_223623274(v32, v33, &v130);

    *(v30 + 4) = v34;
    v35 = "Instrumentation: For requestContext with requestId %s, unable to find selectedTopLevelCandidateId, we lost the cache!";
    goto LABEL_17;
  }

  v6 = *(v1 + qword_28132A1E0);
  *(v0 + 272) = v6;
  if (!v6)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
      v113 = *(v0 + 136);
    }

    v36 = sub_22372AC98();
    __swift_project_value_buffer(v36, qword_28132B680);

    v27 = sub_22372AC88();
    v28 = sub_22372B278();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_18;
    }

    v37 = *(v0 + 136);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v130 = v31;
    *v30 = 136315138;
    v38 = sub_22372A768();
    v40 = sub_223623274(v38, v39, &v130);

    *(v30 + 4) = v40;
    v35 = "Instrumentation: No MUXRequestContext for requestId %s, unable to log request completion.";
LABEL_17:
    _os_log_impl(&dword_223620000, v27, v28, v35, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v30, -1, -1);
LABEL_18:

    goto LABEL_47;
  }

  swift_beginAccess();
  v7 = v3[8];
  v8 = *(v7 + 16);

  v9 = v6;
  if (v8)
  {

    v10 = sub_2236261A0(v5, v4);
    if (v11)
    {
      v126 = v5;
      v12 = *(v0 + 248);
      v13 = *(v0 + 224);
      v128 = *(v0 + 216);
      v14 = *(v0 + 208);
      v15 = *(*(v7 + 56) + 8 * v10);
      *(v0 + 280) = v15;

      v16 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
      *(v0 + 288) = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
      swift_beginAccess();
      v127 = v15;
      v125 = v16;
      sub_22368509C(v15 + v16, v14);
      v17 = *(v13 + 32);
      *(v0 + 296) = v17;
      *(v0 + 304) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v17(v12, v14, v128);
      v129 = v9;
      v18 = sub_22372AA08();
      *(v0 + 312) = v18;
      v19 = *(v13 + 8);
      *(v0 + 320) = v19;
      *(v0 + 328) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v12, v128);
      if (v18)
      {
        v20 = [v18 loggableMultiUserSharedUserId];
        if (v20)
        {

          v21 = [v18 sharedUserId];
          if (v21)
          {
            v22 = v21;
            v23 = sub_22372AFE8();
            v25 = v24;
          }

          else
          {
            v23 = 0;
            v25 = 0;
          }

          v86 = [v18 loggableMultiUserSharedUserId];
          if (v86)
          {
            v87 = v86;
            v88 = sub_22372AFE8();
            v90 = v89;

            v91 = v129;
            if (v25)
            {
              if (v90)
              {
                if (v23 == v88 && v25 == v90)
                {

                  v92 = 1;
                }

                else
                {
                  v92 = sub_22372B6E8();
                }

                goto LABEL_54;
              }

              goto LABEL_43;
            }

            if (v90)
            {
              v92 = 0;
              goto LABEL_54;
            }
          }

          else
          {
            v91 = v129;
            if (v25)
            {
LABEL_43:
              v92 = 0;
LABEL_54:

              goto LABEL_55;
            }
          }

          v92 = 1;
LABEL_55:
          *(v0 + 376) = v92 & 1;
          v102 = *(v0 + 184);
          v101 = *(v0 + 192);
          v103 = *(v0 + 176);
          v104 = *(v0 + 136);
          *(v0 + 336) = sub_22372A9E8();
          v105 = v91;
          sub_22372A778();
          v106 = sub_2237273B8();
          v108 = v107;
          *(v0 + 344) = v107;
          (*(v102 + 8))(v101, v103);
          v109 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
          *(v0 + 352) = v109;
          v110 = *(MEMORY[0x277D600C0] + 4);
          v111 = swift_task_alloc();
          *(v0 + 360) = v111;
          *v111 = v0;
          v111[1] = sub_223684884;

          return MEMORY[0x2821C5610](v6, v106, v108, v109);
        }

        v122 = v17;
        v124 = v19;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v71 = *(v0 + 136);
        v72 = sub_22372AC98();
        __swift_project_value_buffer(v72, qword_28132B680);

        v55 = sub_22372AC88();
        v73 = sub_22372B278();

        if (os_log_type_enabled(v55, v73))
        {
          v74 = *(v0 + 248);
          v75 = *(v0 + 208);
          v114 = *(v0 + 216);
          loga = v55;
          v76 = *(v0 + 136);
          v77 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v130 = v118;
          *v77 = 136315650;
          v78 = sub_22372A768();
          v116 = v73;
          v80 = sub_223623274(v78, v79, &v130);

          *(v77 + 4) = v80;
          *(v77 + 12) = 2080;
          sub_22368509C(v127 + v125, v75);
          v122(v74, v75, v114);
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
          v81 = sub_22372B6B8();
          v83 = v82;
          v124(v74, v114);
          v84 = sub_223623274(v81, v83, &v130);

          *(v77 + 14) = v84;
          *(v77 + 22) = 2080;
          v85 = sub_223623274(v126, v4, &v130);

          *(v77 + 24) = v85;
          v70 = loga;
          _os_log_impl(&dword_223620000, loga, v116, "Instrumentation: For requestContext with requestId %s, unable to find loggable shared User Id for selected user id: %s and selectedTopLevelCandidateId %s.", v77, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v118, -1, -1);
          MEMORY[0x223DE8A80](v77, -1, -1);

          goto LABEL_33;
        }
      }

      else
      {
        v121 = v17;
        v123 = v19;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v53 = *(v0 + 136);
        v54 = sub_22372AC98();
        __swift_project_value_buffer(v54, qword_28132B680);

        v55 = sub_22372AC88();
        v56 = sub_22372B278();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = *(v0 + 248);
          v58 = *(v0 + 208);
          v59 = *(v0 + 216);
          log = v55;
          v60 = *(v0 + 136);
          v61 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v130 = v117;
          *v61 = 136315650;
          v62 = sub_22372A768();
          v115 = v56;
          v64 = sub_223623274(v62, v63, &v130);

          *(v61 + 4) = v64;
          *(v61 + 12) = 2080;
          sub_22368509C(v127 + v125, v58);
          v121(v57, v58, v59);
          sub_223685890(&qword_28132B4E8, MEMORY[0x277D5D298]);
          v65 = sub_22372B6B8();
          v67 = v66;
          v123(v57, v59);
          v68 = sub_223623274(v65, v67, &v130);

          *(v61 + 14) = v68;
          *(v61 + 22) = 2080;
          v69 = sub_223623274(v126, v4, &v130);

          *(v61 + 24) = v69;
          v70 = log;
          _os_log_impl(&dword_223620000, log, v115, "Instrumentation: For requestContext with requestId %s, unable to find Home Member Info for selected user id: %s and selectedTopLevelCandidateId %s.", v61, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v117, -1, -1);
          MEMORY[0x223DE8A80](v61, -1, -1);

LABEL_33:

          goto LABEL_47;
        }
      }

LABEL_46:

      goto LABEL_47;
    }
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 136);
  v42 = sub_22372AC98();
  __swift_project_value_buffer(v42, qword_28132B680);

  v43 = sub_22372AC88();
  v44 = sub_22372B278();

  if (!os_log_type_enabled(v43, v44))
  {

    goto LABEL_46;
  }

  v45 = *(v0 + 136);
  v46 = swift_slowAlloc();
  v47 = v9;
  v48 = swift_slowAlloc();
  v130 = v48;
  *v46 = 136315394;
  v49 = sub_22372A768();
  v51 = sub_223623274(v49, v50, &v130);

  *(v46 + 4) = v51;
  *(v46 + 12) = 2080;
  v52 = sub_223623274(v5, v4, &v130);

  *(v46 + 14) = v52;
  _os_log_impl(&dword_223620000, v43, v44, "Instrumentation: For requestContext with requestId %s, unable to find selected RC Context for given selectedTopLevelCandidateId %s.", v46, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DE8A80](v48, -1, -1);
  MEMORY[0x223DE8A80](v46, -1, -1);

LABEL_47:
  v94 = *(v0 + 240);
  v93 = *(v0 + 248);
  v95 = *(v0 + 208);
  v96 = *(v0 + 192);
  v98 = *(v0 + 160);
  v97 = *(v0 + 168);

  v99 = *(v0 + 8);

  return v99();
}

uint64_t sub_223684884(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 344);
  v5 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 368) = a1;

  return MEMORY[0x2822009F8](sub_2236849DC, 0, 0);
}

id sub_2236849DC()
{
  v97 = v0;
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[17];
  v7 = v2 + v0[36];
  v95 = *(v6 + qword_28132A1D8);
  v8 = sub_22372A748();
  v92 = sub_22372A768();
  v94 = v9;
  if (*(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs + 8))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs);
  }

  v91 = v10;
  v11 = *(*(v6 + v3) + 72);
  v12 = qword_28132B8A8;
  swift_beginAccess();
  sub_223634890(v6 + v12, v5, &unk_27D08E990, &qword_22372FCF0);
  v90 = v11;
  v93 = v11;
  v89 = sub_22372AA28();
  v13 = *(v7 + *(v4 + 20));
  result = [v1 sharedUserId];
  if (result)
  {
    v15 = result;
    v16 = v0[33];
    v17 = v0[34];
    v18 = v0[32];
    v19 = v0[30];
    v20 = v0[17];

    sub_22372AFE8();

    sub_22372A508();
    v21 = sub_223727EF8();
    v22 = *(*(v20 + v18) + 80);
    if ([v8 respondsToSelector_])
    {
      v83 = v0[46];
      v79 = v0[42];
      v77 = *(v0 + 376);
      v88 = v0[41];
      v82 = v0[38];
      v78 = v0[37];
      v23 = v0[31];
      v81 = v21;
      v24 = v0[30];
      v26 = v0[27];
      v25 = v0[28];
      v74 = v26;
      v75 = v23;
      v28 = v0[20];
      v27 = v0[21];
      v86 = v27;
      v87 = v0[40];
      v72 = v28;
      v73 = v0[29];
      v76 = v13;
      v84 = v8;
      v30 = v0[18];
      v29 = v0[19];
      v80 = v22;
      v85 = v24;
      sub_22372A518();
      sub_223634890(v27, v28, &unk_27D08E990, &qword_22372FCF0);
      (*(v25 + 16))(v23, v24, v26);
      v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
      v32 = v31 + v29;
      v33 = (v32 + 9) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v35 = (*(v25 + 80) + v34 + 8) & ~*(v25 + 80);
      v36 = (v35 + v73) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 2) = v95;
      *(v37 + 3) = v92;
      *(v37 + 4) = v94;
      *(v37 + 5) = v91;
      *(v37 + 6) = v90;
      sub_223685100(v72, &v37[v31]);
      v38 = &v37[v32];
      *v38 = v89 & 1;
      v38[1] = v77;
      *&v37[v33] = v76;
      *&v37[v34] = v79;
      v78(&v37[v35], v75, v26);
      v37[v35 + v73] = v81 & 1;
      *&v37[v36 + 8] = v22;
      *&v37[(v36 + 23) & 0xFFFFFFFFFFFFFFF8] = v83;
      v39 = v93;
      v40 = v80;

      v41 = sub_22372AFD8();

      v0[6] = sub_223685170;
      v0[7] = v37;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22368503C;
      v0[5] = &block_descriptor_0;
      v42 = _Block_copy(v0 + 2);

      [v84 fetchDeviceAndUserIdsForSharedUserId:v41 withCallback:v42];
      _Block_release(v42);

      swift_unknownObjectRelease();
      v87(v85, v74);
      sub_223626478(v86, &unk_27D08E990, &qword_22372FCF0);
      v43 = v0[7];
    }

    else
    {
      v44 = v0[46];
      v45 = v0[41];
      v46 = v0[42];
      v47 = v0[40];
      v48 = v0[30];
      v49 = v0[27];
      v50 = v0[21];

      swift_unknownObjectRelease();
      v47(v48, v49);
      sub_223626478(v50, &unk_27D08E990, &qword_22372FCF0);
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v51 = v0[17];
    v52 = sub_22372AC98();
    __swift_project_value_buffer(v52, qword_27D097070);

    v53 = sub_22372AC88();
    v54 = sub_22372B268();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v0[39];
    v58 = v0[34];
    v57 = v0[35];
    if (v55)
    {
      v59 = v0[17];
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v96 = v61;
      *v60 = 136315138;
      v62 = sub_22372A768();
      v64 = sub_223623274(v62, v63, &v96);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_223620000, v53, v54, "Instrumentation: Successfully logRequestCompleted() for requestId %s.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x223DE8A80](v61, -1, -1);
      MEMORY[0x223DE8A80](v60, -1, -1);
    }

    else
    {
    }

    v66 = v0[30];
    v65 = v0[31];
    v67 = v0[26];
    v68 = v0[24];
    v70 = v0[20];
    v69 = v0[21];

    v71 = v0[1];

    return v71();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22368503C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22368509C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUXUserAttributes();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223685100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_223685170(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 9) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22372A548() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  return sub_2236914C4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 1), *(v1 + v6), *(v1 + v7), v1 + v9, *(v1 + v10), *(v1 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236852F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUXUserAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223685354(uint64_t a1)
{
  v2 = type metadata accessor for MUXUserAttributes();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2236853D0(uint64_t a1)
{
  type metadata accessor for MUXTRPCandidateContext(0);
  if (!swift_dynamicCastClass())
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    v13 = sub_22372AC88();
    v14 = sub_22372B278();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223620000, v13, v14, "MUX: Re trigger is only for Speech Requests.", v15, 2u);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) - 2 < 2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_28132B680);

    v3 = sub_22372AC88();
    v4 = sub_22372B278();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v8 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v9 = *(v7 + 8);

    v10 = sub_223623274(v8, v9, &v31);

    *(v5 + 4) = v10;
    v11 = "MUX: Encountered highly unusual situation where rcId: %s should have NL results but does not. File a radar to Siri Orchestration.";
LABEL_23:
    _os_log_impl(&dword_223620000, v3, v4, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
LABEL_24:

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);

    v3 = sub_22372AC88();
    v4 = sub_22372B268();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v27 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v28 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v29 = *(v27 + 8);

    v30 = sub_223623274(v28, v29, &v31);

    *(v5 + 4) = v30;
    v11 = "MUX: NL has already been triggered for rcID: %s. Proceeding to wait for results.";
    goto LABEL_23;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  __swift_project_value_buffer(v16, qword_28132B680);

  v17 = sub_22372AC88();
  v18 = sub_22372B268();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    v21 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v23 = *(v21 + 8);

    v24 = sub_223623274(v22, v23, &v31);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_223620000, v17, v18, "MUX: NL needs to be triggered for topLevelId: %s as it was never triggered.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v19, -1, -1);
  }

  return 1;
}

uint64_t sub_223685890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2236858D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223624EA4;

  return sub_22367FB08(a1, v5, v4);
}

unint64_t sub_223685980()
{
  result = qword_27D08EAE0;
  if (!qword_27D08EAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D08EAE0);
  }

  return result;
}

uint64_t sub_223685A08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2236E971C();
}

uint64_t LocalIFSessionClient.init(configuration:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_22372AE98();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223685B28, 0, 0);
}

uint64_t sub_223685B28()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v5 = sub_22372B2F8();
  v0[9] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = sub_223687724(&unk_281328D40, sub_223624E58);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *(v7 + 16) = v4;
  v8 = *(MEMORY[0x277D85A08] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = sub_223727B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v9 = v0;
  v9[1] = sub_223685CE4;

  return MEMORY[0x282200828](v0 + 2, v5, v6, 0, 0, &unk_22372EC60, v7, v10);
}

uint64_t sub_223685CE4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v8 = *v1;

  if (v0)
  {
    v5 = sub_223685EC8;
  }

  else
  {
    v6 = *(v2 + 80);

    v5 = sub_223685E1C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_223685E1C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  **(v0 + 32) = *(v0 + 16);
  v3 = sub_223727E78();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_223685EC8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[3];

  v5 = sub_223727E78();
  (*(*(v5 - 8) + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t LocalIFSessionClient.startSession(id:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = sub_22372AE98();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *v4;
  v5[9] = v9;
  v5[10] = v10;

  return MEMORY[0x2822009F8](sub_223686044, 0, 0);
}

uint64_t sub_223686044()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v14 = *(v0 + 32);
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  *(v0 + 88) = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v14;
  *(v8 + 40) = v5;
  v9 = *(MEMORY[0x277D85A08] + 4);
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v11 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v10 = v0;
  v10[1] = sub_223686224;
  v12 = *(v0 + 24);

  return MEMORY[0x282200828](v12, v6, v7, 0, 0, &unk_22372EC80, v8, v11);
}

uint64_t sub_223686224()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223686390, 0, 0);
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 72);

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_223686390()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t LocalIFSessionClient.endSession(id:)(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_2236864C4, 0, 0);
}

uint64_t sub_2236864C4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  v0[8] = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = *(MEMORY[0x277D85A08] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v10 = v0;
  v10[1] = sub_223686684;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200828](v11, v6, v7, 0, 0, &unk_22372EC98, v8, v12);
}

uint64_t sub_223686684()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v8 = *v1;

  if (v0)
  {
    v5 = sub_223686820;
  }

  else
  {
    v6 = *(v2 + 72);

    v5 = sub_2236867BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2236867BC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_223686820()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t LocalIFSessionClient.send(message:)(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_223686954, 0, 0);
}

uint64_t sub_223686954()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  v0[8] = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = *(MEMORY[0x277D85A08] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v10 = v0;
  v10[1] = sub_22362C9A0;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200828](v11, v6, v7, 0, 0, &unk_22372ECB0, v8, v12);
}

uint64_t LocalIFSessionClient.fetchSessionClientId()(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_223686BD8, 0, 0);
}

uint64_t sub_223686BD8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[8] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58);
  v6 = *(MEMORY[0x277D85A08] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v7 = v0;
  v7[1] = sub_223686D84;
  v9 = v0[7];
  v10 = v0[3];

  return MEMORY[0x282200828](v10, v4, v5, 0, 0, &unk_22372ECC8, v9, v8);
}

uint64_t sub_223686D84()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223686EE0, 0, 0);
  }

  else
  {
    v6 = *(v2 + 48);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_223686EE0()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_223686F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_223686F68, 0, 0);
}