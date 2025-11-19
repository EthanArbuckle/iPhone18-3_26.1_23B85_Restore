uint64_t sub_232DCE408()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_232DCEFFC;
  }

  else
  {
    v6 = sub_232DCE534;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DCE534()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[4];
  v8 = v4[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_232DF4208(v7, v8, v5, v6, isUniquelyReferenced_nonNull_native);

  *(v0 + 152) = v3;
  sub_232DB300C(MEMORY[0x277D84F90]);

  v15 = *(v1 + *(v2 + 20));
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = *(v0 + 56);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 < 0)
  {
    v48 = *(v1 + *(v2 + 20));
  }

  v10 = sub_232E019C0();
  v16 = v10;
  v17 = *(v0 + 56);
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_3:
  v18 = *(v0 + 144);

  v19 = sub_232DCFD5C(0, v16, v17, v15, v17);
  *(v0 + 160) = v19;
  v20 = *(v19 + 16);
  *(v0 + 168) = v20;
  if (v20)
  {
    v21 = *(v0 + 80);
    v10 = sub_232DD204C();
    *(v0 + 176) = v10;
    *(v0 + 184) = 0;
    if (*(v19 + 16))
    {
      v22 = *(v0 + 112);
      v50 = v10;
      v51 = v22;
      v54 = *(v0 + 152);
      v55 = *(v0 + 104);
      v23 = *(v0 + 96);
      v24 = *(v0 + 72);
      v53 = *(v0 + 64);
      v52 = *(v0 + 216);
      v25 = *(v0 + 48);
      v26 = *(v19 + 32);
      v49 = *(v0 + 88);
      v27 = sub_232E016B0();
      v28 = *(v27 - 8);
      (*(v28 + 56))(v22, 1, 1, v27);
      sub_232DD20B0(v25, v23);
      v29 = (*(v21 + 80) + 88) & ~*(v21 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v24;
      *(v30 + 24) = v50;
      *(v30 + 32) = v26;
      *(v30 + 40) = v24;
      *(v30 + 48) = v19;
      *(v30 + 56) = 2;
      *(v30 + 64) = v54;
      *(v30 + 72) = v52;
      *(v30 + 80) = v53;
      sub_232DD2114(v23, v30 + v29);
      sub_232DA7734(v51, v55);
      LODWORD(v26) = (*(v28 + 48))(v55, 1, v27);
      swift_retain_n();

      v31 = *(v0 + 104);
      if (v26 == 1)
      {
        sub_232DAB434(*(v0 + 104), &qword_27DDD7278, &qword_232E07570);
      }

      else
      {
        sub_232E016A0();
        (*(v28 + 8))(v31, v27);
      }

      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      swift_unknownObjectRetain();

      if (v40)
      {
        swift_getObjectType();
        v41 = sub_232E01630();
        v43 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      sub_232DAB434(*(v0 + 112), &qword_27DDD7278, &qword_232E07570);
      if (v43 | v41)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v41;
        *(v0 + 40) = v43;
      }

      v44 = MEMORY[0x277D84F78];
      v45 = swift_task_create();
      *(v0 + 192) = v45;
      v46 = *(MEMORY[0x277D857C8] + 4);
      v47 = swift_task_alloc();
      *(v0 + 200) = v47;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v47 = v0;
      v47[1] = sub_232DCEA58;
      v14 = MEMORY[0x277D84950];
      v12 = v44 + 8;
      v11 = v45;
      v13 = v10;

      return MEMORY[0x282200430](v10, v11, v12, v13, v14);
    }

LABEL_23:
    __break(1u);
    return MEMORY[0x282200430](v10, v11, v12, v13, v14);
  }

  v32 = *(v0 + 128);
  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 96);
  sub_232DC9B24(*(*(v0 + 72) + 112), *(*(v0 + 72) + 120), 2, *(v0 + 152), sub_232DB117C);
  sub_232DD22B4(v32, type metadata accessor for UserGuideIndexRequest);

  v36 = *(v0 + 8);
  v37 = *(v0 + 152);

  return v36(2, v37);
}

uint64_t sub_232DCEA58()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v11 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[24];
    v6 = v2[19];
    v5 = v2[20];
    v7 = v2[9];

    v8 = sub_232DCF088;
    v9 = v7;
  }

  else
  {
    v9 = v2[9];
    v8 = sub_232DCEB9C;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_232DCEB9C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);

  if (v2 + 1 == v3)
  {
    v9 = *(v0 + 160);

    v10 = *(v0 + 128);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 96);
    sub_232DC9B24(*(*(v0 + 72) + 112), *(*(v0 + 72) + 120), 2, *(v0 + 152), sub_232DB117C);
    sub_232DD22B4(v10, type metadata accessor for UserGuideIndexRequest);

    v14 = *(v0 + 8);
    v15 = *(v0 + 152);

    return v14(2, v15);
  }

  else
  {
    v17 = *(v0 + 184) + 1;
    *(v0 + 184) = v17;
    v18 = *(v0 + 160);
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v42 = *(v0 + 176);
      v43 = *(v0 + 152);
      v19 = *(v0 + 112);
      v44 = *(v0 + 104);
      v20 = *(v0 + 96);
      v39 = v19;
      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      v41 = *(v0 + 64);
      v40 = *(v0 + 216);
      v23 = *(v0 + 48);
      v24 = *(v18 + 8 * v17 + 32);
      v25 = sub_232E016B0();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v19, 1, 1, v25);
      sub_232DD20B0(v23, v20);
      v27 = (*(v22 + 80) + 88) & ~*(v22 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v21;
      *(v28 + 24) = v42;
      *(v28 + 32) = v24;
      *(v28 + 40) = v21;
      *(v28 + 48) = v18;
      *(v28 + 56) = 2;
      *(v28 + 64) = v43;
      *(v28 + 72) = v40;
      *(v28 + 80) = v41;
      sub_232DD2114(v20, v28 + v27);
      sub_232DA7734(v39, v44);
      LODWORD(v24) = (*(v26 + 48))(v44, 1, v25);
      swift_retain_n();

      v29 = *(v0 + 104);
      if (v24 == 1)
      {
        sub_232DAB434(*(v0 + 104), &qword_27DDD7278, &qword_232E07570);
      }

      else
      {
        sub_232E016A0();
        (*(v26 + 8))(v29, v25);
      }

      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      swift_unknownObjectRetain();

      if (v31)
      {
        swift_getObjectType();
        v32 = sub_232E01630();
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      sub_232DAB434(*(v0 + 112), &qword_27DDD7278, &qword_232E07570);
      if (v34 | v32)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v32;
        *(v0 + 40) = v34;
      }

      v35 = MEMORY[0x277D84F78];
      v36 = swift_task_create();
      *(v0 + 192) = v36;
      v37 = *(MEMORY[0x277D857C8] + 4);
      v38 = swift_task_alloc();
      *(v0 + 200) = v38;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v38 = v0;
      v38[1] = sub_232DCEA58;
      v8 = MEMORY[0x277D84950];
      v6 = v35 + 8;
      v5 = v36;
      v7 = v4;
    }

    return MEMORY[0x282200430](v4, v5, v6, v7, v8);
  }
}

uint64_t sub_232DCEFFC()
{
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DCF088()
{
  sub_232DD22B4(v0[16], type metadata accessor for UserGuideIndexRequest);
  v1 = v0[26];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DCF130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 56) = v16;
  *(v8 + 64) = v17;
  *(v8 + 146) = v15;
  *(v8 + 144) = a7;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v10 = sub_232E012A0();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCF210, a5, 0);
}

uint64_t sub_232DCF210()
{
  v1 = v0[11];
  v2 = v0[3];
  sub_232E01270();
  sub_232E018F0();

  if (v2 >> 62)
  {
    if (v0[3] < 0)
    {
      v24 = v0[3];
    }

    v3 = sub_232E019C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[4];
  v8 = v0[5];
  v0[2] = v3;
  v9 = sub_232E01AB0();
  MEMORY[0x238395970](v9);

  MEMORY[0x238395970](0x736D65746920, 0xE600000000000000);
  sub_232E01370();

  v10 = (*(v5 + 8))(v4, v6);
  v0[12] = sub_232DE833C(v10);
  v11 = *(v8 + 16);
  if (v11 && (v12 = v0[3], v13 = *(v0[5] + 8 * v11 + 24), , LOBYTE(v12) = sub_232DCFFE8(v12, v13), , (v12 & 1) != 0))
  {
    v14 = 144;
    v15 = 6;
  }

  else
  {
    v14 = 146;
    v15 = 7;
  }

  v16 = sub_232DC9E04(*(v0 + v14), v0[v15], sub_232DAC6CC);
  v18 = v17;
  v19 = v0[8];
  v20 = v0[3];
  v0[13] = v17;
  v0[14] = v16;
  v21 = swift_task_alloc();
  v0[15] = v21;
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_232D71C10;

  return sub_232DC7F98(v16, v18, &unk_232E07598, v21);
}

uint64_t sub_232DCF46C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  sub_232DB091C(v0[14], v0[13]);

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_232DCF4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_232DCF518, 0, 0);
}

uint64_t sub_232DCF518()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  sub_232DCB03C(sub_232DD23BC, v4, v1);

  sub_232DB3688(0, &qword_2814E7C10, 0x277CC34B0);
  v5 = sub_232E015C0();
  v0[21] = v5;

  v0[2] = v0;
  v0[3] = sub_232DCF6B8;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_28_0;
  v0[14] = v6;
  [v3 indexSearchableItems:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DCF6B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_232DCF82C;
  }

  else
  {
    v3 = sub_232DCF7C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DCF7C8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCF82C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

id sub_232DCF89C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a3;
  v20 = sub_232E008A0();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v11 = *(a2 + 64);
  v10 = *(a2 + 72);
  v12 = [v9 uniqueIdentifier];
  v13 = sub_232E014D0();
  v15 = v14;

  v16 = [v9 attributeSet];
  *&v25 = v13;
  *(&v25 + 1) = v15;
  *&v26 = v16;
  *(&v26 + 1) = v11;
  v27 = v10;

  v17 = [v9 byte_2789B1074];
  sub_232DC5598(v8);
  sub_232E017B0();

  (*(v5 + 8))(v8, v20);
  v18 = [v9 byte_2789B1074];
  v22 = v25;
  v23 = v26;
  v24 = v27;
  sub_232DAB238();
  sub_232E017A0();

  *v21 = v9;
  return v9;
}

uint64_t sub_232DCFAC8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, unint64_t *, uint64_t, uint64_t))
{
  v12 = a1 + a3;
  if (__OFADD__(a1, a3))
  {
    __break(1u);
  }

  else
  {
    v6 = a6;
    v9 = a5;
    v10 = a4;
    v8 = a2;
    v7 = a1;
    v11 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 < v12)
      {
        v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12 < v7)
      {
        goto LABEL_38;
      }

      if (v13 >= v7)
      {
        goto LABEL_7;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v24 = sub_232E019C0();
  if (v24 < v12)
  {
    v12 = v24;
  }

  if (v12 < v7)
  {
    goto LABEL_38;
  }

  if (sub_232E019C0() < v7)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v7 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v11)
  {
    v14 = sub_232E019C0();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 < v12)
  {
    goto LABEL_40;
  }

  if (v12 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v8 & 0xC000000000000001) == 0 || v12 == v7)
  {

    if (!v11)
    {
      goto LABEL_19;
    }

LABEL_22:

    v8 = sub_232E019D0();
    v7 = v18;
    v12 = v19;
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    v20 = v6(v8, v17, v7, v12);
LABEL_30:
    swift_unknownObjectRelease();
    return v20;
  }

  if (v12 <= v7)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_232DB3688(0, v10, v9);

  v15 = v7;
  do
  {
    v16 = v15 + 1;
    sub_232E01910();
    v15 = v16;
  }

  while (v12 != v16);
  if (v11)
  {
    goto LABEL_22;
  }

LABEL_19:
  v8 &= 0xFFFFFFFFFFFFFF8uLL;
  v17 = (v8 + 32);
  v12 = (2 * v12) | 1;
  if ((v12 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v10 = v17;
  sub_232E01AF0();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v12 >> 1, v7))
  {
    goto LABEL_43;
  }

  if (v22 != (v12 >> 1) - v7)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v17 = v10;
    goto LABEL_23;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  return v20;
}

