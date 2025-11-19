uint64_t sub_2204B7FD8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0;
  sub_2204643A4(0, &qword_281298CC0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_2812B6D28 = result;
  return result;
}

uint64_t sub_2204B81A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2204B81EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_220888F3C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2204B825C()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0;
  sub_2204643A4(0, &qword_281298CC0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_2812B6D40 = result;
  return result;
}

uint64_t sub_2204B844C()
{
  v0 = sub_2208913BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298DD8 != -1)
  {
    swift_once();
  }

  sub_2204B81A4(&unk_2812814B8, v3, type metadata accessor for PresentationOperationManagerDataStore);
  sub_220886B3C();
  v6 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v6 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_2208913AC();
    v7 = sub_22089137C();
    v9 = v8;

    (*(v1 + 8))(v5, v0);
    if (v9 >> 60 != 15)
    {
      sub_22088829C();
      swift_allocObject();
      sub_22088828C();
      sub_2204B89D4();
      sub_2204B8FE0();
      sub_22088827C();

      sub_22044D888(0, &qword_281298618, sub_2204B89D4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v10 = sub_220888ECC();
      sub_2204B9058(v7, v9);
      return v10;
    }
  }

  else
  {
  }

  v13 = MEMORY[0x277D84F98];
  sub_22044D888(0, &qword_281298618, sub_2204B89D4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2204B8804()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_2204643A4(0, &qword_281298CD0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_2812B6D48 = result;
  return result;
}

void sub_2204B89D4()
{
  if (!qword_28127EC40)
  {
    v0 = sub_22089128C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127EC40);
    }
  }
}

uint64_t sub_2204B8A58()
{
  v0 = sub_2208913BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298DC0 != -1)
  {
    swift_once();
  }

  sub_2204B81A4(&unk_2812814B8, v3, type metadata accessor for PresentationOperationManagerDataStore);
  sub_220886B3C();
  v6 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v6 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_2208913AC();
    v7 = sub_22089137C();
    v9 = v8;

    (*(v1 + 8))(v5, v0);
    if (v9 >> 60 != 15)
    {
      sub_22088829C();
      swift_allocObject();
      sub_22088828C();
      sub_2204B89D4();
      sub_2204B8FE0();
      sub_22088827C();

      sub_22044D888(0, &qword_281298618, sub_2204B89D4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v10 = sub_220888ECC();
      sub_2204B9058(v7, v9);
      return v10;
    }
  }

  else
  {
  }

  v13 = MEMORY[0x277D84F98];
  sub_22044D888(0, &qword_281298618, sub_2204B89D4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2204B8E10()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_2204643A4(0, &qword_281298CD0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_2812B6D38 = result;
  return result;
}

unint64_t sub_2204B8FE0()
{
  result = qword_28127EC38;
  if (!qword_28127EC38)
  {
    sub_2204B89D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EC38);
  }

  return result;
}

uint64_t sub_2204B9058(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_220457EE8(a1, a2);
  }

  return a1;
}

uint64_t sub_2204B9090()
{
  v0 = sub_2208913BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298DB8 != -1)
  {
    swift_once();
  }

  sub_2204B81A4(&unk_2812814B8, v3, type metadata accessor for PresentationOperationManagerDataStore);
  sub_220886B3C();
  v6 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v6 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_2208913AC();
    v7 = sub_22089137C();
    v9 = v8;

    (*(v1 + 8))(v5, v0);
    if (v9 >> 60 != 15)
    {
      sub_22088829C();
      swift_allocObject();
      sub_22088828C();
      sub_2204B9618();
      sub_22067DE10();
      sub_22088827C();

      sub_22044D888(0, &qword_2812985F8, sub_2204B9618, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v10 = sub_220888ECC();
      sub_2204B9058(v7, v9);
      return v10;
    }
  }

  else
  {
  }

  v13 = MEMORY[0x277D84FA0];
  sub_22044D888(0, &qword_2812985F8, sub_2204B9618, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2204B9448()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_2204643A4(0, &qword_281298CD0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_2812B6D30 = result;
  return result;
}

void sub_2204B9618()
{
  if (!qword_28127E960)
  {
    v0 = sub_22089191C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E960);
    }
  }
}

uint64_t sub_2204B9694(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  sub_2204B81A4(&qword_2812814B0, a2, type metadata accessor for PresentationOperationManagerDataStore);
  sub_220886C6C();
  sub_2204B81EC(0, &qword_2812985D0);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2204B9804(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  sub_22089127C();
  sub_2204B81A4(&qword_2812814B0, v4, type metadata accessor for PresentationOperationManagerDataStore);
  sub_220886C6C();

  sub_2204B81EC(0, &qword_2812985D0);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2204B9978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2204C6018;

  return sub_2204B9A2C(a1, a2, a3);
}

uint64_t sub_2204B9A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  v5 = sub_22088C32C();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  sub_2205ED230(0, &qword_28127E3A8, sub_2204B9CF0, MEMORY[0x277D84220]);
  v4[59] = swift_task_alloc();
  v4[60] = type metadata accessor for StockListSectionHeaderViewLayoutOptions();
  v4[61] = swift_task_alloc();
  sub_2204B9CF0();
  v4[62] = v6;
  v4[63] = *(v6 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  sub_2204A1D20();
  v4[66] = v7;
  v4[67] = *(v7 - 8);
  v4[68] = swift_task_alloc();
  sub_2204B9DAC();
  v4[69] = v8;
  v4[70] = swift_task_alloc();
  sub_22046B19C();
  v4[71] = v9;
  v4[72] = *(v9 - 8);
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2204B9E44, 0, 0);
}

void sub_2204B9CF0()
{
  if (!qword_2812979C0)
  {
    type metadata accessor for StockListLayoutModel();
    sub_220455FC0();
    sub_220444254(qword_28128E4D0, 255, type metadata accessor for StockListLayoutModel);
    v0 = sub_22088C36C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812979C0);
    }
  }
}

void sub_2204B9DAC()
{
  if (!qword_28127E370)
  {
    sub_2204A1D20();
    sub_220444254(&qword_281296EE8, 255, sub_2204A1D20);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E370);
    }
  }
}

uint64_t sub_2204B9E44()
{
  v105 = v0;
  v2 = v0[35].i64[0];
  v3 = v0[34].i64[1];
  v4 = v0[34].i64[0];
  v5 = v0[33].i64[1];
  v6 = v0[33].i64[0];
  v7 = v0[26].i64[1];
  v8 = swift_task_alloc();
  v8[1] = vextq_s8(v0[27], v0[27], 8uLL);
  v93 = 0;
  v94 = sub_2204BA92C(sub_2204BAF3C, v8);

  (*(v5 + 16))(v4, v7, v6);
  sub_22045BF94(&qword_281296EF0, sub_2204A1D20);
  sub_2208915BC();
  v9 = *(v3 + 36);
  sub_22045BF94(&qword_281296EE8, sub_2204A1D20);
  sub_22089199C();
  v10 = v2;
  v11 = v0;
  if (*(v10 + v9) == v0[25].i64[1])
  {
LABEL_5:
    sub_2204BD394(v11[70], sub_2204B9DAC);
    goto LABEL_11;
  }

  v12 = v9;
  i64 = v0[6].i64;
  v13 = &v0[23].i8[8];
  v14 = v0[36].i64[0];
  v96 = (v14 + 16);
  v97 = v14 + 32;
  v95 = (v14 + 8);
  v98 = v0;
  while (1)
  {
    v15 = v11[74];
    v16 = v11[73];
    v17 = v98[35].i64[1];
    v18 = sub_2208919BC();
    (*v96)(v15);
    (v18)(v13, 0);
    sub_2208919AC();
    v19 = *v97;
    (*v97)(v16, v15, v17);
    v11 = v98;
    sub_22088B2AC();
    v20 = v98[15].i64[0];
    v21 = v98[15].i64[1];
    v22 = v98[16].i64[0];
    v23 = v98[16].i64[1];
    v24 = v98[17].i64[0];
    v25 = v98[17].u8[8];
    if (v25 == 1)
    {
      break;
    }

    v26 = v98[36].i64[1];
    v27 = v98[35].i64[1];
    sub_2204BE754(v20, v21, v22, v23, v24, v25);
    (*v95)(v26, v27);
    sub_22089199C();
    if (*(v10 + v12) == v98[25].i64[1])
    {
      goto LABEL_5;
    }
  }

  v28 = v98[38].i64[0];
  v29 = v98[37].i64[1];
  v30 = v98[36].i64[1];
  v31 = v98[35].i64[1];
  v32 = v98[35].i64[0];
  sub_2204BE754(v20, v21, v22, v23, v24, 1u);
  sub_2204BD394(v32, sub_2204B9DAC);
  v19(v29, v30, v31);
  v19(v28, v29, v31);
  sub_22088B2AC();
  v34 = v98[18].i64[0];
  v33 = v98[18].i64[1];
  v35 = v98;
  v36 = v98[19].i64[0];
  v38 = v98[19].i64[1];
  v37 = v98[20].i64[0];
  v39 = v98[20].u8[8];
  v40 = v98[38].i64[0];
  if (v39 != 1)
  {
    v44 = v98[35].i64[1];
    sub_2204BE754(v34, v33, v36, v98[19].i64[1], v98[20].i64[0], v39);
    (*v95)(v40, v44);
    goto LABEL_10;
  }

  v98[21].i64[0] = v34;
  v98[21].i64[1] = v33;
  v98[22].i64[0] = v36;
  v98[22].i64[1] = v38;
  v98[23].i64[0] = v37;
  v41 = v33;
  v42 = sub_2206D11AC();
  if (v43)
  {
    (*v95)(v98[38].i64[0], v98[35].i64[1]);
    sub_2204BE754(v34, v41, v36, v38, v37, 1u);
LABEL_10:
    v11 = v98;
    goto LABEL_11;
  }

  v47 = v42;
  v87 = v41;
  v90 = v37;
  sub_22088C2BC();
  v49 = v48;
  v50 = *(v94 + 16);
  v51 = MEMORY[0x277D84F90];
  v91 = v47;
  v88 = v36;
  v89 = v38;
  if (!v50)
  {
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
      v1 = 0.0;
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v52 = v98[31].i64[1];
  v104 = MEMORY[0x277D84F90];
  sub_22070BC04(0, v50, 0);
  v53 = *(v94 + 16);
  if (!v53)
  {
    goto LABEL_42;
  }

  v51 = v104;
  v18 = ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v47 = v52 + 8;
  v56 = *(v52 + 16);
  v55 = v52 + 16;
  v54 = v56;
  v57 = v98[32].i64[1];
  v97 = *(v55 + 56);
  (v56)(v57, &v18[v94], v98[31].i64[0]);
  v58 = sub_2205EBDE0(v57, v99.i64);
  v96 = v54;
  v93 = *(v55 - 8);
  v93(v98[32].i64[1], v98[31].i64[0], v58);
  v1 = *v99.i64;
  v41 = *(v51 + 16);
  v53 = *(v51 + 24);
  v35 = v41 + 1;
  if (v41 >= v53 >> 1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    *(v51 + 16) = v35;
    *(v51 + 8 * v41 + 32) = v1;
    if (v50 != 1)
    {
      v82 = v18;
      v18 = (v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v83 = &v82[v97 + v94];
      v47 = 1;
      while (1)
      {
        v53 = *(v94 + 16);
        if (v47 >= v53)
        {
          break;
        }

        v84 = v98[32].i64[1];
        (v96)(v84, v83, v98[31].i64[0]);
        v85 = sub_2205EBDE0(v84, v99.i64);
        v93(v98[32].i64[1], v98[31].i64[0], v85);
        v1 = *v99.i64;
        v104 = v51;
        v41 = *(v51 + 16);
        v86 = *(v51 + 24);
        v35 = v41 + 1;
        if (v41 >= v86 >> 1)
        {
          sub_22070BC04((v86 > 1), v41 + 1, 1);
          v51 = v104;
        }

        ++v47;
        *(v51 + 16) = v35;
        *(v51 + 8 * v41 + 32) = v1;
        v83 += v97;
        if (v50 == v47)
        {
          goto LABEL_21;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_21:
    v93 = 0;
LABEL_22:
    if (v35 <= 3)
    {
      v59 = 0;
      v1 = 0.0;
LABEL_27:
      v62 = v35 - v59;
      v63 = 8 * v59 + 32;
      do
      {
        v1 = v1 + *(v51 + v63);
        v63 += 8;
        --v62;
      }

      while (v62);
      goto LABEL_29;
    }

    v59 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    v60 = (v51 + 48);
    v1 = 0.0;
    v61 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v1 = v1 + *(v60 - 2) + *(v60 - 1) + *v60 + v60[1];
      v60 += 4;
      v61 -= 4;
    }

    while (v61);
    if (v35 != v59)
    {
      goto LABEL_27;
    }

LABEL_29:
    v47 = v98;
    v96 = v98[38].i64[0];
    v97 = v98[32].i64[0];
    v65 = v98[30].i64[0];
    v64 = v98[30].i64[1];
    v66 = v98[28].i64[0];
    v67 = v98[28].i64[1];
    v18 = v98[27].i64[0];
    v68 = v98[27].i64[1];

    v35 = __swift_project_boxed_opaque_existential_1(v68 + 12, v68[15]);
    (*(v67 + 16))(v64, v18, v66);
    v50 = v68[31];
    __swift_project_boxed_opaque_existential_1(v68 + 27, v68[30]);
    *(v64 + *(v65 + 20)) = (sub_22088618C() & 1) == 0;
    sub_2206637F0(v98[21].i64, v64, i64);
    v69 = *(i64 + 48);
    v101 = *(i64 + 32);
    v102 = v69;
    v103 = *(i64 + 64);
    v70 = *(i64 + 16);
    v99 = *i64;
    v100 = v70;
    sub_2204BE754(v34, v87, v88, v89, v90, 1u);
    sub_2204BD394(v64, type metadata accessor for StockListSectionHeaderViewLayoutOptions);
    sub_22088C22C();
    sub_220891A7C();
    v49 = v49 - v1 - v71;
    v72 = v102;
    v98[3] = v101;
    v98[4] = v72;
    v98[5].i64[0] = v103;
    v73 = v100;
    v98[1] = v99;
    v98[2] = v73;
    v98[5].i8[8] = 1;
    v74 = swift_task_alloc();
    *(v74 + 16) = v68;
    *(v74 + 24) = v18;
    *(v74 + 32) = i64;
    *(v74 + 40) = v1;
    *(v74 + 48) = v49;
    sub_2205ECA40(i64, &v98[10].i64[1]);
    sub_2204BBEC0(sub_2205ECA18, v74);

    type metadata accessor for StockListLayoutModel();
    sub_220455FC0();
    sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
    sub_22088C33C();
    v41 = v94;
    v53 = *(v94 + 16);
    if (v53 < v91)
    {
      goto LABEL_43;
    }

    if (v91 < 0)
    {
      goto LABEL_44;
    }

    (*(v98[31].i64[1] + 16))(v98[29].i64[1], v98[32].i64[0], v98[31].i64[0]);
    v75 = *(v94 + 16);
    if (v75 >= v91)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    sub_22070BC04((v53 > 1), v35, 1);
    v51 = v104;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = v94;
  if (!isUniquelyReferenced_nonNull_native || v75 >= *(v94 + 24) >> 1)
  {
    v104 = sub_2204BD57C(isUniquelyReferenced_nonNull_native, v75 + 1, 1, v94);
  }

  v77 = v98[38].i64[0];
  v78 = v98[35].i64[1];
  v80 = v98[31].i64[1];
  v79 = v98[32].i64[0];
  v81 = v98[31].i64[0];
  sub_220662A28(v91, v91, 1, v98[29].i64[1]);
  v11 = v98;
  sub_2205ECA9C(i64);
  (*(v80 + 8))(v79, v81);
  (*v95)(v77, v78);
LABEL_11:
  (*(v11[57] + 16))(v11[58], v11[54], v11[56]);
  type metadata accessor for StockListLayoutModel();
  sub_220455FC0();
  sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
  sub_22088B05C();

  v45 = v11[1];

  return v45();
}

void *sub_2204BA92C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v56 = a1;
  v57 = a2;
  sub_2204BAF08(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9CF0();
  v58 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v46 = &v45 - v15;
  sub_22046B19C();
  v47 = v16;
  v60 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v55 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9DAC();
  v26 = v25 - 8;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v5, v20, v28);
  sub_220444254(&qword_281296EF0, 255, sub_2204A1D20);
  sub_2208915BC();
  v31 = *(v26 + 44);
  sub_220444254(&qword_281296EE8, 255, sub_2204A1D20);
  sub_22089199C();
  if (*&v30[v31] == v59[0])
  {
    v60 = MEMORY[0x277D84F90];
LABEL_3:
    sub_2204C5EE4(v30, sub_2204B9DAC);
  }

  else
  {
    v52 = (v60 + 2);
    v53 = (v60 + 1);
    v45 = v10;
    v50 = (v10 + 32);
    v51 = (v10 + 48);
    v60 = MEMORY[0x277D84F90];
    v33 = v47;
    v32 = v48;
    while (1)
    {
      v34 = sub_2208919BC();
      v35 = v55;
      (*v52)(v55);
      v34(v59, 0);
      sub_2208919AC();
      v56(v35);
      if (v4)
      {
        break;
      }

      (*v53)(v35, v33);
      v36 = v58;
      if ((*v51)(v32, 1, v58) == 1)
      {
        sub_2204C5EE4(v32, sub_2204BAF08);
      }

      else
      {
        v49 = 0;
        v37 = *v50;
        v38 = v46;
        (*v50)(v46, v32, v36);
        v37(v54, v38, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2204BD57C(0, v60[2] + 1, 1, v60);
        }

        v40 = v60[2];
        v39 = v60[3];
        v41 = v45;
        v33 = v47;
        if (v40 >= v39 >> 1)
        {
          v43 = sub_2204BD57C(v39 > 1, v40 + 1, 1, v60);
          v41 = v45;
          v60 = v43;
        }

        v42 = v60;
        v60[2] = v40 + 1;
        v4 = v49;
        v37(&v42[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40], v54, v58);
        v32 = v48;
      }

      sub_22089199C();
      if (*&v30[v31] == v59[0])
      {
        goto LABEL_3;
      }
    }

    (*v53)(v35, v33);
    sub_2204C5EE4(v30, sub_2204B9DAC);
  }

  return v60;
}

uint64_t sub_2204BAF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v116 = a4;
  v113 = a2;
  v114 = a3;
  v112 = type metadata accessor for StockListSectionHeaderViewLayoutOptions();
  MEMORY[0x28223BE20](v112, v5);
  v119 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22088699C();
  v118 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v7);
  v109 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PriceViewModel();
  MEMORY[0x28223BE20](v107, v9);
  v111 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v110 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v124, v14);
  v122 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v123 = &v88 - v18;
  v117 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v117, v19);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v23 = v22;
  v120 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v28 = v27;
  v121 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BBE2C();
  v33 = v32;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a1;
  sub_22088B2AC();
  if (!v142)
  {
    v101 = v21;
    v102 = v137;
    v145[0] = v137;
    v145[1] = v138;
    v103 = v138;
    v104 = v139;
    v145[2] = v139;
    v145[3] = v140;
    v105 = v140;
    v106 = v141;
    v145[4] = v141;
    (v121[2])(v31, v115, v28);
    sub_22045BF94(&qword_281297DC0, sub_22046B19C);
    sub_2208915BC();
    v39 = *(v33 + 36);
    sub_22045BF94(&qword_281297DB8, sub_22046B19C);
    sub_22089199C();
    if (*&v36[v39] == v126)
    {
      v40 = MEMORY[0x277D84F90];
      goto LABEL_42;
    }

    v43 = v120++;
    v121 = (v43 + 2);
    v99 = (v118 + 88);
    v100 = (v118 + 16);
    v98 = *MEMORY[0x277D69898];
    v97 = *MEMORY[0x277D698A0];
    v96 = *MEMORY[0x277D69870];
    v95 = *MEMORY[0x277D69888];
    v94 = *MEMORY[0x277D69878];
    v91 = *MEMORY[0x277D69890];
    v88 = (v118 + 8);
    v90 = *MEMORY[0x277D69880];
    v89 = *MEMORY[0x277D69868];
    v40 = MEMORY[0x277D84F90];
    while (1)
    {
      v118 = v40;
      while (1)
      {
        v44 = sub_2208919BC();
        (*v121)(v26);
        v44(&v126, 0);
        sub_2208919AC();
        v45 = v123;
        sub_22088AD8C();
        v46 = v122;
        sub_2204BD5B0(v45, v122, type metadata accessor for StockListModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          break;
        }

        sub_2204BD394(v46, type metadata accessor for StockListModel);
LABEL_10:
        (*v120)(v26, v23);
        sub_22089199C();
        if (*&v36[v39] == v126)
        {
          v40 = v118;
          goto LABEL_42;
        }
      }

      v48 = v117;
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_10;
      }

      v49 = v46;
      v50 = v110;
      sub_2204BD5B0(v49, v110, type metadata accessor for StockListStockModel);
      sub_2204BD680(v50, v101, type metadata accessor for StockViewModel);
      sub_2204BD394(v50, type metadata accessor for StockListStockModel);
      v51 = v101;
      v52 = &v101[*(v48 + 28)];
      v53 = v111;
      sub_2204BD680(v52, v111, type metadata accessor for PriceViewModel);
      sub_2204BD394(v51, type metadata accessor for StockViewModel);
      sub_220886BCC();
      sub_220886BAC();
      if (qword_281298FC0 != -1)
      {
        swift_once();
      }

      sub_220886B9C();

      v54 = *(v53 + 8);
      v55 = v53;
      v40 = v118;
      if (v54)
      {
        (*v120)(v26, v23);
        goto LABEL_34;
      }

      v56 = *v55;
      if (v126)
      {
        v57 = v55 + *(v107 + 40);
        v58 = v108;
        (*v100)(v109, v57, v108);
        v59 = (*v99)(v109, v58);
        if (v59 == v98 || v59 == v97 || v59 == v96 || v59 == v95 || v59 == v94)
        {
          goto LABEL_28;
        }

        v60 = 2;
        if (v59 != v91)
        {
          if (v59 == v90)
          {
            goto LABEL_25;
          }

          if (v59 != v89)
          {
            (*v88)(v109, v108);
          }

LABEL_28:
          v60 = 2;
        }
      }

      else
      {
LABEL_25:
        v60 = 0;
      }

      if (qword_281294078 != -1)
      {
        v70 = v60;
        swift_once();
        v60 = v70;
      }

      v93 = sub_2204BD7B8(*(v111 + 6), *(v111 + 7), 5, 1, v60, v56);
      v62 = v61;
      (*v120)(v26, v23);
      v92 = v62;
      if (v62)
      {
        v55 = v111;
      }

      else
      {
        v55 = v111;
LABEL_34:
        v63 = *(v55 + 8);
        v92 = *(v55 + 9);
        v93 = v63;
      }

      sub_2204BD394(v55, type metadata accessor for PriceViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_22045E924(0, *(v40 + 2) + 1, 1, v40);
      }

      v65 = *(v40 + 2);
      v64 = *(v40 + 3);
      v66 = (v65 + 1);
      if (v65 >= v64 >> 1)
      {
        v118 = (v65 + 1);
        v69 = sub_22045E924((v64 > 1), v65 + 1, 1, v40);
        v66 = v118;
        v40 = v69;
      }

      *(v40 + 2) = v66;
      v67 = &v40[16 * v65];
      v68 = v92;
      *(v67 + 4) = v93;
      *(v67 + 5) = v68;
      sub_22089199C();
      if (*&v36[v39] == v126)
      {
LABEL_42:
        sub_2204BD394(v36, sub_2204BBE2C);
        v71 = *(v40 + 2);
        if (v71)
        {
          v72 = *(v40 + 4);
          v73 = *(v40 + 5);

          v74 = v119;
          v118 = v40;
          if (v71 == 1)
          {
            v75 = v72;
          }

          else
          {
            v123 = (v71 - 1);
            v124 = v71;
            v76 = (v40 + 40);
            v77 = 1;
            v122 = v40 + 40;
            while (2)
            {
              v78 = v73;
              v79 = (v76 + 16 * v77);
              v80 = v77;
              while (1)
              {
                if (v80 >= *(v118 + 2))
                {
                  __break(1u);
                  return result;
                }

                v75 = *(v79 - 1);
                v73 = *v79;
                v77 = (v80 + 1);

                v81 = sub_22089149C();
                if (v81 < sub_22089149C())
                {
                  break;
                }

                v79 += 2;
                ++v80;
                v74 = v119;
                if (v124 == v77)
                {
                  v75 = v72;
                  v73 = v78;
                  goto LABEL_53;
                }
              }

              v72 = v75;
              v76 = v122;
              v74 = v119;
              if (v123 != v80)
              {
                continue;
              }

              break;
            }
          }

LABEL_53:
        }

        else
        {

          v75 = 0;
          v73 = 0;
          v74 = v119;
        }

        v82 = v113;
        v124 = __swift_project_boxed_opaque_existential_1((v113 + 96), *(v113 + 120));
        v83 = sub_22088C32C();
        (*(*(v83 - 8) + 16))(v74, v114, v83);
        __swift_project_boxed_opaque_existential_1((v82 + 216), *(v82 + 240));
        *(v74 + *(v112 + 20)) = (sub_22088618C() & 1) == 0;
        sub_2206637F0(v145, v74, v143);
        v134 = v143[2];
        v135 = v143[3];
        v136 = v144;
        v132 = v143[0];
        v133 = v143[1];
        sub_2204BE754(v102, v103, v104, v105, v106, 0);
        v84 = sub_2204BD394(v74, type metadata accessor for StockListSectionHeaderViewLayoutOptions);
        v128 = v134;
        v129 = v135;
        v130 = v136;
        v126 = v132;
        v127 = v133;
        v131 = 0;
        MEMORY[0x28223BE20](v84, v85);
        v86 = v114;
        *(&v88 - 4) = v82;
        *(&v88 - 3) = v86;
        *(&v88 - 2) = v75;
        *(&v88 - 1) = v73;
        sub_2205ECA40(v143, &v125);
        sub_2204BBEC0(sub_2205ED34C, (&v88 - 6));

        type metadata accessor for StockListLayoutModel();
        sub_220455FC0();
        sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
        v42 = v116;
        sub_22088C33C();
        sub_2205ECA9C(v143);
LABEL_55:
        sub_2204B9CF0();
        return (*(*(v87 - 8) + 56))(v42, 0, 1, v87);
      }
    }
  }

  if (v142 != 1)
  {
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v131 = 2;
    MEMORY[0x28223BE20](v137, v138);
    v41 = v114;
    *(&v88 - 2) = v113;
    *(&v88 - 1) = v41;
    sub_2204BBEC0(sub_2204BC38C, (&v88 - 4));
    type metadata accessor for StockListLayoutModel();
    sub_220455FC0();
    sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
    v42 = v116;
    sub_22088C33C();
    goto LABEL_55;
  }

  sub_2204BE754(v137, v138, v139, v140, v141, 1u);
  sub_2204B9CF0();
  return (*(*(v37 - 8) + 56))(v116, 1, 1, v37);
}