uint64_t sub_232DCFD5C(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = a1;
  v11 = 0;
  v12 = a1;
  while (1)
  {
    v13 = v12 <= a2;
    if (a3 > 0)
    {
      v13 = v12 >= a2;
    }

    if (v13)
    {
      break;
    }

    v14 = __OFADD__(v12, a3);
    v12 += a3;
    if (v14)
    {
      v12 = (v12 >> 63) ^ 0x8000000000000000;
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      __break(1u);
      break;
    }
  }

  v29 = MEMORY[0x277D84F90];
  sub_232DF8FD0(0, v11, 0);
  if (v11)
  {
    while (1)
    {
      v15 = v10 <= a2;
      if (a3 > 0)
      {
        v15 = v10 >= a2;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v10, a3))
      {
        v16 = ((v10 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v10 + a3;
      }

      v17 = sub_232DCFAC8(v10, a4, a5, &qword_2814E7C10, 0x277CC34B0, sub_232DF8C58);
      if (v5)
      {
        goto LABEL_38;
      }

      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_232DF8FD0((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      *(v29 + 16) = v19 + 1;
      *(v29 + 8 * v19 + 32) = v17;
      v10 = v16;
      if (!--v11)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = v10;
LABEL_23:
    v20 = v16 <= a2;
    if (a3 > 0)
    {
      v20 = v16 >= a2;
    }

    if (v20)
    {
LABEL_26:

      return v29;
    }

    while (1)
    {
      v22 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v23 = sub_232DCFAC8(v16, a4, a5, &qword_2814E7C10, 0x277CC34B0, sub_232DF8C58);
      if (v5)
      {
        break;
      }

      v25 = *(v29 + 16);
      v24 = *(v29 + 24);
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_232DF8FD0((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      *(v29 + 16) = v25 + 1;
      *(v29 + 8 * v25 + 32) = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v16 = v22;
      if (v26)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_38:

  __break(1u);
  return result;
}

uint64_t sub_232DCFFE8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_232DB3688(0, &qword_2814E7C10, 0x277CC34B0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x238395D50](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x238395D50](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_232E01830();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_232E01830();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_232E019C0();
  }

  result = sub_232E019C0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id sub_232DD0238(id result, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

void sub_232DD0264(void *a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t sub_232DD0290(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_232E01BB0();
  sub_232E01530();
  v9 = sub_232E01BE0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_232E01AD0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_232DD172C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_232DD03E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_232E01BB0();

    sub_232E01530();
    v12 = sub_232E01BE0();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_232E01AD0() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_232DD1508(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_232E01BB0();

        sub_232E01530();
        v35 = sub_232E01BE0();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_232E01AD0() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_232DD10EC(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x238396AF0](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  result = MEMORY[0x238396AF0](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_232DD088C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_232E01BB0();

    sub_232E01530();
    v24 = sub_232E01BE0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_232E01AD0() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_232DD1508(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_232E01BB0();

            sub_232E01530();
            v43 = sub_232E01BE0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_232E01AD0() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_232DD12D0(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x238396AF0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_232D734F4();
    goto LABEL_53;
  }

  result = MEMORY[0x238396AF0](v53, -1, -1);
  __break(1u);
  return result;
}

void *sub_232DD0DFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_232DD1CE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_232DD0E8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  result = sub_232E018D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_232DD10EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_232DD1508(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_232E01BB0();

        sub_232E01530();
        v17 = sub_232E01BE0();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_232E01AD0() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_232DD12D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_232DD1508(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_232E01BB0();

        sub_232E01530();
        v20 = sub_232E01BE0();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_232E01AD0() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_232DD1508(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  result = sub_232E018E0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_232DD172C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_232DD0E8C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_232DD18AC();
      goto LABEL_16;
    }

    sub_232DD1A08(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_232E01BB0();
  sub_232E01530();
  result = sub_232E01BE0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_232E01AD0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_232E01B30();
  __break(1u);
  return result;
}

void *sub_232DD18AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  v2 = *v0;
  v3 = sub_232E018C0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_232DD1A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  result = sub_232E018D0();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_232E01BB0();

      sub_232E01530();
      result = sub_232E01BE0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_232DD1C40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x238395B40](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_232DD0290(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_232DD1CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_232DFA0E4(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_232DFA0E4(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232DD1E60(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_232DD1CE0(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_232DD0DFC(v11, v6, v4, a2);
  result = MEMORY[0x238396AF0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_232DD1FF8()
{
  result = qword_2814E8218;
  if (!qword_2814E8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8218);
  }

  return result;
}

unint64_t sub_232DD204C()
{
  result = qword_2814E8188[0];
  if (!qword_2814E8188[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7670, &qword_232E07580);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E8188);
  }

  return result;
}

uint64_t sub_232DD20B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideIndexItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DD2114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideIndexItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DD2178(uint64_t a1)
{
  v3 = *(type metadata accessor for UserGuideIndexItem(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v15 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));
  v12 = *(v1 + 56);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_232DA72F4;

  return sub_232DCF130(a1, v4, v5, v6, v7, v8, v12, v15);
}

uint64_t sub_232DD22B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_232DD2314(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232DA7C78;

  return sub_232DCF4F4(a1, v5, v4);
}

unint64_t sub_232DD23DC()
{
  result = qword_27DDD7678;
  if (!qword_27DDD7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7678);
  }

  return result;
}

unint64_t sub_232DD2430()
{
  result = qword_27DDD7688;
  if (!qword_27DDD7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7688);
  }

  return result;
}

unint64_t sub_232DD2484()
{
  result = qword_2814E8458;
  if (!qword_2814E8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8458);
  }

  return result;
}

unint64_t sub_232DD24D8()
{
  result = qword_2814E8450;
  if (!qword_2814E8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8450);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10TipsDaemon26UserGuideItemIndexingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_232DD255C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_232DD25A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_232DD25E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

id TPSCollection.indexHash.getter()
{
  v46 = *MEMORY[0x277D85DE8];
  v34 = sub_232E01410();
  v33 = *(v34 - 8);
  v0 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_232E01500();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E01440();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E01430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E076B0;
  *(inited + 32) = swift_getKeyPath();
  v30[1] = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  v11 = 0;
  *(inited + 48) = swift_getKeyPath();
  v40 = inited & 0xC000000000000001;
  v41 = inited;
  v37 = inited & 0xFFFFFFFFFFFFFF8;
  v12 = (v2 + 8);
  v36 = v6;
  v35 = v9;
  do
  {
    if (v40)
    {
      MEMORY[0x238395D50](v11, v41);
    }

    else
    {
      if (v11 >= *(v37 + 16))
      {
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

      v13 = *(v41 + 8 * v11 + 32);
    }

    v42 = v39;
    v14 = v39;
    swift_getAtKeyPath();

    sub_232E014F0();
    v15 = sub_232E014E0();
    v17 = v16;

    (*v12)(v5, v38);
    if (v17 >> 60 == 15)
    {

      goto LABEL_3;
    }

    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
        memset(v43, 0, 14);
        goto LABEL_22;
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);

      if (sub_232E00A30() && __OFSUB__(v20, sub_232E00A60()))
      {
        goto LABEL_27;
      }

      if (__OFSUB__(v19, v20))
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (v18)
    {
      if (v15 >> 32 < v15)
      {
        goto LABEL_25;
      }

      if (sub_232E00A30() && __OFSUB__(v15, sub_232E00A60()))
      {
        goto LABEL_28;
      }

LABEL_20:
      sub_232E00A50();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
      v9 = v35;
      v6 = v36;
      goto LABEL_22;
    }

    v43[0] = v15;
    LOWORD(v43[1]) = v17;
    BYTE2(v43[1]) = BYTE2(v17);
    BYTE3(v43[1]) = BYTE3(v17);
    BYTE4(v43[1]) = BYTE4(v17);
    BYTE5(v43[1]) = BYTE5(v17);
    sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
LABEL_22:
    sub_232E01400();
    sub_232DB0E28(v15, v17);

    sub_232DB0E28(v15, v17);
LABEL_3:
    ++v11;
  }

  while (v11 != 3);
  v21 = v41;
  swift_setDeallocating();
  v22 = *(v21 + 16);
  swift_arrayDestroy();
  v23 = v32;
  sub_232E01420();
  v24 = v34;
  v44 = v34;
  v45 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  v26 = v33;
  (*(v33 + 16))(boxed_opaque_existential_1, v23, v24);
  __swift_project_boxed_opaque_existential_1(v43, v44);
  sub_232E00A80();
  (*(v26 + 8))(v23, v24);
  v27 = v42;
  __swift_destroy_boxed_opaque_existential_1(v43);
  (*(v31 + 8))(v9, v6);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void sub_232DD2DB4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_232E014D0();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void keypath_setTm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_232E014C0();
  [v8 *a5];
}

uint64_t sub_232DD2E78@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  [*a1 lastModifiedDate];
  result = sub_232E01AB0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL TPSCollection.indexable.getter()
{
  v1 = [v0 supportID];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void *TPSCollection.csAttributeSet.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7308, &qword_232E05ED0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_232E01180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 supportID];
  if (!v11)
  {
    return 0;
  }

  sub_232E012B0();
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_232E01160();
  v12 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v13 = sub_232E01170();
  v14 = [v12 initWithContentType_];

  (*(v7 + 8))(v10, v6);
  v15 = sub_232DD3F14(v14);

  return v15;
}

CSSearchableItemAttributeSet __swiftcall TPSCollection.addAttributes(to:)(CSSearchableItemAttributeSet to)
{
  v1 = sub_232DD3F14(to.super.isa);

  return v1;
}

id TPSCollection.csSearchableItem.getter()
{
  v1 = sub_232E00CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E008A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 supportID];
  if (result)
  {

    result = TPSCollection.csAttributeSet.getter();
    if (result)
    {
      v12 = result;
      v13 = [v0 identifier];
      v36 = v1;
      v14 = v13;
      sub_232E014D0();
      v35 = v2;

      v15 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v16 = v12;
      v34 = v16;
      v17 = sub_232E014C0();

      v18 = sub_232E014C0();
      v19 = [v15 initWithUniqueIdentifier:v17 domainIdentifier:v18 attributeSet:v16];

      v20 = [v19 uniqueIdentifier];
      v21 = sub_232E014D0();
      v33 = v6;
      v22 = v21;
      v24 = v23;

      v25 = [v19 attributeSet];
      v26 = [v0 language];
      v27 = sub_232E014D0();
      v29 = v28;

      *&v40 = v22;
      *(&v40 + 1) = v24;
      *&v41 = v25;
      *(&v41 + 1) = v27;
      v42 = v29;
      v30 = [v19 attributeSet];
      sub_232DC5598(v10);
      sub_232E017B0();

      (*(v7 + 8))(v10, v33);
      v31 = [v19 attributeSet];
      v37 = v40;
      v38 = v41;
      v39 = v42;
      sub_232DAB238();
      sub_232E017A0();

      sub_232E00C80();
      v32 = sub_232E00CA0();
      (*(v35 + 8))(v5, v36);
      [v19 setExpirationDate_];

      return v19;
    }
  }

  return result;
}

uint64_t Array<A>.searchableItems.getter(unint64_t a1)
{
  v57 = sub_232E00CE0();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_232E008A0();
  v5 = *(v55 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v55);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7308, &qword_232E05ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v42 - v10;
  v59 = sub_232E01180();
  i = *(v59 - 8);
  v12 = *(i + 64);
  MEMORY[0x28223BE20](v59);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_21:
  v14 = sub_232E019C0();
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v15 = 0;
  v49 = (i + 56);
  v48 = (i + 8);
  v47 = v5 + 1;
  v46 = (v2 + 8);
  v2 = MEMORY[0x277D84F90];
  do
  {
    for (i = v15; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x238395D50](i, a1);
        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(a1 + 8 * i + 32);
        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      v5 = v16;
      v17 = [v5 supportID];
      if (v17)
      {

        v18 = [v5 supportID];
        if (v18)
        {
          break;
        }
      }

      if (v15 == v14)
      {
        return v2;
      }
    }

    sub_232E012B0();
    v58 = v19;
    (*v49)(v53, 1, 1, v59);
    v20 = v52;
    sub_232E01160();
    v21 = objc_allocWithZone(MEMORY[0x277CC34B8]);
    v22 = sub_232E01170();
    v23 = [v21 initWithContentType_];

    (*v48)(v20, v59);
    v58 = sub_232DD3F14(v23);

    v24 = [v5 identifier];
    sub_232E014D0();

    v51 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v25 = v58;
    v26 = sub_232E014C0();

    v27 = sub_232E014C0();
    v45 = v25;
    v58 = [v51 initWithUniqueIdentifier:v26 domainIdentifier:v27 attributeSet:v25];

    v28 = v58;
    v29 = [v58 uniqueIdentifier];
    v43 = sub_232E014D0();
    v51 = v30;

    v50 = [v28 attributeSet];
    v31 = [v5 language];
    v32 = sub_232E014D0();
    v34 = v33;
    v44 = v33;

    *&v64 = v43;
    *(&v64 + 1) = v51;
    *&v65 = v50;
    *(&v65 + 1) = v32;
    v66 = v34;
    v35 = [v58 attributeSet];
    v36 = v54;
    sub_232DC5598(v54);
    sub_232E017B0();

    (*v47)(v36, v55);
    v37 = v58;
    v38 = [v58 attributeSet];
    v60 = v64;
    v61 = v65;
    v62 = v66;
    sub_232DAB238();
    sub_232E017A0();

    v39 = v56;
    sub_232E00C80();
    v40 = sub_232E00CA0();
    (*v46)(v39, v57);
    [v37 setExpirationDate_];

    MEMORY[0x2383959E0]();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_232E015F0();
    }

    sub_232E01610();
    v2 = v63;
  }

  while (v15 != v14);
  return v2;
}

_BYTE *sub_232DD3BA8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_232DB0B68(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_232DB0CA4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_232DB0C20(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_232DD3C3C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
      result = sub_232E01400();
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

  result = sub_232DD3E1C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DD3E1C(uint64_t a1, uint64_t a2)
{
  result = sub_232E00A30();
  if (!result || (result = sub_232E00A60(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_232E00A50();
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
      return sub_232E01400();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_232DD3F14(void *a1)
{
  v2 = v1;
  v4 = [v1 tileContent];
  v5 = [v4 title];

  [a1 setDisplayName_];
  v6 = [v2 identifier];
  if (!v6)
  {
    sub_232E014D0();
    v6 = sub_232E014C0();
  }

  [a1 setUniqueIdentifier_];

  v7 = sub_232E014C0();
  [a1 setDomainIdentifier_];

  v8 = [v2 identifier];
  sub_232E014D0();

  sub_232E017C0();
  v9 = [v2 keywords];
  [a1 setKeywords_];

  v10 = [v2 tileContent];
  v11 = [v10 bodyText];

  if (v11)
  {
    sub_232E014D0();

    v11 = sub_232E014C0();
  }

  [a1 setContentDescription_];

  v12 = [v2 tileContent];
  v13 = [v12 bodyText];

  [a1 setTextContent_];
  sub_232DD4214();
  v14 = sub_232E01810();
  [a1 setDisableSearchInSpotlight_];

  v15 = [v2 correlationID];
  if (v15)
  {
    v16 = v15;
    sub_232E014D0();
  }

  sub_232E017D0();
  v17 = [v2 supportID];
  if (v17)
  {
    v18 = v17;
    [a1 setIdentifier_];
  }

  return a1;
}

unint64_t sub_232DD4214()
{
  result = qword_2814E7BB8;
  if (!qword_2814E7BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7BB8);
  }

  return result;
}

uint64_t sub_232DD4260(uint64_t a1, uint64_t a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v30 = sub_232E01500();
  v4 = *(*(v30 - 8) + 64);
  result = MEMORY[0x28223BE20]();
  v29 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v27[1] = a2;
    v28 = (v6 + 8);
    v9 = (a1 + 56);
    while (1)
    {
      v31 = v8;
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 3);
      v13 = *(v9 - 2);

      sub_232DB0970(v11, v10);
      v14 = v29;
      sub_232E014F0();
      v32 = v13;
      v15 = sub_232E014E0();
      v17 = v16;
      (*v28)(v14, v30);
      v18 = v17 >> 60 == 15 ? 0 : v15;
      v19 = v17 >> 60 == 15 ? 0xC000000000000000 : v17;
      v20 = v19 >> 62;
      if ((v19 >> 62) <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);

        if (sub_232E00A30() && __OFSUB__(v21, sub_232E00A60()))
        {
          goto LABEL_42;
        }

        if (__OFSUB__(v22, v21))
        {
          goto LABEL_39;
        }

LABEL_23:
        sub_232E00A50();
        sub_232E01440();
        sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
        goto LABEL_25;
      }

      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
      memset(v33, 0, 14);
LABEL_25:
      sub_232E01400();
      sub_232DB091C(v18, v19);
      sub_232DB091C(v18, v19);
      v23 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v23 != 2)
        {
          sub_232E01440();
          sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
          memset(v33, 0, 14);
          goto LABEL_4;
        }

        v24 = *(v11 + 16);
        v25 = *(v11 + 24);

        if (sub_232E00A30() && __OFSUB__(v24, sub_232E00A60()))
        {
          goto LABEL_43;
        }

        if (__OFSUB__(v25, v24))
        {
          goto LABEL_41;
        }

        goto LABEL_35;
      }

      if (v23)
      {
        if (v11 >> 32 < v11)
        {
          goto LABEL_40;
        }

        if (sub_232E00A30() && __OFSUB__(v11, sub_232E00A60()))
        {
          goto LABEL_45;
        }

LABEL_35:
        sub_232E00A50();
        sub_232E01440();
        sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
        goto LABEL_4;
      }

      v33[0] = v11;
      LOWORD(v33[1]) = v10;
      BYTE2(v33[1]) = BYTE2(v10);
      BYTE3(v33[1]) = BYTE3(v10);
      BYTE4(v33[1]) = BYTE4(v10);
      BYTE5(v33[1]) = BYTE5(v10);
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
LABEL_4:
      sub_232E01400();
      sub_232DB091C(v11, v10);

      result = sub_232DB091C(v11, v10);
      v9 += 4;
      v8 = v31 - 1;
      if (v31 == 1)
      {
        goto LABEL_37;
      }
    }

    if (!v20)
    {
      v33[0] = v18;
      LOWORD(v33[1]) = v19;
      BYTE2(v33[1]) = BYTE2(v19);
      BYTE3(v33[1]) = BYTE3(v19);
      BYTE4(v33[1]) = BYTE4(v19);
      BYTE5(v33[1]) = BYTE5(v19);
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
      goto LABEL_25;
    }

    if (v18 >> 32 < v18)
    {
      __break(1u);
LABEL_39:
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
    }

    if (sub_232E00A30() && __OFSUB__(v18, sub_232E00A60()))
    {
      goto LABEL_44;
    }

    goto LABEL_23;
  }

LABEL_37:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DD48BC(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232DB1790(a1, a2);
  v15 = v14;
  v17 = v16;
  if (v13 == a3)
  {
    v18 = sub_232DD6BA4(a3, a4);
    v20 = v19;
    sub_232DB0970(v15, v17);
    v21 = sub_232DB07B4(v18, v20, v15, v17);
    sub_232DB091C(v15, v17);
    sub_232DB091C(v18, v20);
    if (v21)
    {
      sub_232DB091C(v15, v17);
      return 1;
    }

    sub_232E01270();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD00000000000003BLL, 0x8000000232E0C8C0);
    sub_232DB0970(v15, v17);
    v26 = sub_232E00C10();
    MEMORY[0x238395970](v26);

    sub_232DB091C(v15, v17);
    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v27 = sub_232DD6BA4(a3, a4);
    v29 = v28;
    v30 = sub_232E00C10();
    MEMORY[0x238395970](v30);

    sub_232DB091C(v27, v29);
  }

  else
  {
    v23 = v13;
    sub_232E01270();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000031, 0x8000000232E0C850);
    v32 = v23;
    v24 = sub_232E01AB0();
    MEMORY[0x238395970](v24);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v32 = a3;
    v25 = sub_232E01AB0();
    MEMORY[0x238395970](v25);
  }

  MEMORY[0x238395970](41, 0xE100000000000000);
  sub_232E01360();

  sub_232DB091C(v15, v17);
  (*(v9 + 8))(v12, v8);
  return 0;
}

uint64_t sub_232DD4BF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76A0, &qword_232E07908);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DD8E20();
  sub_232E01C10();
  v15 = 0;
  sub_232E01A90();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    sub_232DD90E4(&qword_2814E7C50, sub_232DD8E74);
    sub_232E01A80();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_232DD4DC4()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_232DD4E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_232E01AD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000232E0D7B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_232E01AD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_232DD4EE8(uint64_t a1)
{
  v2 = sub_232DD8E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DD4F24(uint64_t a1)
{
  v2 = sub_232DD8E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DD4F60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_232DD8EC8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_232DD4FB0()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_232E01BB0();
  sub_232E01BD0();
  sub_232DB0348(v4, v1);
  return sub_232E01BE0();
}

uint64_t sub_232DD5010(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *v1;
  sub_232E01BD0();

  return sub_232DB0348(a1, v3);
}

uint64_t sub_232DD5060()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_232E01BB0();
  sub_232E01BD0();
  sub_232DB0348(v4, v1);
  return sub_232E01BE0();
}

BOOL sub_232DD50BC(uint64_t a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_73:
    v20 = 1;
    goto LABEL_76;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_75;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v57 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          goto LABEL_73;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v57 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_232DB0970(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        goto LABEL_76;
      }

      v21 = sub_232DD5634(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

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
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_232DB091C(v32, v33);
      v3 = a1;
      v8 = v57;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v59, 0, 14);
        sub_232DB0970(v26, v25);
        goto LABEL_64;
      }

      v52 = *(v26 + 24);
      v54 = *(v26 + 16);
      sub_232DB0970(v26, v25);
      v40 = sub_232E00A30();
      if (v40)
      {
        v41 = v40;
        v42 = sub_232E00A60();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_84;
        }

        v51 = v54 - v42 + v41;
      }

      else
      {
        v51 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_83;
      }

      sub_232E00A50();
      v48 = v51;
LABEL_70:
      sub_232DAD698(v48, v19, v18, v59);
      sub_232DB091C(v26, v25);
      sub_232DB091C(v19, v18);
      v47 = v59[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_232DB0970(v26, v25);
      v44 = sub_232E00A30();
      if (v44)
      {
        v53 = v44;
        v45 = sub_232E00A60();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v53;
      }

      else
      {
        v46 = 0;
      }

      sub_232E00A50();
      v48 = v46;
      goto LABEL_70;
    }

    v59[0] = v26;
    LOWORD(v59[1]) = v25;
    BYTE2(v59[1]) = BYTE2(v25);
    BYTE3(v59[1]) = BYTE3(v25);
    BYTE4(v59[1]) = BYTE4(v25);
    BYTE5(v59[1]) = BYTE5(v25);
    sub_232DB0970(v26, v25);
LABEL_64:
    sub_232DAD698(v59, v19, v18, &v58);
    sub_232DB091C(v26, v25);
    sub_232DB091C(v19, v18);
    v47 = v58;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v57;
    if ((v47 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  sub_232DB091C(v19, v18);
LABEL_75:
  v20 = 0;
LABEL_76:
  v49 = *MEMORY[0x277D85DE8];
  return v20;
}

unint64_t sub_232DD55E0()
{
  result = qword_27DDD7698;
  if (!qword_27DDD7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7698);
  }

  return result;
}

unint64_t sub_232DD5634(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_232E01BB0();
  sub_232E01530();
  v6 = sub_232E01BE0();

  return sub_232DD56F0(a1, a2, v6);
}

unint64_t sub_232DD56AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_232E01890();

  return sub_232DD57A8(a1, v5);
}

unint64_t sub_232DD56F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_232E01AD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_232DD57A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_232DD6F24(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x238395CD0](v9, a1);
      sub_232DBD2E0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_232DD5870(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_232DB028C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_232DD58DC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_232DD58DC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_232E01AA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7380, &qword_232E06208);
        v5 = sub_232E01600();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_232DD5AB4(v7, v8, a1, v4);
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
    return sub_232DD59E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_232DD59E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_232E01AD0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232DD5AB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v98;
    if (!*v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_232DAFB5C(v7);
      v7 = result;
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_232DAF8A8((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_232E01AD0();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_232E01AD0();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_232DADA58(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_232DADA58((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_232DAF8A8((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_232DAFB5C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_232DAFAD0(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_232E01AD0(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

void *sub_232DD6090(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_232DD64C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_232DD6120(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v11 = sub_232DD7C7C(v10, a2, a3, a4, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_232DD61D8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_232DD68A4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_232DD6304(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_232DD64C8(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_232DD6090(v12, v6, a2, a1);

    MEMORY[0x238396AF0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_232DD64C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_232E01BB0();

      sub_232E01530();
      v27 = sub_232E01BE0();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_232E01AD0() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_232DD1508(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_232E01BB0();

      sub_232E01530();
      v41 = sub_232E01BE0();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_232E01AD0() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232DD68A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_232E01BB0();
  sub_232E01530();
  v7 = sub_232E01BE0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_232E01AD0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_232DD18AC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_232DD69E0(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_232DD69E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_232E01880();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_232E01BB0();

        sub_232E01530();
        v15 = sub_232E01BE0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_232DD6BA4(__int16 a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = sub_232E01410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232E01440();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E01430();
  LOWORD(v35) = a1;
  v13 = sub_232DABC9C(&v35, &v35 + 2);
  v15 = v14;
  sub_232DB0970(v13, v14);
  v30 = v12;
  sub_232DD3C3C(v13, v15);
  v31 = v15;
  v32 = v13;
  sub_232DB091C(v13, v15);
  v16 = *(a2 + 16);
  if (v16)
  {
    v26 = v9;
    v27 = v8;
    v28 = v5;
    v29 = v4;
    v17 = sub_232DADF74(v16, 0);
    v18 = sub_232DAFB70(&v35, (v17 + 4), v16, a2);

    sub_232D734F4();
    if (v18 != v16)
    {
      __break(1u);
    }

    v5 = v28;
    v4 = v29;
    v9 = v26;
    v8 = v27;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v35 = v17;
  sub_232DD5870(&v35);
  v19 = v30;
  sub_232DD4260(v35, v30);

  v20 = v33;
  sub_232E01420();
  v36 = v4;
  v37 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(v5 + 16))(boxed_opaque_existential_1, v20, v4);
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  sub_232E00A80();
  sub_232DB091C(v32, v31);
  (*(v5 + 8))(v20, v4);
  v22 = v34;
  __swift_destroy_boxed_opaque_existential_1(&v35);
  (*(v9 + 8))(v19, v8);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

unint64_t sub_232DD6F80(unint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v53 = sub_232E01410();
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E01500();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_232E01440();
  v10 = *(v63 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v70 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v61 = v9;
    if (!v13)
    {
      v18 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v65 = v10;
    v66 = v6;
    v67 = v2;
    v10 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x238395D50](v10, a1);
      v15 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_14;
      }

LABEL_10:
      v16 = v14;
      v17 = [v16 supportID];

      if (v17)
      {

        sub_232E01950();
        v6 = *(v70 + 16);
        sub_232E01980();
        sub_232E01990();
        sub_232E01960();
      }

      else
      {
      }

      ++v10;
      v9 = v61;
      if (v15 == v13)
      {
        goto LABEL_15;
      }
    }

    if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

    v14 = *(a1 + 8 * v10 + 32);
    v15 = (v10 + 1);
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v18 = v70;
    v6 = v66;
    v2 = v67;
    v10 = v65;
LABEL_17:
    v19 = sub_232DB3120(MEMORY[0x277D84F90]);
    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v20 = sub_232E019C0();
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = *(v18 + 16);
      if (v20)
      {
LABEL_20:
        if (v20 < 1)
        {
          __break(1u);
        }

        v21 = 0;
        v59 = 0;
        v51 = v18 & 0xC000000000000001;
        v45 = v18;
        v44 = v18 + 32;
        v65 = (v6 + 8);
        v48 = (v2 + 16);
        v47 = (v2 + 8);
        v46 = (v10 + 8);
        v50 = xmmword_232E076B0;
        v60 = v5;
        v49 = v20;
LABEL_23:
        v58 = v19;
        if (v51)
        {
          v30 = MEMORY[0x238395D50](v21, v45);
        }

        else
        {
          v30 = *(v44 + 8 * v21);
        }

        v31 = v30;
        v57 = v21 + 1;
        v32 = [v30 identifier];
        v55 = sub_232E014D0();
        v56 = v33;

        sub_232E01430();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
        inited = swift_initStackObject();
        *(inited + 16) = v50;
        *(inited + 32) = swift_getKeyPath();
        v54 = inited + 32;
        *(inited + 40) = swift_getKeyPath();
        v35 = 0;
        *(inited + 48) = swift_getKeyPath();
        v66 = inited & 0xC000000000000001;
        v67 = inited;
        v62 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_29:
        if (v66)
        {
          v2 = MEMORY[0x238395D50](v35, v67);
        }

        else
        {
          if (v35 >= *(v62 + 16))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            v13 = sub_232E019C0();
            continue;
          }

          v2 = *(v67 + 8 * v35 + 32);
        }

        v68 = v31;
        v10 = v31;
        swift_getAtKeyPath();

        v6 = *(&v70 + 1);
        sub_232E014F0();
        v36 = sub_232E014E0();
        a1 = v37;

        (*v65)(v9, v5);
        if (a1 >> 60 == 15)
        {
        }

        else
        {
          v38 = a1 >> 62;
          if ((a1 >> 62) > 1)
          {
            if (v38 == 2)
            {
              v9 = *(v36 + 16);
              v5 = *(v36 + 24);

              v6 = sub_232E00A30();
              if (v6)
              {
                v39 = sub_232E00A60();
                if (__OFSUB__(v9, v39))
                {
                  goto LABEL_54;
                }

                v6 += v9 - v39;
              }

              v40 = __OFSUB__(v5, v9);
              v5 -= v9;
              if (v40)
              {
                goto LABEL_53;
              }

              goto LABEL_47;
            }

            sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
            *&v70 = 0;
            *(&v70 + 6) = 0;
LABEL_49:
            sub_232E01400();
            sub_232DB0E28(v36, a1);

            sub_232DB0E28(v36, a1);
          }

          else
          {
            if (!v38)
            {
              *&v70 = v36;
              WORD4(v70) = a1;
              BYTE10(v70) = BYTE2(a1);
              BYTE11(v70) = BYTE3(a1);
              BYTE12(v70) = BYTE4(a1);
              BYTE13(v70) = BYTE5(a1);
              sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
              goto LABEL_49;
            }

            v5 = v36;
            v9 = (v36 >> 32) - v36;
            if (v36 >> 32 < v36)
            {
              goto LABEL_52;
            }

            v6 = sub_232E00A30();
            if (v6)
            {
              v41 = sub_232E00A60();
              if (__OFSUB__(v36, v41))
              {
                goto LABEL_55;
              }

              v6 += v36 - v41;
            }

LABEL_47:
            sub_232E00A50();
            sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
            sub_232E01400();
            sub_232DB0E28(v36, a1);

            sub_232DB0E28(v36, a1);
            v5 = v60;
            v9 = v61;
          }
        }

        if (++v35 == 3)
        {
          v22 = v67;
          swift_setDeallocating();
          v23 = *(v22 + 16);
          swift_arrayDestroy();
          v6 = v52;
          a1 = v64;
          sub_232E01420();
          v2 = v53;
          v71 = v53;
          v72 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
          (*v48)(boxed_opaque_existential_1, v6, v2);
          __swift_project_boxed_opaque_existential_1(&v70, v71);
          v25 = v59;
          sub_232E00A80();
          v59 = v25;
          (*v47)(v6, v2);
          v26 = v68;
          v27 = v69;
          __swift_destroy_boxed_opaque_existential_1(&v70);
          (*v46)(a1, v63);
          v28 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v70 = v28;
          sub_232DF4500(v26, v27, v55, v56, isUniquelyReferenced_nonNull_native);

          v19 = v70;
          v21 = v57;
          if (v57 == v49)
          {
            break;
          }

          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    break;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_232DD7960(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232E012A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return 0;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
LABEL_8:
    if (v13 != v14)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v12)
  {
    v13 = a2;
    v14 = a2 >> 32;
    goto LABEL_8;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v15 = v9;
  v16 = sub_232DB1790(a2, a3);
  v18 = v17;
  v20 = v19;
  if (v16 != 2)
  {
    v26 = v16;
    sub_232E01270();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000039, 0x8000000232E0D730);
    v30 = v26;
    v27 = sub_232E01AB0();
    MEMORY[0x238395970](v27);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v30 = 2;
    v28 = sub_232E01AB0();
    MEMORY[0x238395970](v28);

    MEMORY[0x238395970](41, 0xE100000000000000);
    sub_232E01360();

    sub_232DB091C(v18, v20);
    (*(v7 + 8))(v11, v15);
    return 0;
  }

  sub_232DB3120(MEMORY[0x277D84F90]);

  v21 = sub_232DD6F80(a1);
  sub_232DB0970(v18, v20);
  v22 = sub_232DD6BA4(2, v21);
  v24 = v23;

  LOBYTE(v21) = sub_232DB07B4(v18, v20, v22, v24);
  sub_232DB091C(v22, v24);
  sub_232DB091C(v18, v20);
  if (v21)
  {
    sub_232DB091C(v18, v20);
    return 2;
  }

  else
  {
    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(v18, v20);
    (*(v7 + 8))(v11, v15);
    return 1;
  }
}

uint64_t sub_232DD7C7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = 0;
  v71[2] = *MEMORY[0x277D85DE8];
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v11)
        {
          v14 = v7;
          while (1)
          {
            v7 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_81;
            }

            v15 = *(v8 + 8 * v7);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v11 = (v15 - 1) & v15;
              goto LABEL_13;
            }
          }

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
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
        }

        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_13:
        v66 = v13 | (v7 << 6);
        v16 = (*(a3 + 48) + 16 * v66);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 16);

        if (v19 && (v20 = sub_232DD5634(v17, v18), (v21 & 1) != 0))
        {
          v22 = (*(v6 + 56) + 16 * v20);
          v23 = *v22;
          v24 = v22[1];
          sub_232DB0970(*v22, v24);
          if (!*(v5 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0xF000000000000000;
          if (!*(v5 + 16))
          {
LABEL_16:
            v25 = 0;
            v26 = 0xF000000000000000;
            goto LABEL_22;
          }
        }

        v27 = v18;
        v28 = v11;
        v29 = v23;
        v30 = sub_232DD5634(v17, v27);
        if (v31)
        {
          v32 = (*(v5 + 56) + 16 * v30);
          v33 = *v32;
          v26 = v32[1];
          sub_232DB0970(*v32, v26);
          v25 = v33;
        }

        else
        {
          v25 = 0;
          v26 = 0xF000000000000000;
        }

        v23 = v29;
        v11 = v28;
LABEL_22:
        if (v24 >> 60 == 15)
        {
          if (v26 >> 60 == 15)
          {
            goto LABEL_5;
          }

LABEL_68:
          v52 = v25;
          sub_232DB0E28(v23, v24);
          v53 = v52;
          v54 = v26;
          goto LABEL_77;
        }

        if (v26 >> 60 == 15)
        {
          goto LABEL_68;
        }

        v34 = v24 >> 62;
        v35 = v26 >> 62;
        if (v24 >> 62 == 3)
        {
          v36 = 0;
          if (!v23 && v24 == 0xC000000000000000 && v26 >> 62 == 3)
          {
            v36 = 0;
            if (!v25 && v26 == 0xC000000000000000)
            {
              sub_232DB0E28(0, 0xC000000000000000);
              goto LABEL_5;
            }
          }

LABEL_41:
          if (v35 <= 1)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (v34 <= 1)
        {
          if (!v34)
          {
            v36 = BYTE6(v24);
            if (v35 <= 1)
            {
              goto LABEL_42;
            }

            goto LABEL_47;
          }

          LODWORD(v36) = HIDWORD(v23) - v23;
          if (__OFSUB__(HIDWORD(v23), v23))
          {
            goto LABEL_85;
          }

          v36 = v36;
          goto LABEL_41;
        }

        if (v34 == 2)
        {
          v38 = *(v23 + 16);
          v37 = *(v23 + 24);
          v39 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v39)
          {
            goto LABEL_86;
          }

          goto LABEL_41;
        }

        v36 = 0;
        if (v35 <= 1)
        {
LABEL_42:
          if (v35)
          {
            LODWORD(v40) = HIDWORD(v25) - v25;
            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_83;
            }

            v40 = v40;
          }

          else
          {
            v40 = BYTE6(v26);
          }

          goto LABEL_49;
        }

LABEL_47:
        if (v35 != 2)
        {
          if (!v36)
          {
            goto LABEL_55;
          }

LABEL_76:
          sub_232DB0E28(v25, v26);
          v53 = v23;
          v54 = v24;
LABEL_77:
          sub_232DB0E28(v53, v54);

          v6 = a4;
          v5 = a5;
          goto LABEL_78;
        }

        v42 = *(v25 + 16);
        v41 = *(v25 + 24);
        v39 = __OFSUB__(v41, v42);
        v40 = v41 - v42;
        if (v39)
        {
          goto LABEL_84;
        }

LABEL_49:
        if (v36 != v40)
        {
          goto LABEL_76;
        }

        if (v36 >= 1)
        {
          break;
        }

LABEL_55:
        sub_232DB0E28(v25, v26);
LABEL_5:
        sub_232DB0E28(v23, v24);

        v6 = a4;
        v5 = a5;
      }

      if (v34 > 1)
      {
        v61 = v25;
        if (v34 != 2)
        {
          memset(v71, 0, 14);
          sub_232DD8DCC(v23, v24);
          v43 = v61;
          sub_232DD8DCC(v61, v26);
          sub_232DD8DCC(v61, v26);
          goto LABEL_66;
        }

        v58 = *(v23 + 24);
        v59 = *(v23 + 16);
        v60 = v23;
        sub_232DD8DCC(v23, v24);
        sub_232DD8DCC(v61, v26);
        sub_232DD8DCC(v61, v26);
        v44 = sub_232E00A30();
        if (v44)
        {
          v45 = v44;
          v46 = sub_232E00A60();
          v47 = v59;
          if (__OFSUB__(v59, v46))
          {
            goto LABEL_89;
          }

          v57 = v59 - v46 + v45;
        }

        else
        {
          v57 = 0;
          v47 = v59;
        }

        if (__OFSUB__(v58, v47))
        {
          goto LABEL_88;
        }

        sub_232E00A50();
        v50 = v57;
      }

      else
      {
        if (!v34)
        {
          v71[0] = v23;
          LOWORD(v71[1]) = v24;
          BYTE2(v71[1]) = BYTE2(v24);
          BYTE3(v71[1]) = BYTE3(v24);
          BYTE4(v71[1]) = BYTE4(v24);
          BYTE5(v71[1]) = BYTE5(v24);
          v43 = v25;
          sub_232DD8DCC(v23, v24);
          sub_232DD8DCC(v43, v26);
          sub_232DD8DCC(v43, v26);
LABEL_66:
          sub_232DAD698(v71, v43, v26, &v70);
          if (v65)
          {
            goto LABEL_91;
          }

          sub_232DB0E28(v43, v26);
          sub_232DB0E28(v43, v26);
          sub_232DB0E28(v23, v24);
          sub_232DB0E28(v43, v26);
          v51 = v70;
          goto LABEL_74;
        }

        v61 = v25;
        if (v23 >> 32 < v23)
        {
          goto LABEL_87;
        }

        v60 = v23;
        sub_232DD8DCC(v23, v24);
        sub_232DD8DCC(v61, v26);
        sub_232DD8DCC(v61, v26);
        v48 = sub_232E00A30();
        if (v48)
        {
          v49 = sub_232E00A60();
          if (__OFSUB__(v23, v49))
          {
            goto LABEL_90;
          }

          v48 += v23 - v49;
        }

        sub_232E00A50();
        v50 = v48;
      }

      v43 = v61;
      sub_232DAD698(v50, v61, v26, v71);
      if (v65)
      {
LABEL_91:
        result = sub_232DB0E28(v43, v26);
        __break(1u);
        return result;
      }

      sub_232DB0E28(v61, v26);
      sub_232DB0E28(v61, v26);
      v23 = v60;
      sub_232DB0E28(v60, v24);
      sub_232DB0E28(v61, v26);
      v51 = v71[0];
LABEL_74:
      sub_232DB0E28(v23, v24);

      v6 = a4;
      v5 = a5;
    }

    while ((v51 & 1) != 0);
LABEL_78:
    *(a1 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
    v39 = __OFADD__(v64++, 1);
  }

  while (!v39);
  __break(1u);
LABEL_81:

  result = sub_232DD1508(a1, a2, v64, a3);
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DD8344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v84[2] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_85;
  }

  while (2)
  {
    v78 = v5;
    v74 = &v69;
    v75 = v12;
    MEMORY[0x28223BE20](v14);
    v76 = &v69 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v76, v13);
    v77 = 0;
    v13 = 0;
    v5 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    v12 = (v15 + 63) >> 6;
    v81 = a4;
    v82 = a2;
    v80 = v9;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v21 = v18 | (v13 << 6);
      v22 = *(v9 + 48);
      v79 = v21;
      v23 = (v22 + 16 * v21);
      a3 = *v23;
      v24 = v23[1];
      v25 = *(a2 + 16);

      if (v25 && (v26 = sub_232DD5634(a3, v24), (v27 & 1) != 0))
      {
        v28 = (*(a2 + 56) + 16 * v26);
        v29 = *v28;
        v30 = v28[1];
        sub_232DB0970(*v28, v30);
        if (!*(a4 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0xF000000000000000;
        if (!*(a4 + 16))
        {
LABEL_17:
          v31 = 0;
          v32 = 0xF000000000000000;
          goto LABEL_23;
        }
      }

      v33 = v24;
      v34 = v17;
      v35 = v29;
      v36 = a3;
      a3 = v33;
      v37 = sub_232DD5634(v36, v33);
      if (v38)
      {
        v39 = (*(a4 + 56) + 16 * v37);
        v40 = *v39;
        v32 = v39[1];
        sub_232DB0970(*v39, v32);
        v31 = v40;
      }

      else
      {
        v31 = 0;
        v32 = 0xF000000000000000;
      }

      v29 = v35;
      v17 = v34;
LABEL_23:
      if (v30 >> 60 == 15)
      {
        if (v32 >> 60 == 15)
        {
          goto LABEL_6;
        }

        goto LABEL_69;
      }

      if (v32 >> 60 == 15)
      {
LABEL_69:
        a3 = v31;
        sub_232DB0E28(v29, v30);
        v62 = a3;
        v63 = v32;
LABEL_78:
        sub_232DB0E28(v62, v63);

        a4 = v81;
        a2 = v82;
        v9 = v80;
LABEL_79:
        *&v76[(v79 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v79;
        v46 = __OFADD__(v77++, 1);
        if (v46)
        {
          __break(1u);
LABEL_82:
          v65 = sub_232DD1508(v76, v75, v77, v9);

          goto LABEL_83;
        }
      }

      else
      {
        v41 = v30 >> 62;
        v42 = v32 >> 62;
        if (v30 >> 62 == 3)
        {
          v43 = 0;
          if (!v29 && v30 == 0xC000000000000000 && v32 >> 62 == 3)
          {
            v43 = 0;
            if (!v31 && v32 == 0xC000000000000000)
            {
              sub_232DB0E28(0, 0xC000000000000000);
              goto LABEL_6;
            }
          }

LABEL_42:
          if (v42 <= 1)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        if (v41 <= 1)
        {
          if (!v41)
          {
            v43 = BYTE6(v30);
            if (v42 <= 1)
            {
              goto LABEL_43;
            }

            goto LABEL_48;
          }

          LODWORD(v43) = HIDWORD(v29) - v29;
          if (__OFSUB__(HIDWORD(v29), v29))
          {
            goto LABEL_90;
          }

          v43 = v43;
          goto LABEL_42;
        }

        if (v41 == 2)
        {
          v45 = *(v29 + 16);
          v44 = *(v29 + 24);
          v46 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          if (v46)
          {
            goto LABEL_91;
          }

          goto LABEL_42;
        }

        v43 = 0;
        if (v42 <= 1)
        {
LABEL_43:
          if (v42)
          {
            LODWORD(v47) = HIDWORD(v31) - v31;
            if (__OFSUB__(HIDWORD(v31), v31))
            {
              __break(1u);
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
              __break(1u);
LABEL_95:
              __break(1u);
            }

            v47 = v47;
          }

          else
          {
            v47 = BYTE6(v32);
          }

          goto LABEL_50;
        }

LABEL_48:
        if (v42 != 2)
        {
          if (!v43)
          {
            goto LABEL_56;
          }

LABEL_77:
          sub_232DB0E28(v31, v32);
          v62 = v29;
          v63 = v30;
          goto LABEL_78;
        }

        v49 = *(v31 + 16);
        v48 = *(v31 + 24);
        v46 = __OFSUB__(v48, v49);
        v47 = v48 - v49;
        if (v46)
        {
          goto LABEL_89;
        }

LABEL_50:
        if (v43 != v47)
        {
          goto LABEL_77;
        }

        if (v43 < 1)
        {
LABEL_56:
          sub_232DB0E28(v31, v32);
LABEL_6:
          sub_232DB0E28(v29, v30);

          a4 = v81;
          a2 = v82;
          v9 = v80;
        }

        else
        {
          if (v41 > 1)
          {
            v73 = v31;
            if (v41 == 2)
            {
              v51 = *(v29 + 16);
              v70 = *(v29 + 24);
              v71 = v51;
              v72 = v29;
              sub_232DD8DCC(v29, v30);
              v52 = v73;
              sub_232DD8DCC(v73, v32);
              sub_232DD8DCC(v52, v32);
              v53 = sub_232E00A30();
              if (v53)
              {
                v54 = v53;
                v55 = sub_232E00A60();
                v56 = v71;
                if (__OFSUB__(v71, v55))
                {
                  goto LABEL_94;
                }

                v69 = v71 - v55 + v54;
              }

              else
              {
                v69 = 0;
                v56 = v71;
              }

              if (__OFSUB__(v70, v56))
              {
                goto LABEL_93;
              }

              sub_232E00A50();
              v60 = v69;
              goto LABEL_73;
            }

            memset(v84, 0, 14);
            sub_232DD8DCC(v29, v30);
            v50 = v73;
            sub_232DD8DCC(v73, v32);
            sub_232DD8DCC(v50, v32);
          }

          else
          {
            if (v41)
            {
              v73 = v31;
              v70 = v29;
              v71 = (v29 >> 32) - v29;
              if (v29 >> 32 < v29)
              {
                goto LABEL_92;
              }

              v72 = v29;
              sub_232DD8DCC(v29, v30);
              v57 = v73;
              sub_232DD8DCC(v73, v32);
              sub_232DD8DCC(v57, v32);
              v58 = sub_232E00A30();
              if (v58)
              {
                v59 = sub_232E00A60();
                if (__OFSUB__(v70, v59))
                {
                  goto LABEL_95;
                }

                v58 += v70 - v59;
              }

              sub_232E00A50();
              v60 = v58;
LABEL_73:
              v50 = v73;
              v64 = v78;
              sub_232DAD698(v60, v73, v32, v84);
              v78 = v64;
              if (v64)
              {
LABEL_96:
                result = sub_232DB0E28(v50, v32);
                __break(1u);
                return result;
              }

              sub_232DB0E28(v50, v32);
              sub_232DB0E28(v50, v32);
              v29 = v72;
              sub_232DB0E28(v72, v30);
              sub_232DB0E28(v50, v32);
              a3 = LOBYTE(v84[0]);
              goto LABEL_75;
            }

            v84[0] = v29;
            LOWORD(v84[1]) = v30;
            BYTE2(v84[1]) = BYTE2(v30);
            BYTE3(v84[1]) = BYTE3(v30);
            BYTE4(v84[1]) = BYTE4(v30);
            BYTE5(v84[1]) = BYTE5(v30);
            v73 = v84 + BYTE6(v30);
            v50 = v31;
            sub_232DD8DCC(v29, v30);
            sub_232DD8DCC(v50, v32);
            sub_232DD8DCC(v50, v32);
          }

          v61 = v78;
          sub_232DAD698(v84, v50, v32, &v83);
          v78 = v61;
          if (v61)
          {
            goto LABEL_96;
          }

          sub_232DB0E28(v50, v32);
          sub_232DB0E28(v50, v32);
          sub_232DB0E28(v29, v30);
          sub_232DB0E28(v50, v32);
          a3 = v83;
LABEL_75:
          sub_232DB0E28(v29, v30);

          a4 = v81;
          a2 = v82;
          v9 = v80;
          if ((a3 & 1) == 0)
          {
            goto LABEL_79;
          }
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_82;
      }

      v20 = *(v5 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_85:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();

  v65 = sub_232DD6120(v68, v12, v9, a2, a3, a4);

  MEMORY[0x238396AF0](v68, -1, -1);

LABEL_83:
  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

uint64_t sub_232DD8B40(uint64_t a1, unint64_t a2)
{
  sub_232DB3120(MEMORY[0x277D84F90]);

  v4 = sub_232DD6F80(a2);

  v6 = sub_232DCA018(v5);
  v7 = sub_232DCA018(v4);
  v8 = v7;
  if (*(v6 + 16) <= *(v7 + 16) >> 3)
  {
    v22 = v7;

    sub_232DD61D8(v6);
    v9 = v22;
  }

  else
  {

    v9 = sub_232DD088C(v6, v8);
  }

  if (*(v8 + 16) <= *(v6 + 16) >> 3)
  {
    v22 = v6;

    sub_232DD61D8(v8);
    v10 = v6;
  }

  else
  {

    v10 = sub_232DD088C(v8, v6);
  }

  v11 = sub_232DD6304(v8, v6);

  v12 = sub_232DD8344(v11, a1, 2, v4);

  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = sub_232DAE004(*(v9 + 16), 0);
  v15 = sub_232DAFE80(&v22, v14 + 4, v13, v9);
  result = sub_232D734F4();
  if (v15 != v13)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v17 = *(v12 + 16);
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_10:
  v18 = sub_232DAE004(v17, 0);
  v19 = sub_232DAFE80(&v22, v18 + 4, v17, v12);
  result = sub_232D734F4();
  if (v19 != v17)
  {
    goto LABEL_19;
  }

  v20 = *(v10 + 16);
  if (v20)
  {
    while (1)
    {
      v21 = sub_232DAE004(v20, 0);
      v10 = sub_232DAFE80(&v22, v21 + 4, v20, v10);
      sub_232D734F4();
      if (v10 == v20)
      {
        break;
      }

      __break(1u);
LABEL_14:

      v14 = MEMORY[0x277D84F90];
      v17 = *(v12 + 16);
      if (v17)
      {
        goto LABEL_10;
      }

LABEL_15:

      v20 = *(v10 + 16);
      if (!v20)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
  }

  return v14;
}

uint64_t sub_232DD8DCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232DB0970(a1, a2);
  }

  return a1;
}

unint64_t sub_232DD8DF0(uint64_t a1)
{
  *(a1 + 8) = sub_232DD2430();
  result = sub_232DD23DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_232DD8E20()
{
  result = qword_27DDD76A8;
  if (!qword_27DDD76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76A8);
  }

  return result;
}

unint64_t sub_232DD8E74()
{
  result = qword_2814E8488;
  if (!qword_2814E8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8488);
  }

  return result;
}

uint64_t sub_232DD8EC8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B8, &qword_232E07918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  sub_232DB3120(MEMORY[0x277D84F90]);

  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_232DD8E20();
  sub_232E01C00();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_232E01A40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    v10[15] = 1;
    sub_232DD90E4(&qword_2814E7C48, sub_232DD9168);
    sub_232E01A30();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_232DD90E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD76B0, &qword_232E07910);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232DD9168()
{
  result = qword_2814E8480;
  if (!qword_2814E8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8480);
  }

  return result;
}

unint64_t sub_232DD91D0()
{
  result = qword_27DDD76C0;
  if (!qword_27DDD76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76C0);
  }

  return result;
}

unint64_t sub_232DD9228()
{
  result = qword_27DDD76C8;
  if (!qword_27DDD76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76C8);
  }

  return result;
}

unint64_t sub_232DD9280()
{
  result = qword_27DDD76D0;
  if (!qword_27DDD76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76D0);
  }

  return result;
}

id sub_232DD92D4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_232E012A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E00BE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() defaultManager];
  result = [objc_opt_self() appGroupIdentifier];
  if (result)
  {
    v16 = result;
    v17 = [v14 containerURLForSecurityApplicationGroupIdentifier_];

    if (v17)
    {
      sub_232E00BB0();

      (*(v7 + 32))(v13, v11, v6);
      v18 = v21;
      sub_232E00B80();
      (*(v7 + 8))(v13, v6);
      v19 = 0;
    }

    else
    {
      sub_232E01270();
      sub_232E01380();
      (*(v2 + 8))(v5, v1);
      v19 = 1;
      v18 = v21;
    }

    return (*(v7 + 56))(v18, v19, 1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_232DD9590(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 242) = a2;
  *(v4 + 32) = a1;
  v5 = sub_232E012A0();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DD9658, v3, 0);
}

uint64_t sub_232DD9658()
{
  v1 = v0[6];
  v2 = v0[4];
  sub_232DDA970();
  v21 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_16:
    if (v0[4] < 0)
    {
      v13 = v0[4];
    }

    v3 = sub_232E019C0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v20 = v0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = (v0[4] + 32);
      v0 = &selRef_productId;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x238395D50](v4, v20[4]);
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v0 = v20;
            v12 = v21;
            goto LABEL_20;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v7 + 8 * v4);
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v2 = v8;
        v10 = [v2 supportID];

        if (v10)
        {

          sub_232E01950();
          v11 = *(v21 + 16);
          sub_232E01980();
          sub_232E01990();
          sub_232E01960();
        }

        else
        {
        }

        ++v4;
        if (v9 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:
  v14 = v0[5];
  if (v14 <= 1)
  {
    v14 = 1;
  }

  v0[10] = v12;
  v0[11] = v14;
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  *(v15 + 1) = sub_232DD984C;
  v16 = v0[6];
  v17 = *(v0 + 242);
  v18 = v0[4];

  return sub_232DDAE38(v18, v17);
}

uint64_t sub_232DD984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 96);
  v8 = *v5;
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = a3;
  v6[16] = a4;
  v6[17] = v4;

  if (v4)
  {
    v9 = v6[10];

    v10 = v6[9];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v13 = v6[6];

    return MEMORY[0x2822009F8](sub_232DD99AC, v13, 0);
  }
}

uint64_t sub_232DD99AC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 168) = v2;
      *v2 = v0;
      v2[1] = sub_232DD9F54;
      v4 = *(v0 + 80);
      v3 = *(v0 + 88);
      v5 = *(v0 + 48);

      return sub_232DDB624(v4, v3);
    }

    else
    {
      v13 = *(v0 + 64);
      v14 = *(v0 + 72);
      v15 = *(v0 + 56);
      v16 = *(v0 + 32);
      v51 = *(v0 + 104);
      sub_232DB0970(*(v0 + 120), *(v0 + 128));
      v17 = sub_232DD8B40(v1, v16);
      v19 = v18;
      v21 = v20;
      *(v0 + 144) = v17;
      *(v0 + 152) = v18;
      *(v0 + 160) = v20;
      sub_232E01270();
      sub_232E018F0();
      MEMORY[0x238395970](0xD000000000000019, 0x8000000232E0D7D0);
      v22 = MEMORY[0x277D837D0];
      v23 = MEMORY[0x238395A10](v17, MEMORY[0x277D837D0]);
      MEMORY[0x238395970](v23);

      MEMORY[0x238395970](0x657461647075202CLL, 0xEB00000000203A64);
      v24 = MEMORY[0x238395A10](v19, v22);
      MEMORY[0x238395970](v24);

      MEMORY[0x238395970](0x6574656C6564202CLL, 0xEB00000000203A64);
      v25 = MEMORY[0x238395A10](v21, v22);
      MEMORY[0x238395970](v25);

      sub_232E01360();

      (*(v13 + 8))(v14, v15);
      if (*(v21 + 16))
      {
        v26 = swift_task_alloc();
        *(v0 + 184) = v26;
        *v26 = v0;
        v26[1] = sub_232DDA098;
        v27 = *(v0 + 48);

        return sub_232DDBA14(v21, v51, v1);
      }

      else
      {
        *(v0 + 200) = v1;
        v29 = *(v0 + 152);
        v28 = *(v0 + 160);
        v31 = *(v0 + 136);
        v30 = *(v0 + 144);
        v32 = *(v0 + 80);

        sub_232DC2F90(v29);

        v54 = v30;
        v55 = MEMORY[0x277D84F90];
        v33 = *(v0 + 80);
        if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
        {
          goto LABEL_29;
        }

        v34 = *(v33 + 16);
        for (i = v51; v34; i = v51)
        {
          v50 = v1;
          v36 = 0;
          v53 = v32 & 0xC000000000000001;
          v52 = v33 + 32;
          while (1)
          {
            if (v53)
            {
              v37 = MEMORY[0x238395D50](v36, *(v0 + 80));
            }

            else
            {
              if (v36 >= *(v33 + 16))
              {
                goto LABEL_28;
              }

              v37 = *(v52 + 8 * v36);
            }

            v38 = v37;
            v39 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            v40 = v33;
            v41 = [v37 identifier];
            v42 = sub_232E014D0();
            v32 = v43;

            *(v0 + 16) = v42;
            *(v0 + 24) = v32;
            v44 = swift_task_alloc();
            *(v44 + 16) = v0 + 16;
            v1 = sub_232DF7F9C(sub_232DB0E78, v44, v54);

            if (v1)
            {
              sub_232E01950();
              v32 = *(v55 + 16);
              sub_232E01980();
              sub_232E01990();
              sub_232E01960();
            }

            else
            {
            }

            v33 = v40;
            ++v36;
            if (v39 == v34)
            {
              v45 = v55;
              v46 = *(v0 + 80);
              v1 = v50;
              i = v51;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v34 = sub_232E019C0();
          v33 = *(v0 + 80);
        }

        v45 = MEMORY[0x277D84F90];
LABEL_31:
        *(v0 + 208) = v45;

        v47 = swift_task_alloc();
        *(v0 + 216) = v47;
        *v47 = v0;
        v47[1] = sub_232DDA1E8;
        v48 = *(v0 + 88);
        v49 = *(v0 + 48);

        return sub_232DDC020(v45, v48, i, v1);
      }
    }
  }

  else
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);

    sub_232E01270();
    sub_232E01360();
    (*(v10 + 8))(v8, v9);
    v11 = *(v0 + 72);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_232DD9F54()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_232DDA7A8, v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_232DDA098(__int16 a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v9 = *(v6 + 80);
    v10 = *(v6 + 48);

    v11 = sub_232DDA6F0;
    v12 = v10;
  }

  else
  {
    v12 = *(v6 + 48);
    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v11 = sub_232DDA460;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_232DDA1E8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v10 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = sub_232DDA3B4;
  }

  else
  {
    v7 = v2[25];
    v6 = v2[26];
    v8 = v2[6];

    v5 = sub_232DDA330;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DDA330()
{
  v1 = v0[15];
  v2 = v0[16];
  sub_232DDD2E0(v0[13], v0[14], v1, v2);
  sub_232DB091C(v1, v2);
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DDA3B4()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = v0[28];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  sub_232DB091C(v5, v4);
  sub_232DDD2E0(v7, v6, v5, v4);
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_232DDA460()
{
  LOWORD(v1) = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  *(v0 + 200) = v2;
  v4 = *(v0 + 160);
  v5 = *(v0 + 80);
  v27 = *(v0 + 144);
  sub_232DC2F90(*(v0 + 152));

  v26 = v27;
  v28 = MEMORY[0x277D84F90];
  v6 = *(v0 + 80);
  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_17;
  }

  for (i = *(v6 + 16); i; v6 = *(v0 + 80))
  {
    v22 = v2;
    v23 = v1;
    v8 = 0;
    v25 = v5 & 0xC000000000000001;
    v24 = v6 + 32;
    while (1)
    {
      if (v25)
      {
        v9 = MEMORY[0x238395D50](v8, *(v0 + 80));
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_16;
        }

        v9 = *(v24 + 8 * v8);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v2 = v6;
      v12 = [v9 identifier];
      v13 = sub_232E014D0();
      v1 = v14;

      *(v0 + 16) = v13;
      *(v0 + 24) = v1;
      v15 = swift_task_alloc();
      *(v15 + 16) = v0 + 16;
      v5 = sub_232DF7F9C(sub_232DB0E78, v15, v26);

      if (v5)
      {
        sub_232E01950();
        v5 = *(v28 + 16);
        sub_232E01980();
        sub_232E01990();
        sub_232E01960();
      }

      else
      {
      }

      v6 = v2;
      ++v8;
      if (v11 == i)
      {
        v16 = v28;
        v17 = *(v0 + 80);
        LOWORD(v1) = v23;
        v2 = v22;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    i = sub_232E019C0();
  }

  v16 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 208) = v16;

  v18 = swift_task_alloc();
  *(v0 + 216) = v18;
  *v18 = v0;
  v18[1] = sub_232DDA1E8;
  v19 = *(v0 + 88);
  v20 = *(v0 + 48);

  return sub_232DDC020(v16, v19, v1, v2);
}

uint64_t sub_232DDA6F0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];

  v4 = v0[24];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  sub_232DB091C(v6, v5);
  sub_232DDD2E0(v8, v7, v6, v5);
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_232DDA7A8()
{
  v1 = v0[10];

  v2 = v0[22];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DDA834()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_232DCD970;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_6;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DDA970()
{
  v32[3] = *MEMORY[0x277D85DE8];
  v0 = sub_232E012A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E00AB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = sub_232E00BE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232DD92D4(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_232DDD784(v13);
    sub_232E01270();
    sub_232E01380();
    result = (*(v1 + 8))(v4, v0);
  }

  else
  {
    v29 = v6;
    v30 = v0;
    (*(v15 + 32))(v18, v13, v14);
    v20 = [objc_opt_self() defaultManager];
    v21 = sub_232E00B70();
    v32[0] = 0;
    v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v32];

    if (v22)
    {
      v23 = v32[0];
      sub_232E00AA0();
      sub_232E00A90();
      sub_232E00B60();
      (*(v29 + 8))(v9, v5);
    }

    else
    {
      v24 = v32[0];
      v25 = sub_232E00AE0();

      swift_willThrow();
      sub_232E01270();
      v32[0] = 0;
      v32[1] = 0xE000000000000000;
      sub_232E018F0();
      MEMORY[0x238395970](0xD000000000000028, 0x8000000232E0D970);
      v26 = sub_232E00BC0();
      MEMORY[0x238395970](v26);

      MEMORY[0x238395970](0x6162206D6F726620, 0xEE00203A70756B63);
      v31 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      sub_232E019A0();
      sub_232E01380();

      (*(v1 + 8))(v4, v30);
    }

    result = (*(v15 + 8))(v18, v14);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DDAE38(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v4 = sub_232E012A0();
  *(v3 + 184) = v4;
  v5 = *(v4 - 8);
  *(v3 + 192) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDAEFC, v2, 0);
}

uint64_t sub_232DDAEFC(uint64_t a1)
{
  if (*(v1 + 224) == 1)
  {
    v2 = *(v1 + 176);
    v3 = sub_232DE833C(a1);
    *(v1 + 208) = v3;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 144;
    *(v1 + 24) = sub_232DDB218;
    v4 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7668, &qword_232E07568);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_232DCDB54;
    *(v1 + 104) = &block_descriptor_26;
    *(v1 + 112) = v4;
    [v3 fetchLastClientStateWithCompletionHandler_];

    return MEMORY[0x282200938](v1 + 16);
  }

  v5 = sub_232DD7960(*(v1 + 168), 0, 0xC000000000000000);
  if (v5 != 2)
  {
    v9 = v5;
    v10 = *(v1 + 200);
    sub_232E01270();
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
    v12 = *(v1 + 192);
    v11 = *(v1 + 200);
    v13 = *(v1 + 184);
    *(v1 + 160) = 0;
    v14 = sub_232E01AB0();
    MEMORY[0x238395970](v14);

    MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
    sub_232E01370();

    (*(v12 + 8))(v11, v13);
    if (v9 && (v15 = *(v1 + 176), v17 = *(v15 + 112), v16 = *(v15 + 120), , v18 = sub_232DC9660(v17, v16), v19))
    {
      LOWORD(v6) = v18;
      v7 = v19;
      if (sub_232DD48BC(0, 0xC000000000000000, v18, v19))
      {
        v6 = v6;
        v8 = 0xC000000000000000;
        goto LABEL_14;
      }

      sub_232DB091C(0, 0xC000000000000000);
    }

    else
    {
      sub_232DB091C(0, 0xC000000000000000);
    }

    v6 = 0;
    v8 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  sub_232DB091C(0, 0xC000000000000000);
  v6 = 0;
  v7 = 0;
  v8 = 0;
LABEL_14:
  v20 = *(v1 + 200);

  v21 = *(v1 + 8);

  return v21(v6, v7, 0, v8);
}

uint64_t sub_232DDB218()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_232DDB5A8;
  }

  else
  {
    v5 = sub_232DDB338;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DDB338()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = sub_232DD7960(*(v0 + 168), v1, v2);
  if (v3 != 2)
  {
    v6 = v3;
    v7 = *(v0 + 200);
    sub_232E01270();
    sub_232E018F0();
    result = MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
    v9 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      v10 = 0;
      if (v9 != 2)
      {
        goto LABEL_12;
      }

      v12 = *(v1 + 16);
      v11 = *(v1 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE6(v2);
      goto LABEL_12;
    }

    LODWORD(v10) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      return result;
    }

    v10 = v10;
LABEL_12:
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    *(v0 + 160) = v10;
    v17 = sub_232E01AB0();
    MEMORY[0x238395970](v17);

    MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
    sub_232E01370();

    (*(v15 + 8))(v14, v16);
    if (v6 && (v18 = *(v0 + 176), v19 = *(v18 + 112), v20 = *(v18 + 120), , v21 = sub_232DC9660(v19, v20), v22))
    {
      LOWORD(v4) = v21;
      v5 = v22;
      if (sub_232DD48BC(v1, v2, v21, v22))
      {
        v4 = v4;
        goto LABEL_19;
      }

      sub_232DB091C(v1, v2);
    }

    else
    {
      sub_232DB091C(v1, v2);
    }

    v4 = 0;
    v1 = 0;
    v2 = 0;
    v5 = 1;
    goto LABEL_19;
  }

  sub_232DB091C(v1, v2);
  v4 = 0;
  v5 = 0;
  v1 = 0;
  v2 = 0;
LABEL_19:
  v23 = *(v0 + 200);

  v24 = *(v0 + 8);

  return v24(v4, v5, v1, v2);
}

uint64_t sub_232DDB5A8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_232DDB624(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232E012A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDB6E8, v2, 0);
}

uint64_t sub_232DDB6E8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v2 + 8);
  v5(v1, v3);
  sub_232E01270();
  sub_232E01360();
  v6 = (v5)(v1, v3);
  v7 = sub_232DE833C(v6);
  v0[8] = v7;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_232DDB838;

  return sub_232DC7248(0, 0xC000000000000000, v7);
}

uint64_t sub_232DDB838()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_232DCE198;
  }

  else
  {
    v6 = *(v2 + 32);

    v5 = sub_232DDB960;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DDB960()
{
  v1 = sub_232DB3120(MEMORY[0x277D84F90]);
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_232DCE030;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_232DDC020(v5, v3, 2, v1);
}

uint64_t sub_232DDBA14(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 120) = a2;
  *(v4 + 16) = a1;
  v5 = sub_232E012A0();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDBADC, v3, 0);
}

uint64_t sub_232DDBADC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_232E01270();
  sub_232E018F0();

  v6 = MEMORY[0x238395A10](v5, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v6);

  sub_232E01360();

  (*(v2 + 8))(v1, v3);
  v7 = *(v5 + 16);

  if (v7)
  {
    v9 = 0;
    v10 = *(v0 + 24);
    v11 = *(v0 + 16) + 40;
    do
    {
      v12 = (v11 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v7)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }

        v14 = *(v12 - 1);
        v15 = *v12;

        v16 = sub_232DD5634(v14, v15);
        if (v17)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }

      v18 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232DC2ADC();
      }

      v19 = v18;
      v20 = 16 * v18;
      v21 = *(*(v10 + 48) + v20 + 8);

      v22 = (*(v10 + 56) + v20);
      v23 = *v22;
      v24 = v22[1];
      sub_232DC2630(v19, v10);
      sub_232DB091C(v23, v24);
    }

    while (v9 != v7);
  }

  else
  {
    v10 = *(v0 + 24);
  }

LABEL_14:
  *(v0 + 64) = v10;
  v25 = *(v0 + 32);
  v26 = *(v0 + 16);
  v27 = *(v0 + 120);
  *(v0 + 72) = sub_232DE833C(result);
  v28 = sub_232DD2640(v27, v10);
  v30 = v29;
  *(v0 + 80) = v28;
  *(v0 + 88) = v29;
  v31 = swift_task_alloc();
  *(v0 + 96) = v31;
  *(v31 + 16) = v26;
  v32 = swift_task_alloc();
  *(v0 + 104) = v32;
  *v32 = v0;
  v32[1] = sub_232DDBD80;

  return sub_232DC7F98(v28, v30, &unk_232E07A80, v31);
}

uint64_t sub_232DDBD80()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  if (v0)
  {
    v9 = v2[8];
    v10 = v2[4];

    sub_232DB091C(v7, v6);

    v11 = sub_232DDBFBC;
  }

  else
  {
    v10 = v2[4];
    sub_232DB091C(v2[10], v2[11]);

    v11 = sub_232DDBF3C;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_232DDBF3C()
{
  v1 = *(v0 + 56);
  sub_232DC9AC4(*(*(v0 + 32) + 112), *(*(v0 + 32) + 120), *(v0 + 120), *(v0 + 64));

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);
  v4 = *(v0 + 120);

  return v2(v4, v3);
}

uint64_t sub_232DDBFBC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_232DDC020(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 200) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_232E012A0();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDC0E8, v4, 0);
}

void sub_232DDC0E8()
{
  v42 = v0;
  v1 = *(v0 + 56);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_22:
  v2 = sub_232E019C0();
  v3 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = *(v0 + 56);

  v5 = sub_232DDD054(0, v2, v3, v4, v3);
  *(v0 + 112) = v5;
  v6 = *(v5 + 16);
  *(v0 + 120) = v6;
  if (v6)
  {
    v40 = *(v0 + 72);

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v7;
      v8 = *(v0 + 112);
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v0 + 104);
      v10 = *(v8 + 8 * v7 + 32);

      sub_232E01270();
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      sub_232E018F0();
      v11 = *(v0 + 40);

      *(v0 + 16) = 0xD000000000000012;
      *(v0 + 24) = 0x8000000232E0D6B0;
      if (v10 >> 62)
      {
        v12 = sub_232E019C0();
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v15 = *(v0 + 88);
      *(v0 + 48) = v12;
      v16 = sub_232E01AB0();
      MEMORY[0x238395970](v16);

      MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0D8A0);
      v17 = *(v0 + 16);
      v18 = *(v0 + 24);
      sub_232E01370();

      (*(v13 + 8))(v14, v15);
      v19 = Array<A>.searchableItems.getter(v10);
      *(v0 + 136) = v19;
      if (v19 >> 62)
      {
        v20 = v19;
        v21 = sub_232E019C0();
        v19 = v20;
        if (v21)
        {
LABEL_14:
          v22 = *(v0 + 80);
          v23 = *(v0 + 200);
          v24 = v19;
          v25 = sub_232DD6F80(v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v40;
          sub_232DDD348(v25, sub_232DDD294, 0, isUniquelyReferenced_nonNull_native, &v41);

          v28 = v41;
          *(v0 + 144) = v41;
          *(v0 + 152) = sub_232DE833C(v27);
          v29 = sub_232DD2640(v23, v28);
          v31 = v30;
          *(v0 + 160) = v29;
          *(v0 + 168) = v30;
          v32 = swift_task_alloc();
          *(v0 + 176) = v32;
          *(v32 + 16) = v24;
          v33 = swift_task_alloc();
          *(v0 + 184) = v33;
          *v33 = v0;
          v33[1] = sub_232DDC4E4;

          sub_232DC7F98(v29, v31, &unk_232E07A70, v32);
          return;
        }
      }

      else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v0 + 128) + 1;
      if (v7 == *(v0 + 120))
      {
        v35 = *(v0 + 112);

        v36 = v40;
        goto LABEL_18;
      }
    }
  }

  v34 = *(v0 + 72);

  v36 = *(v0 + 72);
LABEL_18:
  v37 = *(v0 + 104);

  v38 = *(v0 + 8);
  v39 = *(v0 + 200);

  v38(v39, v36);
}

uint64_t sub_232DDC4E4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  v2[24] = v0;

  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[20];
  v8 = v2[19];
  if (v0)
  {
    v9 = v2[17];
    v10 = v2[18];
    v11 = v2[14];
    v12 = v2[10];

    sub_232DB091C(v7, v6);

    v13 = sub_232DDCA4C;
    v14 = v12;
  }

  else
  {
    v15 = v2[17];
    v16 = v2[10];

    sub_232DB091C(v7, v6);

    v13 = sub_232DDC6C8;
    v14 = v16;
  }

  return MEMORY[0x2822009F8](v13, v14, 0);
}

uint64_t sub_232DDC6C8()
{
  v36 = v0;
  result = sub_232DC9AC4(*(*(v0 + 80) + 112), *(*(v0 + 80) + 120), *(v0 + 200), *(v0 + 144));
  v34 = *(v0 + 144);
  v2 = *(v0 + 128) + 1;
  if (v2 == *(v0 + 120))
  {
LABEL_2:
    v3 = *(v0 + 112);

    v4 = *(v0 + 104);

    v5 = *(v0 + 8);
    v6 = *(v0 + 200);

    return v5(v6, v34);
  }

  v33 = *(v0 + 192);
  while (1)
  {
    *(v0 + 128) = v2;
    v7 = *(v0 + 112);
    if (v2 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v0 + 104);
    v9 = *(v7 + 8 * v2 + 32);

    sub_232E01270();
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    sub_232E018F0();
    v10 = *(v0 + 40);

    *(v0 + 16) = 0xD000000000000012;
    *(v0 + 24) = 0x8000000232E0D6B0;
    v11 = v9 >> 62 ? sub_232E019C0() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 88);
    *(v0 + 48) = v11;
    v15 = sub_232E01AB0();
    MEMORY[0x238395970](v15);

    MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0D8A0);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    sub_232E01370();

    (*(v12 + 8))(v13, v14);
    v18 = Array<A>.searchableItems.getter(v9);
    *(v0 + 136) = v18;
    if (v18 >> 62)
    {
      break;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_11:

    v2 = *(v0 + 128) + 1;
    if (v2 == *(v0 + 120))
    {
      goto LABEL_2;
    }
  }

  v19 = v18;
  v20 = sub_232E019C0();
  v18 = v19;
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_15:
  v21 = *(v0 + 80);
  v22 = *(v0 + 200);
  v23 = v18;
  v24 = sub_232DD6F80(v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v34;
  sub_232DDD348(v24, sub_232DDD294, 0, isUniquelyReferenced_nonNull_native, &v35);

  v27 = v35;
  *(v0 + 144) = v35;
  *(v0 + 152) = sub_232DE833C(v26);
  v28 = sub_232DD2640(v22, v27);
  v30 = v29;
  *(v0 + 160) = v28;
  *(v0 + 168) = v29;
  v31 = swift_task_alloc();
  *(v0 + 176) = v31;
  *(v31 + 16) = v23;
  v32 = swift_task_alloc();
  *(v0 + 184) = v32;
  *v32 = v0;
  v32[1] = sub_232DDC4E4;

  return sub_232DC7F98(v28, v30, &unk_232E07A70, v31);
}

uint64_t sub_232DDCA4C()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[24];

  return v2();
}

uint64_t sub_232DDCAB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DDCAD0, 0, 0);
}

uint64_t sub_232DDCAD0()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_232DDD69C();
  v3 = sub_232E015C0();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_232DDCC0C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_15_0;
  v0[14] = v4;
  [v1 indexSearchableItems:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DDCC0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_232DDD804;
  }

  else
  {
    v3 = sub_232DDD808;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DDCD1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DDCD3C, 0, 0);
}

uint64_t sub_232DDCD3C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = sub_232E015C0();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_232DDCE70;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_22;
  v0[14] = v4;
  [v2 deleteSearchableItemsWithIdentifiers:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DDCE70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_232DDCFE4;
  }

  else
  {
    v3 = sub_232DDCF80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DDCF80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DDCFE4()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_232DDD054(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (v12)
    {
      break;
    }

    v13 = __OFADD__(v11, a3);
    v11 += a3;
    if (v13)
    {
      v11 = (v11 >> 63) ^ 0x8000000000000000;
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v14 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_232DF8FF0(0, v10, 0);
  if (v10)
  {
    v15 = v14;
    while (1)
    {
      v16 = v15 <= a2;
      if (a3 > 0)
      {
        v16 = v15 >= a2;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v15, a3))
      {
        v14 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v15 + a3;
      }

      v17 = sub_232DCFA8C(v15, a4, a5);
      if (v5)
      {
        goto LABEL_37;
      }

      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_232DF8FF0((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      *(v29 + 16) = v19 + 1;
      *(v29 + 8 * v19 + 32) = v17;
      v15 = v14;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v20 = v14 <= a2;
    if (a3 > 0)
    {
      v20 = v14 >= a2;
    }

    if (v20)
    {
LABEL_25:

      return v29;
    }

    while (1)
    {
      v22 = __OFADD__(v14, a3) ? ((v14 + a3) >> 63) ^ 0x8000000000000000 : v14 + a3;
      v23 = sub_232DCFA8C(v14, a4, a5);
      if (v5)
      {
        break;
      }

      v25 = *(v29 + 16);
      v24 = *(v29 + 24);
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_232DF8FF0((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      *(v29 + 16) = v25 + 1;
      *(v29 + 8 * v25 + 32) = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v14 = v22;
      if (v26)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:

  __break(1u);
  return result;
}

uint64_t sub_232DDD294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  a2[2] = v4;
  a2[3] = v5;
  *a2 = v3;
  a2[1] = v2;

  return sub_232DB0970(v4, v5);
}

void sub_232DDD2E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= 2)
  {

    sub_232DB091C(a3, a4);
  }
}

uint64_t sub_232DDD348(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v46 = v9;
  v47 = v5;
  while (1)
  {
    v14 = v8;
    v15 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 << 10) | (16 * __clz(__rbit64(v14)));
    v18 = *(a1 + 56);
    v19 = (*(a1 + 48) + v17);
    v20 = v19[1];
    v52[0] = *v19;
    v52[1] = v20;
    v53 = *(v18 + v17);
    v50 = v53;

    sub_232DB0970(v50, *(&v50 + 1));
    a2(&v54, v52);
    v21 = v53;

    sub_232DB091C(v21, *(&v21 + 1));
    v22 = v55;
    if (!v55)
    {
LABEL_22:
      sub_232DD2638();
    }

    v23 = v54;
    v25 = v56;
    v24 = v57;
    v26 = *v58;
    v28 = sub_232DD5634(v54, v55);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_232DC2ADC();
      }
    }

    else
    {
      v33 = v58;
      sub_232DC1A88(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_232DD5634(v23, v22);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v28 = v35;
    }

    v37 = (v14 - 1) & v14;
    v38 = *v58;
    if (v32)
    {

      v11 = (v38[7] + 16 * v28);
      v12 = *v11;
      v13 = v11[1];
      *v11 = v25;
      v11[1] = v24;
      sub_232DB091C(v12, v13);
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 16 * v28);
      *v39 = v23;
      v39[1] = v22;
      v40 = (v38[7] + 16 * v28);
      *v40 = v25;
      v40[1] = v24;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v10 = v15;
    v9 = v46;
    v5 = v47;
    v8 = v37;
  }

  v16 = v10;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_232E01B40();
  __break(1u);
  return result;
}

uint64_t sub_232DDD600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA7C78;

  return sub_232DDCAB0(a1, v4);
}

unint64_t sub_232DDD69C()
{
  result = qword_2814E7C10;
  if (!qword_2814E7C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7C10);
  }

  return result;
}

uint64_t sub_232DDD6E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return sub_232DDCD1C(a1, v4);
}