uint64_t sub_2204BBDE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2204BBE2C()
{
  if (!qword_28127E380)
  {
    sub_22046B19C();
    sub_2204BBDE4(&qword_281297DB8, sub_22046B19C);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E380);
    }
  }
}

uint64_t sub_2204BBEC0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_22046B36C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BC25C();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  sub_2204BC2F4(&qword_281297DB8, 255, sub_22046B19C);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_2204BC33C(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2204BC33C(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

void sub_2204BC25C()
{
  if (!qword_281297B08)
  {
    type metadata accessor for StockListLayoutModel();
    sub_2204BC2F4(qword_28128E4D0, 255, type metadata accessor for StockListLayoutModel);
    v0 = sub_22088BC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B08);
    }
  }
}

uint64_t sub_2204BC2F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

size_t sub_2204BC33C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E090, sub_2204BC25C, sub_2204BC25C);
  *v3 = result;
  return result;
}

uint64_t sub_2204BC3AC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a2;
  v59 = a1;
  v61 = a3;
  v56 = type metadata accessor for EmptyListViewLayoutOptions();
  MEMORY[0x28223BE20](v56, v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayViewLayoutOptions();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for StockListLayoutModel();
  MEMORY[0x28223BE20](v60, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockViewLayoutOptions();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22046B36C();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v23;
      v26 = v23[1];
      v28 = v23[2];
      v27 = v23[3];
      v29 = sub_22088C32C();
      v5 = v57;
      (*(*(v29 - 8) + 16))(v57, v58, v29);
      __swift_project_boxed_opaque_existential_1(v59 + 7, v59[10]);
      sub_2204BCCB8(v25, v26, v28, v27, v62);
      *v11 = v25;
      *(v11 + 1) = v26;
      *(v11 + 2) = v28;
      *(v11 + 3) = v27;
      v30 = v62[3];
      *(v11 + 4) = v62[2];
      *(v11 + 5) = v30;
      v31 = v62[5];
      *(v11 + 6) = v62[4];
      *(v11 + 7) = v31;
      v32 = v62[1];
      *(v11 + 2) = v62[0];
      *(v11 + 3) = v32;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
      sub_22088BC2C();
      v33 = type metadata accessor for TodayViewLayoutOptions;
    }

    else
    {
      v46 = sub_22088C32C();
      (*(*(v46 - 8) + 16))(v5, v58, v46);
      v47 = v56;
      v48 = &v5[*(v56 + 20)];
      *v48 = 0;
      v48[8] = 1;
      v49 = &v5[*(v47 + 24)];
      *v49 = 0;
      v49[8] = 1;
      v5[*(v47 + 28)] = 1;
      __swift_project_boxed_opaque_existential_1(v59 + 17, v59[20]);
      sub_2205ECAF0(v5, v62);
      v50 = v62[7];
      *(v11 + 6) = v62[6];
      *(v11 + 7) = v50;
      *(v11 + 8) = v62[8];
      *(v11 + 72) = v62[9];
      v51 = v62[3];
      *(v11 + 2) = v62[2];
      *(v11 + 3) = v51;
      v52 = v62[5];
      *(v11 + 4) = v62[4];
      *(v11 + 5) = v52;
      v53 = v62[1];
      *v11 = v62[0];
      *(v11 + 1) = v53;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
      sub_22088BC2C();
      v33 = type metadata accessor for EmptyListViewLayoutOptions;
    }

    v44 = v33;
    v45 = v5;
  }

  else
  {
    sub_2204BD5B0(v23, v19, type metadata accessor for StockListStockModel);
    v34 = sub_22088C32C();
    (*(*(v34 - 8) + 16))(v15, v58, v34);
    v35 = &v15[v12[5]];
    *v35 = 0;
    *(v35 + 1) = 0;
    *&v15[v12[6]] = 0x4020000000000000;
    *&v15[v12[7]] = 0x4037000000000000;
    v36 = &v15[v12[8]];
    __asm { FMOV            V0.2D, #4.0 }

    *v36 = _Q0;
    *(v36 + 1) = _Q0;
    __swift_project_boxed_opaque_existential_1(v59 + 2, v59[5]);
    sub_2204BE814(v19, v15, v62);
    sub_220455E3C();
    v43 = *(v42 + 48);
    sub_2204BD680(v19, v11, type metadata accessor for StockViewModel);
    memcpy(&v11[v43], v62, 0x150uLL);
    swift_storeEnumTagMultiPayload();
    sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
    sub_22088BC2C();
    sub_2204BD394(v15, type metadata accessor for StockViewLayoutOptions);
    v44 = type metadata accessor for StockListStockModel;
    v45 = v19;
  }

  return sub_2204BD394(v45, v44);
}

uint64_t type metadata accessor for EmptyListViewLayoutOptions()
{
  result = qword_281289088;
  if (!qword_281289088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2204BCA10()
{
  sub_22088C32C();
  if (v0 <= 0x3F)
  {
    sub_2204BCAA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2204BCAA4()
{
  if (!qword_281298BE8)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298BE8);
    }
  }
}

uint64_t type metadata accessor for TodayViewLayoutOptions()
{
  result = qword_28128C048;
  if (!qword_28128C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204BCB40()
{
  result = sub_22088C32C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for StockViewLayoutOptions()
{
  result = qword_28128C120;
  if (!qword_28128C120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2204BCBF8()
{
  sub_22088C32C();
  if (v0 <= 0x3F)
  {
    sub_2204470D8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2204BCCB8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v54 = a4;
  v53 = a3;
  v52 = a2;
  v51 = a1;
  v56 = sub_220886D4C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v8);
  v57 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_220886D3C();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v10);
  v59 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22088DA1C();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220886D9C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088C28C();
  v21 = [v20 horizontalSizeClass];

  if (v21 == 1)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    v32 = sub_2204D0C30(v51, v52, 0);
    __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    v33 = sub_2204D17C4(v53, v54, 0);
    v52 = v14;
    v34 = v33;
    sub_22088C20C();
    v35 = sub_22088C28C();
    [v35 horizontalSizeClass];
    [v35 horizontalSizeClass];

    v51 = v50;
    MEMORY[0x28223BE20](v36, v37);
    v54 = v32;
    v53 = v34;
    v38 = v52;
    (*(v16 + 104))(v19, *MEMORY[0x277D6D1A8], v15);
    sub_2208827A8(0, &unk_281298C70, MEMORY[0x277D6D1C8]);
    swift_allocObject();
    sub_220886DBC();
    sub_22088C1DC();
    sub_22088C21C();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_220891EDC();
    v51 = v39;
    v50[8] = v40;
    sub_22088C21C();
    v50[7] = v41;
    v50[6] = v42;
    sub_22088C25C();
    v50[5] = v43;
    v50[4] = v44;
    sub_22088C1EC();
    v50[3] = v45;
    v50[2] = v46;
    sub_22088C26C();
    v50[1] = v47;
    v50[0] = v48;
    sub_22088C24C();
    sub_22088C20C();
    sub_22088C23C();
    sub_22088C2AC();
    sub_22088C22C();
    (*(v55 + 104))(v57, *MEMORY[0x277D6D198], v56);
    v49 = v59;
    sub_220886D2C();
    sub_220886DCC();

    (*(v61 + 8))(v49, v62);
    (*(v58 + 8))(v38, v60);
    v27 = v63;
    _Q0 = v64;
    v28 = v65;
    v29 = v66;
    v30 = v67;
    v31 = v68;
  }

  *a5 = v27;
  a5[1] = _Q0;
  a5[2] = v28;
  a5[3] = v29;
  a5[4] = v30;
  a5[5] = v31;
}

uint64_t sub_2204BD394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8StocksUI32StockListLayoutSectionDescriptorO(uint64_t a1)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 72) & 3;
  }
}

uint64_t sub_2204BD410()
{
  sub_22045BF50(&unk_28128E4C0);

  return sub_22088D90C();
}

__n128 sub_2204BD468(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](v2, a2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2204BE630(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220455E3C();
    memcpy(v12, v4 + *(v8 + 48), sizeof(v12));
    sub_2204C5E3C(v12);
    v10 = v12[0];
    v11 = v12[1];
    sub_2204C6250(v4, type metadata accessor for StockViewModel);
    return v10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = v4[3];
    v10 = v4[2];
    v11 = v7;

    return v10;
  }

  return *v4;
}

uint64_t sub_2204BD5B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204BD618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204BD680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204BD6E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204BD750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204BD7B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, double a6)
{
  v7 = v6;
  v100 = a2;
  v95 = a1;
  v12 = MEMORY[0x277D83D88];
  sub_2204BE1E0(0, &qword_281299438, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v96 = &v85 - v15;
  v99 = sub_2208852BC();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v16);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v85 - v21;
  v98 = sub_2208852DC();
  v23 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v24);
  v94 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v85 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v85 - v32;
  sub_2204BE1E0(0, &unk_281299440, MEMORY[0x277CC9640], v12);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v85 - v36;
  v38 = sub_2204BE298(a5, a3, a4, a6);
  v39 = v38;
  if ((a5 & 2) == 0 || !v100)
  {
    v48 = v38;
    goto LABEL_6;
  }

  v92 = v18;
  v40 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  v41 = *(v23 + 16);
  v93 = v7;
  v90 = v40;
  v42 = v7 + v40;
  v43 = v98;
  v89 = v41;
  v41(v33, v42, v98);
  v88 = v39;
  sub_2208852CC();
  v45 = *(v23 + 8);
  v44 = v23 + 8;
  v91 = v45;
  v45(v33, v43);
  sub_22088529C();
  v97 = *(v97 + 8);
  (v97)(v22, v99);
  v46 = sub_22088521C();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v37, 1, v46) == 1)
  {
    sub_2206E52FC(v37, &unk_281299440, MEMORY[0x277CC9640]);
    goto LABEL_6;
  }

  v86 = sub_2208851FC();
  v87 = v53;
  (*(v47 + 8))(v37, v46);
  v89(v29, v93 + v90, v43);
  v54 = v92;
  sub_2208852CC();
  v55 = v91;
  v91(v29, v43);
  v56 = v96;
  sub_2208852AC();
  (v97)(v54, v99);
  v57 = sub_22088526C();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v56, 1, v57) != 1)
  {
    v59 = v44;
    v60 = v55;
    v99 = v59;
    v61 = sub_2208851FC();
    v63 = v62;
    (*(v58 + 8))(v56, v57);
    sub_2204BE1E0(0, &qword_27CF58CF0, sub_2206E536C, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22089B140;
    *(inited + 32) = sub_22089136C();
    v65 = v95;
    *(inited + 40) = v66;
    *(inited + 48) = v65;
    v67 = v100;
    *(inited + 56) = v100;
    *(inited + 64) = sub_22089136C();
    *(inited + 72) = v68;
    v69 = v87;
    *(inited + 80) = v86;
    *(inited + 88) = v69;
    *(inited + 96) = sub_22089136C();
    *(inited + 104) = v70;
    *(inited + 112) = v61;
    *(inited + 120) = v63;

    v71 = sub_2205CE620(inited);
    swift_setDeallocating();
    sub_2206E536C();
    swift_arrayDestroy();
    MEMORY[0x223D7D370](v71);

    v72 = v94;
    sub_2208851DC();
    v73 = sub_22088523C();
    v74 = v88;
    [v88 setLocale_];

    if (v65 == 7356999 && v67 == 0xE300000000000000 || (sub_2208928BC() & 1) != 0)
    {
      [v74 setNumberStyle_];
      v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v76 = [v74 stringFromNumber_];

      if (v76)
      {
        v77 = sub_22089136C();
        v79 = v78;

        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v81 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_2204BE1E0(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_220899360;
        *(v82 + 56) = MEMORY[0x277D837D0];
        *(v82 + 64) = sub_22048D860();
        *(v82 + 32) = v77;
        *(v82 + 40) = v79;
        v51 = sub_22089139C();

LABEL_20:
        v60(v72, v98);
        return v51;
      }
    }

    else
    {
      [v74 setNumberStyle_];
      v83 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v84 = [v74 stringFromNumber_];

      if (v84)
      {
        v51 = sub_22089136C();

        goto LABEL_20;
      }
    }

    v60(v72, v98);

    return 0;
  }

  sub_2206E52FC(v56, &qword_281299438, MEMORY[0x277CC9698]);
LABEL_6:
  [v39 setNumberStyle_];
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v50 = [v39 stringFromNumber_];

  if (!v50)
  {

    return 0;
  }

  v51 = sub_22089136C();

  return v51;
}

void sub_2204BE1E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204BE244(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2204BE298(char a1, uint64_t a2, char a3, double a4)
{
  v5 = fabs(a4);
  if (a4 != 0.0 && v5 < 5.0 && (a1 & 1) == 0)
  {
    if (a3)
    {
      if (qword_27CF55B40 != -1)
      {
        swift_once();
      }

      v10 = &qword_27CF6D0B0;
    }

    else
    {
      if (qword_27CF55B48 != -1)
      {
        swift_once();
      }

      v10 = &qword_27CF6D0B8;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (!a2)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }

      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v5 < 9.22337204e18)
        {
          if (v5 < 1)
          {
LABEL_17:
            if (qword_281294138 != -1)
            {
              swift_once();
            }

            v10 = &qword_2812B6B60;
            return *v10;
          }

          v9 = log10(v5);
          if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v9 > -9.22337204e18)
            {
              if (v9 < 9.22337204e18)
              {
                if (v9 < a2)
                {
                  goto LABEL_17;
                }

LABEL_38:
                if (qword_281294130 == -1)
                {
LABEL_39:
                  v10 = &qword_2812B6B58;
                  return *v10;
                }

LABEL_47:
                swift_once();
                goto LABEL_39;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v5 >= 1)
    {
      v12 = log10(v5);
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v12 >= a2)
      {
        if (qword_281294140 == -1)
        {
LABEL_41:
          v10 = &qword_2812B6B68;
          return *v10;
        }

LABEL_54:
        swift_once();
        goto LABEL_41;
      }
    }

    if (qword_281294148 != -1)
    {
      swift_once();
    }

    v10 = &qword_2812B6B70;
  }

  return *v10;
}

id sub_2204BE588(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setNumberStyle_];
  [v5 setMinimumFractionDigits_];
  [v5 setMaximumFractionDigits_];
  result = [v5 setMinimumIntegerDigits_];
  *a3 = v5;
  return result;
}

uint64_t sub_2204BE630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StockListSectionHeaderViewLayoutOptions()
{
  result = qword_281280A68;
  if (!qword_281280A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204BE6E0()
{
  result = sub_22088C32C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2204BE754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
    return sub_2204BE768(a1, a2);
  }

  return a1;
}

uint64_t sub_2204BE768(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_2204BE814@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StockViewLayoutOptions();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - v12;
  sub_22088C21C();
  v15 = v14;
  sub_22088C21C();
  v17 = v16;
  sub_2204BEA98(a2, v13);
  v18 = sub_22088C2AC();
  v19 = sub_220891DFC();

  if (v19)
  {
    sub_2204BEA98(v13, v9);
    v20 = sub_2204BEB58(v9);
    sub_2204BEEE8(v13, type metadata accessor for StockViewLayoutOptions);
    sub_2204BEF48(a1, a2, v20 & 1, v35, v15, v17);
  }

  else
  {
    sub_2204BEEE8(v13, type metadata accessor for StockViewLayoutOptions);
    sub_22066CF34(a1, a2, v35, v15, v17);
  }

  v22 = v58;
  v21 = v59;
  v23 = v54;
  v24 = v56;
  v25 = v52;
  v26 = v53;
  v27 = v40;
  v28 = v36;
  v29 = v37;
  v34 = v57;
  v30 = v35[1];
  *a3 = v35[0];
  *(a3 + 16) = v30;
  *(a3 + 32) = v28;
  *(a3 + 40) = v29;
  v31 = v39;
  *(a3 + 48) = v38;
  *(a3 + 64) = v31;
  *(a3 + 80) = v27;
  *(a3 + 88) = v41;
  *(a3 + 104) = v42;
  *(a3 + 120) = v43;
  *(a3 + 136) = v44;
  *(a3 + 152) = v45;
  *(a3 + 168) = v46;
  *(a3 + 184) = v47;
  *(a3 + 200) = v48;
  *(a3 + 216) = v49;
  *(a3 + 232) = v50;
  *(a3 + 248) = v51;
  *(a3 + 264) = v25;
  *(a3 + 272) = v26;
  *(a3 + 280) = v23;
  result = v55;
  *(a3 + 288) = v55;
  *(a3 + 304) = v24;
  *(a3 + 312) = v34;
  *(a3 + 320) = v22;
  *(a3 + 328) = v21;
  return result;
}

uint64_t sub_2204BEA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockViewLayoutOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2204BEAFC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2204BEE48(a3, &selRef_viewDidAppear_);
}