uint64_t sub_232DDD784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TPSAppleTVPlusSubscriptionValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id TPSAppleTVPlusSubscriptionValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAppleTVPlusSubscriptionValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DDD99C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = *(a1 + 40);
  v23 = *(a1 + 32);
  if (a2)
  {
    v13 = sub_232E014D0();
    v15 = v14;
    if (a3)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      *&v24 = a3;
      sub_232D734CC(&v24, v26);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memset(v26, 0, sizeof(v26));
LABEL_6:

  swift_unknownObjectRetain();
  if (!a4)
  {
    v18 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_8;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v16 = a4;
  a4 = sub_232E00C60();
  v18 = v17;

  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v19 = sub_232E014D0();
  a6 = v20;
LABEL_11:
  v21 = a7;
  v23(v13, v15, v26, a4, v18, a5, v19, a6, a7);

  sub_232DB0E28(a4, v18);

  return sub_232DAB434(v26, &qword_27DDD74C0, &qword_232E07DF0);
}

uint64_t sub_232DDDB90()
{
  v1 = (v0 + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232DDDC54(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_232DDDE14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  return sub_232DAB3CC(v1 + v3, a1, &qword_27DDD7300, &qword_232E06830);
}

uint64_t sub_232DDDFBC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_232DAB3CC(a1, &v11 - v6, &qword_27DDD7300, &qword_232E06830);
  v8 = *a2;
  v9 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  sub_232DDEBE0(v7, v8 + v9);
  return swift_endAccess();
}

id AssetsDownloadOperation.__allocating_init(_:assetURLPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  v11 = sub_232E00BE0();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *&v9[OBJC_IVAR___TPSAssetsDownloadOperation_priority] = *MEMORY[0x277CCA790];
  *&v9[OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem] = 0;
  v12 = &v9[OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v9[OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath];
  *v13 = a3;
  *(v13 + 1) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id AssetsDownloadOperation.init(_:assetURLPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  v10 = sub_232E00BE0();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR___TPSAssetsDownloadOperation_priority] = *MEMORY[0x277CCA790];
  *&v4[OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem] = 0;
  v11 = &v4[OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for AssetsDownloadOperation();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for AssetsDownloadOperation()
{
  result = qword_27DDD76F8;
  if (!qword_27DDD76F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232DDE3C8()
{
  sub_232DB52EC();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath);
    v4 = *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath + 8);

    v5 = sub_232E014C0();

    v6 = (v0 + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];

    v9 = sub_232E014C0();

    v10 = *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_priority);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_232DDE8B8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232DDD99C;
    aBlock[3] = &block_descriptor_7;
    v12 = _Block_copy(aBlock);

    LODWORD(v13) = v10;
    v14 = [v2 formattedDataForPath:v5 identifier:v9 attributionIdentifier:0 priority:v12 completionHandler:v13];
    _Block_release(v12);

    v15 = *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem);
    *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem) = v14;
  }

  else
  {
    __break(1u);
  }
}

void sub_232DDE598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v16 = &v29[-v15 - 8];
  v17 = sub_232E00BE0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_232DAB3CC(a3, v29, &qword_27DDD74C0, &qword_232E07DF0);
    if (v30)
    {
      v24 = swift_dynamicCast();
      v25 = *(v18 + 56);
      v25(v16, v24 ^ 1u, 1, v17);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        (*(v18 + 32))(v21, v16, v17);
        (*(v18 + 16))(v14, v21, v17);
        v25(v14, 0, 1, v17);
        v26 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
        swift_beginAccess();
        sub_232DDEBE0(v14, v23 + v26);
        swift_endAccess();
        [v23 finishWithError_];

        (*(v18 + 8))(v21, v17);
        return;
      }
    }

    else
    {
      sub_232DAB434(v29, &qword_27DDD74C0, &qword_232E07DF0);
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    v27 = a9;
    sub_232DAB434(v16, &qword_27DDD7300, &qword_232E06830);
    if (a9)
    {
      v27 = sub_232E00AD0();
    }

    [v23 finishWithError_];
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AssetsDownloadOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetsDownloadOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetsDownloadOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232DDEA98()
{
  sub_232DBD72C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_232DDEBE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_232DDEC50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements);
  v6 = *(v2 + OBJC_IVAR___TPSAppleSubscriptionValidation_segment);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v10[4] = sub_232DDF118;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_232DDF124;
  v10[3] = &block_descriptor_8;
  v9 = _Block_copy(v10);

  [v5 getSubscriptionEntitlementsForSegment:v6 ignoreCaches:0 isBackground:1 requestingBundleId:0 withCacheInfoResultHandler:v9];
  _Block_release(v9);
}