uint64_t sub_2204BEB58(uint64_t a1)
{
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  if (v7 == 1)
  {
    sub_22088C31C();
    if (v2 <= 320.0)
    {
      sub_2204BEEE8(a1, type metadata accessor for StockViewLayoutOptions);
      v5 = 0;
    }

    else
    {
      v3 = sub_22088C2AC();
      v4 = sub_220891DEC();

      sub_2204BEEE8(a1, type metadata accessor for StockViewLayoutOptions);
      v5 = v4 ^ 1;
    }
  }

  else
  {
    sub_2204BEEE8(a1, type metadata accessor for StockViewLayoutOptions);
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_2204BEC98(uint64_t a1, uint64_t a2)
{
  if (sub_2208859BC() & 1) != 0 || (sub_22088599C())
  {
    sub_22048D7F8();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_220899360;
    sub_2208859DC();
    v4 = MEMORY[0x277D83A80];
    *(v3 + 56) = MEMORY[0x277D839F8];
    *(v3 + 64) = v4;
    *(v3 + 32) = v5;
    sub_22044D56C(0, &qword_28127E420);
    v6 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    v7 = *(a2 + OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_backgroundFetchScheduler);
    sub_2208859DC();
    [v7 setMinimumBackgroundFetchInterval_];
  }

  else
  {
    sub_22044D56C(0, &qword_28127E420);
    v9 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    [*(a2 + OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_backgroundFetchScheduler) setMinimumBackgroundFetchInterval_];
  }

  sub_22046D934();
  swift_allocObject();
  return sub_220888ECC();
}

void sub_2204BEE48(char a1, SEL *a2)
{
  v4 = v2;
  v7.receiver = v4;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  sub_220888C9C();
  if (v6)
  {
    if (*(v4 + qword_281282160))
    {
      sub_22088D26C();
      sub_22088D65C();
    }
  }
}

uint64_t sub_2204BEEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2204BEF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v7 = v6;
  LODWORD(v243) = a3;
  v255 = a5;
  v237 = a4;
  sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v231 = &v216 - v13;
  sub_220454138(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v227 = &v216 - v16;
  v226 = type metadata accessor for StockSparklineViewModel(0);
  v224 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v17);
  v218 = &v216 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088699C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v216 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088DA1C();
  v235 = *(v24 - 8);
  v236 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v216 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C20C();
  v29 = v28;
  v31 = v30;
  v32 = sub_22088C28C();
  v33 = [v32 horizontalSizeClass];

  if (v33 == 2)
  {
    v34 = 16.0;
  }

  else
  {
    v34 = v29;
  }

  v35 = 12.0;
  if (v33 != 2)
  {
    v35 = v31;
  }

  v256 = v35;
  v251 = a2;
  sub_22088C1DC();
  sub_22088D9EC();
  v37 = v36;
  v234 = v27;
  sub_22088D9EC();
  v39 = v38;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v244 = type metadata accessor for StockViewModel();
  v40 = *(v244 + 28);
  v249 = a1;
  v41 = a1 + v40;
  v230 = sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  v253 = v37 + v39;
  v229 = qword_281298FC8;
  sub_220886B9C();

  v42 = *(v41 + 8);
  v250 = v34;
  if (v42)
  {
    goto LABEL_21;
  }

  v43 = *v41;
  if ((v258[0] & 1) == 0)
  {
    goto LABEL_17;
  }

  v44 = type metadata accessor for PriceViewModel();
  (*(v20 + 16))(v23, v41 + *(v44 + 40), v19);
  v45 = (*(v20 + 88))(v23, v19);
  v46 = 2;
  if (v45 != *MEMORY[0x277D69898] && v45 != *MEMORY[0x277D698A0] && v45 != *MEMORY[0x277D69870] && v45 != *MEMORY[0x277D69888] && v45 != *MEMORY[0x277D69878] && v45 != *MEMORY[0x277D69890])
  {
    if (v45 == *MEMORY[0x277D69880])
    {
LABEL_17:
      v46 = 0;
      goto LABEL_18;
    }

    if (v45 != *MEMORY[0x277D69868])
    {
      (*(v20 + 8))(v23, v19);
    }

    v46 = 2;
  }

LABEL_18:
  if (qword_281294078 != -1)
  {
    v215 = v46;
    swift_once();
    v46 = v215;
  }

  sub_2204BD7B8(*(v41 + 48), *(v41 + 56), 5, 1, v46, v43);
  if (!v47)
  {
LABEL_21:
  }

  v48 = sub_2204C0128();

  v49 = v255;
  [v48 boundingRectWithSize:1 options:0 context:{v255, a6}];
  v51 = v50;
  v252 = v52;
  v246 = v54;
  v247 = v53;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  if (*(v41 + 24))
  {
    v55 = 2;
  }

  else
  {
    v55 = *(v41 + 16) < 0.0;
  }

  v56 = sub_2204C080C(0x4D30302E303030, 0xE700000000000000, v55);
  v254 = a6;
  v57 = sub_2204C0AC0(v56, 1, v49, a6);
  v59 = v58;
  v60 = type metadata accessor for StockViewLayoutOptions();
  v61 = v251;
  v242 = *(v251 + *(v60 + 32));
  sub_220891A6C();
  v245 = v57 + v62;
  sub_220891A7C();
  v248 = v59 + v63;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v64 = sub_22088A9DC();
  [v64 ascender];
  v66 = v65;

  v67 = v66 + 14.0;
  v68 = v252;
  v69 = v49 - v253;
  v70 = v51;
  v259.origin.x = v51;
  v259.origin.y = v252;
  v71 = v246;
  v72 = v247;
  v259.size.width = v247;
  v259.size.height = v246;
  Width = CGRectGetWidth(v259);
  v74 = v256;
  v241 = v69 - Width - v256;
  v75 = sub_220891D8C();
  [v75 ascender];
  v77 = v76;

  v78 = v67 - v77;
  v260.origin.x = v70;
  v260.origin.y = v68;
  v260.size.width = v72;
  v260.size.height = v71;
  v79 = CGRectGetWidth(v260);
  v261.origin.x = v70;
  v261.origin.y = v68;
  v261.size.width = v72;
  v261.size.height = v71;
  v262.size.height = CGRectGetHeight(v261);
  v262.origin.x = v241;
  v262.origin.y = v78;
  v262.size.width = v79;
  v263 = CGRectIntegral(v262);
  x = v263.origin.x;
  y = v263.origin.y;
  v82 = v263.size.width;
  height = v263.size.height;
  v252 = v69;
  v84 = v245;
  v264.origin.y = CGRectGetMaxY(v263) + 2.0;
  v264.origin.x = v69 - v84 - v74;
  v264.size.width = v84;
  v264.size.height = v248;
  v265 = CGRectIntegral(v264);
  v247 = v265.origin.y;
  v248 = v265.origin.x;
  v245 = v265.size.height;
  v246 = v265.size.width;
  v85 = v242 + CGRectGetMinY(v265);
  v232 = v56;
  v86 = sub_220891D8C();
  [v86 ascender];
  v88 = v87;

  v89 = sub_220891D8C();
  [v89 ascender];
  v242 = v90;

  v233 = v48;
  v91 = sub_220891D8C();
  [v91 capHeight];
  v93 = v92;

  sub_22088C21C();
  if (v94 > 320.0)
  {
    v95 = 68.0;
  }

  else
  {
    v95 = 44.0;
  }

  v240 = x;
  v241 = y;
  v266.origin.x = x;
  v266.origin.y = y;
  v238 = height;
  v239 = v82;
  v266.size.width = v82;
  v266.size.height = height;
  MinY = CGRectGetMinY(v266);
  if (*(v61 + *(v60 + 20) + 8))
  {

    v97 = sub_22089149C();
    v98 = sub_22089149C();
    v99 = v249;
    v100 = v244;
    if (v97 < v98)
    {
    }

    v101 = v254;
  }

  else
  {
    v101 = v254;
    v99 = v249;
    v100 = v244;
  }

  v102 = v85 + v88;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v103 = sub_2204C0128();

  v228 = v103;
  v104 = sub_2204C0AC0(v103, 1, v255, v101);
  v106 = v105;
  v107 = 0.0;
  v109 = v245;
  v108 = v246;
  v110 = 0.0;
  v111 = v247;
  v112 = v248;
  v113 = 0.0;
  v114 = 0.0;
  if (LOBYTE(v243))
  {
    v115 = v104;
    v116 = v242 - v93;
    v117 = v102 - MinY - (v242 - v93);
    v267.origin.x = v252 - v104 - v256;
    v118 = v241;
    v267.origin.y = v241;
    v267.size.width = v115;
    v267.size.height = v106;
    v119 = CGRectGetMinX(v267) - v95 + -10.0;
    v268.size.width = v239;
    v268.origin.x = v240;
    v268.origin.y = v118;
    v268.size.height = v238;
    v269.origin.y = v116 + CGRectGetMinY(v268);
    v269.origin.x = v119;
    v269.size.width = v95;
    v269.size.height = v117;
    *(&v111 - 1) = CGRectIntegral(v269);
    v112 = v120;
    v107 = v120;
    v110 = v111;
    v113 = v108;
    v114 = v109;
  }

  v242 = v111;
  v243 = v108;
  v244 = *&v109;
  v223 = v110;
  v225 = v107;
  v121 = v227;
  sub_2204B28E8(v99 + *(v100 + 24), v227, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v122 = (*(*&v224 + 48))(v121, 1, v226);
  v221 = v114;
  if (v122 == 1)
  {
    sub_2204B3B04(v121, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v227 = 1;
  }

  else
  {
    v123 = v218;
    sub_2204C31E8(v121, v218);
    sub_22088C1FC();
    v124 = __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
    v227 = sub_2204C324C(v123, *v124, v113, v114);
    sub_2204BEEE8(v123, type metadata accessor for StockSparklineViewModel);
  }

  v125 = v250;
  v258[3] = sub_22088D0FC();
  v258[4] = sub_2204C3590();
  __swift_allocate_boxed_opaque_existential_1(v258);
  sub_22088D0EC();
  sub_22088C30C();
  v127 = v126;
  __swift_destroy_boxed_opaque_existential_1(v258);
  v128 = v127 + 12.0 + 21.0;
  sub_22046DA2C((v7 + 2), v258);
  __swift_project_boxed_opaque_existential_1(v258, v258[3]);
  v129 = *(v100 + 20);
  v130 = v231;
  sub_2204B28E8(v99 + v129, v231, &qword_2812990C0, MEMORY[0x277D697F8]);
  v131 = sub_22088676C();
  v132 = *(v131 - 8);
  v133 = (*(v132 + 48))(v130, 1, v131);
  v222 = v113;
  if (v133 == 1)
  {
    sub_2204B3B04(v130, &qword_2812990C0, MEMORY[0x277D697F8]);
  }

  else
  {
    v134 = sub_22088668C();
    v136 = v135;
    (*(v132 + 8))(v130, v131);
    if (v136)
    {
      v137 = v134;
      goto LABEL_43;
    }
  }

  v137 = 0;
  v136 = 0xE000000000000000;
LABEL_43:
  v138 = sub_2204C3B64(v137, v136, 0);

  __swift_destroy_boxed_opaque_existential_1(v258);
  v139 = v255;
  v140 = v128;
  sub_220891A6C();
  sub_220891EEC();
  v143 = sub_2204C0AC0(v138, 0, v141, v142);
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  sub_22088684C();
  v144 = sub_2204C3EAC();

  [v144 boundingRectWithSize:1 options:0 context:{v139, v101}];
  v146 = v145;
  sub_220886BAC();
  sub_220886B9C();

  v219 = v112;
  v220 = v102;
  v147 = v112;
  v148 = v242;
  v149 = v243;
  v150 = v244;
  if (LOBYTE(v258[0]) == 1)
  {
    v151 = CGRectGetMinX(*&v147) - v125 + -12.0 - v143;
  }

  else
  {
    v151 = CGRectGetMinX(*&v147) - v125 + -12.0;
  }

  if (v146 >= v151)
  {
    v152 = v151;
  }

  else
  {
    v152 = v146;
  }

  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v153 = sub_22088A9DC();
  [v153 lineHeight];
  v155 = v154;

  v270.origin.y = 14.0;
  v270.origin.x = v125;
  v270.size.width = v152;
  v270.size.height = v155;
  v271 = CGRectIntegral(v270);
  v156 = v271.origin.x;
  v157 = v271.origin.y;
  v158 = v125;
  v159 = v271.size.width;
  v160 = v271.size.height;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v161 = sub_2204C4258(v249 + v129);
  v163 = sub_2204C43E4(v161, v162, 0);

  v164 = v255;
  v216 = v140;
  sub_220891A6C();
  sub_220891EEC();
  v167 = sub_2204C0AC0(v163, 0, v165, v166);
  v253 = v168;
  v169 = v156;
  v230 = *&v157;
  v231 = *&v156;
  v272.origin.x = v156;
  v272.origin.y = v157;
  v229 = *&v159;
  v272.size.width = v159;
  v226 = *&v160;
  v272.size.height = v160;
  v170 = CGRectGetMaxX(v272) + 12.0;
  v273.origin.x = v169;
  v273.origin.y = v157;
  v273.size.width = v159;
  v273.size.height = v160;
  v171 = CGRectGetMinY(v273);
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v172 = sub_22088A9DC();
  [v172 ascender];
  v174 = v173;

  v175 = v171 + v174;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v176 = sub_22088A9DC();
  [v176 ascender];
  v178 = v177;

  v274.origin.y = v175 - v178;
  v274.origin.x = v170;
  v274.size.width = v167;
  v274.size.height = v253;
  v275 = CGRectIntegral(v274);
  v253 = v275.origin.x;
  v224 = v275.origin.y;
  v217 = v275.size.height;
  v218 = *&v275.size.width;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v179 = sub_2208867BC();
  v181 = sub_2204C4604(v179, v180, 0);

  [v181 boundingRectWithSize:0 options:0 context:{v164, v254}];
  v277 = CGRectIntegral(v276);
  v182 = v277.size.height;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v183 = sub_22088A9DC();
  [v183 ascender];
  v185 = v184;

  v278.origin.x = v219;
  v186 = v220 - v185;
  v278.origin.y = v242;
  v278.size.width = v243;
  *&v278.size.height = v244;
  v279.size.width = CGRectGetMinX(v278) - v158 + -12.0;
  v279.origin.x = v158;
  v279.origin.y = v186;
  v279.size.height = v182;
  v280 = CGRectIntegral(v279);
  v187 = v280.origin.x;
  v188 = v280.origin.y;
  v189 = v280.size.width;
  v190 = v280.size.height;
  sub_220891A6C();
  sub_220891EEC();
  [v181 boundingRectWithSize:0 options:0 context:?];
  CGRectIntegral(v281);
  sub_220891E6C();
  v283 = CGRectIntegral(v282);
  v191 = v283.origin.x;
  v192 = v283.origin.y;
  v193 = v283.size.width;
  v194 = v283.size.height;
  v283.origin.x = v187;
  v283.origin.y = v188;
  v283.size.width = v189;
  v283.size.height = v190;
  v284.size.height = round(CGRectGetMaxY(v283) + 14.0);
  v284.origin.x = 0.0;
  v284.origin.y = 0.0;
  v284.size.width = v252;
  CGRectIntegral(v284);
  v197 = MEMORY[0x28223BE20](v195, v196).n128_u64[0];
  v198 = &v216 - 42;
  v198[6] = v191;
  v198[7] = v192;
  v198[8] = v193;
  v198[9] = v194;
  *(&v216 - 31) = v250;
  v199 = v230;
  v200 = v231;
  *(&v216 - 29) = v256;
  *(&v216 - 28) = v200;
  *(&v216 - 27) = v199;
  v201 = v226;
  *(&v216 - 26) = v229;
  *(&v216 - 25) = v201;
  *(&v216 - 23) = v187;
  *(&v216 - 22) = v188;
  *(&v216 - 21) = v189;
  *(&v216 - 20) = v190;
  v202 = v224;
  *(&v216 - 19) = v253;
  *(&v216 - 18) = v202;
  v203 = v217;
  *(&v216 - 17) = v218;
  *(&v216 - 16) = v203;
  v204 = v241;
  *(&v216 - 15) = v240;
  *(&v216 - 14) = v204;
  v205 = v238;
  *(&v216 - 13) = v239;
  *(&v216 - 12) = v205;
  v206 = v247;
  *(&v216 - 11) = v248;
  *(&v216 - 10) = v206;
  v207 = v245;
  *(&v216 - 9) = v246;
  *(&v216 - 8) = v207;
  v208 = v222;
  v209 = v223;
  *(&v216 - 6) = v225;
  *(&v216 - 5) = v209;
  *(&v216 - 4) = v208;
  *(&v216 - 3) = v221;
  *(v198 + 2) = v197;
  *(v198 + 3) = v210;
  *(v198 + 4) = v211;
  *(v198 + 5) = v212;
  *(&v216 - 32) = 14.0;
  *(&v216 - 30) = 14.0;
  *(&v216 - 24) = v181;
  *(&v216 - 7) = v251;
  v213 = v227;
  *(&v216 - 2) = v227;
  sub_22088C19C();

  sub_2204C4FA0(v213);
  (*(v235 + 8))(v234, v236);
  memcpy(v258, v257, 0x150uLL);
  return memcpy(v237, v258, 0x150uLL);
}

id sub_2204C0128()
{
  v1 = v0;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_220899920;
  v4 = *v3;
  *(inited + 32) = v4;
  v5 = v4;
  v6 = sub_22088A9DC();
  v7 = sub_22044D56C(0, &qword_28127E570);
  v8 = MEMORY[0x277D740C0];
  *(inited + 40) = v6;
  v9 = *v8;
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = v1[11];
  v11 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v10);
  v12 = *(v11 + 16);
  v13 = *(v12 + 40);
  v14 = v9;
  v15 = v13(v10, v12);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v15;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v18 = sub_22089125C();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

uint64_t sub_2204C02F0(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  if (qword_281297048 != -1)
  {
    swift_once();
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B44C();

  sub_2204C0A04(&v7, &unk_281297F00, &qword_281297F10, MEMORY[0x277D6D540], sub_2204446D4);

  if (qword_281296F80 != -1)
  {
    swift_once();
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B44C();

  sub_2204C0A04(&v7, &unk_281297F00, &qword_281297F10, MEMORY[0x277D6D540], sub_2204446D4);

  if (qword_281296FB8 != -1)
  {
    swift_once();
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B44C();

  sub_2204C0A04(&v7, &unk_281297F00, &qword_281297F10, MEMORY[0x277D6D540], sub_2204446D4);

  sub_22088B45C();
  swift_getObjectType();
  if (qword_281297010 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22088B7FC();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v7);
  v4 = *(*&v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 144))(ObjectType, v4);
}

uint64_t sub_2204C06C4()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471AB4(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471AB4(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6C80 = result;
  return result;
}

id sub_2204C080C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3 == 2)
  {
    v6 = *(v3 + 88);
    v5 = *(v3 + 96);
    __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
    v7 = (*(*(v5 + 16) + 456))(v6);
  }

  else
  {
    v7 = [objc_opt_self() whiteColor];
  }

  v8 = v7;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v10 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_220899920;
  v11 = *v10;
  *(inited + 32) = v11;
  v12 = v11;
  v13 = sub_22088A9DC();
  v14 = sub_22044D56C(0, &qword_28127E570);
  *(inited + 40) = v13;
  v15 = *MEMORY[0x277D740C0];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v8;
  v16 = v15;
  v17 = v8;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v20 = sub_22089125C();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

uint64_t sub_2204C0A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_22076C644(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2204C0A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2204C0AC0(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 96);
  if (*(v10 + 16) && (v11 = sub_2204C0FCC(a1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
  }

  else
  {
    swift_endAccess();
    [a1 boundingRectWithSize:a2 options:0 context:{a3, a4}];
    v13 = v14;
    v16 = v15;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v5 + 96);
    *(v5 + 96) = 0x8000000000000000;
    sub_2204C0D18(a1, isUniquelyReferenced_nonNull_native, v13, v16);
    *(v5 + 96) = v19;
  }

  swift_endAccess();
  return v13;
}

uint64_t sub_2204C0BD0()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471B04(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471B04(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6BF0 = result;
  return result;
}

unint64_t sub_2204C0D18(void *a1, char a2, double a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_2204C0FCC(a1);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 < v15 || (a2 & 1) != 0)
    {
      sub_2204C11FC(v15, a2 & 1);
      result = sub_2204C0FCC(a1);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_22044D56C(0, &qword_28127E7B0);
        result = sub_22089291C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = result;
      sub_2207D04EC();
      result = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * result);
    *v21 = a3;
    v21[1] = a4;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a1;
  v22 = (v20[7] + 16 * result);
  *v22 = a3;
  v22[1] = a4;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v24;

  return a1;
}

uint64_t sub_2204C0E84()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471B04(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471B04(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6C18 = result;
  return result;
}

void sub_2204C101C()
{
  if (!qword_28127E298)
  {
    sub_22044D56C(255, &qword_28127E7B0);
    type metadata accessor for CGSize(255);
    sub_2204C1764();
    v0 = sub_2208926EC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E298);
    }
  }
}

uint64_t sub_2204C10A8()
{
  v0 = MEMORY[0x277D698E0];
  sub_220479F8C(0, &qword_2812970E0, MEMORY[0x277D698E0], MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220479F8C(0, &qword_2812970A8, v0, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6C58 = result;
  return result;
}

uint64_t sub_2204C11FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2204C101C();
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      result = sub_22089207C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2204C145C()
{
  v1 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v1, v2);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v0 + *(*v0 + 208)), *(v0 + *(*v0 + 208) + 24));
  v5 = *MEMORY[0x277D68EE8];
  v6 = sub_220889FFC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  swift_storeEnumTagMultiPayload();
  sub_2204C17CC(v4);
  return sub_2204AB5DC(v4, type metadata accessor for EngagementEvent);
}

unint64_t sub_2204C1574(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_22044D56C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_22089208C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t type metadata accessor for EngagementEvent()
{
  result = qword_2812935A0;
  if (!qword_2812935A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204C16A0()
{
  result = sub_220889A4C();
  if (v1 <= 0x3F)
  {
    result = sub_22088988C();
    if (v2 <= 0x3F)
    {
      result = sub_220889B4C();
      if (v3 <= 0x3F)
      {
        result = sub_2208893DC();
        if (v4 <= 0x3F)
        {
          result = sub_2208897CC();
          if (v5 <= 0x3F)
          {
            result = sub_220889FFC();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2204C1764()
{
  result = qword_28127E798;
  if (!qword_28127E798)
  {
    sub_22044D56C(255, &qword_28127E7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E798);
  }

  return result;
}

void sub_2204C17CC(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v213 = a1;
  v3 = sub_22088F11C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v202 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088F14C();
  v203 = *(v7 - 8);
  v204 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v200 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_22088F17C();
  v201 = *(v205 - 8);
  MEMORY[0x28223BE20](v205, v10);
  v197 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v199 = &v179 - v14;
  v15 = sub_220889FFC();
  v16 = *(v15 - 8);
  v210 = v15;
  v211 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v191 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v198 = &v179 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v189 = &v179 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v190 = &v179 - v27;
  v196 = sub_220889FEC();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v28);
  v184 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v209 = &v179 - v32;
  v194 = sub_2208893DC();
  v208 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v33);
  v207 = &v179 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_22088914C();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v35);
  v185 = &v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_2208897CC();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v37);
  v188 = &v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v206 = &v179 - v41;
  v42 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v179 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v179 - v48;
  MEMORY[0x28223BE20](v50, v51);
  v212 = &v179 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v179 - v55;
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_featureAvailability], *&v1[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_featureAvailability + 24]);
  if ((sub_22088616C() & 1) == 0)
  {
    return;
  }

  sub_220888DBC();

  if (aBlock != 1)
  {
    return;
  }

  if (qword_281298080 != -1)
  {
    swift_once();
  }

  v57 = sub_22088A84C();
  v58 = __swift_project_value_buffer(v57, qword_281298088);
  sub_22047EA6C(v213, v56, type metadata accessor for EngagementEvent);
  v183 = v58;
  v59 = sub_22088A82C();
  v60 = sub_220891AFC();
  v61 = os_log_type_enabled(v59, v60);
  v181 = v4;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v180 = v3;
    v63 = v62;
    v64 = swift_slowAlloc();
    v182 = v2;
    v65 = v64;
    aBlock = v64;
    *v63 = 136315138;
    v66 = sub_2205634B0();
    v68 = v67;
    sub_22047EC94(v56, type metadata accessor for EngagementEvent);
    v69 = sub_2204A7B78(v66, v68, &aBlock);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_22043F000, v59, v60, "Received event %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v70 = v65;
    v2 = v182;
    MEMORY[0x223D8B7F0](v70, -1, -1);
    v71 = v63;
    v3 = v180;
    MEMORY[0x223D8B7F0](v71, -1, -1);
  }

  else
  {

    sub_22047EC94(v56, type metadata accessor for EngagementEvent);
  }

  if ((sub_220872F18() & 1) == 0)
  {
    sub_22047EA6C(v213, v45, type metadata accessor for EngagementEvent);
    v81 = sub_22088A82C();
    v82 = sub_220891AFC();
    if (!os_log_type_enabled(v81, v82))
    {

      goto LABEL_43;
    }

    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    aBlock = v84;
    *v83 = 136315138;
    v85 = sub_2205634B0();
    v87 = v86;
    sub_22047EC94(v45, type metadata accessor for EngagementEvent);
    v88 = sub_2204A7B78(v85, v87, &aBlock);

    *(v83 + 4) = v88;
    v89 = "Skipping processing [%s] since user is not authenticated to the AppStore";
LABEL_20:
    _os_log_impl(&dword_22043F000, v81, v82, v89, v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x223D8B7F0](v84, -1, -1);
    MEMORY[0x223D8B7F0](v83, -1, -1);

    return;
  }

  if ((sub_220872FE0() & 1) == 0)
  {
    sub_22047EA6C(v213, v49, type metadata accessor for EngagementEvent);
    v81 = sub_22088A82C();
    v82 = sub_220891AFC();
    if (!os_log_type_enabled(v81, v82))
    {

      v94 = v49;
LABEL_44:
      sub_22047EC94(v94, type metadata accessor for EngagementEvent);
      return;
    }

    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    aBlock = v84;
    *v83 = 136315138;
    v90 = sub_2205634B0();
    v92 = v91;
    sub_22047EC94(v49, type metadata accessor for EngagementEvent);
    v93 = sub_2204A7B78(v90, v92, &aBlock);

    *(v83 + 4) = v93;
    v89 = "Skipping processing [%s] due to quiescence interval";
    goto LABEL_20;
  }

  v45 = v212;
  sub_22047EA6C(v213, v212, type metadata accessor for EngagementEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v113 = sub_22088A82C();
        v114 = sub_220891AFC();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_22043F000, v113, v114, "Engaged with article. Incrementing article engagement count.", v115, 2u);
          MEMORY[0x223D8B7F0](v115, -1, -1);
        }

        v116 = &v2[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store];
        __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store], *&v2[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store + 24]);
        __swift_project_boxed_opaque_existential_1(v116, *(v116 + 3));
        v117 = off_283415800[0];
        type metadata accessor for AppReviewRequestStore();
        v117();
        if (v119)
        {
          v120 = 0;
        }

        else
        {
          v120 = v118;
        }

        if (__OFADD__(v120, 1))
        {
          __break(1u);
          goto LABEL_72;
        }

        off_283415810();
        LOBYTE(aBlock) = 1;

        sub_220888DCC();

        goto LABEL_43;
      }

      v95 = sub_22088A82C();
      v96 = sub_220891AFC();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_22043F000, v95, v96, "Ending session. Resetting counts.", v97, 2u);
        MEMORY[0x223D8B7F0](v97, -1, -1);
      }

      v98 = &v2[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store];
    }

    else
    {
      v105 = sub_22088A82C();
      v106 = sub_220891AFC();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_22043F000, v105, v106, "Starting new session. Resetting counts.", v107, 2u);
        MEMORY[0x223D8B7F0](v107, -1, -1);
      }

      MEMORY[0x28223BE20](v108, v109);
      *(&v179 - 2) = v2;
      sub_22046EAA0(0);
      sub_220888FBC();
      *(swift_allocObject() + 16) = v2;
      v110 = v2;
      v111 = sub_220888D9C();
      sub_220888E4C();

      v98 = &v110[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store];
    }

    __swift_project_boxed_opaque_existential_1(v98, *(v98 + 3));
    v112 = off_283415808[0];
    type metadata accessor for AppReviewRequestStore();
    v112();