void sub_232DDED8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void))
{
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  if (!a1)
  {

LABEL_7:
    a6(0, 0);
    return;
  }

  if (a1 >> 62)
  {
    v16 = Strong;
    v17 = sub_232E019C0();
    Strong = v16;
    if (v17 >= 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v14 = Strong;
  v15 = (*((*MEMORY[0x277D85000] & *Strong) + 0x78))(a1);
  Strong = v14;
LABEL_10:
  v18 = Strong;
  v19 = v15 ^ [v18 BOOLValue];
  sub_232E01290();
  v20 = 0xE000000000000000;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_232E018F0();
  v21 = [v18 name];
  if (v21)
  {
    v22 = v21;
    v23 = sub_232E014D0();
    v20 = v24;
  }

  else
  {
    v23 = 0;
  }

  HIDWORD(v31) = v19 ^ 1;
  MEMORY[0x238395970](v23, v20);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v25 = [v18 targetContext];

  if (v25)
  {
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v26 = sub_232E01480();
  v28 = v27;

  MEMORY[0x238395970](v26, v28);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if (v19)
  {
    v29 = 0x65736C6166;
  }

  else
  {
    v29 = 1702195828;
  }

  if (v19)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  MEMORY[0x238395970](v29, v30);

  sub_232E01350();

  (*(v9 + 8))(v12, v8);
  a6(BYTE4(v31) & 1, 0);
}

uint64_t sub_232DDF124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_232DDF694();
    v8 = sub_232E015D0();
  }

  v11 = a5;
  v10(v8, a3, a4, a5);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AppleSubscriptionValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id AppleSubscriptionValidation.init(targetContext:)()
{
  v1 = OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR___TPSAppleSubscriptionValidation_segment] = 1;
  v2 = sub_232E01450();

  v5.receiver = v0;
  v5.super_class = type metadata accessor for AppleSubscriptionValidation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithTargetContext_, v2);

  return v3;
}

id AppleSubscriptionValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleSubscriptionValidation.init()()
{
  v1 = OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR___TPSAppleSubscriptionValidation_segment] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppleSubscriptionValidation();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AppleSubscriptionValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleSubscriptionValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_232DDF694()
{
  result = qword_27DDD7718;
  if (!qword_27DDD7718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD7718);
  }

  return result;
}

id sub_232DDF6E0()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[17];
LABEL_5:
    v11 = v1;
    return v2;
  }

  v3 = v0[14];
  v4 = v0[15];
  result = [objc_opt_self() spotlightBundleIdentifier];
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v8 = sub_232E014C0();
    v9 = [v7 initWithName:v8 protectionClass:0 bundleIdentifier:v6];

    v10 = v0[17];
    v0[17] = v9;
    v2 = v9;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t SearchItemIndexer.IndexItemType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_232DDF7E4()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v3 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
    v2 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v4;
    *(v2 + 120) = v3;
    *(v2 + 128) = 0;
    v5 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_232DDF89C()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v7 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);

    v3 = v0;
    MEMORY[0x238395970](95, 0xE100000000000000);

    MEMORY[0x238395970](1936746868, 0xE400000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v6;
    *(v2 + 120) = v7;
    *(v2 + 128) = 0;
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_232DDF99C()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v7 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);

    v3 = v0;
    MEMORY[0x238395970](95, 0xE100000000000000);

    MEMORY[0x238395970](0x4674726F70707573, 0xEB00000000776F6CLL);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7770, &qword_232E07D18);
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v6;
    *(v2 + 120) = v7;
    *(v2 + 128) = 0;
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_232DDFAAC()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v7 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);

    v3 = v0;
    MEMORY[0x238395970](95, 0xE100000000000000);

    MEMORY[0x238395970](0x6469754772657375, 0xE900000000000065);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7670, &qword_232E07580);
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v6;
    *(v2 + 120) = v7;
    *(v2 + 128) = 0;
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}