LABEL_43:
    v94 = v45;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v73 = v210;
    v74 = v211;
    if (EnumCaseMultiPayload == 3)
    {
      v75 = v194;
      (*(v208 + 32))(v207, v45, v194);
      sub_2208893BC();
      v76 = v190;
      sub_220889FDC();
      v77 = v189;
      (*(v74 + 104))(v189, *MEMORY[0x277D68EF0], v73);
      sub_22046287C(&qword_2812982C0, MEMORY[0x277D68F00]);
      sub_22089167C();
      sub_22089167C();
      if (aBlock == v214 && v217 == v215)
      {
        v78 = *(v74 + 8);
        v78(v77, v73);
        v78(v76, v73);

        v79 = v196;
        v80 = v195;
      }

      else
      {
        v145 = sub_2208928BC();
        v146 = *(v74 + 8);
        v146(v77, v73);
        v146(v76, v73);

        v79 = v196;
        v80 = v195;
        if ((v145 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      sub_220888DBC();

      if ((aBlock & 1) == 0)
      {
        v147 = v184;
        (*(v80 + 16))(v184, v209, v79);
        v148 = sub_22088A82C();
        v149 = sub_220891AFC();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          aBlock = v151;
          *v150 = 136315138;
          v152 = sub_220889FBC();
          v153 = v147;
          v155 = v154;
          (*(v80 + 8))(v153, v79);
          v156 = sub_2204A7B78(v152, v155, &aBlock);

          *(v150 + 4) = v156;
          _os_log_impl(&dword_22043F000, v148, v149, "Watched symbol feed [%s]. Incrementing symbol feed view count.", v150, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v151);
          MEMORY[0x223D8B7F0](v151, -1, -1);
          MEMORY[0x223D8B7F0](v150, -1, -1);
        }

        else
        {

          (*(v80 + 8))(v147, v79);
        }

        v174 = &v2[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store];
        __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store], *&v2[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store + 24]);
        __swift_project_boxed_opaque_existential_1(v174, *(v174 + 3));
        v175 = off_283415800[0];
        type metadata accessor for AppReviewRequestStore();
        v175();
        if (v177)
        {
          v178 = 0;
        }

        else
        {
          v178 = v176;
        }

        if (!__OFADD__(v178, 1))
        {
          off_283415810();
          goto LABEL_70;
        }

        goto LABEL_73;
      }

LABEL_70:
      (*(v80 + 8))(v209, v79);
      (*(v208 + 8))(v207, v75);
      return;
    }

    v182 = v2;
    v121 = v192;
    v122 = v206;
    v123 = v45;
    v124 = v193;
    (*(v192 + 32))(v206, v123, v193);
    v125 = v188;
    (*(v121 + 16))(v188, v122, v124);
    v126 = sub_22088A82C();
    v127 = sub_220891AFC();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      aBlock = v129;
      *v128 = 136315138;
      v130 = v185;
      sub_2208897AC();
      v131 = sub_22088913C();
      v133 = v132;
      (*(v186 + 8))(v130, v187);
      v134 = *(v121 + 8);
      v134(v125, v124);
      v135 = sub_2204A7B78(v131, v133, &aBlock);

      *(v128 + 4) = v135;
      _os_log_impl(&dword_22043F000, v126, v127, "Added watch symbol [%s]. Incrementing watch symbol added count.", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x223D8B7F0](v129, -1, -1);
      MEMORY[0x223D8B7F0](v128, -1, -1);
    }

    else
    {

      v134 = *(v121 + 8);
      v134(v125, v124);
    }

    v169 = &v182[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store];
    __swift_project_boxed_opaque_existential_1(&v182[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store], *&v182[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store + 24]);
    __swift_project_boxed_opaque_existential_1(v169, *(v169 + 3));
    v170 = off_283415800[0];
    type metadata accessor for AppReviewRequestStore();
    v171 = v170();
    if (v172)
    {
      v173 = 0;
    }

    else
    {
      v173 = v171;
    }

    if (!__OFADD__(v173, 1))
    {
      off_283415810();
      v134(v206, v124);
      return;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v99 = v210;
  v100 = v211;
  if (EnumCaseMultiPayload == 5)
  {
    v101 = v45;
    v102 = v198;
    (*(v211 + 32))(v198, v101, v210);
    v103 = v191;
    (*(v100 + 104))(v191, *MEMORY[0x277D68EE8], v99);
    sub_22046287C(&qword_2812982C0, MEMORY[0x277D68F00]);
    sub_22089167C();
    sub_22089167C();
    if (aBlock == v214 && v217 == v215)
    {
      v104 = 1;
    }

    else
    {
      v104 = sub_2208928BC();
    }

    v159 = *(v100 + 8);
    v158 = v100 + 8;
    v157 = v159;
    v159(v103, v99);

    if ((v104 & 1) != 0 && (, sub_220888DBC(), , aBlock == 1))
    {
      LOBYTE(aBlock) = 0;

      sub_220888DCC();

      sub_22044D56C(0, &qword_28127E7C0);
      v160 = sub_220891D0C();
      v161 = v197;
      sub_22088F16C();
      v162 = v199;
      sub_22088F18C();
      v211 = v158;
      v163 = v3;
      v213 = *(v201 + 8);
      v213(v161, v205);
      v164 = swift_allocObject();
      *(v164 + 16) = v2;
      v220 = sub_2208744E8;
      v221 = v164;
      aBlock = MEMORY[0x277D85DD0];
      v217 = 1107296256;
      v218 = sub_2204C35E8;
      v219 = &block_descriptor_13;
      v165 = _Block_copy(&aBlock);
      v166 = v2;

      v167 = v200;
      sub_22088F13C();
      aBlock = MEMORY[0x277D84F90];
      sub_22046287C(&qword_281296CA0, MEMORY[0x277D85198]);
      sub_22056D204();
      sub_22046287C(&qword_28127EA50, sub_22056D204);
      v168 = v202;
      sub_2208923FC();
      MEMORY[0x223D89E80](v162, v167, v168, v165);
      _Block_release(v165);

      (*(v181 + 8))(v168, v163);
      (*(v203 + 8))(v167, v204);
      v213(v162, v205);
      v157(v198, v210);
    }

    else
    {
      v157(v102, v99);
    }
  }

  else
  {
    sub_22044D56C(0, &qword_28127E7C0);
    v136 = sub_220891D0C();
    v137 = v197;
    sub_22088F16C();
    v138 = v199;
    sub_22088F18C();
    v213 = *(v201 + 8);
    v139 = v205;
    v213(v137, v205);
    v140 = swift_allocObject();
    *(v140 + 16) = v2;
    v220 = sub_2208743D8;
    v221 = v140;
    aBlock = MEMORY[0x277D85DD0];
    v217 = 1107296256;
    v218 = sub_2204C35E8;
    v219 = &block_descriptor_59;
    v141 = _Block_copy(&aBlock);
    v142 = v2;

    v143 = v200;
    sub_22088F13C();
    aBlock = MEMORY[0x277D84F90];
    sub_22046287C(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_22056D204();
    sub_22046287C(&qword_28127EA50, sub_22056D204);
    v144 = v202;
    sub_2208923FC();
    MEMORY[0x223D89E80](v138, v143, v144, v141);
    _Block_release(v141);

    (*(v181 + 8))(v144, v3);
    (*(v203 + 8))(v143, v204);
    v213(v138, v139);
  }
}

uint64_t sub_2204C31E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2204C324C(uint64_t a1, void *a2, double a3, double a4)
{
  v32 = a2;
  v7 = sub_220890C4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22089122C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1D3C();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StockSparklineViewModel(0);
  if (*(a1 + *(v23 + 20) + 8) & 1) != 0 || (*(a1 + *(v23 + 24) + 8))
  {
    return 0;
  }

  v31 = v13;
  sub_22088658C();
  v24 = v32[11];
  v30[0] = v32[10];
  v30[1] = v24;
  v32 = __swift_project_boxed_opaque_existential_1(v32 + 7, v30[0]);
  sub_220890D6C();
  sub_220890DCC();
  (*(v19 + 8))(v22, v18);
  (*(v8 + 104))(v11, *MEMORY[0x277D6C638], v7);
  sub_22089111C();
  v26 = v25;
  (*(v8 + 8))(v11, v7);
  (*(v31 + 8))(v16, v12);
  if (v26 < 0.0 || v26 > a4)
  {
    return 0;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v28 moveToPoint_];
  [v28 addLineToPoint_];
  return v28;
}

unint64_t sub_2204C3590()
{
  result = qword_281297608;
  if (!qword_281297608)
  {
    sub_22088D0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297608);
  }

  return result;
}

uint64_t sub_2204C35E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2204C3708(void *a1)
{
  if (([a1 isEditing] & 1) == 0)
  {
    v1 = sub_220891CBC();
    v2 = sub_220492C48();
    [v1 setRightBarButtonItem_];
  }
}

void SceneStateManagerBridge.sceneDidBecomeActive(with:sourceApplication:sceneID:)(uint64_t a1)
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  sub_22047C2BC(a1, v6);
  v8 = sub_220884E9C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  swift_unknownObjectRetain();
  v11 = 0;
  if (v10 != 1)
  {
    v11 = sub_220884E3C();
    (*(v9 + 8))(v6, v8);
  }

  v12 = sub_22089132C();

  v13 = sub_22089132C();
  [v7 sceneDidBecomeActiveWithURL:v11 sourceApplication:v12 sceneID:v13];
  swift_unknownObjectRelease();
}

id sub_2204C3B64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v7 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_22089B140;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = v8;
  v10 = sub_22088A9DC();
  v11 = sub_22044D56C(0, &qword_28127E570);
  v12 = MEMORY[0x277D740C0];
  *(inited + 40) = v10;
  v13 = *v12;
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  v14 = v4[11];
  v15 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v14);
  v16 = *(v15 + 16);
  if (a3)
  {
    v17 = *(v16 + 120);
  }

  else
  {
    v17 = *(v16 + 216);
  }

  v18 = v13;
  v19 = v17(v14, v16);
  v20 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D741E0];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFC999999999999ALL;
  v22 = v21;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v25 = sub_22089125C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

uint64_t sub_2204C3DE8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 216))(v2, v3);
}

id sub_2204C3EAC()
{
  v1 = v0;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_22089B140;
  v4 = *v3;
  *(inited + 32) = v4;
  v5 = v4;
  v6 = sub_22088A9DC();
  v7 = sub_22044D56C(0, &qword_28127E570);
  v8 = MEMORY[0x277D740C0];
  *(inited + 40) = v6;
  v9 = *v8;
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = v1[11];
  v11 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v10);
  v12 = *(v11 + 16);
  v13 = *(v12 + 40);
  v14 = v9;
  v15 = v13(v10, v12);
  v16 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D741E0];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFDB851EB851EB85;
  v18 = v17;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v21 = sub_22089125C();

  v22 = [v19 initWithString:v20 attributes:v21];

  return v22;
}

void sub_2204C40A4(uint64_t a1, void *a2)
{
  v4 = [*v2 traitCollection];
  sub_22048F5B0(v4);

  if ([a2 horizontalSizeClass] == 2)
  {
    sub_2204919B8(0);
  }
}

BOOL sub_2204C413C()
{
  v1 = sub_220886A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(*v0 + 120));
  __swift_project_boxed_opaque_existential_1((v6 + 32), *(v6 + 56));
  sub_2208863EC();
  v7 = sub_220886A1C();
  (*(v2 + 8))(v5, v1);
  v8 = *(v7 + 16);

  return v8 == 0;
}

uint64_t sub_2204C4258(uint64_t a1)
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1CA8(a1, v5);
  v6 = sub_22088676C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_220570398(v5);
  }

  else
  {
    v8 = sub_22088668C();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    if (v10)
    {
      v13[0] = sub_22088683C();
      v13[1] = v11;

      MEMORY[0x223D89680](548913696, 0xA400000000000000);

      MEMORY[0x223D89680](v8, v10);

      return v13[0];
    }
  }

  return sub_22088683C();
}

id sub_2204C43E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v7 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_22089B140;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = v8;
  v10 = sub_22088A9DC();
  v11 = sub_22044D56C(0, &qword_28127E570);
  v12 = MEMORY[0x277D740C0];
  *(inited + 40) = v10;
  v13 = *v12;
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  v14 = v4[11];
  v15 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v14);
  v16 = *(v15 + 16);
  if (a3)
  {
    v17 = *(v16 + 120);
  }

  else
  {
    v17 = *(v16 + 216);
  }

  v18 = v13;
  v19 = v17(v14, v16);
  v20 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D741E0];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFC999999999999ALL;
  v22 = v21;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v25 = sub_22089125C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

id sub_2204C4604(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v7 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_22089B140;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = v8;
  v10 = sub_22088A9DC();
  v11 = sub_22044D56C(0, &qword_28127E570);
  v12 = MEMORY[0x277D740C0];
  *(inited + 40) = v10;
  v13 = *v12;
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  v14 = v4[11];
  v15 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v14);
  v16 = *(v15 + 16);
  if (a3)
  {
    v17 = *(v16 + 120);
  }

  else
  {
    v17 = *(v16 + 216);
  }

  v18 = v13;
  v19 = v17(v14, v16);
  v20 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D741E0];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFC999999999999ALL;
  v22 = v21;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v25 = sub_22089125C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

id sub_2204C4824@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 264);
  v5 = *(v1 + 288);
  v3 = *(v1 + 232);
  return sub_2204C48B4(*(v1 + 144), *(v1 + 280), *(v1 + 320), a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), v3, *(&v3 + 1), *(v1 + 248), *(v1 + 256), v4, *(&v4 + 1), v5, *(&v5 + 1), *(v1 + 304), *(v1 + 312));
}

id sub_2204C48B4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, CGFloat a9@<D4>, CGFloat a10@<D5>, CGFloat a11@<D6>, CGFloat a12@<D7>, uint64_t a13, uint64_t a14, double a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v129 = a1;
  v130 = a3;
  v127 = a7;
  v128 = a8;
  v125 = a5;
  v126 = a6;
  v124 = a37;
  v123 = a38;
  v122 = a39;
  v121 = a40;
  *&v119 = a33;
  *&v118 = a34;
  v117 = a35;
  v116 = a36;
  v107 = a29;
  v106 = a30;
  v105 = a31;
  v104 = a32;
  v99 = a25;
  v98 = a26;
  v97 = a27;
  v96 = a28;
  v111 = a21;
  v110 = a22;
  v109 = a23;
  v108 = a24;
  v115 = a17;
  v46 = sub_22088ABEC();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v96 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135.origin.x = a9;
  v135.origin.y = a10;
  v135.size.width = a11;
  v135.size.height = a12;
  v120 = round(CGRectGetMaxY(v135) + a15);
  v51 = *MEMORY[0x277D6D320];
  v52 = *(v47 + 104);
  v52(v50, v51, v46);
  sub_22088ABDC();
  v115 = v53;
  v114 = v54;
  v113 = v55;
  v112 = v56;
  v57 = *(v47 + 8);
  v57(v50, v46);
  v52(v50, v51, v46);
  sub_22088ABDC();
  v111 = v58;
  v110 = v59;
  v109 = v60;
  v108 = v61;
  v57(v50, v46);
  v52(v50, v51, v46);
  sub_22088ABDC();
  v103 = v62;
  v102 = v63;
  v101 = v64;
  v100 = v65;
  v57(v50, v46);
  v52(v50, v51, v46);
  sub_22088ABDC();
  v99 = v66;
  v98 = v67;
  v97 = v68;
  v96 = v69;
  v57(v50, v46);
  v52(v50, v51, v46);
  sub_22088ABDC();
  v107 = v70;
  v106 = v71;
  v105 = v72;
  v104 = v73;
  v57(v50, v46);
  v52(v50, v51, v46);
  sub_22088ABDC();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v57(v50, v46);
  v82 = (a2 + *(type metadata accessor for StockViewLayoutOptions() + 32));
  v119 = v82[1];
  v118 = *v82;
  v52(v50, v51, v46);
  sub_22088ABDC();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v57(v50, v46);
  v91 = sub_22088C28C();
  *a4 = v125;
  *(a4 + 8) = v126;
  *(a4 + 16) = v127;
  *(a4 + 24) = v128;
  v134 = 0;
  v132 = 0;
  *(a4 + 32) = v120;
  *(a4 + 40) = 0;
  *(a4 + 41) = *v133;
  *(a4 + 44) = *&v133[3];
  *(a4 + 48) = v115;
  *(a4 + 56) = v114;
  *(a4 + 64) = v113;
  *(a4 + 72) = v112;
  v92 = v129;
  *(a4 + 80) = v129;
  *(a4 + 88) = v111;
  *(a4 + 96) = v110;
  *(a4 + 104) = v109;
  *(a4 + 112) = v108;
  *(a4 + 120) = v103;
  *(a4 + 128) = v102;
  *(a4 + 136) = v101;
  *(a4 + 144) = v100;
  *(a4 + 152) = v99;
  *(a4 + 160) = v98;
  *(a4 + 168) = v97;
  *(a4 + 176) = v96;
  *(a4 + 184) = v107;
  *(a4 + 192) = v106;
  *(a4 + 200) = v105;
  *(a4 + 208) = v104;
  *(a4 + 216) = v75;
  *(a4 + 224) = v77;
  *(a4 + 232) = v79;
  *(a4 + 240) = v81;
  *(a4 + 248) = v118;
  *(a4 + 264) = v119;
  *(a4 + 280) = v84;
  *(a4 + 288) = v86;
  *(a4 + 296) = v88;
  *(a4 + 304) = v90;
  *(a4 + 312) = v132;
  *(a4 + 313) = *v131;
  *(a4 + 316) = *&v131[3];
  v93 = v130;
  *(a4 + 320) = v130;
  *(a4 + 328) = v91;
  v94 = v92;
  return sub_2204C4F90(v93);
}

id sub_2204C4F90(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_2204C4FA0(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_2204C4FB0(void *a1, void *a2)
{
  v3 = v2;
  v7 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v8 = (*(*(v6 + 16) + 40))(v7);
  v9 = [v8 colorWithAlphaComponent_];

  [a1 setTintColor_];
  v11 = v3[5];
  v10 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  (*(*(v10 + 16) + 24))(v23 + 1, v11);
  [a1 setAccessibilityIgnoresInvertColors_];
  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  (*(v13 + 72))(v23 + 1, v12, v13);
  v14 = v24;
  v15 = v25;
  __swift_project_boxed_opaque_existential_1((v23 + 1), v24);
  (*(v15 + 24))(v23, v14, v15);
  [a1 setBarStyle_];
  __swift_destroy_boxed_opaque_existential_1(v23 + 1);
  if (a2)
  {
    v16 = [a2 horizontalSizeClass] == 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 standardAppearance];
  [v17 configureWithDefaultBackground];
  v19 = v3[5];
  v18 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v19);
  (*(*(v18 + 16) + 32))(v23 + 1, v19);
  if ((v23[0] & 0x100) != 0)
  {
    if (v16)
    {

      [a1 setTranslucent_];
      [a1 setBarTintColor_];
    }

    else
    {
      [a1 setTranslucent_];
      [v17 configureWithOpaqueBackground];
      v21 = v3[5];
      v20 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
      v22 = (*(*(v20 + 16) + 80))(v21);
      [v17 setBackgroundColor_];
    }
  }

  else
  {

    [a1 ts_setBlurthroughBackground];
  }

  [a1 setScrollEdgeAppearance_];
}

uint64_t sub_2204C52F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 80))(v2, v3);
}

uint64_t sub_2204C5354()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2204C538C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v2, &off_283413E78, a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2204C5420(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  sub_2204558B8(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v34 - v8;
  v36 = sub_22088582C();
  v10 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v1 + 232);
  v45 = *(v1 + v13);
  sub_2204C59CC(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
  sub_2204C5950(&qword_281298030);

  sub_22089193C();
  result = sub_22089199C();
  if (v44 & 1) != 0 || (v41)
  {
    __break(1u);
    return result;
  }

  v15 = v42;
  v16 = v39;
  v17 = v40;
  v18 = v43;

  if (v18 == v17)
  {
    if (v15 == v16)
    {
      sub_2204C5A34(v38);
    }

    if (qword_281298078 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_7:
  v19 = sub_22088A84C();
  __swift_project_value_buffer(v19, qword_2812B6CB8);

  v20 = sub_22088A82C();
  v21 = sub_220891AFC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = v23;
    *v22 = 136315138;
    v39 = *(v2 + v13);
    sub_2204C5950(&qword_281298028);
    v24 = sub_22089287C();
    v26 = sub_2204A7B78(v24, v25, &v42);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_22043F000, v20, v21, "Stock list update price data will be queued while refresh is blocked by: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x223D8B7F0](v23, -1, -1);
    MEMORY[0x223D8B7F0](v22, -1, -1);
  }

  v27 = *(*v2 + 240);
  swift_beginAccess();
  sub_22047939C(v2 + v27, v9, sub_2204558B8);
  v28 = v36;
  if ((*(v10 + 48))(v9, 1, v36) == 1)
  {
    sub_2204AB5DC(v9, sub_2204558B8);
    v29 = v37;
    (*(v10 + 16))(v37, v38, v28);
    (*(v10 + 56))(v29, 0, 1, v28);
    swift_beginAccess();
    v30 = v2 + v27;
    v31 = v29;
  }

  else
  {
    v32 = v35;
    (*(v10 + 32))(v35, v9, v28);
    v33 = v37;
    sub_22088580C();
    (*(v10 + 8))(v32, v28);
    (*(v10 + 56))(v33, 0, 1, v28);
    swift_beginAccess();
    v30 = v2 + v27;
    v31 = v33;
  }

  sub_2207C1A18(v31, v30, sub_2204558B8);
  return swift_endAccess();
}

uint64_t sub_2204C5950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2204C59CC(255, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2204C59CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2204C5A34(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22088AF8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  sub_22088B6BC();
  sub_22088B71C();

  (*(v5 + 104))(v8, *MEMORY[0x277D6D520], v4);
  sub_22046F734(&qword_281297F18, MEMORY[0x277D6D528]);
  v13 = sub_2208912FC();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v12, v4);
  if (v13)
  {
    sub_2204C5D60(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    v17 = *(v3 + 80);
    v16 = *(v3 + 88);
    v18 = (*(v16 + 72))(a1, v17, v16);
    v19 = swift_allocObject();
    v20 = swift_weakInit();
    MEMORY[0x28223BE20](v20, v21);
    *(&v23 - 6) = v17;
    *(&v23 - 5) = v16;
    *(&v23 - 4) = v19;
    *(&v23 - 3) = v18;
    *(&v23 - 2) = a1;
    sub_2204C5D60(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v22 = sub_220888F2C();

    return v22;
  }
}

void sub_2204C5D60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8StocksUI34StockSparklineViewLayoutAttributesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2204C5EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204C5F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204F0A94(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204C6018()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2204C6154()
{
  if (*(v0 + 72) > 1u)
  {
    v1 = 0;
  }

  else
  {
    sub_220658128();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_220899360;
    *(v1 + 56) = &type metadata for StockListSectionHeaderViewLayoutAttributes;
    *(v1 + 64) = sub_2205ED2F8();
    v2 = swift_allocObject();
    *(v1 + 32) = v2;
    v3 = *(v0 + 48);
    *(v2 + 48) = *(v0 + 32);
    *(v2 + 64) = v3;
    *(v2 + 80) = *(v0 + 64);
    v4 = *(v0 + 16);
    *(v2 + 16) = *v0;
    *(v2 + 32) = v4;
  }

  sub_2204BE7B8(v0, &v6);
  return v1;
}

uint64_t sub_2204C6204()
{

  return swift_deallocObject();
}

uint64_t sub_2204C6250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2204C62B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  sub_22045BC08(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v30 = v4;
  v5 = *(v4 - 8);
  v29 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v28 = v27 - v7;
  v8 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v27[0] = v3;
  sub_2204ABD88(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_220888FBC();
  sub_2204C6B7C(v3, v12, type metadata accessor for StockListChangeWatchlistBlueprintModifier);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_2204C6C28(v12, v14 + v13);
  v15 = sub_220888D9C();
  v27[1] = sub_220888E3C();

  sub_2204C6B7C(v27[0], v12, type metadata accessor for StockListChangeWatchlistBlueprintModifier);
  v16 = v28;
  v17 = v30;
  (*(v5 + 16))(v28, v31, v30);
  v18 = (v13 + v10 + *(v5 + 80)) & ~*(v5 + 80);
  v19 = (v29 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_2204C6C28(v12, v20 + v13);
  (*(v5 + 32))(v20 + v18, v16, v17);
  v21 = (v20 + v19);
  v23 = v32;
  v22 = v33;
  *v21 = v32;
  v21[1] = v22;

  v24 = sub_220888D9C();
  sub_220888E4C();

  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;

  v26 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_2204C6660()
{
  v1 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  __swift_destroy_boxed_opaque_existential_1(v2 + 136);
  v3 = v1[9];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[10];

  v6 = type metadata accessor for AttributionSource();
  v7 = *(v6 + 20);
  v8 = sub_220884E9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[11];
  v11 = sub_220885ACC();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t sub_2204C6870()
{
  v1 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  sub_22045BC08(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v18 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v19 = v0;
  v6 = v0 + ((v2 + 16) & ~v2);

  __swift_destroy_boxed_opaque_existential_1(v6 + 16);
  __swift_destroy_boxed_opaque_existential_1(v6 + 56);
  __swift_destroy_boxed_opaque_existential_1(v6 + 96);
  __swift_destroy_boxed_opaque_existential_1(v6 + 136);
  v7 = v1[9];
  v8 = sub_220885D4C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v6 + v1[10];

  v10 = type metadata accessor for AttributionSource();
  v11 = *(v10 + 20);
  v12 = sub_220884E9C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = v1[11];
  v15 = sub_220885ACC();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v6 + v1[12]);
  (*(v4 + 8))(v19 + ((((v2 + 16) & ~v2) + v17 + v5) & ~v5), v18);

  return swift_deallocObject();
}

uint64_t sub_2204C6B40()
{

  return swift_deallocObject();
}

uint64_t sub_2204C6B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2204C6BE4()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 144;
  if (v1)
  {
    v2 = 136;
  }

  v3 = *(v0 + v2);

  return v3;
}

uint64_t sub_2204C6C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204C6C8C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  sub_22088632C();
  sub_2204C6B7C(a2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockListChangeWatchlistBlueprintModifier);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_2204C6C28(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  v11 = sub_220888D9C();
  v12 = sub_220888E4C();

  return v12;
}

uint64_t sub_2204C6E24()
{
  v1 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  __swift_destroy_boxed_opaque_existential_1(v2 + 136);
  v3 = v1[9];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[10];

  v6 = type metadata accessor for AttributionSource();
  v7 = *(v6 + 20);
  v8 = sub_220884E9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[11];
  v11 = sub_220885ACC();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t sub_2204C7048(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](v2, a2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B40F4(v5, v4, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for StockListStockModel;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v8 = 0;
    v7 = type metadata accessor for StockListModel;
  }

  else
  {
    v8 = 1;
  }

  sub_2204AE394(v4, v7);
  return v8;
}

id sub_2204C7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v161 = a3;
  v160 = a4;
  v156 = a1;
  sub_22046B36C();
  v158 = *(v4 - 8);
  v159 = v4;
  v5 = *(v158 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v157 = v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088E9AC();
  v154 = *(v7 - 8);
  v155 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v153 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204C8D00(0, &qword_281296E70, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v152 = v133 - v12;
  v13 = sub_22088E97C();
  v147 = *(v13 - 8);
  v148 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v146 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088E98C();
  v150 = *(v16 - 8);
  v151 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v149 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockViewModel();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8, v22);
  MEMORY[0x28223BE20](v23, v24);
  v26 = v133 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = v133 - v29;
  v31 = type metadata accessor for StockListLayoutModel();
  MEMORY[0x28223BE20](v31, v32);
  v34 = v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BC25C();
  sub_22088BC3C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = *(v34 + 1);
      v158 = *v34;
      v37 = v158;
      v159 = v36;
      v38 = *(v34 + 3);
      v157 = *(v34 + 2);
      v39 = *(v34 + 5);
      v164[2] = *(v34 + 4);
      v164[3] = v39;
      v40 = *(v34 + 7);
      v164[4] = *(v34 + 6);
      v164[5] = v40;
      v41 = *(v34 + 3);
      v164[0] = *(v34 + 2);
      v164[1] = v41;
      sub_22049F4F8();
      v42 = sub_220891C1C();
      sub_22088C3DC();
      v43 = sub_22088C42C();
      v43[OBJC_IVAR____TtC8StocksUI9TodayView_shouldChangeLabelAlphaWhenEditing] = !UIAccessibilityDarkerSystemColorsEnabled();

      sub_22060B4FC(v42, *v164, *(v164 + 1), *&v164[1], *(&v164[1] + 1));
      v44 = sub_22088C42C();

      swift_allocObject();
      swift_weakInit();
      sub_22088E01C();

      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      *(v47 + 24) = v46;
      v48 = v159;
      *(v47 + 32) = v37;
      *(v47 + 40) = v48;
      v49 = v157;
      *(v47 + 48) = v157;
      *(v47 + 56) = v38;
      v50 = v164[3];
      *(v47 + 96) = v164[2];
      *(v47 + 112) = v50;
      v51 = v164[5];
      *(v47 + 128) = v164[4];
      *(v47 + 144) = v51;
      v52 = v164[1];
      *(v47 + 64) = v164[0];
      *(v47 + 80) = v52;

      v53 = sub_22088C45C();
      v54 = swift_allocObject();
      *(v54 + 16) = sub_2204D4C68;
      *(v54 + 24) = v47;

      v55 = sub_22088C3FC();
      v56 = swift_allocObject();
      *(v56 + 16) = sub_2204D4C68;
      *(v56 + 24) = v47;

      v57 = sub_22088C40C();
      v58 = swift_allocObject();
      *(v58 + 16) = sub_2204D4C68;
      *(v58 + 24) = v47;

      sub_2204D09AC(v45, v46, v158, v159, v49, v38, v164);
    }

    else
    {
      v125 = *(v34 + 7);
      v164[6] = *(v34 + 6);
      v164[7] = v125;
      v164[8] = *(v34 + 8);
      LOWORD(v164[9]) = *(v34 + 72);
      v126 = *(v34 + 3);
      v164[2] = *(v34 + 2);
      v164[3] = v126;
      v127 = *(v34 + 5);
      v164[4] = *(v34 + 4);
      v164[5] = v127;
      v128 = *(v34 + 1);
      v164[0] = *v34;
      v164[1] = v128;
      sub_22049F750();
      v42 = sub_220891C1C();
      v129 = sub_22088C42C();
      sub_22073975C(v164, v129);

      v130 = sub_22088C42C();
      v131 = *&v130[OBJC_IVAR____TtC8StocksUI13EmptyListView_onTap];

      swift_allocObject();
      swift_weakInit();
    }
  }

  else
  {
    v140 = v20;
    v141 = v21;
    v142 = v26;
    v143 = v5;
    v144 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_220455E3C();
    memcpy(v164, &v34[*(v59 + 48)], 0x150uLL);
    v145 = v30;
    sub_2204C9F54(v34, v30, type metadata accessor for StockViewModel);
    sub_22049F3B0();
    v136 = sub_220891C1C();
    sub_22088C3DC();
    sub_2204C8D00(0, &qword_28127DFE0, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v60 = *(sub_22088E9EC() - 8);
    v139 = *(v60 + 72);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    v160 = v62;
    *(v62 + 16) = xmmword_220899920;
    v133[1] = v62 + v61;
    v138 = *MEMORY[0x277D74A88];
    v64 = v149;
    v63 = v150;
    v137 = *(v150 + 104);
    v65 = v151;
    v137(v149);
    v66 = sub_22088E9BC();
    v67 = *(v66 - 8);
    v134 = *(v67 + 56);
    v135 = v67 + 56;
    v68 = v152;
    v134(v152, 1, 1, v66);
    v69 = v136;
    v70 = v146;
    sub_22088E96C();
    sub_22088E9CC();
    (*(v147 + 8))(v70, v148);
    v71 = *(v63 + 8);
    v71(v64, v65);
    (v137)(v64, v138, v65);
    v134(v68, 1, 1, v66);
    v72 = v162;
    v73 = v153;
    sub_22088E99C();
    sub_22088E9DC();
    (*(v154 + 8))(v73, v155);
    v71(v64, v65);
    sub_220891E2C();

    v74 = v69;
    v75 = [v74 backgroundView];
    if (v75)
    {
      v76 = v75;
      v77 = [v75 layer];

      [v77 setCornerRadius_];
    }

    v78 = [v74 backgroundView];
    v79 = v158;
    if (v78)
    {
      v80 = v78;
      swift_beginAccess();
      v81 = *(v72 + 128);
      v82 = *(v72 + 136);
      v83 = __swift_project_boxed_opaque_existential_1((v72 + 104), v81);
      v84 = *(v81 - 8);
      v85 = MEMORY[0x28223BE20](v83, v83);
      v87 = v133 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v84 + 16))(v87, v85);
      v88 = (*(*(v82 + 16) + 56))(v81);
      (*(v84 + 8))(v87, v81);
      [v80 setBackgroundColor_];
    }

    sub_22060B4FC(v74, *v164, *(v164 + 1), *&v164[1], *(&v164[1] + 1));
    v89 = sub_22088C42C();
    v90 = *&v89[OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton];

    v91 = *&v90[OBJC_IVAR____TtCC8StocksUI9StockView17PriceChangeButton_onTap];
    v92 = swift_allocObject();
    swift_weakInit();
    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = swift_allocObject();
    *(v94 + 16) = v92;
    *(v94 + 24) = v93;
    v42 = v74;

    v95 = sub_22088C42C();

    swift_allocObject();
    swift_weakInit();
    sub_22088E01C();

    v160 = sub_22088C42C();
    v96 = swift_allocObject();
    swift_weakInit();
    v97 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v99 = v79;
    v100 = *(v79 + 16);
    v101 = v157;
    v102 = v159;
    v100(v157, v156, v159);
    v103 = (*(v99 + 80) + 40) & ~*(v99 + 80);
    v104 = swift_allocObject();
    *(v104 + 2) = v96;
    *(v104 + 3) = v97;
    *(v104 + 4) = v98;
    (*(v99 + 32))(&v104[v103], v101, v102);
    v105 = v160;
    v106 = (v160 + OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions);
    v107 = *(v160 + OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions);
    *v106 = sub_22060CC14;
    v106[1] = v104;

    sub_2204DA45C(v107);

    v108 = swift_allocObject();
    swift_weakInit();
    v109 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110 = v142;
    sub_2204BD6E8(v145, v142, type metadata accessor for StockViewModel);
    v111 = v144;
    sub_2204BD6E8(v110, v144, type metadata accessor for StockViewModel);
    v112 = (*(v140 + 80) + 32) & ~*(v140 + 80);
    v113 = (v141 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = swift_allocObject();
    *(v114 + 16) = v108;
    *(v114 + 24) = v109;
    sub_2204C9F54(v110, v114 + v112, type metadata accessor for StockViewModel);
    memcpy((v114 + v113), v164, 0x150uLL);

    sub_2204DA6C4(v164, v163);
    v115 = sub_22088C45C();
    v116 = swift_allocObject();
    *(v116 + 16) = sub_2204DE1B4;
    *(v116 + 24) = v114;

    v117 = sub_22088C3FC();
    v118 = swift_allocObject();
    *(v118 + 16) = sub_2204DE1B4;
    *(v118 + 24) = v114;

    v119 = sub_22088C40C();
    v120 = swift_allocObject();
    *(v120 + 16) = sub_2204DE1B4;
    *(v120 + 24) = v114;

    v121 = sub_22088C43C();
    v122 = swift_allocObject();
    swift_weakInit();
    v123 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v124 = swift_allocObject();
    v124[2] = v122;
    v124[3] = v123;
    memcpy(v124 + 4, v164, 0x150uLL);
    sub_2204DA6C4(v164, v163);

    sub_2204DA720(v108, v109, v111, v164);

    sub_2204C5E3C(v164);

    sub_2204D6128(v111, type metadata accessor for StockViewModel);
    sub_2204D6128(v145, type metadata accessor for StockViewModel);
  }

  return v42;
}

uint64_t sub_2204C83B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2204C83F0()
{

  return swift_deallocObject();
}

uint64_t sub_2204C8440()
{

  return swift_deallocObject();
}

uint64_t sub_2204C8478()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2204C84B0()
{

  return swift_deallocObject();
}

uint64_t sub_2204C84F0()
{
  sub_22046B36C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2204C85C4()
{
  v1 = type metadata accessor for StockViewModel();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2 + 7;

  v4 = v0 + v2;
  v5 = sub_22088685C();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[5];
  v7 = sub_22088676C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = v3 & 0xFFFFFFFFFFFFFFF8;
  v10 = v4 + v1[6];
  v11 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_220890D8C();
    (*(*(v12 - 8) + 8))(v10, v12);
    v13 = *(v11 + 32);
    v14 = sub_22088665C();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  v15 = v4 + v1[7];

  v16 = type metadata accessor for PriceViewModel();
  v17 = v16[9];
  v18 = sub_2208857EC();
  (*(*(v18 - 8) + 8))(v15 + v17, v18);
  v19 = v16[10];
  v20 = sub_22088699C();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = v16[11];
  v22 = sub_2208852DC();
  (*(*(v22 - 8) + 8))(v15 + v21, v22);
  v23 = v1[8];
  v24 = sub_220885D4C();
  (*(*(v24 - 8) + 8))(v4 + v23, v24);

  v25 = *(v0 + v9 + 320);
  if (v25 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2204C8934()
{

  v1 = *(v0 + 352);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2204C8A28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for StockListChangeWatchlistBlueprintModifier() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2204C8B00(a1, (v2 + v6), *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

id sub_2204C8AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_2204C7130(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2204C8B00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19[2] = a1;
  v19[3] = a3;
  v21 = a4;
  v20 = sub_220885DFC();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[20];
  v19[1] = a2[21];
  v19[0] = __swift_project_boxed_opaque_existential_1(a2 + 17, v14);
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_2208863EC();
  sub_220886A3C();
  (*(v10 + 8))(v13, v9);
  v15 = sub_22088646C();
  (*(v5 + 8))(v8, v20);
  v16 = sub_22088581C();
  result = sub_2208857FC();
  v18 = v21;
  *v21 = v15;
  v18[1] = v16;
  v18[2] = result;
  return result;
}

void sub_2204C8D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204C8D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v117 = a3;
  v6 = sub_22089030C();
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v113 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v104 = &v103 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v105 = &v103 - v15;
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v103 - v22;
  v24 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v111 = *(v28 - 1);
  v112 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22088C6AC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v114 = v35;
  v115 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v39 = (&v103 - v38);
  swift_beginAccess();
  v106 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = *(v33 + 16);
    v110 = a1;
    v108 = v33 + 16;
    v107 = v42;
    v42(v39, a1, v32);
    v43 = (*(v33 + 88))(v39, v32);
    v44 = v43 == *MEMORY[0x277D6DF98];
    v109 = v33;
    if (v44)
    {
      (*(v33 + 96))(v39, v32);
      v45 = *v39;

      v46 = v45;
      sub_22088BF1C();

      sub_2208903FC();
      v48 = v118;
      v47 = v119;
      if ((*(v119 + 48))(v19, 1, v118) == 1)
      {
        v49 = swift_unknownObjectWeakLoadStrong();
        v50 = v110;
        if (v49)
        {
          v112 = v45;
          v51 = v110;
          if (qword_27CF55C28 != -1)
          {
            swift_once();
          }

          v52 = __swift_project_value_buffer(v48, qword_27CF6D288);
          v53 = swift_unknownObjectWeakLoadStrong();
          v54 = v117;
          if (v53)
          {
            v55 = v53;
            v56 = v119;
            v57 = v117;
            v58 = v104;
            (*(v119 + 16))(v104, v52, v48);
            v59 = (*(v56 + 80) + 24) & ~*(v56 + 80);
            v60 = swift_allocObject();
            *(v60 + 16) = v55;
            v61 = v58;
            v54 = v57;
            (*(v56 + 32))(v60 + v59, v61, v48);
            v50 = v110;
            swift_unknownObjectRetain();
            sub_220888FEC();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            v62 = v116;
          }

          else
          {
            swift_unknownObjectRelease();

            v62 = v116;
            v50 = v51;
          }
        }

        else
        {

          v62 = v116;
          v54 = v117;
        }

        goto LABEL_39;
      }

      v67 = *(v47 + 32);
      v67(v113, v19, v48);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v68 = swift_unknownObjectWeakLoadStrong();
        if (v68)
        {
          v69 = v68;
          v71 = v119 + 16;
          v70 = *(v119 + 16);
          v112 = v45;
          v72 = v104;
          v70(v104, v113, v118);
          v73 = (*(v71 + 64) + 24) & ~*(v71 + 64);
          v74 = swift_allocObject();
          *(v74 + 16) = v69;
          v75 = v74 + v73;
          v48 = v118;
          v76 = v72;
          v45 = v112;
          v67(v75, v76, v118);
          swift_unknownObjectRetain();
          sub_220888FEC();

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v77 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v78 = swift_allocObject();
      v62 = v116;
      v54 = v117;
      v78[2] = v117;
      v78[3] = v62;
      v78[4] = v77;

      (*(v119 + 8))(v113, v48);
    }

    else
    {
      v63 = *MEMORY[0x277D6DF90];
      v113 = v32;
      v64 = v118;
      if (v43 != v63)
      {
        if (v43 != *MEMORY[0x277D6DFA0])
        {
          sub_22089267C();
          __break(1u);
          return;
        }

        sub_22088B6BC();
        v121 = aBlock[0];
        sub_22045BB28(0);
        sub_22046F734(&qword_281297C90, sub_22045BB28);
        sub_22088BF9C();

        type metadata accessor for StockListModel(0);
        sub_22045B950();
        sub_22046F734(&qword_281293CD8, type metadata accessor for StockListModel);
        sub_22088BEEC();
        (*(v111 + 8))(v31, v112);
        sub_22088BF1C();

        sub_22088867C();
        sub_2204CE544(v27);
        sub_2204AB5DC(v27, type metadata accessor for StockListSelectionModel);
        v54 = v117;
        if (qword_281298C00 != -1)
        {
          swift_once();
        }

        LOBYTE(aBlock[0]) = 2;
        sub_2208883FC();
        v79 = sub_2204D0EE0();
        v80 = swift_unknownObjectWeakLoadStrong();
        v62 = v116;
        v50 = v110;
        v32 = v113;
        if (v79)
        {
          if (v80)
          {
            type metadata accessor for StockListInteractor();

            sub_220789A70();

            swift_unknownObjectRelease();
          }
        }

        else
        {
          v92 = v110;
          if (v80)
          {
            type metadata accessor for StockListInteractor();

            sub_220789BE4();

            swift_unknownObjectRelease();
          }

          v93 = *(*(v41 + *(*v41 + 120)) + 120);
          ObjectType = swift_getObjectType();
          v95 = *(v93 + 24);
          swift_unknownObjectRetain();
          v95(ObjectType, v93);
          swift_unknownObjectRelease();

          v32 = v113;
          v50 = v92;
        }

        goto LABEL_39;
      }

      sub_22088B6BC();
      v121 = aBlock[0];
      sub_22045BB28(0);
      sub_22046F734(&qword_281297C90, sub_22045BB28);
      sub_22088BF9C();

      type metadata accessor for StockListModel(0);
      sub_22045B950();
      sub_22046F734(&qword_281293CD8, type metadata accessor for StockListModel);
      sub_22088BEEC();
      (*(v111 + 8))(v31, v112);
      sub_22088BF1C();

      sub_2208903FC();
      v65 = v119;
      if ((*(v119 + 48))(v23, 1, v64) == 1)
      {
        v66 = swift_unknownObjectWeakLoadStrong();
        v62 = v116;
        v54 = v117;
        v50 = v110;
        if (v66)
        {
          type metadata accessor for StockListInteractor();

          sub_220789A70();

          swift_unknownObjectRelease();
        }

        v32 = v113;
        if (qword_281298C00 != -1)
        {
          swift_once();
        }

        LOBYTE(aBlock[0]) = 2;
        sub_2208883FC();
        goto LABEL_39;
      }

      v81 = *(v65 + 32);
      v81(v105, v23, v64);
      v82 = swift_unknownObjectWeakLoadStrong();
      v54 = v117;
      if (v82)
      {
        v83 = swift_unknownObjectWeakLoadStrong();
        if (v83)
        {
          v84 = v83;
          v85 = v119 + 16;
          v86 = v104;
          (*(v119 + 16))(v104, v105, v64);
          v87 = (*(v85 + 64) + 24) & ~*(v85 + 64);
          v88 = swift_allocObject();
          *(v88 + 16) = v84;
          v89 = v88 + v87;
          v54 = v117;
          v81(v89, v86, v64);
          swift_unknownObjectRetain();
          sub_220888FEC();

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v90 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v91 = swift_allocObject();
      v62 = v116;
      v91[2] = v54;
      v91[3] = v62;
      v91[4] = v90;

      (*(v119 + 8))(v105, v64);
      v32 = v113;
    }

    v50 = v110;
LABEL_39:
    v96 = [objc_opt_self() sharedApplication];
    v97 = v115;
    v107(v115, v50, v32);
    v98 = v109;
    v99 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v100 = (v114 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    *(v101 + 16) = v54;
    *(v101 + 24) = v62;
    (*(v98 + 32))(v101 + v99, v97, v32);
    *(v101 + v100) = v41;
    aBlock[4] = sub_2204E5090;
    aBlock[5] = v101;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_139;
    v102 = _Block_copy(aBlock);

    [v96 su:v102 performBlockAfterCATransactionCommits:?];
    _Block_release(v102);
  }
}

uint64_t sub_2204C9D60()
{
  v1 = sub_22088C6AC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2204C9E28(__int128 *a1)
{
  v3 = *(type metadata accessor for StockListChangeWatchlistBlueprintModifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_22045BC08(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = v1 + ((*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2204CA048(a1, v1 + v4, v1 + v7, *v8, *(v8 + 8));
}

uint64_t sub_2204C9F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204C9FBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204CA048(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v155 = a5;
  v156 = a4;
  v149 = a3;
  sub_22045BC08(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v154 = v7;
  v153 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v152 = &v133 - v9;
  sub_22047572C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v147 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BC08(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v151 = v13;
  v150 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v148 = &v133 - v15;
  sub_22046B2A0();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v157 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v158 = *(v19 - 8);
  v159 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v138 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v135 = &v133 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v136 = &v133 - v27;
  v28 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v142 = (&v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v31, v32);
  v139 = (&v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22046B36C();
  v162 = *(v34 - 8);
  v163 = v34;
  MEMORY[0x28223BE20](v34, v35);
  v134 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v143 = &v133 - v39;
  v169 = sub_22088685C();
  v40 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v41);
  v168 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_220886A4C();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v43);
  v45 = &v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = *a1;
  v137 = *(a1 + 2);
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_2208863EC();
  sub_22048D7F8();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22089B140;
  v164 = v45;
  v47 = sub_220886A0C();
  v49 = v48;
  *(v46 + 56) = MEMORY[0x277D837D0];
  v140 = sub_22048D860();
  *(v46 + 64) = v140;
  *(v46 + 32) = v47;
  *(v46 + 40) = v49;
  v50 = v160;
  v51 = *(v160 + 16);
  v52 = MEMORY[0x277D83C10];
  *(v46 + 96) = MEMORY[0x277D83B88];
  *(v46 + 104) = v52;
  v141 = v46;
  *(v46 + 72) = v51;
  *&v170 = 0;
  *(&v170 + 1) = 0xE000000000000000;
  v53 = MEMORY[0x277D84F90];
  v161 = v31;
  v144 = v50;
  if (v51)
  {
    v133 = a2;
    v174 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v51, 0);
    v53 = v174;
    v55 = *(v40 + 16);
    v54 = v40 + 16;
    v56 = v50 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v166 = *(v54 + 56);
    v167 = v55;
    v165 = (v54 - 8);
    do
    {
      v58 = v168;
      v57 = v169;
      v59 = v54;
      v167(v168, v56, v169);
      v60 = sub_22088681C();
      v62 = v61;
      (*v165)(v58, v57);
      v174 = v53;
      v64 = *(v53 + 16);
      v63 = *(v53 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_22048EE54((v63 > 1), v64 + 1, 1);
        v53 = v174;
      }

      *(v53 + 16) = v64 + 1;
      v65 = v53 + 16 * v64;
      *(v65 + 32) = v60;
      *(v65 + 40) = v62;
      v56 += v166;
      --v51;
      v54 = v59;
    }

    while (v51);
    a2 = v133;
  }

  v66 = v142;
  v174 = v53;
  sub_2204ADED0();
  sub_2204B67F4(&qword_28127E9B0, sub_2204ADED0);
  v67 = sub_2208912CC();
  v69 = v68;

  MEMORY[0x223D89680](v67, v69);

  v70 = v170;
  v71 = v141;
  v72 = v140;
  *(v141 + 136) = MEMORY[0x277D837D0];
  *(v71 + 144) = v72;
  *(v71 + 112) = v70;
  sub_22048D2F4();
  v73 = sub_2208922DC();
  sub_220891AFC();
  sub_22088A7EC();

  v74 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  __swift_project_boxed_opaque_existential_1((a2 + *(v74 + 48)), *(a2 + *(v74 + 48) + 24));
  if (sub_22088618C())
  {
    v75 = a2;
    v76 = MEMORY[0x277D84F90];
  }

  else
  {
    v77 = *(v74 + 40);
    v78 = v66;
    v75 = a2;
    sub_2204C6B7C(a2 + v77, v78, type metadata accessor for AttributionSource);
    v79 = sub_2204ADF20(v78);
    v80 = v139;
    *v139 = v79;
    v80[1] = v81;
    v80[2] = v82;
    v80[3] = v83;
    swift_storeEnumTagMultiPayload();
    sub_2204B67F4(&qword_281293CD8, type metadata accessor for StockListModel);
    v84 = v143;
    sub_22088AD7C();
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    v173 = 2;
    sub_2204ABD88(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
    v85 = v162;
    v86 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_220899360;
    v88 = v84;
    v89 = v163;
    (*(v85 + 16))(v87 + v86, v88, v163);
    v90 = sub_2204B67F4(&qword_281297F88, sub_22046B36C);
    v91 = sub_2204B67F4(&unk_281297F90, sub_22046B36C);
    MEMORY[0x223D80A20](v87, v89, v90, v91);
    sub_22045B950();
    v92 = v136;
    sub_22088B29C();
    v76 = sub_2204AE514(0, 1, 1, MEMORY[0x277D84F90]);
    v94 = v76[2];
    v93 = v76[3];
    if (v94 >= v93 >> 1)
    {
      v76 = sub_2204AE514(v93 > 1, v94 + 1, 1, v76);
    }

    (*(v162 + 8))(v143, v163);
    v76[2] = v94 + 1;
    (*(v158 + 32))(v76 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v94, v92, v159);
  }

  v95 = sub_2208869DC();
  v97 = v96;
  v98 = sub_2208869BC();
  v100 = v99;
  __swift_project_boxed_opaque_existential_1((v75 + 16), *(v75 + 40));
  v101 = sub_220885FCC();
  v102 = sub_22088F0DC();
  if ((v102 & 1) != 0 && *(v101 + 16) <= 1uLL)
  {

    v95 = 0;
    v97 = 0;
    v98 = 0;
    v100 = 0;
    v101 = 0;
  }

  if (*(v144 + 16))
  {
    MEMORY[0x28223BE20](v102, v103);
    *(&v133 - 3) = v160;
    *(&v133 - 4) = v137;
    *(&v133 - 3) = v75;
    v132 = v164;
    v105 = sub_2204AE548(sub_2204CC9DC, (&v133 - 8), v104);
    *&v170 = v95;
    *(&v170 + 1) = v97;
    *&v171 = v98;
    *(&v171 + 1) = v100;
    v172 = v101;
    v173 = 0;
    v106 = sub_2204B67F4(&qword_281297F88, sub_22046B36C);
    v107 = sub_2204B67F4(&unk_281297F90, sub_22046B36C);
    MEMORY[0x223D80A20](v105, v163, v106, v107);
    sub_22045B950();
    sub_2204B67F4(&qword_281293CD8, type metadata accessor for StockListModel);
    v108 = v138;
    sub_22088B29C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_2204AE514(0, v76[2] + 1, 1, v76);
    }

    v109 = v148;
    v111 = v76[2];
    v110 = v76[3];
    v112 = v111 + 1;
    if (v111 >= v110 >> 1)
    {
      v76 = sub_2204AE514(v110 > 1, v111 + 1, 1, v76);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2204B67F4(&qword_281293CD8, type metadata accessor for StockListModel);
    v113 = v95;
    v114 = v134;
    sub_22088AD7C();
    *&v170 = v113;
    *(&v170 + 1) = v97;
    *&v171 = v98;
    *(&v171 + 1) = v100;
    v172 = v101;
    v173 = 1;
    sub_2204ABD88(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
    v115 = v162;
    v116 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_220899360;
    v118 = v163;
    (*(v115 + 16))(v117 + v116, v114, v163);
    v119 = sub_2204B67F4(&qword_281297F88, sub_22046B36C);
    v120 = sub_2204B67F4(&unk_281297F90, sub_22046B36C);
    MEMORY[0x223D80A20](v117, v118, v119, v120);
    sub_22045B950();
    v108 = v135;
    sub_22088B29C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_2204AE514(0, v76[2] + 1, 1, v76);
    }

    v109 = v148;
    v111 = v76[2];
    v121 = v76[3];
    v112 = v111 + 1;
    if (v111 >= v121 >> 1)
    {
      v76 = sub_2204AE514(v121 > 1, v111 + 1, 1, v76);
    }

    (*(v162 + 8))(v114, v163);
  }

  v76[2] = v112;
  v122 = v159;
  (*(v158 + 32))(v76 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v111, v108, v159);
  v123 = sub_2204B67F4(&qword_281297DC8, sub_22046B19C);
  v124 = sub_2204B67F4(&qword_281297DD0, sub_22046B19C);
  MEMORY[0x223D80A20](v76, v122, v123, v124);
  sub_22045B950();
  v125 = sub_2204B67F4(&qword_281293CD8, type metadata accessor for StockListModel);
  sub_22088E7CC();
  sub_2204CD300();
  sub_22088BDEC();
  __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
  if (sub_22088B65C())
  {
    v126 = v153;
    v127 = v152;
    v128 = v154;
    (*(v153 + 104))(v152, *MEMORY[0x277D6DF80], v154);
    v129 = v156;
  }

  else
  {
    v132 = v125;
    v127 = v152;
    sub_22088C66C();
    v129 = v156;
    v128 = v154;
    v126 = v153;
  }

  v130 = v151;
  v129(v127);
  (*(v126 + 8))(v127, v128);
  (*(v150 + 8))(v109, v130);
  __swift_destroy_boxed_opaque_existential_1(&v170);
  return (*(v145 + 8))(v164, v146);
}

char *sub_2204CB2B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2204B1EDC(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_2204CB3F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15 = OBJC_IVAR____TtC8StocksUI9StockView_priceLabel;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton;
  *&v5[v16] = sub_2204D673C();
  v17 = OBJC_IVAR____TtC8StocksUI9StockView_sparklineView;
  *&v5[v17] = [objc_allocWithZone(type metadata accessor for StockSparklineView()) initWithFrame_];
  *&v5[OBJC_IVAR____TtC8StocksUI9StockView_axElement] = 0;
  v5[OBJC_IVAR____TtC8StocksUI9StockView_isSelected] = 0;
  *&v5[OBJC_IVAR____TtC8StocksUI9StockView_revision] = 0;
  v18 = OBJC_IVAR____TtC8StocksUI9StockView_isEditing;
  LOBYTE(v40[0]) = 0;
  sub_2204D05C8(0, &qword_2812971A0, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *&v5[v18] = sub_22088DFFC();
  v19 = &v5[OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions];
  *v19 = 0;
  v19[1] = 0;
  *&v5[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityPriceString] = 0;
  v20 = &v5[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v5[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName];
  *v21 = 0;
  v21[1] = 0;
  v5[OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType] = 1;
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4, v40[0]);
  v23 = OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel;
  v24 = *&v22[OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel];
  v25 = v22;
  [v25 addSubview_];
  v26 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabel;
  [v25 addSubview_];
  v27 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong;
  [v25 addSubview_];
  v28 = OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel;
  [v25 addSubview_];
  [v25 addSubview_];
  v29 = OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton;
  [v25 addSubview_];
  [v25 addSubview_];
  [*&v22[v23] setNumberOfLines_];
  [*&v25[v26] setNumberOfLines_];
  [*&v25[v27] setNumberOfLines_];
  [*&v25[v28] setNumberOfLines_];
  [*&v25[v28] setAlpha_];
  [*&v25[v27] setAlpha_];
  v30 = [*&v25[v29] titleLabel];
  if (v30)
  {
    v31 = v30;
    [v30 setTextAlignment_];
  }

  v32 = type metadata accessor for StockView.StockViewAXElement();
  v33 = objc_allocWithZone(v32);
  swift_unknownObjectWeakInit();
  v41.receiver = v33;
  v41.super_class = v32;
  v34 = v25;
  v35 = objc_msgSendSuper2(&v41, sel_initWithAccessibilityContainer_, v34);
  swift_unknownObjectWeakAssign();
  v36 = *&v34[OBJC_IVAR____TtC8StocksUI9StockView_axElement];
  *&v34[OBJC_IVAR____TtC8StocksUI9StockView_axElement] = v35;

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v40[4] = sub_22078E390;
  v40[5] = v37;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1107296256;
  v40[2] = sub_22078C6DC;
  v40[3] = &block_descriptor_44;
  v38 = _Block_copy(v40);

  [v34 setAccessibilityElementsBlock_];
  _Block_release(v38);

  return v34;
}

uint64_t sub_2204CB8DC()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2204CB914@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(char *, uint64_t (*)(uint64_t), uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v142 = a6;
  v160 = a5;
  v139 = a4;
  v132 = a2;
  v146 = a7;
  v145 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v145, v9);
  v144 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v141, v11);
  v143 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208852DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2208857EC();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v18);
  v135 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088699C();
  v136 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v155 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v154 = &v127 - v25;
  v26 = sub_220885D4C();
  v156 = *(v26 - 8);
  v157 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v152 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22088685C();
  v153 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v29);
  v164 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v148, v31);
  v162 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x277D83D88];
  sub_2204ABD88(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v151 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v127 - v39;
  sub_2204ABD88(0, &qword_2812990C0, MEMORY[0x277D697F8], v33);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v134 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v133 = &v127 - v46;
  MEMORY[0x28223BE20](v47, v48);
  v131 = &v127 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v130 = &v127 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v149 = &v127 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v150 = &v127 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v127 - v61;
  v63 = sub_22088681C();
  v65 = *(a3 + 16);
  v159 = v13;
  v140 = v14;
  v163 = v17;
  v158 = v20;
  v147 = v62;
  if (v65)
  {
    v127 = a1;
    v66 = sub_2204AF97C(v63, v64);
    v67 = a3;
    v69 = v68;

    if (v69)
    {
      v70 = *(v67 + 56);
      v71 = sub_22088676C();
      v72 = *(v71 - 8);
      v73 = v72;
      v74 = *(v72 + 72);
      v75 = *(v72 + 16);
      v129 = (v71 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v62 = v147;
      v75(v147, v70 + v74 * v66, v71);
      v76 = *(v73 + 56);
      v128 = v71;
      v76(v62, 0, 1, v71);
    }

    else
    {
      v79 = sub_22088676C();
      v80 = *(*(v79 - 8) + 56);
      v129 = (v79 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v62 = v147;
      v128 = v79;
      v80(v147, 1, 1);
    }

    a1 = v127;
  }

  else
  {

    v77 = sub_22088676C();
    v78 = *(*(v77 - 8) + 56);
    v129 = (v77 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v128 = v77;
    v78(v62, 1, 1);
  }

  v81 = v160;
  sub_2204CCA04(v139, a1, v160, v62, v40);
  v132 = *(v153 + 16);
  v132(v164, a1, v161);
  v82 = MEMORY[0x277D697F8];
  v83 = v150;
  sub_2204B277C(v62, v150, &qword_2812990C0, MEMORY[0x277D697F8]);
  v127 = type metadata accessor for StockSparklineViewModel;
  v139 = v40;
  v84 = v151;
  sub_2204B277C(v40, v151, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v85 = type metadata accessor for StockListChangeWatchlistBlueprintModifier();
  v86 = v157;
  v87 = *(v156 + 16);
  v88 = v152;
  v87(v152, v81 + *(v85 + 36), v157);
  v89 = v162;
  v132(v162, v164, v161);
  v90 = v148;
  sub_2204B277C(v83, v89 + *(v148 + 20), &qword_2812990C0, v82);
  sub_2204B277C(v84, v89 + v90[6], qword_28128AAE8, v127);
  v87((v89 + v90[8]), v88, v86);
  *(v89 + v90[9]) = 0;
  v91 = v149;
  sub_2204B277C(v83, v149, &qword_2812990C0, v82);
  v92 = v154;
  sub_2208867CC();
  v93 = v130;
  sub_2204B277C(v91, v130, &qword_2812990C0, v82);
  sub_22088676C();
  v94 = v128;
  v95 = *(v128 - 8);
  v96 = *(v95 + 48);
  if (v96(v93, 1, v128) == 1)
  {
    sub_2204B38F8(v93, &qword_2812990C0, MEMORY[0x277D697F8]);
    v132 = 0;
    LODWORD(v129) = 1;
  }

  else
  {
    v132 = sub_22088675C();
    LODWORD(v129) = v97;
    (*(v95 + 8))(v93, v94);
  }

  v98 = v134;
  v99 = v131;
  sub_2204B277C(v91, v131, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v99, 1, v94) == 1)
  {
    sub_2204B38F8(v99, &qword_2812990C0, MEMORY[0x277D697F8]);
    v134 = 0;
    LODWORD(v131) = 1;
  }

  else
  {
    v134 = sub_22088666C();
    LODWORD(v131) = v100;
    (*(v95 + 8))(v99, v94);
  }

  v101 = v133;
  sub_2204B277C(v91, v133, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v101, 1, v94) == 1)
  {
    sub_2204B38F8(v101, &qword_2812990C0, MEMORY[0x277D697F8]);
    v133 = 0;
    LODWORD(v130) = 1;
  }

  else
  {
    v133 = sub_22088671C();
    LODWORD(v130) = v102;
    (*(v95 + 8))(v101, v94);
  }

  sub_2204B277C(v91, v98, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v98, 1, v94) == 1)
  {
    sub_2204B38F8(v98, &qword_2812990C0, MEMORY[0x277D697F8]);
    v128 = 0;
    v103 = 0;
  }

  else
  {
    v128 = sub_22088668C();
    v103 = v104;
    (*(v95 + 8))(v98, v94);
  }

  v105 = v155;
  v106 = &v162[*(v148 + 28)];
  v107 = v136;
  v148 = *(v136 + 16);
  v108 = v158;
  (v148)(v155, v92, v158);
  v109 = v137;
  v110 = v135;
  v111 = v138;
  (*(v137 + 104))(v135, *MEMORY[0x277D69288], v138);
  sub_22088524C();
  *v106 = v132;
  v106[8] = v129 & 1;
  *(v106 + 2) = v134;
  v106[24] = v131 & 1;
  *(v106 + 4) = v133;
  v106[40] = v130 & 1;
  *(v106 + 6) = v128;
  *(v106 + 7) = v103;
  v112 = type metadata accessor for PriceViewModel();
  (v148)(&v106[v112[10]], v105, v108);
  v113 = v109;
  *(v106 + 8) = 9666786;
  *(v106 + 9) = 0xA300000000000000;
  (*(v109 + 16))(&v106[v112[9]], v110, v111);
  v114 = v140;
  (*(v140 + 16))(&v106[v112[11]], v163, v159);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v115 = qword_2812B6B48;
  (*(v113 + 8))(v110, v111);
  v116 = *(v107 + 8);
  v117 = v158;
  v116(v155, v158);
  v116(v154, v117);
  v118 = MEMORY[0x277D697F8];
  sub_2204B38F8(v149, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v156 + 8))(v152, v157);
  sub_2204B38F8(v151, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B38F8(v150, &qword_2812990C0, v118);
  (*(v153 + 8))(v164, v161);
  v119 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v114 + 40))(v115 + v119, v163, v159);
  swift_endAccess();
  v120 = v162;
  v121 = v143;
  sub_2204C6B7C(v162, v143, type metadata accessor for StockViewModel);
  __swift_project_boxed_opaque_existential_1((v160 + 16), *(v160 + 40));
  LOBYTE(v119) = sub_22088602C();
  v122 = sub_2208869BC();
  v123 = v141;
  *(v121 + *(v141 + 20)) = v119 & 1;
  v124 = (v121 + *(v123 + 24));
  *v124 = v122;
  v124[1] = v125;
  sub_2204C6B7C(v121, v144, type metadata accessor for StockListStockModel);
  swift_storeEnumTagMultiPayload();
  sub_2204B67F4(&qword_281293CD8, type metadata accessor for StockListModel);
  sub_22088AD7C();
  sub_2204B3E3C(v121, type metadata accessor for StockListStockModel);
  sub_2204B3E3C(v120, type metadata accessor for StockViewModel);
  sub_2204B38F8(v139, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  return sub_2204B38F8(v147, &qword_2812990C0, v118);
}

uint64_t sub_2204CCA04@<X0>(uint64_t a1@<X2>, NSObject *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v78 = a4;
  v79 = a5;
  v72 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_2204ABD88(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v71 = &v64[-v14];
  sub_2204ABD88(0, &qword_28127EDE8, MEMORY[0x277D6C680], v7);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v64[-v17];
  v19 = sub_220890D8C();
  v20 = *(v19 - 8);
  v76 = v19;
  v77 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v75 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v24);
  v73 = &v64[-v25];
  v26 = sub_22088665C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v74 = &v64[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v64[-v32];
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v64[-v36];
  v38 = sub_22088681C();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v70 = v11;
  v40 = sub_2204AF97C(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_6:
    v47 = type metadata accessor for StockSparklineViewModel(0);
    return (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
  }

  v43 = *(v27 + 16);
  v43(v33, *(a1 + 56) + *(v27 + 72) * v40, v26);
  v69 = *(v27 + 32);
  v69(v37, v33, v26);
  __swift_project_boxed_opaque_existential_1((v72 + 96), *(v72 + 120));
  v44 = v78;
  sub_2204B0174(v37, v78, a2, v18, 0.02);
  v45 = v76;
  v46 = v77;
  if ((*(v77 + 48))(v18, 1, v76) == 1)
  {
    (*(v27 + 8))(v37, v26);
    sub_2204B38F8(v18, &qword_28127EDE8, MEMORY[0x277D6C680]);
    goto LABEL_6;
  }

  v72 = v27 + 32;
  v49 = v73;
  v67 = *(v46 + 32);
  v68 = v46 + 32;
  v67(v73, v18, v45);
  (*(v46 + 16))(v75, v49, v45);
  v43(v74, v37, v26);
  v50 = v71;
  sub_2204B277C(v44, v71, &qword_2812990C0, MEMORY[0x277D697F8]);
  v51 = sub_22088676C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  if (v53(v50, 1, v51) == 1)
  {
    sub_2204B38F8(v50, &qword_2812990C0, MEMORY[0x277D697F8]);
    v66 = 0;
    v65 = 1;
  }

  else
  {
    v66 = sub_22088675C();
    v65 = v54;
    (*(v52 + 8))(v50, v51);
  }

  v55 = v70;
  sub_2204B277C(v78, v70, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v53(v55, 1, v51) == 1)
  {
    (*(v77 + 8))(v73, v45);
    (*(v27 + 8))(v37, v26);
    sub_2204B38F8(v55, &qword_2812990C0, MEMORY[0x277D697F8]);
    v56 = v45;
    v57 = 0;
    v58 = 1;
  }

  else
  {
    v56 = v45;
    v57 = sub_22088666C();
    v58 = v59;
    (*(v77 + 8))(v73, v56);
    (*(v27 + 8))(v37, v26);
    (*(v52 + 8))(v55, v51);
  }

  v60 = v79;
  v67(v79, v75, v56);
  v61 = type metadata accessor for StockSparklineViewModel(0);
  v69(&v60[v61[8]], v74, v26);
  v62 = &v60[v61[5]];
  *v62 = v66;
  v62[8] = v65 & 1;
  v63 = &v60[v61[6]];
  *v63 = v57;
  v63[8] = v58 & 1;
  v60[v61[7]] = 0;
  return (*(*(v61 - 1) + 56))(v60, 0, 1, v61);
}

unint64_t sub_2204CD300()
{
  result = qword_281288A58;
  if (!qword_281288A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281288A58);
  }

  return result;
}

uint64_t sub_2204CD3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v41 - v14;
  sub_2204CD81C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v19[*(v20 + 56)];
  sub_2204B40F4(a1, v19, type metadata accessor for StockListModel);
  sub_2204B40F4(a2, v21, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2204B40F4(v19, v15, type metadata accessor for StockListModel);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2204CDB9C(v21, v7);
      if ((sub_2204CDC64(v15, v7) & 1) != 0 && v15[*(v4 + 20)] == v7[*(v4 + 20)])
      {
        v35 = *(v4 + 24);
        v36 = *&v15[v35];
        v37 = *&v15[v35 + 8];
        v38 = &v7[v35];
        v39 = v36 == *v38 && v37 == *(v38 + 1);
        if (v39 || (sub_2208928BC() & 1) != 0)
        {
          sub_2204AE394(v7, type metadata accessor for StockListStockModel);
          sub_2204AE394(v15, type metadata accessor for StockListStockModel);
          goto LABEL_33;
        }
      }

      sub_2204AE394(v7, type metadata accessor for StockListStockModel);
      sub_2204AE394(v15, type metadata accessor for StockListStockModel);
LABEL_26:
      v34 = 0;
LABEL_34:
      v32 = type metadata accessor for StockListModel;
      goto LABEL_35;
    }

    sub_2204AE394(v15, type metadata accessor for StockListStockModel);
LABEL_20:
    v34 = 0;
    v32 = sub_2204CD81C;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2204B40F4(v19, v11, type metadata accessor for StockListModel);
    v24 = *v11;
    v23 = v11[1];
    v26 = v11[2];
    v25 = v11[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(v21 + 2);
      v27 = *(v21 + 3);
      v29 = v24 == *v21 && v23 == *(v21 + 1);
      if (v29 || (sub_2208928BC() & 1) != 0)
      {
        if (v26 != v28 || v25 != v27)
        {
          v31 = sub_2208928BC();

          v32 = type metadata accessor for StockListModel;
          if (v31)
          {
            goto LABEL_18;
          }

          goto LABEL_26;
        }

LABEL_33:
        v34 = 1;
        goto LABEL_34;
      }

      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v33 = swift_getEnumCaseMultiPayload();
  v32 = type metadata accessor for StockListModel;
  if (v33 != 2)
  {
    goto LABEL_20;
  }

LABEL_18:
  v34 = 1;
LABEL_35:
  sub_2204AE394(v19, v32);
  return v34;
}

void sub_2204CD81C()
{
  if (!qword_281293C08[0])
  {
    type metadata accessor for StockListModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281293C08);
    }
  }
}

uint64_t sub_2204CD8D0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_2204CD91C(&v5, &v7) & 1;
}

uint64_t sub_2204CD91C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *a1;
  v7 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      if (v7)
      {
        if (v2)
        {
          goto LABEL_10;
        }
      }

      else if (!v2)
      {
LABEL_28:
        sub_2204CF2E4(*a2, 0);
        goto LABEL_29;
      }

      sub_2205C4F30(a2, v21);
      sub_2205C4F30(a1, v21);
      sub_2204BE768(v8, v7);
      v15 = v3;
      v16 = v2;
      goto LABEL_25;
    }

LABEL_26:
    v13 = 0;
    return v13 & 1;
  }

  if (*(a1 + 40) != 1)
  {
    if (v12 != 2 || v2 | v3 | v5 | v4 | v6)
    {
      goto LABEL_26;
    }

LABEL_29:
    v13 = 1;
    return v13 & 1;
  }

  if (v12 != 1)
  {
    goto LABEL_26;
  }

  if (!v7)
  {
    if (v2)
    {
LABEL_21:
      sub_2205C4F30(a2, v21);
      sub_2205C4F30(a1, v21);
      sub_2204BE768(v8, v7);
      v15 = v3;
      v16 = v2;
LABEL_25:
      sub_2204BE768(v15, v16);
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v8 != v3 || v7 != v2) && (sub_2208928BC() & 1) == 0 || (v10 != v5 || v9 != v4) && (sub_2208928BC() & 1) == 0)
  {
    sub_2205C4F30(a2, v21);
    sub_2205C4F30(a1, v21);

    sub_2205C4F68(a1);
    goto LABEL_26;
  }

  sub_2205C4F30(a2, v21);
  sub_2205C4F30(a1, v21);
  v13 = sub_22063B1AC(v11, v6);

  sub_2205C4F68(a1);
  return v13 & 1;
}

uint64_t sub_2204CDB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListStockModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204CDC68(uint64_t a1, uint64_t a2)
{
  sub_2204B1AFC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v75 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v74 = &v69 - v11;
  v12 = type metadata accessor for StockSparklineViewModel(0);
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454138(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v76 = &v69 - v17;
  sub_2204CF0F0(0, &qword_28128AAE0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v77 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v80 = &v69 - v20;
  v21 = sub_22088676C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D697F8];
  sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v69 - v29;
  sub_2204CF0F0(0, &qword_2812990A8, &qword_2812990C0, v26);
  v32 = v31;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v69 - v35;
  if ((MEMORY[0x223D7E940](a1, a2, v34) & 1) == 0)
  {
    return 0;
  }

  v69 = v6;
  v70 = v5;
  v37 = type metadata accessor for StockViewModel();
  v38 = a2;
  v39 = *(v37 + 20);
  v40 = a1;
  v41 = *(v32 + 48);
  v42 = MEMORY[0x277D697F8];
  v71 = v40;
  v72 = v37;
  sub_2204B28E8(v40 + v39, v36, &qword_2812990C0, MEMORY[0x277D697F8]);
  v43 = v38 + v39;
  v44 = v38;
  sub_2204B28E8(v43, &v36[v41], &qword_2812990C0, v42);
  v45 = *(v22 + 48);
  if (v45(v36, 1, v21) == 1)
  {
    if (v45(&v36[v41], 1, v21) == 1)
    {
      sub_2204B3B04(v36, &qword_2812990C0, MEMORY[0x277D697F8]);
      goto LABEL_9;
    }

LABEL_7:
    v46 = &qword_2812990A8;
    v47 = &qword_2812990C0;
    v48 = MEMORY[0x277D697F8];
    v49 = v36;
LABEL_15:
    sub_2206BA97C(v49, v46, v47, v48);
    return 0;
  }

  sub_2204B28E8(v36, v30, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v45(&v36[v41], 1, v21) == 1)
  {
    (*(v22 + 8))(v30, v21);
    goto LABEL_7;
  }

  (*(v22 + 32))(v25, &v36[v41], v21);
  sub_2204CF1C8(&qword_2812990C8, MEMORY[0x277D697F8]);
  v50 = sub_2208912FC();
  v51 = *(v22 + 8);
  v51(v25, v21);
  v51(v30, v21);
  sub_2204B3B04(v36, &qword_2812990C0, MEMORY[0x277D697F8]);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v52 = v71;
  v53 = v72;
  v54 = *(v72 + 24);
  v55 = *(v77 + 48);
  v56 = v80;
  sub_2204B28E8(v71 + v54, v80, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B28E8(v38 + v54, v56 + v55, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v57 = v79;
  v58 = *(v78 + 48);
  if (v58(v56, 1, v79) != 1)
  {
    v59 = v76;
    sub_2204B28E8(v56, v76, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    if (v58(v56 + v55, 1, v57) != 1)
    {
      v61 = v73;
      sub_2204C31E8(v56 + v55, v73);
      v62 = v74;
      sub_220890D7C();
      v63 = v75;
      sub_220890D7C();
      sub_220890E5C();
      v64 = MEMORY[0x277D6C6B0];
      sub_2204CF1C8(&qword_28127EDB8, MEMORY[0x277D6C6B0]);
      sub_2204CF1C8(&qword_28127EDC8, v64);
      sub_2204CF1C8(&qword_28127EDC0, v64);
      v65 = sub_22089116C();
      v66 = v70;
      v67 = *(v69 + 8);
      v67(v63, v70);
      v68 = v62;
      v53 = v72;
      v67(v68, v66);
      sub_2204DE244(v61);
      sub_2204DE244(v76);
      sub_2204B3B04(v56, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      if ((v65 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    sub_2204DE244(v59);
    goto LABEL_14;
  }

  if (v58(v56 + v55, 1, v57) != 1)
  {
LABEL_14:
    v46 = &qword_28128AAE0;
    v47 = qword_28128AAE8;
    v48 = type metadata accessor for StockSparklineViewModel;
    v49 = v56;
    goto LABEL_15;
  }

  sub_2204B3B04(v56, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
LABEL_19:
  if (sub_2204DE2A0(v52 + *(v53 + 28), v44 + *(v53 + 28)))
  {
    sub_220885D4C();
    sub_2204CF1C8(&qword_2812992E0, MEMORY[0x277D69488]);
    sub_22089167C();
    sub_22089167C();
    if (v82 == v81)
    {
      return (*(v52 + *(v53 + 36)) == 2) ^ (*(v44 + *(v53 + 36)) != 2);
    }
  }

  return 0;
}

uint64_t sub_2204CE544(uint64_t a1)
{
  v93 = *v1;
  sub_22045987C(0);
  v84 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for StockListToolbarModel();
  MEMORY[0x28223BE20](v90, v6);
  v91 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v80 = &v71 - v10;
  v82 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v82, v11);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v81 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v89 = v16;
  v87 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v86 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v88 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v92 = v22;
  v85 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22088685C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for StockListSelectionModel();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31 - 8, v34);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v71 - v37;
  sub_22047939C(a1, &v71 - v37, type metadata accessor for StockListSelectionModel);
  v39 = (*(v27 + 48))(v38, 2, v26);
  if (v39)
  {
    if (v39 == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = v91;
        swift_storeEnumTagMultiPayload();
        sub_22078997C();
        swift_unknownObjectRelease();
        sub_2204AB5DC(v40, type metadata accessor for StockListToolbarModel);
      }
    }

    return sub_2204CFC28(a1);
  }

  else
  {
    v72 = v32;
    v73 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v25;
    v76 = v26;
    v77 = a1;
    v75 = v27;
    (*(v27 + 32))(v30, v38, v26);
    v78 = v1;
    sub_22088B6BC();
    v94 = v95;
    sub_22045BB28(0);
    sub_22046F734(&qword_281297C90, sub_22045BB28);
    v42 = v86;
    sub_22088BF9C();

    sub_22088677C();
    v44 = v88;
    v43 = v89;
    sub_22088E70C();

    (*(v87 + 8))(v42, v43);
    v45 = v85;
    v46 = v92;
    v47 = v30;
    if ((*(v85 + 48))(v44, 1, v92) == 1)
    {
      sub_2204AB5DC(v44, sub_2204CF334);
      v48 = v78;
      Strong = swift_unknownObjectWeakLoadStrong();
      v51 = v93;
      if (Strong)
      {
        v52 = v91;
        swift_storeEnumTagMultiPayload();
        sub_22078997C();
        swift_unknownObjectRelease();
        Strong = sub_2204AB5DC(v52, type metadata accessor for StockListToolbarModel);
      }

      MEMORY[0x28223BE20](Strong, v50);
      *(&v71 - 2) = v48;
      *(&v71 - 1) = v47;
      sub_220888FBC();
      sub_22046D5B4();
      v53 = sub_220891D0C();
      v54 = v73;
      sub_22047939C(v77, v73, type metadata accessor for StockListSelectionModel);
      v55 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = *(v51 + 80);
      *(v56 + 24) = *(v51 + 88);
      sub_2204D1A74(v54, v56 + v55, type metadata accessor for StockListSelectionModel);
      *(v56 + ((v33 + v55 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;

      sub_220888E6C();

      v58 = v75;
      v57 = v76;
    }

    else
    {
      v59 = v74;
      (*(v45 + 32))(v74, v44, v46);
      v60 = v83;
      sub_22088AD8C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2204AB5DC(v60, type metadata accessor for StockListModel);
        v61 = swift_unknownObjectWeakLoadStrong();
        v57 = v76;
        v62 = v77;
        v58 = v75;
        if (v61)
        {
          v63 = v46;
          v64 = v91;
          swift_storeEnumTagMultiPayload();
          sub_22078997C();
          swift_unknownObjectRelease();
          v65 = v64;
          v46 = v63;
          v59 = v74;
          sub_2204AB5DC(v65, type metadata accessor for StockListToolbarModel);
        }
      }

      else
      {
        v66 = v60;
        v67 = v81;
        sub_2204D1A74(v66, v81, type metadata accessor for StockListStockModel);
        v68 = type metadata accessor for StockViewModel();
        v69 = v79;
        sub_22047939C(v67 + *(v68 + 20), v79, sub_22045987C);
        v57 = v76;
        v62 = v77;
        v58 = v75;
        if (qword_281298D08 != -1)
        {
          swift_once();
        }

        swift_getWitnessTable();
        sub_220886B3C();
        v70 = v80;
        sub_22084DA0C(v69, v95, v80);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_22078997C();
          swift_unknownObjectRelease();
        }

        sub_2204AB5DC(v70, type metadata accessor for StockListToolbarModel);
        sub_2204AB5DC(v81, type metadata accessor for StockListStockModel);
        v46 = v92;
        v59 = v74;
      }

      sub_2204CFC28(v62);
      (*(v45 + 8))(v59, v46);
    }

    return (*(v58 + 8))(v47, v57);
  }
}

uint64_t sub_2204CEF84()
{
  v1 = *(type metadata accessor for StockListSelectionModel() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 2, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for StockListToolbarModel()
{
  result = qword_28128D210;
  if (!qword_28128D210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2204CF0F0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_220454138(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2204CF154()
{
  result = sub_22088516C();
  if (v1 <= 0x3F)
  {
    result = sub_2208855FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2204CF1C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204CF210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220890E5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2204CF254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204CF29C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204CF2E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2204CF368()
{
  v1 = v0;
  v2 = sub_2208855FC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v37 - v9;
  v11 = sub_22088516C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockListToolbarModel();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204CFBA0(v1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v12 + 32))(v15, v19, v11);
    v23 = objc_opt_self();
    v24 = sub_22088509C();
    v25 = [v23 localizedStringFromDate:v24 dateStyle:1 timeStyle:1];

    v26 = sub_22089136C();
    v28 = v27;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22084E1A4(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_220899360;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_22048D860();
    *(v31 + 32) = v26;
    *(v31 + 40) = v28;
    v22 = sub_22089133C();

    (*(v12 + 8))(v15, v11);
    return v22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    type metadata accessor for Localized();
    v32 = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v22 = sub_220884CAC();

    return v22;
  }

  (*(v3 + 32))(v10, v19, v2);
  (*(v3 + 16))(v7, v10, v2);
  v21 = (*(v3 + 88))(v7, v2);
  if (v21 == *MEMORY[0x277D69190] || v21 == *MEMORY[0x277D69198] || v21 == *MEMORY[0x277D69188] || v21 == *MEMORY[0x277D691B0] || v21 == *MEMORY[0x277D691A8] || v21 == *MEMORY[0x277D691A0] || v21 == *MEMORY[0x277D691B8])
  {
    type metadata accessor for Localized();
    v34 = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass_];
    v22 = sub_220884CAC();

    (*(v3 + 8))(v10, v2);
    return v22;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

uint64_t sub_2204CFBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListToolbarModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204CFC28(uint64_t a1)
{
  v52 = a1;
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v49 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v50 = v47 - v7;
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v51 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v48 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v47 - v23;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v54 = *(v29 - 8);
  v55 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v53 = v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1;
  v47[2] = *(v1 + 32);
  sub_22088B6BC();
  v57 = v58;
  sub_22045BB28(0);
  v33 = v32;
  v47[0] = sub_22046F734(&qword_281297C90, sub_22045BB28);
  v47[1] = v33;
  sub_22088BF9C();

  sub_22047939C(v52, v15, type metadata accessor for StockListSelectionModel);
  if (!(*(v9 + 48))(v15, 2, v8))
  {
    v34 = v51;
    (*(v9 + 32))(v51, v15, v8);
    sub_22088677C();
    (*(v9 + 8))(v34, v8);
  }

  sub_22088E70C();

  v35 = *(v18 + 8);
  v35(v24, v17);
  v37 = v54;
  v36 = v55;
  v38 = (*(v54 + 48))(v28, 1, v55);
  v39 = v53;
  if (v38 == 1)
  {
    sub_2204AB5DC(v28, sub_2204CF334);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v41 = sub_2208854AC();
      v42 = v49;
      (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_2204D0828(v42, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return sub_2204AB5DC(v42, sub_2204D04A4);
    }
  }

  else
  {
    (*(v37 + 32))(v53, v28, v36);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22088B6BC();
      v57 = v58;
      v44 = v48;
      sub_22088BF9C();

      v45 = v50;
      sub_22088E7EC();
      v35(v44, v17);
      v46 = swift_unknownObjectWeakLoadStrong();
      if (v46)
      {
        sub_2204D0828(v45, v46);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_2204AB5DC(v45, sub_2204D04A4);
    }

    return (*(v37 + 8))(v39, v36);
  }

  return result;
}

char *sub_2204D024C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI9TodayView_brandingLabel;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5[OBJC_IVAR____TtC8StocksUI9TodayView_isSelectable] = 1;
  v5[OBJC_IVAR____TtC8StocksUI9TodayView_isSelected] = 0;
  v5[OBJC_IVAR____TtC8StocksUI9TodayView_isHighlightable] = 1;
  v5[OBJC_IVAR____TtC8StocksUI9TodayView_isHighlighted] = 0;
  v13 = OBJC_IVAR____TtC8StocksUI9TodayView_isEditing;
  v22 = 0;
  sub_2204D04D8(0, &qword_2812971A0, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *&v5[v13] = sub_22088DFFC();
  *&v5[OBJC_IVAR____TtC8StocksUI9TodayView_labelAlphaValueWhenEditing] = 0x3FE0000000000000;
  v5[OBJC_IVAR____TtC8StocksUI9TodayView_shouldChangeLabelAlphaWhenEditing] = 1;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 frame];
  Height = CGRectGetHeight(v23);
  v18 = 0;
  if (Height > 1.0)
  {
    [v16 frame];
    v18 = CGRectGetWidth(v24) > 1.0;
  }

  [v16 setIsAccessibilityElement_];
  v19 = [v16 accessibilityTraits];
  [v16 setAccessibilityTraits_];

  return v16;
}

void sub_2204D04D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2204D0528(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2204D0578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2204D05C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2204D0618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204D067C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204D06E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204D0744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2204D07AC()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 112))(v2, v3);
}

void sub_2204D0828(uint64_t a1, void *a2)
{
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22047939C(a1, v7, sub_2204D04A4);
  sub_22088DDCC();
  if (([a2 isEditing] & 1) == 0)
  {
    sub_22088C71C();
    v8 = sub_22088BFCC();

    sub_220891BDC();
    v9 = [v8 collectionViewLayout];
    v10 = [v9 ts_visibleBoundsInvalidationContext];

    if (v10)
    {
      v11 = [v8 collectionViewLayout];
      [v11 invalidateLayoutWithContext_];
    }
  }
}

void sub_2204D09AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v16 = *(v13 + 56);
    swift_unknownObjectRetain();
    v17 = sub_22088C42C();
    v29 = a6;
    v18 = OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel;
    [*&v17[OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel] setFrame_];
    v28 = a5;
    v19 = OBJC_IVAR____TtC8StocksUI9TodayView_brandingLabel;
    [*&v17[OBJC_IVAR____TtC8StocksUI9TodayView_brandingLabel] setFrame_];
    v20 = *&v17[v18];
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
    v21 = sub_2204D0C30(a3, a4, 0);
    [v20 setAttributedText_];

    v22 = *&v17[v19];
    __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
    v23 = sub_2204D17C4(v28, v29, 0);
    [v22 setAttributedText_];

    UIAccessibilityDarkerSystemColorsEnabled();
    [*&v17[v18] setNumberOfLines_];
    [*&v17[v19] setNumberOfLines_];
    swift_unknownObjectRelease();

    LOBYTE(v19) = sub_22088C3EC();
    v24 = sub_22088C42C();
    v25 = sub_22088C42C();
    v26 = [v25 accessibilityTraits];

    v27 = *MEMORY[0x277D76598];
    if ((v19 & 1) == 0)
    {
      [v24 setAccessibilityTraits_];

      return;
    }

    if (v26)
    {
      if ((v27 & ~v26) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (!v27)
    {
      v26 = 0;
      goto LABEL_12;
    }

    v26 |= v27;
LABEL_12:
    [v24 setAccessibilityTraits_];
  }
}

id sub_2204D0C30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = (v3 + 16);
  sub_2204A5DF0();
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v8 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v9 = v8;
    v10 = sub_2204C528C();
    v11 = sub_22044D56C(0, &qword_28127E570);
    v12 = MEMORY[0x277D740C0];
    *(inited + 40) = v10;
    v13 = *v12;
    *(inited + 64) = v11;
    *(inited + 72) = v13;
    v15 = *(v4 + 40);
    v14 = *(v4 + 48);
    __swift_project_boxed_opaque_existential_1(v6, v15);
    v16 = *(v14 + 16);
    v17 = *(v16 + 120);
    v18 = v13;
    v19 = v17(v15, v16);
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v20 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v21 = v20;
    v22 = sub_2204C528C();
    v23 = sub_22044D56C(0, &qword_28127E570);
    v24 = MEMORY[0x277D740C0];
    *(inited + 40) = v22;
    v25 = *v24;
    *(inited + 64) = v23;
    *(inited + 72) = v25;
    v27 = *(v4 + 40);
    v26 = *(v4 + 48);
    __swift_project_boxed_opaque_existential_1(v6, v27);
    v28 = *(v26 + 16);
    v29 = *(v28 + 40);
    v30 = v25;
    v19 = v29(v27, v28);
  }

  v31 = v19;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v31;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v34 = sub_22089125C();

  v35 = [v32 initWithString:v33 attributes:v34];

  return v35;
}

uint64_t sub_2204D0EE0()
{
  v64 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v64, v1);
  v65 = v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v67 = v63 - v5;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v66 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v69 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v73 = v63 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v63 - v17;
  sub_2204A1D20();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v68 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v72 = v63 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = v63 - v29;
  sub_22046B19C();
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v34);
  v36 = v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v0 + 32);
  sub_22088B6BC();
  v76 = v77;
  sub_22045BB28(0);
  v38 = v37;
  v39 = sub_22046F734(&qword_281297C90, sub_22045BB28);
  v74 = v38;
  v40 = v21;
  v41 = v39;
  sub_22088BF9C();

  sub_22088E83C();
  v71 = *(v40 + 8);
  v71(v30, v20);
  v70 = *(v33 + 48);
  if (v70(v18, 1, v32) == 1)
  {
    v42 = sub_2204A1EF0;
    v43 = v18;
LABEL_3:
    sub_2204AB5DC(v43, v42);
    v44 = v41;
    goto LABEL_4;
  }

  (*(v33 + 32))(v36, v18, v32);
  sub_22046F734(&qword_281297DB8, sub_22046B19C);
  sub_22089193C();
  sub_22089199C();
  if (v77 == v76)
  {
    (*(v33 + 8))(v36, v32);
    return 1;
  }

  v56 = v66;
  sub_2204D162C(v66);
  v57 = v56;
  sub_22046B36C();
  v59 = v58;
  v60 = *(v58 - 8);
  if ((*(v60 + 48))(v57, 1, v58) == 1)
  {
    (*(v33 + 8))(v36, v32);
    v42 = sub_2204CF334;
    v43 = v57;
    goto LABEL_3;
  }

  sub_22088AD8C();
  (*(v33 + 8))(v36, v32);
  (*(v60 + 8))(v57, v59);
  v61 = v65;
  sub_2204D1A74(v67, v65, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = type metadata accessor for StockListStockModel;
    v43 = v61;
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 1;
  }

  v44 = v41;
  sub_2204AB5DC(v61, type metadata accessor for StockListModel);
LABEL_4:
  v63[1] = v44;
  sub_22088B6BC();
  v76 = v77;
  v45 = v72;
  sub_22088BF9C();

  v46 = v73;
  sub_22088E83C();
  v47 = v45;
  v48 = v71;
  v71(v47, v20);
  v49 = 1;
  v75 = v32;
  v50 = v20;
  v51 = v70;
  v52 = v70(v46, 1, v32);
  sub_2204AB5DC(v46, sub_2204A1EF0);
  if (v52 != 1)
  {
    sub_22088B6BC();
    v76 = v77;
    v53 = v68;
    sub_22088BF9C();

    v54 = v69;
    sub_22088E83C();
    v48(v53, v50);
    v49 = v51(v54, 1, v75) != 1;
    sub_2204AB5DC(v54, sub_2204A1EF0);
  }

  return v49;
}

uint64_t sub_2204D162C@<X0>(uint64_t a1@<X8>)
{
  sub_22046B19C();
  sub_22046F6EC(&qword_281297DB8, sub_22046B19C);
  sub_22089193C();
  sub_22089199C();
  if (v10[4] == v10[0])
  {
    sub_22046B36C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2208919BC();
    v6 = v5;
    sub_22046B36C();
    v8 = v7;
    v9 = *(v7 - 8);
    (*(v9 + 16))(a1, v6, v7);
    v4(v10, 0);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }
}

id sub_2204D17C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = (v3 + 16);
  sub_2204A5DF0();
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v8 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v9 = v8;
    v10 = sub_2204C5FB4();
    v11 = sub_22044D56C(0, &qword_28127E570);
    v12 = MEMORY[0x277D740C0];
    *(inited + 40) = v10;
    v13 = *v12;
    *(inited + 64) = v11;
    *(inited + 72) = v13;
    v15 = *(v4 + 40);
    v14 = *(v4 + 48);
    __swift_project_boxed_opaque_existential_1(v6, v15);
    v16 = *(v14 + 16);
    v17 = *(v16 + 120);
    v18 = v13;
    v19 = v17(v15, v16);
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v20 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v21 = v20;
    v22 = sub_2204C5FB4();
    v23 = sub_22044D56C(0, &qword_28127E570);
    v24 = MEMORY[0x277D740C0];
    *(inited + 40) = v22;
    v25 = *v24;
    *(inited + 64) = v23;
    *(inited + 72) = v25;
    v27 = *(v4 + 40);
    v26 = *(v4 + 48);
    __swift_project_boxed_opaque_existential_1(v6, v27);
    v28 = *(v26 + 16);
    v29 = *(v28 + 216);
    v30 = v25;
    v19 = v29(v27, v28);
  }

  v31 = v19;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v31;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v33 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v34 = sub_22089125C();

  v35 = [v32 initWithString:v33 attributes:v34];

  return v35;
}

uint64_t sub_2204D1A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204D1ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2204D1B4C(void *a1)
{
  v2 = sub_22088E85C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088E86C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C6FC();
  v12 = sub_22088B52C();

  if (v12)
  {
    sub_22044D56C(0, &qword_28127E420);
    v13 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    sub_22088C6FC();
    (*(v8 + 104))(v11, *MEMORY[0x277D6EC88], v7);
    (*(v3 + 104))(v6, *MEMORY[0x277D6ECA8], v2);
    *(swift_allocObject() + 16) = a1;
    v14 = a1;
    sub_22088B54C();

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  v15 = [a1 editButtonItem];
  [v15 setEnabled_];

  v16 = sub_220492C48();
  [v16 setEnabled_];

  sub_22088C71C();
  v17 = sub_22088BFCC();

  [v17 setUserInteractionEnabled_];
}

uint64_t sub_2204D1E6C()
{

  return swift_deallocObject();
}

uint64_t sub_2204D1EB0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

id sub_2204D1F04()
{
  v0 = [objc_opt_self() systemGrayColor];

  return v0;
}

void sub_2204D1F44(uint64_t a1)
{
  v84 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v84, v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v83 = &v67 - v7;
  sub_22046B36C();
  v82 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BBE2C();
  v76 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BE48(0, &qword_281297DB0, MEMORY[0x277D6D710]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v75 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v67 - v23;
  sub_22045BE48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v26 = v25;
  v73 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v80 = (&v67 - v28);
  sub_2204B9DAC();
  v77 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v67 = v18;
  v68 = v9;
  v74 = v26;
  v34 = *(*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  v35 = Strong;
  v78 = v32;
  v79 = v24;
  ObjectType = swift_getObjectType();
  v72 = *(v34 + 96);
  swift_unknownObjectRetain();
  (v72)(ObjectType, v34);
  swift_unknownObjectRelease();
  v69 = v35;
  sub_2204A43F0();
  (*(v73 + 16))(v80, a1, v74);
  v37 = MEMORY[0x277D6EC60];
  sub_220456038(&qword_281296EF0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  sub_2208915BC();
  v38 = v78;
  v39 = v37;
  v40 = *(v77 + 36);
  v41 = v79;
  v42 = sub_220456038(&qword_281296EE8, &qword_281296EE0, v39);
  sub_22089199C();
  if (*(v38 + v40) == v85[0])
  {
LABEL_3:
    sub_2204A2890(v38, sub_2204B9DAC);
    v43 = v69;
    sub_22088C71C();
    v44 = sub_22088BFCC();

    [v44 setShowsVerticalScrollIndicator_];

    sub_220888C9C();
    v45 = v85[0];
    if (!v85[0] || (v46 = [v85[0] isActive], v45, (v46 & 1) == 0))
    {
      v47 = sub_22088A82C();
      v48 = sub_220891AFC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_22043F000, v47, v48, "Showing ForYou card after a blueprint refresh", v49, 2u);
        MEMORY[0x223D8B7F0](v49, -1, -1);
      }

      sub_2204D5A7C(1);
    }

    goto LABEL_19;
  }

  v72 = (v67 + 16);
  v80 = (v68 + 16);
  v50 = (v68 + 8);
  v73 = v67 + 8;
  v71 = v40;
  v70 = v42;
LABEL_10:
  v77 = sub_2208919BC();
  v51 = *v72;
  (*v72)(v41);
  (v77)(v85, 0);
  sub_2208919AC();
  (v51)(v75, v79, v17);
  v52 = MEMORY[0x277D6D710];
  sub_220456038(&qword_281297DC0, &qword_281297DB0, MEMORY[0x277D6D710]);
  sub_2208915BC();
  v53 = *(v76 + 36);
  sub_220456038(&qword_281297DB8, &qword_281297DB0, v52);
  while (1)
  {
    sub_22089199C();
    if (*&v15[v53] == v85[0])
    {
      sub_2204A2890(v15, sub_2204BBE2C);
      v41 = v79;
      (*v73)(v79, v17);
      v38 = v78;
      sub_22089199C();
      if (*(v38 + v71) == v85[0])
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    v54 = sub_2208919BC();
    v55 = v81;
    v56 = v82;
    (*v80)(v81);
    v54(v85, 0);
    v57 = v17;
    sub_2208919AC();
    v58 = v4;
    v59 = v83;
    sub_22088AD8C();
    (*v50)(v55, v56);
    v60 = v59;
    v4 = v58;
    sub_2204BD618(v60, v58, type metadata accessor for StockListModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v62 = type metadata accessor for StockListStockModel;
    if (EnumCaseMultiPayload)
    {
      break;
    }

LABEL_11:
    v17 = v57;
    sub_2204A2890(v4, v62);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v62 = type metadata accessor for StockListModel;
    goto LABEL_11;
  }

  sub_2204A2890(v15, sub_2204BBE2C);
  (*v73)(v79, v57);
  sub_2204A2890(v78, sub_2204B9DAC);
  v43 = v69;
  sub_22088C71C();
  v63 = sub_22088BFCC();

  [v63 setShowsVerticalScrollIndicator_];

  v64 = sub_22088A82C();
  v65 = sub_220891AFC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_22043F000, v64, v65, "Hiding ForYou card due to having an empty stock list", v66, 2u);
    MEMORY[0x223D8B7F0](v66, -1, -1);
  }

  sub_2207632BC(0, 1);
LABEL_19:
}

uint64_t sub_2204D2908@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B40F4(v2, v16, type metadata accessor for StockListModel);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      result = sub_2204AE394(v16, type metadata accessor for StockListModel);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    sub_2204CDB9C(v16, v12);
    (*(v5 + 16))(v8, v12, v4);
    *(a1 + 24) = sub_22088564C();
    *(a1 + 32) = sub_22045DF78(&qword_281299358, MEMORY[0x277D69248]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_22088563C();
    return sub_2204AE394(v12, type metadata accessor for StockListStockModel);
  }

  return result;
}

id sub_2204D2BB4()
{
  if (*(v0 + OBJC_IVAR____TtC8StocksUI9TodayView_shouldChangeLabelAlphaWhenEditing) == 1)
  {
    swift_getObjectType();
    sub_22088E03C();
    if (v6)
    {
      v1 = 0.5;
    }

    else
    {
      v1 = 1.0;
    }

    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    sub_22049F5E4(&qword_28127EE28);

    sub_22088E51C();
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel) setAlpha_];
    v5 = *(v0 + OBJC_IVAR____TtC8StocksUI9TodayView_brandingLabel);

    return [v5 setAlpha_];
  }
}

uint64_t sub_2204D2D50()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2204D2D88()
{

  return swift_deallocObject();
}

uint64_t sub_2204D2DE4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2204D2E48(a1);
  }

  return result;
}

uint64_t sub_2204D2E48(uint64_t a1)
{
  v84 = *v1;
  v3 = MEMORY[0x277D83D88];
  sub_22045B848(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  v83 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v80 = &v70 - v6;
  v91 = type metadata accessor for StockListToolbarModel();
  v8 = MEMORY[0x28223BE20](v91, v7);
  v92 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v79 = &v70 - v11;
  v81 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v81, v12);
  v82 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204552A8(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v89 = *(v17 - 8);
  v90 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v87 = &v70 - v19;
  sub_22045B848(0, &qword_281297F78, sub_22046B36C, v3);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v88 = &v70 - v22;
  sub_22046B36C();
  v85 = *(v23 - 8);
  v86 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22088685C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StockListSelectionModel();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v32 - 8, v35);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v70 - v38;
  sub_2205FBE28(a1, &v70 - v38);
  v40 = (*(v28 + 48))(v39, 2, v27);
  if (v40)
  {
    if (v40 == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = v92;
        swift_storeEnumTagMultiPayload();
        sub_22078997C();
        swift_unknownObjectRelease();
        sub_220479464(v41, type metadata accessor for StockListToolbarModel);
      }
    }

    return sub_2204D3A00(a1);
  }

  else
  {
    v71 = v33;
    v72 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v26;
    v75 = v27;
    v76 = a1;
    v74 = v28;
    (*(v28 + 32))(v31, v39, v27);
    v77 = v1;
    sub_22088B6BC();
    v93 = v94;
    sub_22045BB28(0);
    sub_22045639C();
    v43 = v87;
    sub_22088BF9C();

    sub_22088677C();
    v44 = v88;
    v45 = v90;
    sub_22088E70C();

    (*(v89 + 8))(v43, v45);
    v46 = v85;
    v47 = v86;
    if ((*(v85 + 48))(v44, 1, v86) == 1)
    {
      sub_22046AB30(v44, &qword_281297F78, sub_22046B36C);
      v48 = v77;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v51 = v92;
        swift_storeEnumTagMultiPayload();
        sub_22078997C();
        swift_unknownObjectRelease();
        Strong = sub_220479464(v51, type metadata accessor for StockListToolbarModel);
      }

      MEMORY[0x28223BE20](Strong, v50);
      *(&v70 - 2) = v48;
      *(&v70 - 1) = v31;
      sub_220888FBC();
      sub_22044D56C(0, &qword_28127E7C0);
      v52 = sub_220891D0C();
      v53 = v72;
      sub_2205FBE28(v76, v72);
      v54 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v55 = v31;
      v56 = swift_allocObject();
      sub_2204D1ADC(v53, v56 + v54, type metadata accessor for StockListSelectionModel);
      *(v56 + ((v34 + v54 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;

      sub_220888E6C();

      v31 = v55;

      v58 = v74;
      v57 = v75;
    }

    else
    {
      v59 = v73;
      (*(v46 + 32))(v73, v44, v47);
      v60 = v82;
      sub_22088AD8C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_220479464(v60, type metadata accessor for StockListModel);
        v61 = swift_unknownObjectWeakLoadStrong();
        v57 = v75;
        v62 = v76;
        v58 = v74;
        if (v61)
        {
          v63 = v92;
          swift_storeEnumTagMultiPayload();
          sub_22078997C();
          swift_unknownObjectRelease();
          sub_220479464(v63, type metadata accessor for StockListToolbarModel);
        }
      }

      else
      {
        v64 = v46;
        v65 = v78;
        sub_2204D1ADC(v60, v78, type metadata accessor for StockListStockModel);
        v66 = type metadata accessor for StockViewModel();
        v67 = v80;
        sub_220842984(v65 + *(v66 + 20), v80, &qword_2812990C0, MEMORY[0x277D697F8]);
        if (qword_281298D08 != -1)
        {
          swift_once();
        }

        sub_22047D1E4();
        sub_220886B3C();
        v68 = v79;
        sub_22084DA0C(v67, v94, v79);
        v69 = swift_unknownObjectWeakLoadStrong();
        v57 = v75;
        v62 = v76;
        v58 = v74;
        if (v69)
        {
          sub_22078997C();
          swift_unknownObjectRelease();
        }

        sub_220479464(v68, type metadata accessor for StockListToolbarModel);
        sub_220479464(v65, type metadata accessor for StockListStockModel);
        v46 = v64;
        v59 = v73;
      }

      sub_2204D3A00(v62);
      (*(v46 + 8))(v59, v47);
    }

    return (*(v58 + 8))(v31, v57);
  }
}

uint64_t sub_2204D3844()
{
  v1 = *(type metadata accessor for StockListSelectionModel() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 2, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_2204D3964@<X0>(unsigned __int8 *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = [Strong isEditing];
  swift_unknownObjectRelease();

LABEL_6:
  *a1 = v4;
  return result;
}

uint64_t sub_2204D3A00(uint64_t a1)
{
  v54 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_22045B848(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v50 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v51 = v48 - v8;
  v9 = sub_22088685C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v52 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204552A8(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v18 = v17;
  v19 = *(v17 - 8);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v49 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v48 - v24;
  sub_22045B848(0, &qword_281297F78, sub_22046B36C, v2);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = v48 - v28;
  sub_22046B36C();
  v56 = v30;
  v53 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v55 = v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  v48[2] = *(v1 + 32);
  sub_22088B6BC();
  v58 = v59;
  sub_22045BB28(0);
  v34 = v33;
  v48[0] = sub_22045639C();
  v48[1] = v34;
  sub_22088BF9C();

  sub_2205FBE28(v54, v16);
  if (!(*(v10 + 48))(v16, 2, v9))
  {
    v35 = v52;
    (*(v10 + 32))(v52, v16, v9);
    sub_22088677C();
    (*(v10 + 8))(v35, v9);
  }

  sub_22088E70C();

  v36 = *(v19 + 8);
  v36(v25, v18);
  v37 = v53;
  v38 = v56;
  v39 = (*(v53 + 48))(v29, 1, v56);
  v40 = v55;
  if (v39 == 1)
  {
    sub_22046AB30(v29, &qword_281297F78, sub_22046B36C);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v42 = sub_2208854AC();
      v43 = v50;
      (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_2204D0828(v43, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return sub_22046AB30(v43, &qword_2812993D0, MEMORY[0x277CC9AF8]);
    }
  }

  else
  {
    (*(v37 + 32))(v55, v29, v38);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22088B6BC();
      v58 = v59;
      v45 = v49;
      sub_22088BF9C();

      v46 = v51;
      sub_22088E7EC();
      v36(v45, v18);
      v47 = swift_unknownObjectWeakLoadStrong();
      if (v47)
      {
        sub_2204D0828(v46, v47);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_22046AB30(v46, &qword_2812993D0, MEMORY[0x277CC9AF8]);
    }

    return (*(v37 + 8))(v40, v38);
  }

  return result;
}

uint64_t sub_2204D40A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

void sub_2204D411C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel) setAlpha_];
    [*&v3[OBJC_IVAR____TtC8StocksUI9TodayView_brandingLabel] setAlpha_];
  }
}

uint64_t sub_2204D41B0(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI9TodayView_isHighlighted;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_2204D4204(uint64_t a1)
{
  v56 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_22049C650(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v53 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v54 = v51 - v8;
  v9 = sub_22088685C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v55 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4924();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v20);
  v52 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v51 - v24;
  sub_22049C650(0, &unk_281297F30, sub_2204D4A18, v2);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = v51 - v28;
  sub_2204D4A18();
  v58 = *(v30 - 8);
  v59 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v57 = v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v1;
  v51[2] = *(v1 + 32);
  sub_22088B6BC();
  v61 = v62;
  sub_2204951A0();
  v34 = v33;
  v51[0] = sub_220448630(&qword_281297C60, 255, sub_2204951A0);
  v51[1] = v34;
  sub_22088BF9C();

  sub_2204792CC(v56, v16, type metadata accessor for StockListSelectionModel);
  if (!(*(v10 + 48))(v16, 2, v9))
  {
    v35 = v55;
    (*(v10 + 32))(v55, v16, v9);
    sub_22088677C();
    (*(v10 + 8))(v35, v9);
  }

  sub_22088E70C();

  v36 = *(v19 + 8);
  v36(v25, v18);
  v38 = v58;
  v37 = v59;
  v39 = (*(v58 + 48))(v29, 1, v59);
  v40 = v57;
  if (v39 == 1)
  {
    sub_2204D4ADC(v29, &unk_281297F30, sub_2204D4A18);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v42 = result;
      v43 = sub_2208854AC();
      v44 = v53;
      (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v45 = off_2834174E0;
        type metadata accessor for StockSearchViewController(0);
        v45(v42, &off_28341EA98, v44);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return sub_2204D4ADC(v44, &qword_2812993D0, MEMORY[0x277CC9AF8]);
    }
  }

  else
  {
    (*(v38 + 32))(v57, v29, v37);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      sub_22088B6BC();
      v61 = v62;
      v48 = v52;
      sub_22088BF9C();

      v49 = v54;
      sub_22088E7EC();
      v36(v48, v18);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = off_2834174E0;
        type metadata accessor for StockSearchViewController(0);
        v50(v47, &off_28341EA98, v49);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_2204D4ADC(v49, &qword_2812993D0, MEMORY[0x277CC9AF8]);
    }

    return (*(v38 + 8))(v40, v37);
  }

  return result;
}

void sub_2204D4924()
{
  if (!qword_281296E78)
  {
    type metadata accessor for StockSearchSectionDescriptor();
    type metadata accessor for StockSearchModel();
    sub_2204BC2F4(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor);
    sub_2204BC2F4(&qword_281291EB0, 255, type metadata accessor for StockSearchModel);
    v0 = sub_22088E81C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296E78);
    }
  }
}

void sub_2204D4A18()
{
  if (!qword_281297F40)
  {
    type metadata accessor for StockSearchModel();
    sub_2204BC2F4(&qword_281291EB0, 255, type metadata accessor for StockSearchModel);
    v0 = sub_22088ADAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297F40);
    }
  }
}

uint64_t sub_2204D4ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22049C650(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2204D4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2204D4CD0(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  swift_getObjectType();
  sub_2204D59E8(a3, v7);
  sub_22088DDCC();
  sub_22088C71C();
  v8 = sub_22088BFCC();

  sub_220891BDC();
}

void sub_2204D4C7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2204D4CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204D4D34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2204D4D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204D4DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204D4E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2204D4EB4(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI9TodayView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_2204D4F08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v96 = a2;
  v101 = a3;
  sub_2204C8D00(0, &qword_281296E68, MEMORY[0x277D74CB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v95 = &v92 - v8;
  v9 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v97 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BCC8(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v92 - v20;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v92 - v28;
  v30 = sub_22088DF5C();
  v99 = *(v30 - 8);
  v100 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v94 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = MEMORY[0x28223BE20](v33, v34).n128_u64[0];
  v37 = &v92 - v36;
  v93 = a1;
  v38 = [a1 horizontalSizeClass];
  v98 = v37;
  if (v38 == 2)
  {
    sub_22088DF4C();
  }

  else
  {
    sub_22088DF3C();
  }

  v104 = v4[4];
  sub_22045BB28(0);
  sub_22045BFDC(&qword_281297C90, sub_22045BB28);
  sub_22088BF9C();
  v39 = v29;
  sub_22088E71C();
  (*(v18 + 8))(v21, v17);
  sub_2204BD6E8(v29, v25, sub_2204CF334);
  v40 = v102;
  v41 = v103;
  if ((*(v102 + 48))(v25, 1, v103) == 1)
  {
    sub_2204D6128(v25, sub_2204CF334);
    sub_2204D62A8();
    v103 = *(v42 + 48);
    v43 = v98;
    v44 = v99;
    v46 = v100;
    v45 = v101;
    (*(v99 + 16))(v101, v98, v100);
    swift_beginAccess();
    v96 = v29;
    v47 = v4[16];
    v48 = v4[17];
    v49 = __swift_project_boxed_opaque_existential_1(v4 + 13, v47);
    v50 = *(v47 - 8);
    v51 = MEMORY[0x28223BE20](v49, v49);
    v53 = &v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v53, v51);
    v54 = (*(*(v48 + 16) + 176))(v47);
    (*(v50 + 8))(v53, v47);
    sub_2204D6128(v96, sub_2204CF334);
    (*(v44 + 8))(v43, v46);
    *(v45 + v103) = v54;
    goto LABEL_14;
  }

  (*(v40 + 32))(v97, v25, v41);
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2204D6128(v12, type metadata accessor for StockListStockModel);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_13:
    sub_2204D62A8();
    v96 = *(v76 + 48);
    v78 = v98;
    v77 = v99;
    v79 = v100;
    v45 = v101;
    (*(v99 + 16))(v101, v98, v100);
    swift_beginAccess();
    v80 = v4[16];
    v81 = v4[17];
    v82 = __swift_project_boxed_opaque_existential_1(v4 + 13, v80);
    v95 = &v92;
    v83 = v39;
    v84 = *(v80 - 8);
    v85 = MEMORY[0x28223BE20](v82, v82);
    v87 = &v92 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v87, v85);
    v88 = (*(*(v81 + 16) + 176))(v80);
    (*(v84 + 8))(v87, v80);
    (*(v40 + 8))(v97, v103);
    sub_2204D6128(v83, sub_2204CF334);
    (*(v77 + 8))(v78, v79);
    *(v45 + v96) = v88;
    goto LABEL_14;
  }

  v96 = v29;
  sub_2204D6128(v12, type metadata accessor for StockListModel);
  __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
  v56 = *(sub_220885FCC() + 16);

  v57 = MEMORY[0x277D74C98];
  if (v56 <= 1 && [v93 horizontalSizeClass] == 2)
  {
    v57 = MEMORY[0x277D74CA0];
  }

  v58 = v98;
  sub_22088DF1C();
  sub_22088DF2C();
  v59 = sub_22088EA3C();
  v60 = *(v59 - 8);
  v61 = *v57;
  v62 = v95;
  (*(v60 + 104))(v95, v61, v59);
  (*(v60 + 56))(v62, 0, 1, v59);
  v63 = v94;
  sub_22088DF0C();
  sub_2204D62A8();
  v95 = *(v64 + 48);
  v65 = v99;
  v66 = v100;
  v45 = v101;
  (*(v99 + 16))(v101, v63, v100);
  swift_beginAccess();
  v67 = v4[16];
  v68 = v4[17];
  v69 = __swift_project_boxed_opaque_existential_1(v4 + 13, v67);
  v70 = *(v67 - 8);
  v71 = MEMORY[0x28223BE20](v69, v69);
  v73 = &v92 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v70 + 16))(v73, v71);
  v74 = (*(*(v68 + 16) + 176))(v67);
  (*(v70 + 8))(v73, v67);
  v75 = *(v65 + 8);
  v75(v63, v66);
  (*(v102 + 8))(v97, v103);
  sub_2204D6128(v96, sub_2204CF334);
  v75(v58, v66);
  *&v95[v45] = v74;
LABEL_14:
  v89 = *MEMORY[0x277D6EAE8];
  v90 = sub_22088DEBC();
  return (*(*(v90 - 8) + 104))(v45, v89, v90);
}

uint64_t sub_2204D59E8(uint64_t a1, uint64_t a2)
{
  sub_2204D4CD0(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2204D5A7C(int a1)
{
  v2 = v1;
  v44 = a1;
  sub_2205EE5D8();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D5FA0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088CC6C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v38 - v20;
  v22 = sub_220891C4C();
  if (v22)
  {
    v40 = v9;
    v45 = v22;
    v24 = v23;
    ObjectType = swift_getObjectType();
    v43 = v24;
    v25 = sub_22088D05C();
    v41 = v14;
    if (v25 >> 62)
    {
      v26 = sub_2208926AC();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else
    {
      sub_22088C6FC();
      v28 = sub_22088B52C();

      if (v28 & 1) != 0 || ([v2 isEditing])
      {
        v29 = v45;
      }

      else
      {
        v47 = sub_22088D06C();
        v30 = MEMORY[0x277D6E270];
        sub_2204A1E8C(0, &qword_28127EA70, MEMORY[0x277D6E270], MEMORY[0x277D83940]);
        v39 = v27;
        sub_22076C6A8(&qword_28127EA68, &qword_28127EA70, v30);
        sub_22089194C();

        v46 = v39;
        sub_22088862C();
        (*(v40 + 8))(v12, v8);
        v31 = v41;
        if ((*(v41 + 48))(v6, 1, v13) == 1)
        {

          sub_2204A2890(v6, sub_2205EE5D8);
        }

        else
        {
          (*(v31 + 32))(v21, v6, v13);
          (*(v31 + 16))(v17, v21, v13);
          v32 = (*(v31 + 88))(v17, v13);
          v33 = *(v31 + 8);
          if (v32 == *MEMORY[0x277D6E238])
          {
            v33(v17, v13);
            v34 = sub_22088A82C();
            v35 = sub_220891AFC();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 67109120;
              *(v36 + 4) = v44 & 1;
              _os_log_impl(&dword_22043F000, v34, v35, "Showing ForYou card animated=%{BOOL}d", v36, 8u);
              MEMORY[0x223D8B7F0](v36, -1, -1);
            }

            MEMORY[0x223D85240](v39, v44 & 1, 0, 0, ObjectType, v43);
            v37 = v21;
          }

          else
          {
            v33(v21, v13);

            v37 = v17;
          }

          v33(v37, v13);
        }
      }
    }
  }
}