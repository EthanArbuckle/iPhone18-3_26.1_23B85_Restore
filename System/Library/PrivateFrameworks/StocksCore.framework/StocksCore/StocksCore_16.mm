uint64_t sub_1DABBE110()
{
  v0 = sub_1DACB94E4();
  v4 = sub_1DABBE190(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1DABBE190(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DACB93F4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DACB9B14();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DAA7BC40(v9, 0);
  v12 = sub_1DABBE2E8(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_1DACB71E4();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DACB93F4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DACB9D24();
LABEL_4:

  return sub_1DACB93F4();
}

unint64_t sub_1DABBE2E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1DABBE508(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DACB9484();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DACB9D24();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1DABBE508(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1DACB9464();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1DABBE508(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DACB9494();
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
    v5 = MEMORY[0x1E1276F50](15, a1 >> 16);
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

uint64_t sub_1DABBE584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v11;
  v18 = *(a1 + 128);
  v12 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v12;
  v13 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v13;
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D6490], v6);
  v15 = (*(a3 + 8))(v17, v10, 0, 1, a2, a3);
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t sub_1DABBE6E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v9 = sub_1DACB8204();
  v24[0] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABBE9A8();
  v24[1] = v16;
  (*(v13 + 16))(v15, v6, a5);
  (*(v10 + 16))(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v14 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v21 = v25;
  v20 = v26;
  *(v19 + 2) = a5;
  *(v19 + 3) = v20;
  *(v19 + 4) = v21;
  (*(v13 + 32))(&v19[v17], v15, a5);
  (*(v10 + 32))(&v19[v18], v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24[0]);
  v22 = &v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v27;
  v22[8] = v28 & 1;
  sub_1DACB71E4();
  return sub_1DACB8A44();
}

uint64_t sub_1DABBE93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v10 = *(a1 + 128);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return (*(a4 + 8))(v9, a2, 0, 1, a3, a4);
}

void sub_1DABBE9A8()
{
  if (!qword_1EE11D400)
  {
    sub_1DABBEA00();
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D400);
    }
  }
}

void sub_1DABBEA00()
{
  if (!qword_1EE11D1C0)
  {
    sub_1DAA488A4(255, &qword_1EE11FAA0);
    sub_1DAB07284();
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D1C0);
    }
  }
}

uint64_t sub_1DABBEA7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v6;
  *(v5 + 25) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DABBEACC, 0, 0);
}

uint64_t sub_1DABBEACC()
{
  v15 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v5 + 112);
  v13[6] = *(v5 + 96);
  v13[7] = v6;
  v14 = *(v5 + 128);
  v7 = *(v5 + 48);
  v13[2] = *(v5 + 32);
  v13[3] = v7;
  v8 = *(v5 + 80);
  v13[4] = *(v5 + 64);
  v13[5] = v8;
  v9 = *(v5 + 16);
  v13[0] = *v5;
  v13[1] = v9;
  *(v0 + 72) = off_1F568E640(v13);
  v10 = *(MEMORY[0x1E69D6B08] + 4);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1DABBEBC8;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABBEBC8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1DABC2754;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1DABC275C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABBECE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v6;
  *(v5 + 25) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DABBED34, 0, 0);
}

uint64_t sub_1DABBED34()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v15 = v5[6];
  v16 = v5[7];
  v17 = *(v5 + 16);
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = v5[5];
  v9 = *v5;
  v10 = v5[1];
  *(v0 + 72) = off_1F568FFF8();
  v6 = *(MEMORY[0x1E69D6B08] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1DABBEE30;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABBEE30()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1DABBEF6C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1DABBEF4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABBEF6C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1DABBEFD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v6;
  *(v5 + 25) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DABBF024, 0, 0);
}

uint64_t sub_1DABBF024()
{
  v15 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v5 + 112);
  v13[6] = *(v5 + 96);
  v13[7] = v6;
  v14 = *(v5 + 128);
  v7 = *(v5 + 48);
  v13[2] = *(v5 + 32);
  v13[3] = v7;
  v8 = *(v5 + 80);
  v13[4] = *(v5 + 64);
  v13[5] = v8;
  v9 = *(v5 + 16);
  v13[0] = *v5;
  v13[1] = v9;
  *(v0 + 72) = off_1F5690088(v13);
  v10 = *(MEMORY[0x1E69D6B08] + 4);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1DABBEBC8;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABBF120(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 192) = a6;
  *(v7 + 200) = v6;
  *(v7 + 176) = a3;
  *(v7 + 184) = a5;
  *(v7 + 161) = a4;
  *(v7 + 168) = a2;
  v8 = *(a1 + 112);
  *(v7 + 112) = *(a1 + 96);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v9;
  v10 = *(a1 + 80);
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = v10;
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  return MEMORY[0x1EEE6DFA0](sub_1DABBF174, 0, 0);
}

uint64_t sub_1DABBF174()
{
  v1 = *(v0 + 200);
  *(v0 + 208) = (*(*(v0 + 192) + 8))(v0 + 16, *(v0 + 168), *(v0 + 176), *(v0 + 161) & 1, *(v0 + 184));
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_1DABBF240;

  return MEMORY[0x1EEE44EE0](v0 + 152);
}

uint64_t sub_1DABBF240()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1DABBF37C;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_1DABBF35C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABBF37C()
{
  v1 = v0[26];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t sub_1DABBF3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 688) = a5;
  *(v5 + 616) = a4;
  *(v5 + 608) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = sub_1DACB8204();
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  *(v5 + 640) = *(v7 + 64);
  *(v5 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABBF4BC, 0, 0);
}

uint64_t sub_1DABBF4BC()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  *(v0 + 584) = *(v0 + 592);
  (*(v3 + 16))(v1, v7, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 656) = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v4);
  v12 = v11 + v10;
  *v12 = v6;
  *(v12 + 8) = v5 & 1;
  v13 = *(MEMORY[0x1E69D6C48] + 4);
  sub_1DACB71F4();
  v14 = swift_task_alloc();
  *(v0 + 664) = v14;
  sub_1DAA488A4(0, &qword_1EE11FAC0);
  v16 = v15;
  sub_1DABC17B8();
  v18 = v17;
  v19 = sub_1DAA59F54();
  *v14 = v0;
  v14[1] = sub_1DABBF678;

  return MEMORY[0x1EEE45328](&unk_1DACCFB28, v11, v16, v18, v19);
}

uint64_t sub_1DABBF678(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 664);
  v8 = *v2;
  v3[84] = a1;
  v3[85] = v1;

  if (v1)
  {
    v5 = sub_1DABC2760;
  }

  else
  {
    v6 = v3[82];

    v5 = sub_1DABC2764;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DABBF798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 688) = a5;
  *(v5 + 616) = a4;
  *(v5 + 608) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = sub_1DACB8204();
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  *(v5 + 640) = *(v7 + 64);
  *(v5 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABBF870, 0, 0);
}

uint64_t sub_1DABBF870()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  *(v0 + 584) = *(v0 + 592);
  (*(v3 + 16))(v1, v7, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 656) = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v4);
  v12 = v11 + v10;
  *v12 = v6;
  *(v12 + 8) = v5 & 1;
  v13 = *(MEMORY[0x1E69D6C48] + 4);
  sub_1DACB71F4();
  v14 = swift_task_alloc();
  *(v0 + 664) = v14;
  sub_1DAA488A4(0, &qword_1EE11FAC0);
  v16 = v15;
  sub_1DABC17B8();
  v18 = v17;
  v19 = sub_1DAA59F54();
  *v14 = v0;
  v14[1] = sub_1DABBFA2C;

  return MEMORY[0x1EEE45328](&unk_1DACCFB58, v11, v16, v18, v19);
}

uint64_t sub_1DABBFA2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 664);
  v8 = *v2;
  v3[84] = a1;
  v3[85] = v1;

  if (v1)
  {
    v5 = sub_1DABBFE2C;
  }

  else
  {
    v6 = v3[82];

    v5 = sub_1DABBFB4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DABBFB4C()
{
  v1 = *(v0 + 672);
  v43 = *(v1 + 16);
  if (v43)
  {
    v2 = 0;
    v3 = (v0 + 448);
    v4 = (v1 + 32);
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      *(v0 + 16) = *v4;
      v9 = v4[1];
      v10 = v4[2];
      v11 = v4[4];
      *(v0 + 64) = v4[3];
      *(v0 + 80) = v11;
      *(v0 + 32) = v9;
      *(v0 + 48) = v10;
      v12 = v4[5];
      v13 = v4[6];
      v14 = v4[8];
      *(v0 + 128) = v4[7];
      *(v0 + 144) = v14;
      *(v0 + 96) = v12;
      *(v0 + 112) = v13;
      v15 = *(v0 + 152);
      *v3 = *v4;
      v16 = v4[4];
      v18 = v4[1];
      v17 = v4[2];
      *(v0 + 496) = v4[3];
      *(v0 + 512) = v16;
      *(v0 + 464) = v18;
      *(v0 + 480) = v17;
      v20 = v4[6];
      v19 = v4[7];
      v21 = v4[5];
      *(v0 + 576) = *(v4 + 16);
      *(v0 + 544) = v20;
      *(v0 + 560) = v19;
      *(v0 + 528) = v21;
      sub_1DABC1830(v0 + 16, v0 + 160);
      sub_1DABC1830(v0 + 16, v0 + 304);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v5;
      v7 = sub_1DAB095DC((v0 + 448));
      v24 = v5[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_25;
      }

      v28 = v23;
      if (v5[3] < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v39 = v7;
      sub_1DAB66728();
      v7 = v39;
      v5 = v44;
      if (v28)
      {
LABEL_3:
        v6 = v7;
        sub_1DAA9B1C8(v0 + 16);
        v7 = v6;
        goto LABEL_4;
      }

LABEL_12:
      v5[(v7 >> 6) + 8] |= 1 << v7;
      v30 = v5[6] + 136 * v7;
      v32 = *(v0 + 496);
      v31 = *(v0 + 512);
      v33 = *(v0 + 480);
      *(v30 + 16) = *(v0 + 464);
      *(v30 + 32) = v33;
      *(v30 + 48) = v32;
      *(v30 + 64) = v31;
      *v30 = *v3;
      v34 = *(v0 + 528);
      v35 = *(v0 + 544);
      v36 = *(v0 + 560);
      *(v30 + 128) = *(v0 + 576);
      *(v30 + 96) = v35;
      *(v30 + 112) = v36;
      *(v30 + 80) = v34;
      *(v5[7] + 8 * v7) = MEMORY[0x1E69E7CC0];
      v37 = v5[2];
      v26 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v5[2] = v38;
LABEL_4:
      ++v2;
      v8 = v5[7] + 8 * v7;
      sub_1DAC2899C(v15);
      sub_1DABC1894(v0 + 16);
      v4 += 9;
      if (v43 == v2)
      {
        v40 = *(v0 + 672);
        goto LABEL_18;
      }
    }

    sub_1DAB61D98(v27, isUniquelyReferenced_nonNull_native);
    v7 = sub_1DAB095DC((v0 + 448));
    if ((v28 & 1) != (v29 & 1))
    {

      sub_1DACBA1F4();
      return;
    }

LABEL_11:
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v41 = *(v0 + 648);

  v42 = *(v0 + 8);

  v42(v5);
}

uint64_t sub_1DABBFE2C()
{
  v1 = v0[82];
  v2 = v0[81];

  v3 = v0[1];
  v4 = v0[85];

  return v3();
}

uint64_t sub_1DABBFE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 688) = a5;
  *(v5 + 616) = a4;
  *(v5 + 608) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = sub_1DACB8204();
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  *(v5 + 640) = *(v7 + 64);
  *(v5 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABBFF74, 0, 0);
}

uint64_t sub_1DABBFF74()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  *(v0 + 584) = *(v0 + 592);
  (*(v3 + 16))(v1, v7, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 656) = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v4);
  v12 = v11 + v10;
  *v12 = v6;
  *(v12 + 8) = v5 & 1;
  v13 = *(MEMORY[0x1E69D6C48] + 4);
  sub_1DACB71F4();
  v14 = swift_task_alloc();
  *(v0 + 664) = v14;
  sub_1DAA488A4(0, &qword_1EE11FAC0);
  v16 = v15;
  sub_1DABC17B8();
  v18 = v17;
  v19 = sub_1DAA59F54();
  *v14 = v0;
  v14[1] = sub_1DABBF678;

  return MEMORY[0x1EEE45328](&unk_1DACCFB88, v11, v16, v18, v19);
}

uint64_t sub_1DABC0130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 640) = a8;
  *(v8 + 632) = a7;
  *(v8 + 736) = a6;
  *(v8 + 624) = a5;
  *(v8 + 616) = a4;
  *(v8 + 608) = a3;
  *(v8 + 600) = a2;
  *(v8 + 592) = a1;
  v10 = sub_1DACB8204();
  *(v8 + 648) = v10;
  v11 = *(v10 - 8);
  *(v8 + 656) = v11;
  *(v8 + 664) = *(v11 + 64);
  *(v8 + 672) = swift_task_alloc();
  v12 = *(a7 - 8);
  *(v8 + 680) = v12;
  *(v8 + 688) = *(v12 + 64);
  *(v8 + 696) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABC0270, 0, 0);
}

uint64_t sub_1DABC0270()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v22 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v25 = *(v0 + 736);
  v24 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  *(v0 + 584) = *(v0 + 600);
  v23 = *(v0 + 632);
  v9 = *(v0 + 632);
  (*(v3 + 16))(v1, v8, v9);
  (*(v5 + 16))(v4, v7, v6);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 704) = v12;
  *(v12 + 16) = v23;
  (*(v3 + 32))(v12 + v10, v1, v9);
  (*(v5 + 32))(v12 + v11, v4, v6);
  v13 = v12 + ((v22 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v24;
  *(v13 + 8) = v25 & 1;
  v14 = *(MEMORY[0x1E69D6C48] + 4);
  v15 = swift_task_alloc();
  *(v0 + 712) = v15;
  sub_1DAA488A4(0, &qword_1EE11FAC0);
  v17 = v16;
  sub_1DABC17B8();
  v19 = v18;
  v20 = sub_1DAA59F54();
  *v15 = v0;
  v15[1] = sub_1DABC04A8;

  return MEMORY[0x1EEE45328](&unk_1DACCFBA0, v12, v17, v19, v20);
}

uint64_t sub_1DABC04A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 712);
  v8 = *v2;
  v3[90] = a1;
  v3[91] = v1;

  if (v1)
  {
    v5 = sub_1DABC08B8;
  }

  else
  {
    v6 = v3[88];

    v5 = sub_1DABC05C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DABC05C8()
{
  v1 = *(v0 + 720);
  v45 = *(v1 + 16);
  if (v45)
  {
    v2 = 0;
    v3 = (v0 + 448);
    v4 = (v1 + 32);
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      *(v0 + 16) = *v4;
      v9 = v4[1];
      v10 = v4[2];
      v11 = v4[4];
      *(v0 + 64) = v4[3];
      *(v0 + 80) = v11;
      *(v0 + 32) = v9;
      *(v0 + 48) = v10;
      v12 = v4[5];
      v13 = v4[6];
      v14 = v4[8];
      *(v0 + 128) = v4[7];
      *(v0 + 144) = v14;
      *(v0 + 96) = v12;
      *(v0 + 112) = v13;
      v15 = *(v0 + 152);
      *v3 = *v4;
      v16 = v4[4];
      v18 = v4[1];
      v17 = v4[2];
      *(v0 + 496) = v4[3];
      *(v0 + 512) = v16;
      *(v0 + 464) = v18;
      *(v0 + 480) = v17;
      v20 = v4[6];
      v19 = v4[7];
      v21 = v4[5];
      *(v0 + 576) = *(v4 + 16);
      *(v0 + 544) = v20;
      *(v0 + 560) = v19;
      *(v0 + 528) = v21;
      sub_1DABC1830(v0 + 16, v0 + 160);
      sub_1DABC1830(v0 + 16, v0 + 304);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v5;
      v7 = sub_1DAB095DC((v0 + 448));
      v24 = v5[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_25;
      }

      v28 = v23;
      if (v5[3] < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v39 = v7;
      sub_1DAB66728();
      v7 = v39;
      v5 = v46;
      if (v28)
      {
LABEL_3:
        v6 = v7;
        sub_1DAA9B1C8(v0 + 16);
        v7 = v6;
        goto LABEL_4;
      }

LABEL_12:
      v5[(v7 >> 6) + 8] |= 1 << v7;
      v30 = v5[6] + 136 * v7;
      v32 = *(v0 + 496);
      v31 = *(v0 + 512);
      v33 = *(v0 + 480);
      *(v30 + 16) = *(v0 + 464);
      *(v30 + 32) = v33;
      *(v30 + 48) = v32;
      *(v30 + 64) = v31;
      *v30 = *v3;
      v34 = *(v0 + 528);
      v35 = *(v0 + 544);
      v36 = *(v0 + 560);
      *(v30 + 128) = *(v0 + 576);
      *(v30 + 96) = v35;
      *(v30 + 112) = v36;
      *(v30 + 80) = v34;
      *(v5[7] + 8 * v7) = MEMORY[0x1E69E7CC0];
      v37 = v5[2];
      v26 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v5[2] = v38;
LABEL_4:
      ++v2;
      v8 = v5[7] + 8 * v7;
      sub_1DAC2899C(v15);
      sub_1DABC1894(v0 + 16);
      v4 += 9;
      if (v45 == v2)
      {
        v40 = *(v0 + 720);
        goto LABEL_18;
      }
    }

    sub_1DAB61D98(v27, isUniquelyReferenced_nonNull_native);
    v7 = sub_1DAB095DC((v0 + 448));
    if ((v28 & 1) != (v29 & 1))
    {

      sub_1DACBA1F4();
      return;
    }

LABEL_11:
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v41 = *(v0 + 696);
  v42 = *(v0 + 672);
  v43 = *(v0 + 592);

  *v43 = v5;

  v44 = *(v0 + 8);

  v44();
}

uint64_t sub_1DABC08B8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[84];

  v4 = v0[1];
  v5 = v0[91];

  return v4();
}

uint64_t sub_1DABC0934(uint64_t a1)
{
  v3 = v2;
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(*(v6 - 8) + 64);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[4];
  v12 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = v12[8];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DAA9A3AC;

  return sub_1DABC0130(a1, v11, v1 + v8, v1 + v10, v13, v14, v6, v5);
}

uint64_t sub_1DABC0AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 608) = a8;
  *(v8 + 600) = a7;
  *(v8 + 640) = a6;
  *(v8 + 592) = a5;
  *(v8 + 584) = a4;
  *(v8 + 576) = a3;
  *(v8 + 568) = a2;
  *(v8 + 560) = a1;
  v9 = *(a2 + 112);
  *(v8 + 112) = *(a2 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(a2 + 128);
  v10 = *(a2 + 48);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 64) = v10;
  v11 = *(a2 + 80);
  *(v8 + 80) = *(a2 + 64);
  *(v8 + 96) = v11;
  v12 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v12;
  return MEMORY[0x1EEE6DFA0](sub_1DABC0B34, 0, 0);
}

uint64_t sub_1DABC0B34()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  *(v0 + 152) = *v2;
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  v12 = *(v2 + 48);
  *(v0 + 216) = *(v2 + 64);
  *(v0 + 200) = v12;
  *(v0 + 184) = v11;
  *(v0 + 168) = v10;
  v13 = *(v2 + 80);
  v14 = *(v2 + 96);
  v15 = *(v2 + 112);
  *(v0 + 280) = *(v2 + 128);
  *(v0 + 264) = v15;
  *(v0 + 248) = v14;
  *(v0 + 232) = v13;
  sub_1DAA806E4(v0 + 16, v0 + 288);
  v16 = swift_task_alloc();
  *(v0 + 616) = v16;
  *v16 = v0;
  v16[1] = sub_1DABC0C6C;
  v17 = *(v0 + 608);
  v18 = *(v0 + 600);
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 576);

  return sub_1DABBF120(v0 + 152, v20, v19, v1 & 1, v18, v17);
}

uint64_t sub_1DABC0C6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v7 = sub_1DABC0DB8;
  }

  else
  {
    *(v4 + 632) = a1;
    v7 = sub_1DABC0D94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DABC0DB8()
{
  v1 = *(v0 + 568);
  *(v0 + 424) = *v1;
  v2 = *(v1 + 64);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v0 + 472) = *(v1 + 48);
  *(v0 + 488) = v2;
  *(v0 + 440) = v4;
  *(v0 + 456) = v3;
  v6 = *(v1 + 96);
  v5 = *(v1 + 112);
  v7 = *(v1 + 80);
  *(v0 + 552) = *(v1 + 128);
  *(v0 + 520) = v6;
  *(v0 + 536) = v5;
  *(v0 + 504) = v7;
  sub_1DAA9B1C8(v0 + 424);
  v8 = *(v0 + 8);
  v9 = *(v0 + 624);

  return v8();
}

uint64_t sub_1DABC0E50(__int128 *a1, uint64_t *a2)
{
  v12 = a1[6];
  v13 = a1[7];
  v14 = *(a1 + 16);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v6 = *a1;
  v7 = a1[1];
  v2 = *a2;
  sub_1DAAD4E00();
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v2;
  sub_1DACB71E4();
  v3 = sub_1DACB89D4();
  v4 = sub_1DACB8A64();

  return v4;
}

uint64_t sub_1DABC0F50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  return sub_1DABBE584(v3, v1, v2);
}

void sub_1DABC0F84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v6 = *(v2 + 16);
  sub_1DAB6B824(*a1);
  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t sub_1DABC1070(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v21 = a4;
  v12 = sub_1DACB8204();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = *v8;
  sub_1DABBE9A8();
  (*(v13 + 16))(&v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v15;
  (*(v13 + 32))(v17 + v16, &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  v18 = v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = a3;
  *(v18 + 8) = v21 & 1;
  sub_1DACB71E4();
  sub_1DACB71F4();
  return sub_1DACB8A44();
}

uint64_t sub_1DABC11F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a3;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAB07890;

  return sub_1DABBF3E4(a2, v11, a4, a5, a6 & 1);
}

uint64_t sub_1DABC12BC(uint64_t a1)
{
  v4 = *(sub_1DACB8204() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAA9A3AC;

  return sub_1DABC11F4(a1, v6, (v1 + 24), v1 + v5, v8, v9);
}

uint64_t sub_1DABC13FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 488) = a6;
  *(v6 + 440) = a4;
  *(v6 + 448) = a5;
  *(v6 + 424) = a1;
  *(v6 + 432) = a2;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 456) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABC1454, 0, 0);
}

uint64_t sub_1DABC1454()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  sub_1DAA806E4(v0 + 16, v0 + 152);
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1DABC1550;
  v11 = *(v0 + 448);
  v12 = *(v0 + 456);
  v13 = *(v0 + 440);

  return sub_1DABBEA7C(v0 + 16, v13, v11, v1 & 1);
}

uint64_t sub_1DABC1550(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v7 = sub_1DABC2758;
  }

  else
  {
    *(v4 + 480) = a1;
    v7 = sub_1DABC2750;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DABC1678(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1DACB8204() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA9A3AC;

  return sub_1DABC13FC(a1, a2, (v2 + 16), v2 + v7, v9, v10);
}

void sub_1DABC17B8()
{
  if (!qword_1ECBE87A0)
  {
    sub_1DAA488A4(255, &qword_1EE11FAA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE87A0);
    }
  }
}

uint64_t sub_1DABC1830(uint64_t a1, uint64_t a2)
{
  sub_1DABC17B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABC1894(uint64_t a1)
{
  sub_1DABC17B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DABC18F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a3;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAAFF1F4;

  return sub_1DABBF798(a2, v11, a4, a5, a6 & 1);
}

uint64_t sub_1DABC19B8(uint64_t a1)
{
  v4 = *(sub_1DACB8204() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAA94754;

  return sub_1DABC18F0(a1, v6, (v1 + 24), v1 + v5, v8, v9);
}

uint64_t sub_1DABC1AF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 488) = a6;
  *(v6 + 440) = a4;
  *(v6 + 448) = a5;
  *(v6 + 424) = a1;
  *(v6 + 432) = a2;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 456) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABC1B50, 0, 0);
}

uint64_t sub_1DABC1B50()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  sub_1DAA806E4(v0 + 16, v0 + 152);
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1DABC1C4C;
  v11 = *(v0 + 448);
  v12 = *(v0 + 456);
  v13 = *(v0 + 440);

  return sub_1DABBECE4(v0 + 16, v13, v11, v1 & 1);
}

uint64_t sub_1DABC1C4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v7 = sub_1DABC1D98;
  }

  else
  {
    *(v4 + 480) = a1;
    v7 = sub_1DABC1D74;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DABC1D98()
{
  v1 = *(v0 + 432);
  *(v0 + 288) = *v1;
  v2 = *(v1 + 64);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v0 + 336) = *(v1 + 48);
  *(v0 + 352) = v2;
  *(v0 + 304) = v4;
  *(v0 + 320) = v3;
  v6 = *(v1 + 96);
  v5 = *(v1 + 112);
  v7 = *(v1 + 80);
  *(v0 + 416) = *(v1 + 128);
  *(v0 + 384) = v6;
  *(v0 + 400) = v5;
  *(v0 + 368) = v7;
  sub_1DAA9B1C8(v0 + 288);
  v8 = *(v0 + 8);
  v9 = *(v0 + 472);

  return v8();
}

uint64_t sub_1DABC1E30(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1DACB8204() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA9A3AC;

  return sub_1DABC1AF8(a1, a2, (v2 + 16), v2 + v7, v9, v10);
}

uint64_t sub_1DABC1F70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a3;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAB07890;

  return sub_1DABBFE9C(a2, v11, a4, a5, a6 & 1);
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_1DACB8204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

uint64_t sub_1DABC2110(uint64_t a1)
{
  v4 = *(sub_1DACB8204() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAA9A3AC;

  return sub_1DABC1F70(a1, v6, (v1 + 24), v1 + v5, v8, v9);
}

uint64_t sub_1DABC2250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 488) = a6;
  *(v6 + 440) = a4;
  *(v6 + 448) = a5;
  *(v6 + 424) = a1;
  *(v6 + 432) = a2;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 456) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABC22A8, 0, 0);
}

uint64_t sub_1DABC22A8()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  sub_1DAA806E4(v0 + 16, v0 + 152);
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1DABC1550;
  v11 = *(v0 + 448);
  v12 = *(v0 + 456);
  v13 = *(v0 + 440);

  return sub_1DABBEFD4(v0 + 16, v13, v11, v1 & 1);
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_1DACB8204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

uint64_t sub_1DABC2474(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1DACB8204() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA9A3AC;

  return sub_1DABC2250(a1, a2, (v2 + 16), v2 + v7, v9, v10);
}

uint64_t sub_1DABC25B4(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(*(v7 - 8) + 64);
  v10 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v11 = *(sub_1DACB8204() - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1DAA9A3AC;

  return sub_1DABC0AD0(a1, a2, v2 + v10, v2 + v12, v14, v15, v7, v8);
}

uint64_t sub_1DABC2788@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *&result;
  if (a2)
  {
    v9 = 1.79769313e308;
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = a3;
  }

  if (a6)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = a5;
  }

  *a9 = v9;
  if ((a8 & 1) == 0)
  {
    v10 = a7;
  }

  *(a9 + 8) = v11;
  *(a9 + 16) = v12;
  *(a9 + 24) = v10;
  return result;
}

uint64_t sub_1DABC27C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABC31EC(0, &qword_1EE123C70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v37 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC2EFC();
  sub_1DACBA2F4();
  if (!v2)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v47 = 0;
    sub_1DACB9F84();
    v12 = v45;
    LODWORD(v42) = v46;
    if (v46)
    {
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[16 * v15];
      *(v16 + 4) = 0xD000000000000012;
      *(v16 + 5) = 0x80000001DACEC230;
      v48 = v13;
      swift_endAccess();
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v47 = 1;
    sub_1DACB9F84();
    v41 = *&v45;
    LODWORD(v40) = v46;
    if (v46)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        v13 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v13);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = 0xD000000000000017;
      *(v19 + 5) = 0x80000001DACEC250;
      v48 = v13;
      swift_endAccess();
    }

    v47 = 2;
    sub_1DACB9F84();
    v39 = *&v45;
    v38 = v46;
    if (v46)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        v13 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v13);
      }

      *(v13 + 2) = v21 + 1;
      v22 = &v13[16 * v21];
      *(v22 + 4) = 0xD000000000000016;
      *(v22 + 5) = 0x80000001DACEC270;
      v48 = v13;
      swift_endAccess();
    }

    LOBYTE(v45) = 3;
    sub_1DACB9F84();
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v25 = *(v13 + 2);
      v24 = *(v13 + 3);
      if (v25 >= v24 >> 1)
      {
        v13 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v13);
      }

      *(v13 + 2) = v25 + 1;
      v26 = &v13[16 * v25];
      *(v26 + 4) = 0xD000000000000022;
      *(v26 + 5) = 0x80000001DACEC290;
      if (v42)
      {
        v12 = 1.79769313e308;
      }

      if (v40)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v41;
      }

      v28 = v39;
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      if (v38)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v41 = v28;
      v42 = v27;
    }

    else
    {
      v29 = v43;
      v30 = *(v13 + 2);
      if (v42)
      {
        v12 = 1.79769313e308;
      }

      v31 = 0x7FFFFFFFFFFFFFFFLL;
      if (v40)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v41;
      }

      if (!v38)
      {
        v31 = v39;
      }

      v41 = v31;
      v42 = v32;
      if (!v30)
      {
        sub_1DAA41DCC();
        v35 = sub_1DACB9AD4();
        sub_1DACB9914();
        sub_1DACB8C64();
        goto LABEL_44;
      }

      v40 = v43;
    }

    sub_1DAA41D64();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v33 + 56) = v34;
    *(v33 + 64) = sub_1DAAF691C();
    *(v33 + 32) = v13;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v35 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v29 = v40;
LABEL_44:

    (*(v7 + 8))(v10, v6);

    *a2 = v12;
    v36 = v41;
    *(a2 + 8) = v42;
    *(a2 + 16) = v36;
    *(a2 + 24) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABC2E88()
{
  v1 = 0xD000000000000012;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000022;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

unint64_t sub_1DABC2EFC()
{
  result = qword_1EE124540;
  if (!qword_1EE124540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124540);
  }

  return result;
}

uint64_t sub_1DABC2F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABC33B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABC2F78(uint64_t a1)
{
  v2 = sub_1DABC2EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC2FB4(uint64_t a1)
{
  v2 = sub_1DABC2EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC2FF0(void *a1)
{
  sub_1DABC31EC(0, &qword_1EE123BB8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[2];
  v15[1] = v1[1];
  v11 = v1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC2EFC();
  sub_1DACBA304();
  v19 = 0;
  v13 = v15[2];
  sub_1DACBA0B4();
  if (!v13)
  {
    v18 = 1;
    sub_1DACBA0C4();
    v17 = 2;
    sub_1DACBA0C4();
    v16 = 3;
    sub_1DACBA0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1DABC31EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABC2EFC();
    v7 = a3(a1, &type metadata for AppReviewPromptConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABC3250(uint64_t a1, int a2)
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

uint64_t sub_1DABC3270(uint64_t result, int a2, int a3)
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

unint64_t sub_1DABC32B0()
{
  result = qword_1ECBE87A8;
  if (!qword_1ECBE87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87A8);
  }

  return result;
}

unint64_t sub_1DABC3308()
{
  result = qword_1EE124530;
  if (!qword_1EE124530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124530);
  }

  return result;
}

unint64_t sub_1DABC3360()
{
  result = qword_1EE124538;
  if (!qword_1EE124538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124538);
  }

  return result;
}

uint64_t sub_1DABC33B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DACEC230 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC250 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEC270 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACEC290 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DABC3520(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  sub_1DACB8434();
}

uint64_t sub_1DABC3574@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = 0xFFFFFFFFLL;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
  }

  if (a5)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  *a9 = result;
  *(a9 + 8) = v10;
  *(a9 + 16) = 0;
  if (a7)
  {
    a6 = 1;
  }

  *(a9 + 24) = v11;
  v13 = 86400;
  if ((a10 & 1) == 0)
  {
    v13 = a8;
  }

  *(a9 + 32) = 0;
  *(a9 + 40) = a6;
  *(a9 + 48) = 0;
  *(a9 + 56) = v13;
  *(a9 + 64) = 0;
  return result;
}

unint64_t sub_1DABC35E4()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000018;
  v4 = 0xD00000000000001ELL;
  if (v2 != 3)
  {
    v4 = 0xD000000000000028;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1DABC3674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABC40A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABC369C(uint64_t a1)
{
  v2 = sub_1DABC3E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC36D8(uint64_t a1)
{
  v2 = sub_1DABC3E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC3714(void *a1)
{
  sub_1DABC3E54(0, &qword_1EE123B98, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = *v1;
  v21 = v1[1];
  v20 = *(v1 + 16);
  v19 = v1[3];
  v18 = *(v1 + 32);
  v17 = v1[5];
  v11 = *(v1 + 48);
  v14 = v1[7];
  v15 = *(v1 + 64);
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC3E00();
  sub_1DACB71E4();
  sub_1DACBA304();
  v27 = v10;
  v26 = 0;
  sub_1DAA613E8();
  sub_1DAA962D8(&qword_1EE123E98);
  sub_1DACBA074();
  if (v2)
  {
  }

  else
  {

    v25 = 1;
    sub_1DACBA064();
    v24 = 2;
    sub_1DACBA054();
    v23 = 3;
    sub_1DACBA054();
    v22 = 4;
    sub_1DACBA054();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DABC39BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABC3E54(0, &qword_1EE123C50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC3E00();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DAA613E8();
  LOBYTE(v35) = 0;
  sub_1DAA962D8(&qword_1EE123E88);
  sub_1DACB9F84();
  v12 = v40[0];
  LOBYTE(v40[0]) = 1;
  v13 = sub_1DACB9F74();
  v58 = v14 & 1;
  LOBYTE(v40[0]) = 2;
  v59 = sub_1DACB9F64();
  v56 = v15 & 1;
  LOBYTE(v40[0]) = 3;
  v34 = sub_1DACB9F64();
  v54 = v16 & 1;
  v51 = 4;
  v17 = sub_1DACB9F64();
  v19 = v18;
  v20 = *(v7 + 8);
  v33 = v17;
  v20(v10, v6);
  v52 = v19 & 1;
  *&v35 = v12;
  v32 = v13;
  *(&v35 + 1) = v13;
  v31 = v58;
  LOBYTE(v36) = v58;
  *(&v36 + 1) = *v57;
  DWORD1(v36) = *&v57[3];
  v21 = v59;
  *(&v36 + 1) = v59;
  v30 = v56;
  LOBYTE(v37) = v56;
  *(&v37 + 1) = *v55;
  DWORD1(v37) = *&v55[3];
  v22 = v34;
  *(&v37 + 1) = v34;
  v23 = v54;
  LOBYTE(v38) = v54;
  DWORD1(v38) = *&v53[3];
  *(&v38 + 1) = *v53;
  *(&v38 + 1) = v33;
  v24 = v52;
  v39 = v52;
  v25 = v37;
  v26 = v38;
  *(a2 + 64) = v52;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  v27 = v36;
  *a2 = v35;
  *(a2 + 16) = v27;
  sub_1DAA4F3F4(&v35, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40[0] = v12;
  v40[1] = v32;
  v41 = v31;
  *v42 = *v57;
  *&v42[3] = *&v57[3];
  v43 = v21;
  v44 = v30;
  *v45 = *v55;
  *&v45[3] = *&v55[3];
  v46 = v22;
  v47 = v23;
  *&v48[3] = *&v53[3];
  *v48 = *v53;
  v49 = v33;
  v50 = v24;
  return sub_1DAA5337C(v40);
}

unint64_t sub_1DABC3E00()
{
  result = qword_1EE1243F8;
  if (!qword_1EE1243F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243F8);
  }

  return result;
}

void sub_1DABC3E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABC3E00();
    v7 = a3(a1, &type metadata for PaidBundleViaOfferConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABC3EB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DABC3F14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DABC3FA0()
{
  result = qword_1ECBE87B0;
  if (!qword_1ECBE87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87B0);
  }

  return result;
}

unint64_t sub_1DABC3FF8()
{
  result = qword_1EE1243E8;
  if (!qword_1EE1243E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243E8);
  }

  return result;
}

unint64_t sub_1DABC4050()
{
  result = qword_1EE1243F0;
  if (!qword_1EE1243F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243F0);
  }

  return result;
}

uint64_t sub_1DABC40A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DACEC360 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACEC380 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACEC3A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACEC3C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001DACEC3E0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DABC4258@<X0>(char *a1@<X8>)
{
  sub_1DAA82998();
  v42 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - v7;
  sub_1DAA492B4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = sub_1DACB7CC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v44 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - v20;
  v22 = type metadata accessor for Quote();
  sub_1DAA89B98(v1 + *(v22 + 52), v14, sub_1DAA492B4);
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) == 1)
  {
    v12 = v14;
LABEL_5:
    sub_1DAA89DF0(v12, sub_1DAA492B4);
    sub_1DAA49610();
    return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
  }

  v40 = a1;
  v24 = v14;
  v25 = *(v16 + 32);
  v25(v21, v24, v15);
  sub_1DAA89B98(v1 + *(v22 + 56), v12, sub_1DAA492B4);
  if (v23(v12, 1, v15) == 1)
  {
    (*(v16 + 8))(v21, v15);
    a1 = v40;
    goto LABEL_5;
  }

  v28 = v44;
  v25(v44, v12, v15);
  sub_1DAA804F4(&qword_1EE123A48, MEMORY[0x1E6969530]);
  result = sub_1DACB9244();
  if (result)
  {
    v29 = v25;
    v30 = v41;
    v29(v41, v21, v15);
    v31 = v42;
    v29((v30 + *(v42 + 48)), v28, v15);
    v32 = v43;
    sub_1DAA89B98(v30, v43, sub_1DAA82998);
    v33 = *(v31 + 48);
    v34 = v40;
    v29(v40, v32, v15);
    v35 = *(v16 + 8);
    v35(v32 + v33, v15);
    sub_1DAA83664(v30, v32, sub_1DAA82998);
    v36 = *(v31 + 48);
    sub_1DAA49610();
    v38 = v37;
    v29(&v34[*(v37 + 36)], (v32 + v36), v15);
    v35(v32, v15);
    return (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABC46F4()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1DABC4700()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1DABC470C()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1DABC4718()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_1DABC4724()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_1DABC4730()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t sub_1DABC473C()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_1DABC4748()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABC4868@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote();
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t sub_1DABC489C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote();
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t sub_1DABC48D0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote();
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t sub_1DABC499C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote() + 88);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DABC4A64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote() + 96);
  v4 = sub_1DACB7F54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DABC4AE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, char *a23, char *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v32 = *a18;
  v33 = *a22;
  v34 = *a23;
  v35 = *a24;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17;
  *(a9 + 128) = v32;
  v36 = type metadata accessor for Quote();
  sub_1DAA83664(a19, a9 + v36[13], sub_1DAA492B4);
  sub_1DAA83664(a20, a9 + v36[14], sub_1DAA492B4);
  sub_1DAA83664(a21, a9 + v36[15], sub_1DAA492B4);
  *(a9 + v36[16]) = v33;
  *(a9 + v36[17]) = v34;
  *(a9 + v36[18]) = v35;
  v37 = a9 + v36[19];
  *v37 = a25;
  *(v37 + 8) = a26 & 1;
  sub_1DAA83664(a27, a9 + v36[20], sub_1DAA492B4);
  sub_1DAA83664(a28, a9 + v36[21], sub_1DAA492B4);
  sub_1DAA83664(a29, a9 + v36[23], sub_1DAA492B4);
  v38 = v36[22];
  v39 = sub_1DACB7CC4();
  (*(*(v39 - 8) + 32))(a9 + v38, a30, v39);
  v40 = v36[24];
  v41 = sub_1DACB7F54();
  v42 = *(*(v41 - 8) + 32);

  return v42(a9 + v40, a31, v41);
}

uint64_t sub_1DABC4D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABC5B88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABC4D7C(uint64_t a1)
{
  v2 = sub_1DAA7E358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC4DB8(uint64_t a1)
{
  v2 = sub_1DAA7E358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC4DF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v79 = sub_1DACB7F54();
  v77 = *(v79 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7CC4();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA492B4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v73 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v73 = &v73 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v84 = &v73 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v73 - v21;
  sub_1DAA7E2F0(0, &qword_1EE11F5A0, sub_1DAA7E358, &type metadata for Quote.CodingKeys, MEMORY[0x1E69E6F48]);
  v85 = v23;
  v83 = *(v23 - 8);
  v24 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v73 - v25;
  v27 = type metadata accessor for Quote();
  v28 = *(*(v27 - 1) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v31 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1DAA7E358();
  v86 = v26;
  v33 = v88;
  sub_1DACBA2F4();
  if (v33)
  {
    v88 = v33;
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v34 = v20;
  v35 = v83;
  v36 = v84;
  v90 = 0;
  *v30 = sub_1DACB9F54();
  v30[8] = v37 & 1;
  v90 = 1;
  *(v30 + 2) = sub_1DACB9F54();
  v30[24] = v38 & 1;
  v90 = 2;
  *(v30 + 4) = sub_1DACB9F54();
  v30[40] = v39 & 1;
  v90 = 3;
  *(v30 + 6) = sub_1DACB9F54();
  v30[56] = v40 & 1;
  v90 = 4;
  *(v30 + 8) = sub_1DACB9F54();
  v30[72] = v41 & 1;
  v90 = 5;
  *(v30 + 10) = sub_1DACB9F54();
  v30[88] = v42 & 1;
  v90 = 6;
  *(v30 + 12) = sub_1DACB9F54();
  v30[104] = v44 & 1;
  v90 = 7;
  v45 = sub_1DACB9F34();
  v88 = 0;
  *(v30 + 14) = v45;
  *(v30 + 15) = v46;
  v89 = 8;
  sub_1DABC5A78();
  v47 = v88;
  sub_1DACB9FE4();
  v88 = v47;
  if (v47 || (v30[128] = v90, v90 = 9, sub_1DAA804F4(&qword_1EE123A38, MEMORY[0x1E6969530]), v48 = v88, sub_1DACB9F84(), (v88 = v48) != 0))
  {
    (*(v35 + 8))(v86, v85);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  else
  {
    sub_1DAA83664(v22, &v30[v27[13]], sub_1DAA492B4);
    v90 = 10;
    v59 = v88;
    sub_1DACB9F84();
    v88 = v59;
    if (v59)
    {
      (*(v35 + 8))(v86, v85);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v49 = 1;
    }

    else
    {
      sub_1DAA83664(v34, &v30[v27[14]], sub_1DAA492B4);
      v90 = 11;
      v60 = v88;
      sub_1DACB9F84();
      v88 = v60;
      if (v60)
      {
        (*(v35 + 8))(v86, v85);
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v49 = 1;
        v50 = 1;
      }

      else
      {
        sub_1DAA83664(v36, &v30[v27[15]], sub_1DAA492B4);
        v89 = 12;
        sub_1DABC5ACC();
        v61 = v88;
        sub_1DACB9F84();
        v88 = v61;
        if (v61)
        {
          goto LABEL_33;
        }

        v30[v27[16]] = v90;
        v89 = 13;
        v62 = v88;
        sub_1DACB9F84();
        v88 = v62;
        if (v62)
        {
          goto LABEL_33;
        }

        v30[v27[17]] = v90;
        v89 = 14;
        v63 = v88;
        sub_1DACB9F84();
        v88 = v63;
        if (v63)
        {
          goto LABEL_33;
        }

        v30[v27[18]] = v90;
        v90 = 15;
        v64 = v88;
        v65 = sub_1DACB9F54();
        v88 = v64;
        if (v64 || (v67 = &v30[v27[19]], *v67 = v65, v67[8] = v66 & 1, v90 = 16, v68 = v88, sub_1DACB9F84(), (v88 = v68) != 0))
        {
LABEL_33:
          (*(v35 + 8))(v86, v85);
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v49 = 1;
          v50 = 1;
          v51 = 1;
        }

        else
        {
          sub_1DAA83664(v73, &v30[v27[20]], sub_1DAA492B4);
          v90 = 17;
          v69 = v88;
          sub_1DACB9F84();
          v88 = v69;
          if (v69)
          {
            (*(v35 + 8))(v86, v85);
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v49 = 1;
            v50 = 1;
            v51 = 1;
            v52 = 1;
          }

          else
          {
            sub_1DAA83664(v74, &v30[v27[21]], sub_1DAA492B4);
            v90 = 18;
            v70 = v88;
            sub_1DACB9FE4();
            v88 = v70;
            if (v70)
            {
              (*(v35 + 8))(v86, v85);
              v54 = 0;
              v55 = 0;
              v49 = 1;
              v50 = 1;
              v51 = 1;
              v52 = 1;
              v53 = 1;
            }

            else
            {
              (*(v81 + 32))(&v30[v27[22]], v76, v82);
              v90 = 19;
              v71 = v88;
              sub_1DACB9F84();
              v88 = v71;
              if (v71)
              {
                (*(v35 + 8))(v86, v85);
                v55 = 0;
                v49 = 1;
                v50 = 1;
                v51 = 1;
                v52 = 1;
                v53 = 1;
                v54 = 1;
              }

              else
              {
                sub_1DAA83664(v75, &v30[v27[23]], sub_1DAA492B4);
                v90 = 20;
                sub_1DAA804F4(&qword_1EE1239F8, MEMORY[0x1E6969BC0]);
                v72 = v88;
                sub_1DACB9FE4();
                v88 = v72;
                if (!v72)
                {
                  (*(v35 + 8))(v86, v85);
                  (*(v77 + 32))(&v30[v27[24]], v78, v79);
                  sub_1DAA89B98(v30, v80, type metadata accessor for Quote);
                  __swift_destroy_boxed_opaque_existential_1(v87);
                  v57 = type metadata accessor for Quote;
                  v58 = v30;
                  return sub_1DAA89DF0(v58, v57);
                }

                (*(v35 + 8))(v86, v85);
                v49 = 1;
                v50 = 1;
                v51 = 1;
                v52 = 1;
                v53 = 1;
                v54 = 1;
                v55 = 1;
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v87);
  v56 = *(v30 + 15);

  if (v49)
  {
    result = sub_1DAA89DF0(&v30[v27[13]], sub_1DAA492B4);
    if ((v50 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v50)
  {
LABEL_10:
    if (v51)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  result = sub_1DAA89DF0(&v30[v27[14]], sub_1DAA492B4);
  if (v51)
  {
LABEL_11:
    result = sub_1DAA89DF0(&v30[v27[15]], sub_1DAA492B4);
    if ((v52 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v52)
  {
LABEL_12:
    if (v53)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_1DAA89DF0(&v30[v27[20]], sub_1DAA492B4);
  if (v53)
  {
LABEL_13:
    result = sub_1DAA89DF0(&v30[v27[21]], sub_1DAA492B4);
    if ((v54 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v54)
  {
LABEL_14:
    if (v55)
    {
      goto LABEL_22;
    }

    return result;
  }

LABEL_21:
  result = (*(v81 + 8))(&v30[v27[22]], v82);
  if (v55)
  {
LABEL_22:
    v57 = sub_1DAA492B4;
    v58 = &v30[v27[23]];
    return sub_1DAA89DF0(v58, v57);
  }

  return result;
}

unint64_t sub_1DABC5A78()
{
  result = qword_1EE123370;
  if (!qword_1EE123370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123370);
  }

  return result;
}

unint64_t sub_1DABC5ACC()
{
  result = qword_1EE1237C8;
  if (!qword_1EE1237C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237C8);
  }

  return result;
}

unint64_t sub_1DABC5B34()
{
  result = qword_1ECBE87B8;
  if (!qword_1ECBE87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87B8);
  }

  return result;
}

uint64_t sub_1DABC5B88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE1AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F487265746661 && a2 == 0xEF65636972507372 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE19D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEE00656369725074 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE1C10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEC0000006E65704FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xED000065736F6C43 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1A90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x756F536563697270 && a2 == 0xEB00000000656372 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE19F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEF656372756F5374 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACEC420 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE1B60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE3AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7243726576726573 && a2 == 0xEF74416465746165 || (sub_1DACBA174() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL)
  {

    return 20;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1DABC6274()
{
  if (*v0)
  {
    result = 1635018093;
  }

  else
  {
    result = 0x656E696C64616568;
  }

  *v0;
  return result;
}

uint64_t sub_1DABC62A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E696C64616568 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DABC6384(uint64_t a1)
{
  v2 = sub_1DABC854C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC63C0(uint64_t a1)
{
  v2 = sub_1DABC854C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABC63FC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DABC7254(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1DABC6448()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6D755374726F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1DABC64A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABC75E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABC64C8(uint64_t a1)
{
  v2 = sub_1DABC89E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6504(uint64_t a1)
{
  v2 = sub_1DABC89E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABC6540@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DABC76FC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1DABC6584()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0x546873696C627570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_1DABC65EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABC796C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABC6614(uint64_t a1)
{
  v2 = sub_1DABC8A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6650(uint64_t a1)
{
  v2 = sub_1DABC8A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABC668C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DABC7A90(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1DABC66E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6768(uint64_t a1)
{
  v2 = sub_1DABC9084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC67A4(uint64_t a1)
{
  v2 = sub_1DABC9084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC67E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1DABC9484(0, &qword_1ECBE88D0, sub_1DABC9084);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC9084();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v17;
  v12 = sub_1DACB9F34();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_1DABC6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6A14(uint64_t a1)
{
  v2 = sub_1DABC90D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6A50(uint64_t a1)
{
  v2 = sub_1DABC90D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC6A8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1DABC9484(0, &qword_1ECBE88E0, sub_1DABC90D8);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC90D8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v17;
  v12 = sub_1DACB9FA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_1DABC6C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6CC8(uint64_t a1)
{
  v2 = sub_1DABC893C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6D04(uint64_t a1)
{
  v2 = sub_1DABC893C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABC6D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABC7D30(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABC6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6574497377656ELL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6E18(uint64_t a1)
{
  v2 = sub_1DABC8FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6E54(uint64_t a1)
{
  v2 = sub_1DABC8FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABC6E90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABC7ED8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABC6EBC()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABC6F28()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABC6F78@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DABC7000@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DABC7058(uint64_t a1)
{
  v2 = sub_1DABC94E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC7094(uint64_t a1)
{
  v2 = sub_1DABC94E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC70D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DABC8080(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABC7120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5265636976726573 && a2 == 0xEF65736E6F707365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC71B0(uint64_t a1)
{
  v2 = sub_1DABC84A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC71EC(uint64_t a1)
{
  v2 = sub_1DABC84A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABC7228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABC82FC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABC7254@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  sub_1DABC9484(0, &qword_1ECBE87D8, sub_1DABC854C);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC854C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  LOBYTE(v33) = 0;
  sub_1DABC85A0();
  sub_1DACB9FE4();
  v12 = v40;
  v31 = v39;
  v13 = v42;
  v30 = v41;
  v14 = v44;
  v29 = v43;
  v54 = 1;
  sub_1DABC85F4();
  sub_1DACB9FE4();
  (*(v11 + 8))(v9, v5);
  v27 = *(&v51 + 1);
  v28 = v51;
  v15 = *(&v52 + 1);
  v26 = v52;
  v24 = *(&v53 + 1);
  v25 = v53;
  v16 = v31;
  *&v33 = v31;
  *(&v33 + 1) = v12;
  v17 = v30;
  *&v34 = v30;
  *(&v34 + 1) = v13;
  v18 = v29;
  *&v35 = v29;
  *(&v35 + 1) = v14;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  sub_1DAADF6A8(&v33, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39 = v16;
  v40 = v12;
  v41 = v17;
  v42 = v13;
  v43 = v18;
  v44 = v14;
  v45 = v28;
  v46 = v27;
  v47 = v26;
  v48 = v15;
  v49 = v25;
  v50 = v24;
  result = sub_1DAADF704(&v39);
  v20 = v36;
  v21 = v32;
  v32[2] = v35;
  v21[3] = v20;
  v22 = v38;
  v21[4] = v37;
  v21[5] = v22;
  v23 = v34;
  *v21 = v33;
  v21[1] = v23;
  return result;
}

uint64_t sub_1DABC75E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D755374726F6873 && a2 == 0xEC0000007972616DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DABC76FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  sub_1DABC9484(0, &qword_1ECBE8840, sub_1DABC89E4);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC89E4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v26;
  v29 = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v25 = v13;
  v28 = 1;
  v23 = sub_1DACB9FA4();
  v24 = v16;
  v27 = 2;
  v17 = sub_1DACB9F34();
  v18 = v9;
  v20 = v19;
  (*(v11 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v25;
  v12[1] = v15;
  v22 = v24;
  v12[2] = v23;
  v12[3] = v22;
  v12[4] = v17;
  v12[5] = v20;
  return result;
}

uint64_t sub_1DABC796C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACEC440 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546873696C627570 && a2 == 0xEB00000000656D69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DABC7A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  sub_1DABC9484(0, &qword_1ECBE8850, sub_1DABC8A38);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC8A38();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v24;
  v27 = 0;
  sub_1DABC8A8C();
  sub_1DACB9FE4();
  v13 = v25;
  v23 = v26;
  v27 = 1;
  sub_1DABC8AE0();
  sub_1DACB9FE4();
  v21 = v25;
  v22 = v13;
  v14 = v26;
  LOBYTE(v25) = 2;
  v15 = sub_1DACB9FA4();
  v16 = v9;
  v18 = v17;
  (*(v11 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v23;
  *v12 = v22;
  v12[1] = v20;
  v12[2] = v21;
  v12[3] = v14;
  v12[4] = v15;
  v12[5] = v18;
  return result;
}

void *sub_1DABC7D30(uint64_t *a1)
{
  sub_1DABC9484(0, &qword_1ECBE8828, sub_1DABC893C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC893C();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC8990();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

void *sub_1DABC7ED8(uint64_t *a1)
{
  sub_1DABC9484(0, &qword_1ECBE88B8, sub_1DABC8FDC);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC8FDC();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC9030();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DABC8080(uint64_t *a1)
{
  sub_1DABC9484(0, &qword_1ECBE8938, sub_1DABC94E4);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABC94E4();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC9620(0, &qword_1ECBE8948, MEMORY[0x1E69E62F8]);
    sub_1DABC9538();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DABC82FC(uint64_t *a1)
{
  sub_1DABC9484(0, &qword_1ECBE87C0, sub_1DABC84A4);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC84A4();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC84F8();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DABC84A4()
{
  result = qword_1ECBE87C8;
  if (!qword_1ECBE87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87C8);
  }

  return result;
}

unint64_t sub_1DABC84F8()
{
  result = qword_1ECBE87D0;
  if (!qword_1ECBE87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87D0);
  }

  return result;
}

unint64_t sub_1DABC854C()
{
  result = qword_1ECBE87E0;
  if (!qword_1ECBE87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87E0);
  }

  return result;
}

unint64_t sub_1DABC85A0()
{
  result = qword_1ECBE87E8;
  if (!qword_1ECBE87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87E8);
  }

  return result;
}

unint64_t sub_1DABC85F4()
{
  result = qword_1ECBE87F0;
  if (!qword_1ECBE87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87F0);
  }

  return result;
}

uint64_t sub_1DABC8668(uint64_t a1, int a2)
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

uint64_t sub_1DABC86B0(uint64_t result, int a2, int a3)
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

unint64_t sub_1DABC8730()
{
  result = qword_1ECBE87F8;
  if (!qword_1ECBE87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87F8);
  }

  return result;
}

unint64_t sub_1DABC8788()
{
  result = qword_1ECBE8800;
  if (!qword_1ECBE8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8800);
  }

  return result;
}

unint64_t sub_1DABC87E0()
{
  result = qword_1ECBE8808;
  if (!qword_1ECBE8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8808);
  }

  return result;
}

unint64_t sub_1DABC8838()
{
  result = qword_1ECBE8810;
  if (!qword_1ECBE8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8810);
  }

  return result;
}

unint64_t sub_1DABC8890()
{
  result = qword_1ECBE8818;
  if (!qword_1ECBE8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8818);
  }

  return result;
}

unint64_t sub_1DABC88E8()
{
  result = qword_1ECBE8820;
  if (!qword_1ECBE8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8820);
  }

  return result;
}

unint64_t sub_1DABC893C()
{
  result = qword_1ECBE8830;
  if (!qword_1ECBE8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8830);
  }

  return result;
}

unint64_t sub_1DABC8990()
{
  result = qword_1ECBE8838;
  if (!qword_1ECBE8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8838);
  }

  return result;
}

unint64_t sub_1DABC89E4()
{
  result = qword_1ECBE8848;
  if (!qword_1ECBE8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8848);
  }

  return result;
}

unint64_t sub_1DABC8A38()
{
  result = qword_1ECBE8858;
  if (!qword_1ECBE8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8858);
  }

  return result;
}

unint64_t sub_1DABC8A8C()
{
  result = qword_1ECBE8860;
  if (!qword_1ECBE8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8860);
  }

  return result;
}

unint64_t sub_1DABC8AE0()
{
  result = qword_1ECBE8868;
  if (!qword_1ECBE8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8868);
  }

  return result;
}

uint64_t sub_1DABC8B64(uint64_t a1, int a2)
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

uint64_t sub_1DABC8BAC(uint64_t result, int a2, int a3)
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

uint64_t sub_1DABC8BF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DABC8C54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DABC8CC8()
{
  result = qword_1ECBE8870;
  if (!qword_1ECBE8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8870);
  }

  return result;
}

unint64_t sub_1DABC8D20()
{
  result = qword_1ECBE8878;
  if (!qword_1ECBE8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8878);
  }

  return result;
}

unint64_t sub_1DABC8D78()
{
  result = qword_1ECBE8880;
  if (!qword_1ECBE8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8880);
  }

  return result;
}

unint64_t sub_1DABC8DD0()
{
  result = qword_1ECBE8888;
  if (!qword_1ECBE8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8888);
  }

  return result;
}

unint64_t sub_1DABC8E28()
{
  result = qword_1ECBE8890;
  if (!qword_1ECBE8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8890);
  }

  return result;
}

unint64_t sub_1DABC8E80()
{
  result = qword_1ECBE8898;
  if (!qword_1ECBE8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8898);
  }

  return result;
}

unint64_t sub_1DABC8ED8()
{
  result = qword_1ECBE88A0;
  if (!qword_1ECBE88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88A0);
  }

  return result;
}

unint64_t sub_1DABC8F30()
{
  result = qword_1ECBE88A8;
  if (!qword_1ECBE88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88A8);
  }

  return result;
}

unint64_t sub_1DABC8F88()
{
  result = qword_1ECBE88B0;
  if (!qword_1ECBE88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88B0);
  }

  return result;
}

unint64_t sub_1DABC8FDC()
{
  result = qword_1ECBE88C0;
  if (!qword_1ECBE88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88C0);
  }

  return result;
}

unint64_t sub_1DABC9030()
{
  result = qword_1ECBE88C8;
  if (!qword_1ECBE88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88C8);
  }

  return result;
}

unint64_t sub_1DABC9084()
{
  result = qword_1ECBE88D8;
  if (!qword_1ECBE88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88D8);
  }

  return result;
}

unint64_t sub_1DABC90D8()
{
  result = qword_1ECBE88E8;
  if (!qword_1ECBE88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88E8);
  }

  return result;
}

unint64_t sub_1DABC9170()
{
  result = qword_1ECBE88F0;
  if (!qword_1ECBE88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88F0);
  }

  return result;
}

unint64_t sub_1DABC91C8()
{
  result = qword_1ECBE88F8;
  if (!qword_1ECBE88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88F8);
  }

  return result;
}

unint64_t sub_1DABC9220()
{
  result = qword_1ECBE8900;
  if (!qword_1ECBE8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8900);
  }

  return result;
}

unint64_t sub_1DABC9278()
{
  result = qword_1ECBE8908;
  if (!qword_1ECBE8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8908);
  }

  return result;
}

unint64_t sub_1DABC92D0()
{
  result = qword_1ECBE8910;
  if (!qword_1ECBE8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8910);
  }

  return result;
}

unint64_t sub_1DABC9328()
{
  result = qword_1ECBE8918;
  if (!qword_1ECBE8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8918);
  }

  return result;
}

unint64_t sub_1DABC9380()
{
  result = qword_1ECBE8920;
  if (!qword_1ECBE8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8920);
  }

  return result;
}

unint64_t sub_1DABC93D8()
{
  result = qword_1ECBE8928;
  if (!qword_1ECBE8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8928);
  }

  return result;
}

unint64_t sub_1DABC9430()
{
  result = qword_1ECBE8930;
  if (!qword_1ECBE8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8930);
  }

  return result;
}

void sub_1DABC9484(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1DACBA004();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABC94E4()
{
  result = qword_1ECBE8940;
  if (!qword_1ECBE8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8940);
  }

  return result;
}

unint64_t sub_1DABC9538()
{
  result = qword_1ECBE8950;
  if (!qword_1ECBE8950)
  {
    sub_1DABC9620(255, &qword_1ECBE8948, MEMORY[0x1E69E62F8]);
    sub_1DABC95CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8950);
  }

  return result;
}

unint64_t sub_1DABC95CC()
{
  result = qword_1ECBE8958;
  if (!qword_1ECBE8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8958);
  }

  return result;
}

void sub_1DABC9620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for YahooNewsResponse.NewsItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABC9688()
{
  result = qword_1ECBE8968;
  if (!qword_1ECBE8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8968);
  }

  return result;
}

unint64_t sub_1DABC96E0()
{
  result = qword_1ECBE8970;
  if (!qword_1ECBE8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8970);
  }

  return result;
}

unint64_t sub_1DABC9738()
{
  result = qword_1ECBE8978;
  if (!qword_1ECBE8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8978);
  }

  return result;
}

uint64_t sub_1DABC97A8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABC97E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DABC9810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABC9914@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, double *a9@<X8>, double a10, char a11, double a12, char a13, double a14, char a15, double a16, char a17, double a18, char a19, double a20, char a21, double a22, char a23, double a24, char a25, double a26, char a27, double a28, char a29, double a30, char a31, double a32, char a33, double a34, char a35, double a36, char a37, double a38, char a39, double a40, char a41)
{
  v42 = 0.05;
  if (a2)
  {
    a1 = 0.05;
  }

  v44 = 0.3;
  if (a4)
  {
    a3 = 0.3;
  }

  v46 = 1.0;
  if (a6)
  {
    a5 = 1.0;
  }

  v48 = 0.0;
  if (a8)
  {
    a7 = 0.0;
  }

  if (a11)
  {
    a10 = 0.0;
  }

  if (a13)
  {
    a12 = 0.0;
  }

  if ((a15 & 1) == 0)
  {
    v42 = a14;
  }

  if (a17)
  {
    a16 = 0.01;
  }

  v53 = 0.1;
  if (a19)
  {
    a18 = 0.1;
  }

  if (a21)
  {
    a20 = 0.12;
  }

  result = 0x3FC3333333333333;
  if (a23)
  {
    a22 = 0.15;
  }

  if (a25)
  {
    a24 = 0.3;
  }

  if ((a27 & 1) == 0)
  {
    v46 = a26;
  }

  if (a29)
  {
    a28 = 0.0;
  }

  if ((a31 & 1) == 0)
  {
    v44 = a30;
  }

  if (a33)
  {
    a32 = 0.2;
  }

  v61 = 0.5;
  if (a35)
  {
    a34 = 0.5;
  }

  if ((a37 & 1) == 0)
  {
    v61 = a36;
  }

  if ((a39 & 1) == 0)
  {
    v53 = a38;
  }

  if ((a41 & 1) == 0)
  {
    v48 = a40;
  }

  *a9 = a1;
  a9[1] = a3;
  a9[2] = a5;
  a9[3] = a7;
  a9[4] = a10;
  a9[5] = a12;
  a9[6] = v42;
  a9[7] = a16;
  a9[8] = a18;
  a9[9] = a20;
  a9[10] = a22;
  a9[11] = a24;
  a9[12] = v46;
  a9[13] = a28;
  a9[14] = v44;
  a9[15] = a32;
  a9[16] = a34;
  a9[17] = v61;
  a9[18] = v53;
  a9[19] = v48;
  return result;
}

uint64_t sub_1DABC9ADC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABCBB44(0, &qword_1EE123C78, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v111 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABCB514();
  sub_1DACBA2F4();
  if (!v2)
  {
    v148 = MEMORY[0x1E69E7CC0];
    v147 = 0;
    sub_1DACB9F84();
    v12 = v145;
    LODWORD(v142) = v146;
    if (v146)
    {
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[16 * v15];
      *(v16 + 4) = 0xD00000000000001ELL;
      *(v16 + 5) = 0x80000001DACEC4D0;
      v148 = v13;
      swift_endAccess();
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v147 = 1;
    sub_1DACB9F84();
    v17 = v145;
    LODWORD(v141) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      if (v19 >= v18 >> 1)
      {
        v13 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v13);
      }

      *(v13 + 2) = v19 + 1;
      v20 = &v13[16 * v19];
      *(v20 + 4) = 0xD000000000000011;
      *(v20 + 5) = 0x80000001DACEC4F0;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 2;
    sub_1DACB9F84();
    v21 = v145;
    LODWORD(v140) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      if (v23 >= v22 >> 1)
      {
        v13 = sub_1DAA9A3B0((v22 > 1), v23 + 1, 1, v13);
      }

      *(v13 + 2) = v23 + 1;
      v24 = &v13[16 * v23];
      *(v24 + 4) = 0xD000000000000017;
      *(v24 + 5) = 0x80000001DACEC510;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 3;
    sub_1DACB9F84();
    v25 = v145;
    LODWORD(v139) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v27 = *(v13 + 2);
      v26 = *(v13 + 3);
      if (v27 >= v26 >> 1)
      {
        v13 = sub_1DAA9A3B0((v26 > 1), v27 + 1, 1, v13);
      }

      *(v13 + 2) = v27 + 1;
      v28 = &v13[16 * v27];
      *(v28 + 4) = 0xD00000000000001ELL;
      *(v28 + 5) = 0x80000001DACEC530;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 4;
    sub_1DACB9F84();
    v29 = v145;
    LODWORD(v138) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v31 = *(v13 + 2);
      v30 = *(v13 + 3);
      if (v31 >= v30 >> 1)
      {
        v13 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v13);
      }

      *(v13 + 2) = v31 + 1;
      v32 = &v13[16 * v31];
      *(v32 + 4) = 0xD00000000000001ELL;
      *(v32 + 5) = 0x80000001DACEC550;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 5;
    sub_1DACB9F84();
    v33 = v145;
    LODWORD(v137) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v35 = *(v13 + 2);
      v34 = *(v13 + 3);
      if (v35 >= v34 >> 1)
      {
        v13 = sub_1DAA9A3B0((v34 > 1), v35 + 1, 1, v13);
      }

      *(v13 + 2) = v35 + 1;
      v36 = &v13[16 * v35];
      *(v36 + 4) = 0xD000000000000027;
      *(v36 + 5) = 0x80000001DACEC570;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 6;
    sub_1DACB9F84();
    v37 = v145;
    LODWORD(v136) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v39 = *(v13 + 2);
      v38 = *(v13 + 3);
      if (v39 >= v38 >> 1)
      {
        v13 = sub_1DAA9A3B0((v38 > 1), v39 + 1, 1, v13);
      }

      *(v13 + 2) = v39 + 1;
      v40 = &v13[16 * v39];
      *(v40 + 4) = 0xD000000000000017;
      *(v40 + 5) = 0x80000001DACEC5A0;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 7;
    sub_1DACB9F84();
    v42 = v145;
    LODWORD(v135) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v44 = *(v13 + 2);
      v43 = *(v13 + 3);
      if (v44 >= v43 >> 1)
      {
        v13 = sub_1DAA9A3B0((v43 > 1), v44 + 1, 1, v13);
      }

      *(v13 + 2) = v44 + 1;
      v45 = &v13[16 * v44];
      *(v45 + 4) = 0xD000000000000015;
      *(v45 + 5) = 0x80000001DACE2350;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 8;
    sub_1DACB9F84();
    v134 = v145;
    LODWORD(v133) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v47 = *(v13 + 2);
      v46 = *(v13 + 3);
      if (v47 >= v46 >> 1)
      {
        v13 = sub_1DAA9A3B0((v46 > 1), v47 + 1, 1, v13);
      }

      *(v13 + 2) = v47 + 1;
      v48 = &v13[16 * v47];
      *(v48 + 4) = 0xD000000000000014;
      *(v48 + 5) = 0x80000001DACE2270;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 9;
    sub_1DACB9F84();
    v132 = *&v145;
    v131 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v50 = *(v13 + 2);
      v49 = *(v13 + 3);
      if (v50 >= v49 >> 1)
      {
        v13 = sub_1DAA9A3B0((v49 > 1), v50 + 1, 1, v13);
      }

      *(v13 + 2) = v50 + 1;
      v51 = &v13[16 * v50];
      *(v51 + 4) = 0xD000000000000014;
      *(v51 + 5) = 0x80000001DACE2310;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 10;
    sub_1DACB9F84();
    v130 = *&v145;
    v129 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v53 = *(v13 + 2);
      v52 = *(v13 + 3);
      if (v53 >= v52 >> 1)
      {
        v13 = sub_1DAA9A3B0((v52 > 1), v53 + 1, 1, v13);
      }

      *(v13 + 2) = v53 + 1;
      v54 = &v13[16 * v53];
      *(v54 + 4) = 0xD000000000000016;
      *(v54 + 5) = 0x80000001DACE22D0;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 11;
    sub_1DACB9F84();
    v128 = v145;
    v127 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v56 = *(v13 + 2);
      v55 = *(v13 + 3);
      if (v56 >= v55 >> 1)
      {
        v13 = sub_1DAA9A3B0((v55 > 1), v56 + 1, 1, v13);
      }

      *(v13 + 2) = v56 + 1;
      v57 = &v13[16 * v56];
      *(v57 + 4) = 0xD000000000000015;
      *(v57 + 5) = 0x80000001DACEC5C0;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 12;
    sub_1DACB9F84();
    v126 = v145;
    v125 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v59 = *(v13 + 2);
      v58 = *(v13 + 3);
      if (v59 >= v58 >> 1)
      {
        v13 = sub_1DAA9A3B0((v58 > 1), v59 + 1, 1, v13);
      }

      *(v13 + 2) = v59 + 1;
      v60 = &v13[16 * v59];
      *(v60 + 4) = 0xD000000000000019;
      *(v60 + 5) = 0x80000001DACEC5E0;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 13;
    sub_1DACB9F84();
    v124 = v145;
    v123 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v62 = *(v13 + 2);
      v61 = *(v13 + 3);
      if (v62 >= v61 >> 1)
      {
        v13 = sub_1DAA9A3B0((v61 > 1), v62 + 1, 1, v13);
      }

      *(v13 + 2) = v62 + 1;
      v63 = &v13[16 * v62];
      *(v63 + 4) = 0xD00000000000001DLL;
      *(v63 + 5) = 0x80000001DACEC600;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 14;
    sub_1DACB9F84();
    v122 = v145;
    v121 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v65 = *(v13 + 2);
      v64 = *(v13 + 3);
      if (v65 >= v64 >> 1)
      {
        v13 = sub_1DAA9A3B0((v64 > 1), v65 + 1, 1, v13);
      }

      *(v13 + 2) = v65 + 1;
      v66 = &v13[16 * v65];
      *(v66 + 4) = 0xD000000000000014;
      *(v66 + 5) = 0x80000001DACEC620;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 15;
    sub_1DACB9F84();
    v120 = v145;
    v119 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v68 = *(v13 + 2);
      v67 = *(v13 + 3);
      if (v68 >= v67 >> 1)
      {
        v13 = sub_1DAA9A3B0((v67 > 1), v68 + 1, 1, v13);
      }

      *(v13 + 2) = v68 + 1;
      v69 = &v13[16 * v68];
      *(v69 + 4) = 0xD00000000000001CLL;
      *(v69 + 5) = 0x80000001DACEC640;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 16;
    sub_1DACB9F84();
    v118 = v145;
    v117 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v71 = *(v13 + 2);
      v70 = *(v13 + 3);
      if (v71 >= v70 >> 1)
      {
        v13 = sub_1DAA9A3B0((v70 > 1), v71 + 1, 1, v13);
      }

      *(v13 + 2) = v71 + 1;
      v72 = &v13[16 * v71];
      *(v72 + 4) = 0xD000000000000013;
      *(v72 + 5) = 0x80000001DACE2600;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 17;
    sub_1DACB9F84();
    v116 = v145;
    v115 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v74 = *(v13 + 2);
      v73 = *(v13 + 3);
      if (v74 >= v73 >> 1)
      {
        v13 = sub_1DAA9A3B0((v73 > 1), v74 + 1, 1, v13);
      }

      *(v13 + 2) = v74 + 1;
      v75 = &v13[16 * v74];
      *(v75 + 4) = 0x616E655064616572;
      *(v75 + 5) = 0xEB0000000079746CLL;
      v148 = v13;
      swift_endAccess();
    }

    v147 = 18;
    sub_1DACB9F84();
    v114 = v145;
    v113 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v77 = *(v13 + 2);
      v76 = *(v13 + 3);
      if (v77 >= v76 >> 1)
      {
        v13 = sub_1DAA9A3B0((v76 > 1), v77 + 1, 1, v13);
      }

      *(v13 + 2) = v77 + 1;
      v78 = &v13[16 * v77];
      *(v78 + 4) = 0xD000000000000015;
      *(v78 + 5) = 0x80000001DACEC660;
      v148 = v13;
      swift_endAccess();
    }

    LOBYTE(v145) = 19;
    sub_1DACB9F84();
    if (v144)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v80 = *(v13 + 2);
      v79 = *(v13 + 3);
      if (v80 >= v79 >> 1)
      {
        v13 = sub_1DAA9A3B0((v79 > 1), v80 + 1, 1, v13);
      }

      v81 = 0;
      *(v13 + 2) = v80 + 1;
      v82 = &v13[16 * v80];
      *(v82 + 4) = 0x6769655769626174;
      *(v82 + 5) = 0xEA00000000007468;
      v112 = 0;
    }

    else
    {
      v112 = v143;
      v81 = *(v13 + 2) == 0;
    }

    v83 = 0.05;
    if (LODWORD(v142))
    {
      v84 = 0.05;
    }

    else
    {
      v84 = v12;
    }

    if (LODWORD(v141))
    {
      v85 = 0.3;
    }

    else
    {
      v85 = v17;
    }

    v141 = v85;
    v142 = v84;
    if (LODWORD(v140))
    {
      v86 = 1.0;
    }

    else
    {
      v86 = v21;
    }

    if (LODWORD(v139))
    {
      v87 = 0.0;
    }

    else
    {
      v87 = v25;
    }

    v139 = v87;
    v140 = v86;
    if (LODWORD(v138))
    {
      v88 = 0.0;
    }

    else
    {
      v88 = v29;
    }

    if (LODWORD(v137))
    {
      v89 = 0.0;
    }

    else
    {
      v89 = v33;
    }

    v137 = v89;
    v138 = v88;
    if (!LODWORD(v136))
    {
      v83 = v37;
    }

    v136 = v83;
    v90 = 0.01;
    if (!LODWORD(v135))
    {
      v90 = v42;
    }

    v135 = v90;
    v91 = v134;
    if (v133)
    {
      v91 = 0.1;
    }

    v134 = v91;
    v92 = 0x3FBEB851EB851EB8;
    if (!v131)
    {
      v92 = v132;
    }

    v133 = v92;
    v93 = 0x3FC3333333333333;
    if (!v129)
    {
      v93 = v130;
    }

    v132 = v93;
    if (v127)
    {
      v94 = 0.3;
    }

    else
    {
      v94 = v128;
    }

    if (v125)
    {
      v95 = 1.0;
    }

    else
    {
      v95 = v126;
    }

    if (v123)
    {
      v96 = 0.0;
    }

    else
    {
      v96 = v124;
    }

    if (v121)
    {
      v97 = 0.3;
    }

    else
    {
      v97 = v122;
    }

    if (v119)
    {
      v98 = 0.2;
    }

    else
    {
      v98 = v120;
    }

    if (v117)
    {
      v99 = 0.5;
    }

    else
    {
      v99 = v118;
    }

    if (v115)
    {
      v100 = 0.5;
    }

    else
    {
      v100 = v116;
    }

    if (v113)
    {
      v101 = 0.1;
    }

    else
    {
      v101 = v114;
    }

    if (v81)
    {
      sub_1DAA41DCC();
      v102 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    else
    {
      sub_1DAA41D64();
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1DACC1D20;
      sub_1DAA613E8();
      *(v103 + 56) = v104;
      *(v103 + 64) = sub_1DAAF691C();
      *(v103 + 32) = v13;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v102 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    (*(v7 + 8))(v10, v6);

    v105 = v141;
    *a2 = v142;
    *(a2 + 8) = v105;
    v106 = v139;
    *(a2 + 16) = v140;
    *(a2 + 24) = v106;
    v107 = v137;
    *(a2 + 32) = v138;
    *(a2 + 40) = v107;
    v108 = v135;
    *(a2 + 48) = v136;
    *(a2 + 56) = v108;
    v109 = v133;
    *(a2 + 64) = v134;
    *(a2 + 72) = v109;
    *(a2 + 80) = v132;
    *(a2 + 88) = v94;
    *(a2 + 96) = v95;
    *(a2 + 104) = v96;
    *(a2 + 112) = v97;
    *(a2 + 120) = v98;
    *(a2 + 128) = v99;
    *(a2 + 136) = v100;
    v110 = v112;
    *(a2 + 144) = v101;
    *(a2 + 152) = v110;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABCB2F0(char a1)
{
  result = 0x616E655064616572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 6:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 7:
    case 11:
    case 18:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      v3 = 9;
      goto LABEL_11;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      return result;
    case 19:
      result = 0x6769655769626174;
      break;
    default:
      v3 = 10;
LABEL_11:
      result = v3 | 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_1DABCB514()
{
  result = qword_1EE124568;
  if (!qword_1EE124568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124568);
  }

  return result;
}

uint64_t sub_1DABCB568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABCBE84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABCB59C(uint64_t a1)
{
  v2 = sub_1DABCB514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABCB5D8(uint64_t a1)
{
  v2 = sub_1DABCB514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABCB614(void *a1)
{
  sub_1DABCBB44(0, &qword_1EE123BC0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v26 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v26[11] = v1[2];
  v26[12] = v10;
  v13 = v1[5];
  v26[9] = v1[4];
  v26[10] = v12;
  v14 = v1[7];
  v26[7] = v1[6];
  v26[8] = v13;
  v15 = v1[9];
  v26[5] = v1[8];
  v26[6] = v14;
  v16 = v1[11];
  v26[3] = v1[10];
  v26[4] = v15;
  v17 = v1[13];
  v26[1] = v1[12];
  v26[2] = v16;
  v19 = v1[14];
  v18 = v1[15];
  v21 = v1[16];
  v20 = v1[17];
  v23 = v1[18];
  v22 = v1[19];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABCB514();
  sub_1DACBA304();
  v27 = 0;
  sub_1DACBA0B4();
  if (!v2)
  {
    v27 = 1;
    sub_1DACBA0B4();
    v27 = 2;
    sub_1DACBA0B4();
    v27 = 3;
    sub_1DACBA0B4();
    v27 = 4;
    sub_1DACBA0B4();
    v27 = 5;
    sub_1DACBA0B4();
    v27 = 6;
    sub_1DACBA0B4();
    v27 = 7;
    sub_1DACBA0B4();
    v27 = 8;
    sub_1DACBA0B4();
    v27 = 9;
    sub_1DACBA0B4();
    v27 = 10;
    sub_1DACBA0B4();
    v27 = 11;
    sub_1DACBA0B4();
    v27 = 12;
    sub_1DACBA0B4();
    v27 = 13;
    sub_1DACBA0B4();
    v27 = 14;
    sub_1DACBA0B4();
    v27 = 15;
    sub_1DACBA0B4();
    v27 = 16;
    sub_1DACBA0B4();
    v27 = 17;
    sub_1DACBA0B4();
    v27 = 18;
    sub_1DACBA0B4();
    v27 = 19;
    sub_1DACBA0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1DABCBB44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABCB514();
    v7 = a3(a1, &type metadata for ArticleScoringConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABCBBA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DABCBBC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ArticleScoringConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleScoringConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DABCBD80()
{
  result = qword_1ECBE8980;
  if (!qword_1ECBE8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8980);
  }

  return result;
}

unint64_t sub_1DABCBDD8()
{
  result = qword_1EE124558;
  if (!qword_1EE124558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124558);
  }

  return result;
}

unint64_t sub_1DABCBE30()
{
  result = qword_1EE124560;
  if (!qword_1EE124560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124560);
  }

  return result;
}

uint64_t sub_1DABCBE84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001DACEC4D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACEC4F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC510 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACEC530 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACEC550 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACEC570 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC5A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE2350 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE2270 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE2310 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACE22D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEC5C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACEC5E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACEC600 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACEC620 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACEC640 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACE2600 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x616E655064616572 && a2 == 0xEB0000000079746CLL || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEC660 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6769655769626174 && a2 == 0xEA00000000007468)
  {

    return 19;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1DABCC4CC()
{
  swift_getObjectType();
  result = sub_1DAB4C5AC(&v18);
  v1 = 0;
  v2 = v18;
  v3 = *(v18 + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v2 + 48 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = (v5 + 48);
    ++v1;
    v7 = *(v5 + 56);
    v5 += 48;
    if (v7)
    {
      v8 = *v6;
      sub_1DACB71E4();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DAA9A3B0(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_1DAA9A3B0((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      goto LABEL_2;
    }
  }

  if (*(v4 + 16))
  {
    MEMORY[0x1EEE9AC00](v12);
    sub_1DAA9CB70();
    sub_1DACB8BB4();

    v13 = sub_1DACB89D4();
    sub_1DAA614EC(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    v14 = sub_1DACB8A64();

    return v14;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
    sub_1DAA61774();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DABCC6F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DACB71E4();
  v5 = sub_1DABCC838(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1DABCC78C()
{
  swift_getObjectType();
  sub_1DABB4648();
  sub_1DAA61774();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DABCC7E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return sub_1DAA9C8F8(v2, v3, v4);
}

uint64_t sub_1DABCC838(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  result = sub_1DACB71E4();
  v7 = 0;
  v8 = 0;
  v34 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v33 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v7)
    {
      v11 = *(v7 + 16);
      if (v8 == v11)
      {
        break;
      }

      if (v8 >= v11)
      {
        goto LABEL_39;
      }

      v16 = v7 + 16 * v8;
      result = *(v16 + 40);
      v31 = *(v16 + 32);
      v32 = result;
      if (v34)
      {
        result = sub_1DACB71E4();
        v17 = v10;
      }

      else
      {
        v18 = *(v10 + 3);
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        v35 = v20;
        sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v17);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 17;
        }

        v23 = v22 >> 4;
        *(v17 + 2) = v35;
        *(v17 + 3) = 2 * (v22 >> 4);
        v24 = v17 + 32;
        v25 = *(v10 + 3) >> 1;
        v33 = &v17[16 * v25 + 32];
        v34 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;
        if (*(v10 + 2))
        {
          v26 = v10 + 32;
          if (v17 != v10 || v24 >= &v26[16 * v25])
          {
            memmove(v24, v26, 16 * v25);
          }

          sub_1DACB71E4();
          *(v10 + 2) = 0;
        }

        else
        {
          sub_1DACB71E4();
        }
      }

      v27 = __OFSUB__(v34--, 1);
      if (v27)
      {
        goto LABEL_40;
      }

      ++v8;
      *v33 = v31;
      *(v33 + 1) = v32;
      v33 += 16;
      v10 = v17;
    }

    if (!v5)
    {
      break;
    }

    v12 = v9;
LABEL_14:
    v14 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v15 = *(*(a1 + 56) + ((v12 << 9) | (8 * v14)));
    sub_1DACB71E4();

    v8 = 0;
    v7 = v15;
  }

  v13 = v9;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v12 >= ((63 - v3) >> 6))
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v13;
    if (v5)
    {
      v9 = v12;
      goto LABEL_14;
    }
  }

  sub_1DAA54B38();

  v28 = *(v10 + 3);
  if (v28 < 2)
  {
    return v10;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v34);
  v30 = v29 - v34;
  if (!v27)
  {
    *(v10 + 2) = v30;
    return v10;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

StocksCore::ExchangeStatus_optional __swiftcall ExchangeStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExchangeStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465736F6C63;
  v4 = 0x656B72614D657270;
  if (v1 != 3)
  {
    v4 = 0x756F487265746661;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852141679;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DABCCBE8()
{
  result = qword_1ECBE8988;
  if (!qword_1ECBE8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8988);
  }

  return result;
}

uint64_t sub_1DABCCC3C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABCCD1C()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABCCDE8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t type metadata accessor for SparklineOperation()
{
  result = qword_1EE121DA0;
  if (!qword_1EE121DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1DABCCFF4()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_1EE121DB8);
  sub_1DACB8BD4();
  v7 = sub_1DACB7A64();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  result = 1;
  if (v9)
  {
    v12[2] = v7;
    v12[3] = v9;
    v12[0] = 0xD000000000000010;
    v12[1] = 0x80000001DACEC850;
    sub_1DAA642D8();
    v10 = sub_1DACB9B64();

    if (v10)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DABCD140(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + qword_1EE121DB0);
  sub_1DACB71E4();
  sub_1DACA8764(&v19);
  sub_1DAA61680(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DABCFE18();
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DABCFE94();
    v8 = v7;
    v9 = 32;
    do
    {
      v10 = *(v5 + v9);
      MEMORY[0x1EEE9AC00](v7);
      v11 = *(v8 + 48);
      v12 = *(v8 + 52);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      v13 = *(v19 + 2);
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v9 += 8;
      --v6;
    }

    while (v6);
  }

  v14 = sub_1DACB89D4();
  sub_1DAA5FC7C(0, &qword_1EE11FCA0, type metadata accessor for Chart);
  sub_1DACB8934();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DACB8A64();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1DACB71F4();
  v18 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DABCD438(uint64_t result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      v8 = *(v3 + 32 + 8 * v6);
      type metadata accessor for Chart(0);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v9;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

uint64_t sub_1DABCD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v62 = a4;
  v60 = a3;
  v10 = sub_1DACB7CC4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB8204();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB7684();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v59 = v21;
  sub_1DACB71F4();
  sub_1DACB98E4();
  sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00);
  v22 = swift_allocObject();
  v54 = xmmword_1DACC1D20;
  *(v22 + 16) = xmmword_1DACC1D20;
  v23 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E1277130](a5, MEMORY[0x1E69E6158]);
  v26 = v25;
  *(v22 + 56) = v23;
  *(v22 + 64) = sub_1DAA443C8();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  sub_1DAA41DCC();
  v27 = sub_1DACB9AD4();
  sub_1DACB8C64();

  v28 = *(a5 + 16);
  v61 = a5;
  if (v28)
  {
    v53 = a6;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1DAB25DF8(0, v28, 0);
    v29 = v63;
    v30 = (a5 + 40);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      sub_1DACB71E4();
      sub_1DACB7674();

      v63 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1DAB25DF8(v33 > 1, v34 + 1, 1);
        v29 = v63;
      }

      *(v29 + 16) = v34 + 1;
      (*(v17 + 32))(v29 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v34, v20, v16);
      v30 += 2;
      --v28;
    }

    while (v28);
    v35 = v62;
    a6 = v53;
    v36 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35 = v62;
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1DABCFF24();
  v37 = *&a6[qword_1EE121DB8];
  sub_1DACB71F4();
  sub_1DAA4BDD8(v36);
  (*(v56 + 104))(v55, *MEMORY[0x1E69D6490], v57);
  sub_1DACB7CB4();
  v38 = sub_1DACB84D4();
  sub_1DAA4DD10(0, &qword_1EE11F4B8, &qword_1EE11FF98);
  v39 = swift_allocObject();
  *(v39 + 16) = v54;
  v40 = *&a6[qword_1EE121DC0];
  sub_1DACB8BD4();
  v41 = v63;
  v42 = v64;
  v43 = type metadata accessor for SparklinesRequestSigner();
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  *(v44 + 24) = v42;
  *(v39 + 56) = v43;
  *(v39 + 64) = sub_1DAA8053C(qword_1EE121050, type metadata accessor for SparklinesRequestSigner);
  *(v39 + 32) = v44;
  sub_1DACB84E4();
  v45 = swift_allocObject();
  *(v45 + 16) = v36;
  sub_1DACB71F4();
  sub_1DACB84C4();
  v46 = swift_allocObject();
  v46[2] = v61;
  v46[3] = a6;
  v48 = v59;
  v47 = v60;
  v46[4] = sub_1DAA7390C;
  v46[5] = v48;
  v46[6] = v45;
  v46[7] = v47;
  v46[8] = v35;
  sub_1DACB71F4();
  v49 = v38;
  sub_1DACB71E4();
  v50 = a6;
  sub_1DACB71F4();
  sub_1DACB8304();

  [v49 start];
}

uint64_t sub_1DABCDAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB8754();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  swift_beginAccess();
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1DAADC74C(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1DAADC74C(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_1DABCDC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t))
{
  sub_1DABD0674(0, qword_1EE120360, type metadata accessor for Chart);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = *a1;
  if (*(a1 + 8))
  {
    sub_1DACB9904();
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DACC1D20;
    v103 = 0;
    v104 = 0xE000000000000000;
    v105 = v18;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1DAA443C8();
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    sub_1DAA41DCC();
    v20 = sub_1DACB9AD4();
    sub_1DACB8C64();

    a7(v18);
    swift_beginAccess();
    v21 = *(a6 + 16);
    v22 = sub_1DACB71E4();
    sub_1DABD07D4(v22);
  }

  v100 = a5;
  v101 = a4;
  v102 = v18;
  v98 = a3;
  v99 = &v94 - v17;
  v23 = *(a2 + 16);
  v97 = a6;
  if (!v23)
  {
LABEL_17:
    MEMORY[0x1EEE9AC00](v16);
    sub_1DABD0038();
    v48 = sub_1DACB9154();

    MEMORY[0x1EEE9AC00](v49);
    v50 = v98;
    v102 = type metadata accessor for Chart(0);
    v51 = sub_1DACB9154();
    (v101)();
    v52 = *(v50 + qword_1EE121DB0);
    v23 = *(v52 + 16);
    if (!v23)
    {
      v55 = MEMORY[0x1E69E7CC0];
      v23 = MEMORY[0x1E69E7CC0];
      goto LABEL_52;
    }

    v101 = v51;
    v53 = 0;
    v54 = v52 + 40;
    v95 = v23 - 1;
    v55 = MEMORY[0x1E69E7CC0];
    v56 = v99;
    v96 = v52 + 40;
    do
    {
      v100 = v55;
      v57 = (v54 + 16 * v53);
      v58 = v53;
      while (1)
      {
        if (v58 >= *(v52 + 16))
        {
          goto LABEL_55;
        }

        v60 = *(v57 - 1);
        v59 = *v57;
        v53 = v58 + 1;
        v61 = *(v48 + 16);
        sub_1DACB71E4();
        if (!v61)
        {
          break;
        }

        sub_1DAA4BF3C(v60, v59);
        if ((v62 & 1) == 0)
        {
          break;
        }

        v57 += 2;
        ++v58;
        if (v23 == v53)
        {
          v55 = v100;
          goto LABEL_30;
        }
      }

      v63 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAA5859C(0, v63[2] + 1, 1);
        v63 = v103;
      }

      v66 = v63[2];
      v65 = v63[3];
      if (v66 >= v65 >> 1)
      {
        sub_1DAA5859C((v65 > 1), v66 + 1, 1);
        v63 = v103;
      }

      v63[2] = v66 + 1;
      v67 = &v63[2 * v66];
      v67[4] = v60;
      v67[5] = v59;
      v54 = v96;
      v56 = v99;
      v55 = v63;
    }

    while (v95 != v58);
LABEL_30:
    v68 = *(v52 + 16);
    if (!v68)
    {
      v23 = MEMORY[0x1E69E7CC0];
      goto LABEL_52;
    }

    v100 = v55;
    v69 = 0;
    v70 = (v102 - 8);
    v71 = v52 + 40;
    v95 = v68 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    v96 = v52 + 40;
LABEL_32:
    v99 = v23;
    v72 = (v71 + 16 * v69);
    v73 = v69;
    while (1)
    {
      if (v73 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (*(v48 + 16))
      {
        v75 = *(v72 - 1);
        v74 = *v72;
        sub_1DACB71E4();
        sub_1DAA4BF3C(v75, v74);
        if (v76)
        {
          v77 = v101;
          if (!*(v101 + 16))
          {
            v79 = *v70;
LABEL_42:
            (*(v79 + 56))(v56, 1, 1, v102);
            sub_1DABD0EF8(v56, qword_1EE120360, type metadata accessor for Chart);
            v83 = v99;
            v84 = swift_isUniquelyReferenced_nonNull_native();
            v103 = v83;
            if ((v84 & 1) == 0)
            {
              sub_1DAA5859C(0, *(v83 + 2) + 1, 1);
              v83 = v103;
            }

            v86 = *(v83 + 2);
            v85 = *(v83 + 3);
            v87 = (v86 + 1);
            if (v86 >= v85 >> 1)
            {
              v99 = (v86 + 1);
              sub_1DAA5859C((v85 > 1), v86 + 1, 1);
              v87 = v99;
              v83 = v103;
            }

            v69 = v73 + 1;
            *(v83 + 2) = v87;
            v88 = &v83[16 * v86];
            *(v88 + 4) = v75;
            *(v88 + 5) = v74;
            v71 = v96;
            v89 = v95 == v73;
            v23 = v83;
            if (v89)
            {
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          v78 = sub_1DAA4BF3C(v75, v74);
          v79 = *v70;
          if ((v80 & 1) == 0)
          {
            goto LABEL_42;
          }

          v81 = *(v77 + 56);
          v82 = *v70;
          sub_1DAA85F70(v81 + *(v79 + 72) * v78, v56, type metadata accessor for Chart);

          (*(v82 + 56))(v56, 0, 1, v102);
          sub_1DABD0EF8(v56, qword_1EE120360, type metadata accessor for Chart);
        }

        else
        {
        }
      }

      ++v73;
      v72 += 2;
      if (v68 == v73)
      {
        v23 = v99;
        v55 = v100;
        goto LABEL_52;
      }
    }
  }

  v24 = (a2 + 40);
  v25 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v30 = *(v24 - 1);
    v29 = *v24;
    v31 = sub_1DACB93B4();
    v33 = v32;
    swift_bridgeObjectRetain_n();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v25;
    v35 = sub_1DAA4BF3C(v31, v33);
    v37 = v25[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      break;
    }

    v41 = v36;
    if (v25[3] < v40)
    {
      sub_1DAAA2514(v40, v34);
      v35 = sub_1DAA4BF3C(v31, v33);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_59;
      }

LABEL_12:
      if (v41)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (v34)
    {
      goto LABEL_12;
    }

    v47 = v35;
    sub_1DAB65314();
    v35 = v47;
    if (v41)
    {
LABEL_5:
      v26 = v35;

      v25 = v103;
      v27 = (v103[7] + 16 * v26);
      v28 = v27[1];
      *v27 = v30;
      v27[1] = v29;

      goto LABEL_6;
    }

LABEL_13:
    v25 = v103;
    v103[(v35 >> 6) + 8] |= 1 << v35;
    v43 = (v25[6] + 16 * v35);
    *v43 = v31;
    v43[1] = v33;
    v44 = (v25[7] + 16 * v35);
    *v44 = v30;
    v44[1] = v29;

    v45 = v25[2];
    v39 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v39)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    v25[2] = v46;
LABEL_6:
    v24 += 2;
    if (!--v23)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v55 = v100;
LABEL_52:

  sub_1DABD06C8(v55);
  v90 = v97;
  swift_beginAccess();
  v91 = *(v90 + 16);
  v92 = sub_1DACB71E4();
  sub_1DABCF0F0(v92, v55, v23);
}

uint64_t sub_1DABCE51C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v7 = a4[1];
  v10 = a4[2];
  v9 = a4[3];
  if (*(a5 + 16))
  {
    v12 = sub_1DAA4BF3C(*a3, a3[1]);
    if (v13)
    {
      v14 = (*(a5 + 56) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      v17 = sub_1DACB71E4();
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  *a1 = v16;
  a1[1] = v17;
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v9;
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB71E4();
}

void sub_1DABCE5CC(_OWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v22 = a5;
  v25 = a2;
  v24 = a1;
  sub_1DABD0C68();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v12 = a3[1];
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v18 = objc_autoreleasePoolPush();
  v19 = v23;
  sub_1DABCE6E4(v22, v15, v13, v12, v11);
  objc_autoreleasePoolPop(v18);
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v8 + 48);
    *v24 = *v11;
    sub_1DABD0D10(&v11[v20], v25);
  }
}

uint64_t sub_1DABCE6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, char *a5@<X8>)
{
  v43 = a3;
  sub_1DABD0674(0, qword_1EE120360, type metadata accessor for Chart);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Chart(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *__swift_project_boxed_opaque_existential_1((a1 + qword_1EE121DD0), *(a1 + qword_1EE121DD0 + 24));
  v44 = sub_1DAB681FC(MEMORY[0x1E69E7CC0]);
  sub_1DACB71F4();
  sub_1DABD0578(a2, 0, &v44);

  v19 = sub_1DACB71E4();
  sub_1DAB859D4(v19, v12);
  swift_bridgeObjectRelease_n();
  v42 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DABD0EF8(v12, qword_1EE120360, type metadata accessor for Chart);
    sub_1DACB9904();
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1DACC1D40;
    v21 = a4;
    v22 = MEMORY[0x1E69E6158];
    *(v20 + 56) = MEMORY[0x1E69E6158];
    v23 = sub_1DAA443C8();
    *(v20 + 64) = v23;
    *(v20 + 32) = v43;
    *(v20 + 40) = v21;
    v44 = 0;
    v45 = 0xE000000000000000;
    v46 = a2;
    sub_1DACB71E4();
    sub_1DACB9DD4();
    v24 = v44;
    v25 = v45;
    *(v20 + 96) = v22;
    *(v20 + 104) = v23;
    *(v20 + 72) = v24;
    *(v20 + 80) = v25;
    sub_1DAA41DCC();
    v26 = sub_1DACB9AD4();
    sub_1DACB8C64();

    sub_1DABD0C68();
    v28 = *(v27 + 48);
    *a5 = 0;
    *(a5 + 1) = 0;
    return (*(v42 + 56))(&a5[v28], 1, 1, v13);
  }

  else
  {
    sub_1DABD0D90(v12, v17, type metadata accessor for Chart);
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DACC1D40;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_1DAA443C8();
    *(v30 + 64) = v31;
    *(v30 + 32) = v43;
    *(v30 + 40) = a4;
    v32 = v17 + *(v13 + 20);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1DACB7CC4();
    v41 = v13;
    sub_1DACB71E4();
    sub_1DACB9DD4();
    MEMORY[0x1E1276F20](3026478, 0xE300000000000000);
    sub_1DAA49610();
    v34 = *(v33 + 36);
    sub_1DACB9DD4();
    v35 = v44;
    v36 = v45;
    *(v30 + 96) = MEMORY[0x1E69E6158];
    *(v30 + 104) = v31;
    *(v30 + 72) = v35;
    *(v30 + 80) = v36;
    sub_1DAA41DCC();
    v37 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    sub_1DABD0C68();
    v39 = *(v38 + 48);
    *a5 = v43;
    *(a5 + 1) = a4;
    sub_1DACB71E4();
    sub_1DABCEBE4(v17, &a5[v39], 600.0);
    sub_1DAA86550(v17, type metadata accessor for Chart);
    return (*(v42 + 56))(&a5[v39], 0, 1, v41);
  }
}

uint64_t sub_1DABCEBE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v56 = a2;
  v58 = type metadata accessor for Chart.Entry(0);
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v11 = sub_1DACB7CC4();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DACB7F54();
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v17;
  sub_1DAA49610();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DABCF778(a1, a3);
  v23 = type metadata accessor for Chart(0);
  sub_1DAA85F70(a1 + v23[5], v21, sub_1DAA49610);
  v24 = v23[7];
  v25 = a1;
  v26 = a1 + v23[6];
  v50 = *v26;
  v49 = v26[8];
  v48 = v14;
  v27 = *(v14 + 16);
  v28 = v17;
  v29 = v53;
  v27(v28, v25 + v24, v53);
  sub_1DACB7CB4();
  v30 = v56;
  *v56 = v22;
  v31 = &v30[v23[5]];
  v47 = v21;
  sub_1DAA85F70(v21, v31, sub_1DAA49610);
  v32 = &v30[v23[6]];
  v33 = v51;
  *v32 = v50;
  v32[8] = v49;
  v27(&v30[v23[7]], v33, v29);
  v50 = v23;
  (*(v54 + 16))(&v30[v23[8]], v52, v55);
  v34 = v22[2];
  result = sub_1DACB71E4();
  v36 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v37 = 0;
    while (v37 < v22[2])
    {
      v38 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v39 = *(v5 + 72);
      sub_1DAA85F70(v22 + v38 + v39 * v37, v10, type metadata accessor for Chart.Entry);
      v40 = &v10[*(v58 + 36)];
      if ((v40[8] & 1) != 0 || *v40 <= 0.0)
      {
        result = sub_1DAA86550(v10, type metadata accessor for Chart.Entry);
      }

      else
      {
        sub_1DABD0D90(v10, v57, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v36 + 16) + 1, 1);
          v36 = v59;
        }

        v43 = *(v36 + 16);
        v42 = *(v36 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1DAA83020(v42 > 1, v43 + 1, 1);
          v36 = v59;
        }

        *(v36 + 16) = v43 + 1;
        result = sub_1DABD0D90(v57, v36 + v38 + v43 * v39, type metadata accessor for Chart.Entry);
      }

      if (v34 == ++v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v44 = *(v36 + 16);

    (*(v54 + 8))(v52, v55);
    (*(v48 + 8))(v51, v53);
    result = sub_1DAA86550(v47, sub_1DAA49610);
    v45 = &unk_1F567E480;
    if (!v44)
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    *&v56[v50[9]] = v45;
  }

  return result;
}

uint64_t sub_1DABCF0F0(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = a3;
  v67 = sub_1DACB8754();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for NetworkEvent();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v66);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  if (sub_1DABCCFF4())
  {
    v56 = v15;
    v16 = *(*(v3 + qword_1EE121DB0) + 16);
    v17 = a2[2];
    sub_1DAA4D678(v3 + qword_1EE121DC8, v69);
    v18 = v70;
    v19 = v71;
    v20 = __swift_project_boxed_opaque_existential_1(v69, v70);
    v21 = *(a1 + 16);
    if (v21)
    {
      v53 = v20;
      v54 = v19;
      v55 = v18;
      v60 = v16 - v17;
      v68 = MEMORY[0x1E69E7CC0];
      v63 = a2;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB25BB8(0, v21, 0);
      v22 = a1;
      v23 = v68;
      v25 = *(v6 + 16);
      v24 = v6 + 16;
      v26 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v58 = *(v24 + 56);
      v59 = v25;
      v57 = (v24 + 16);
      v27 = v16;
      v28 = v56;
      v61 = v27;
      v62 = v24;
      do
      {
        v29 = v9;
        v30 = v64;
        v31 = v67;
        v59(v64, v26, v67);
        sub_1DAA8C2EC();
        v33 = (v28 + *(v32 + 48));
        (*v57)(v28, v30, v31);
        v34 = v60;
        *v33 = v27;
        v33[1] = v34;
        v35 = v65;
        v33[2] = v63;
        v33[3] = v35;
        v33[4] = 0;
        v33[5] = 0;
        swift_storeEnumTagMultiPayload();
        v68 = v23;
        v36 = *(v23 + 16);
        v37 = *(v23 + 24);
        sub_1DACB71E4();
        sub_1DACB71E4();
        if (v36 >= v37 >> 1)
        {
          sub_1DAB25BB8(v37 > 1, v36 + 1, 1);
          v23 = v68;
        }

        *(v23 + 16) = v36 + 1;
        v9 = v29;
        sub_1DABD0D90(v28, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v36, type metadata accessor for NetworkEvent);
        v26 += v58;
        --v21;
        v27 = v61;
      }

      while (v21);

      v19 = v54;
      v18 = v55;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    v49 = v23;
    v50 = v18;
    v51 = v19;
  }

  else
  {
    sub_1DAA4D678(v3 + qword_1EE121DC8, v69);
    v38 = v70;
    v39 = v71;
    v40 = __swift_project_boxed_opaque_existential_1(v69, v70);
    v41 = a1;
    v42 = *(a1 + 16);
    v43 = MEMORY[0x1E69E7CC0];
    if (v42)
    {
      v63 = v40;
      v64 = v39;
      v65 = v38;
      v68 = MEMORY[0x1E69E7CC0];
      sub_1DAB25BB8(0, v42, 0);
      v44 = *(v6 + 16);
      v43 = v68;
      v45 = v41 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v46 = *(v6 + 72);
      do
      {
        v44(v13, v45, v67);
        swift_storeEnumTagMultiPayload();
        v68 = v43;
        v48 = *(v43 + 16);
        v47 = *(v43 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1DAB25BB8(v47 > 1, v48 + 1, 1);
          v43 = v68;
        }

        *(v43 + 16) = v48 + 1;
        sub_1DABD0D90(v13, v43 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v48, type metadata accessor for NetworkEvent);
        v45 += v46;
        --v42;
      }

      while (v42);
      v39 = v64;
      v38 = v65;
    }

    v49 = v43;
    v50 = v38;
    v51 = v39;
  }

  sub_1DACAB38C(v49, v50, v51);

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_1DABCF604()
{
  v1 = *(v0 + qword_1EE121DB8);

  v2 = *(v0 + qword_1EE121DC0);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE121DD0));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE121DC8));
  v3 = *(v0 + qword_1EE121DB0);
}

uint64_t sub_1DABCF674(uint64_t a1)
{
  v2 = *(a1 + qword_1EE121DB8);

  v3 = *(a1 + qword_1EE121DC0);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE121DD0));
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE121DC8));
  v4 = *(a1 + qword_1EE121DB0);
}

uint64_t sub_1DABCF6F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DABCD140(sub_1DAADF554, v4);
}

void *sub_1DABCF778(uint64_t *a1, double a2)
{
  sub_1DABD0DF8();
  v63 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Chart.Entry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  sub_1DABD0674(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v61 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v54 - v27;
  v29 = *(v9 + 56);
  v29(&v54 - v27, 1, 1, v8);
  v30 = *a1;
  v31 = sub_1DACB71E4();
  v64 = v28;
  v32 = sub_1DABD0160(v31, v28, a2);

  v33 = *(v30 + 16);
  if (!v33)
  {
    goto LABEL_18;
  }

  v58 = v7;
  v34 = v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v35 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v36 = *(v9 + 72);
  sub_1DAA85F70(v34 + v36 * (v33 - 1), v16, type metadata accessor for Chart.Entry);
  v37 = v32[2];
  v55 = v36;
  v56 = v35;
  v59 = v32;
  if (v37)
  {
    sub_1DAA85F70(v32 + v35 + (v37 - 1) * v36, v26, type metadata accessor for Chart.Entry);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v29(v26, v38, 1, v8);
  v60 = v16;
  sub_1DAA85F70(v16, v23, type metadata accessor for Chart.Entry);
  v29(v23, 0, 1, v8);
  v39 = *(v63 + 48);
  v40 = v58;
  sub_1DABD0E78(v26, v58);
  sub_1DABD0E78(v23, v40 + v39);
  v41 = *(v9 + 48);
  if (v41(v40, 1, v8) == 1)
  {
    sub_1DABD0EF8(v23, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DABD0EF8(v26, qword_1EE120438, type metadata accessor for Chart.Entry);
    v42 = v41(v40 + v39, 1, v8);
    v32 = v59;
    v43 = v60;
    if (v42 == 1)
    {
      sub_1DABD0EF8(v40, qword_1EE120438, type metadata accessor for Chart.Entry);
LABEL_17:
      sub_1DAA86550(v43, type metadata accessor for Chart.Entry);
      goto LABEL_18;
    }
  }

  else
  {
    v44 = v61;
    sub_1DABD0E78(v40, v61);
    v45 = v41(v40 + v39, 1, v8);
    v32 = v59;
    if (v45 != 1)
    {
      v51 = v57;
      sub_1DABD0D90(v40 + v39, v57, type metadata accessor for Chart.Entry);
      v52 = sub_1DAB26FE4(v44, v51);
      sub_1DAA86550(v51, type metadata accessor for Chart.Entry);
      sub_1DABD0EF8(v23, qword_1EE120438, type metadata accessor for Chart.Entry);
      sub_1DABD0EF8(v26, qword_1EE120438, type metadata accessor for Chart.Entry);
      sub_1DAA86550(v44, type metadata accessor for Chart.Entry);
      sub_1DABD0EF8(v40, qword_1EE120438, type metadata accessor for Chart.Entry);
      v43 = v60;
      v46 = v56;
      if (v52)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    sub_1DABD0EF8(v23, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DABD0EF8(v26, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DAA86550(v44, type metadata accessor for Chart.Entry);
    v43 = v60;
  }

  sub_1DAA86550(v40, sub_1DABD0DF8);
  v46 = v56;
LABEL_11:
  v47 = v62;
  sub_1DAA85F70(v43, v62, type metadata accessor for Chart.Entry);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1DAADC780(0, v32[2] + 1, 1, v32);
  }

  v48 = v55;
  v50 = v32[2];
  v49 = v32[3];
  if (v50 >= v49 >> 1)
  {
    v32 = sub_1DAADC780(v49 > 1, v50 + 1, 1, v32);
  }

  sub_1DAA86550(v43, type metadata accessor for Chart.Entry);
  v32[2] = v50 + 1;
  sub_1DABD0D90(v47, v32 + v46 + v50 * v48, type metadata accessor for Chart.Entry);
LABEL_18:
  sub_1DABD0EF8(v64, qword_1EE120438, type metadata accessor for Chart.Entry);
  return v32;
}

unint64_t sub_1DABCFE18()
{
  result = qword_1EE11FA38;
  if (!qword_1EE11FA38)
  {
    sub_1DAA61680(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA38);
  }

  return result;
}

void sub_1DABCFE94()
{
  if (!qword_1EE11FE68)
  {
    sub_1DAA5FC7C(255, &qword_1EE11FCA0, type metadata accessor for Chart);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE68);
    }
  }
}

void sub_1DABCFF24()
{
  if (!qword_1EE11FFA0)
  {
    sub_1DABCFFB8();
    sub_1DAA8053C(&qword_1EE11FFC0, sub_1DABCFFB8);
    v0 = sub_1DACB8514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FFA0);
    }
  }
}

void sub_1DABCFFB8()
{
  if (!qword_1EE11FFB8)
  {
    sub_1DAA5FC7C(255, &qword_1EE11FCC0, sub_1DABD0038);
    sub_1DABD0094();
    v0 = sub_1DACB84B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FFB8);
    }
  }
}

void sub_1DABD0038()
{
  if (!qword_1EE122100)
  {
    sub_1DAAE629C();
    v0 = type metadata accessor for YahooBaseResponse();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE122100);
    }
  }
}

unint64_t sub_1DABD0094()
{
  result = qword_1EE11FCB8;
  if (!qword_1EE11FCB8)
  {
    sub_1DAA5FC7C(255, &qword_1EE11FCC0, sub_1DABD0038);
    sub_1DAA8053C(qword_1EE122108, sub_1DABD0038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCB8);
  }

  return result;
}

uint64_t sub_1DABD0160(uint64_t a1, uint64_t a2, double a3)
{
  sub_1DABD0674(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for Chart.Entry(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v39 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v17 + 72);
    v41 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v41;
    v44 = (v17 + 48);
    v40 = (v17 + 56);
    v23 = MEMORY[0x1E69E7CC0];
    v45 = v10;
    v42 = v14;
    v43 = v21;
    while (1)
    {
      sub_1DAA85F70(v22, v19, type metadata accessor for Chart.Entry);
      sub_1DABD0E78(a2, v9);
      if ((*v44)(v9, 1, v10) == 1)
      {
        break;
      }

      v24 = v9;
      v25 = v14;
      v26 = v9;
      v27 = a2;
      v28 = v39;
      sub_1DABD0D90(v24, v39, type metadata accessor for Chart.Entry);
      sub_1DACB7C54();
      v30 = v29;
      sub_1DACB7C54();
      v21 = v43;
      v32 = v31;
      v33 = v28;
      a2 = v27;
      v9 = v26;
      v14 = v25;
      v10 = v45;
      sub_1DAA86550(v33, type metadata accessor for Chart.Entry);
      if (v30 - v32 >= a3)
      {
        goto LABEL_8;
      }

      sub_1DAA86550(v19, type metadata accessor for Chart.Entry);
LABEL_4:
      v22 += v21;
      if (!--v20)
      {
        return v23;
      }
    }

    sub_1DABD0EF8(v9, qword_1EE120438, type metadata accessor for Chart.Entry);
LABEL_8:
    sub_1DABD0EF8(a2, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DAA85F70(v19, a2, type metadata accessor for Chart.Entry);
    (*v40)(a2, 0, 1, v10);
    sub_1DABD0D90(v19, v14, type metadata accessor for Chart.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DAA83020(0, *(v23 + 16) + 1, 1);
      v21 = v43;
      v23 = v46;
    }

    v36 = *(v23 + 16);
    v35 = *(v23 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1DAA83020(v35 > 1, v36 + 1, 1);
      v21 = v43;
      v23 = v46;
    }

    *(v23 + 16) = v36 + 1;
    v14 = v42;
    sub_1DABD0D90(v42, v23 + v41 + v36 * v21, type metadata accessor for Chart.Entry);
    v10 = v45;
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DABD0578(uint64_t result, int a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 56); ; i += 4)
    {
      v8 = *(i - 2);
      v9 = *i;
      v10 = *(i - 8);
      v11[0] = *(i - 3);
      v11[1] = v8;
      v12 = v10;
      v13 = v9;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAC4CA90(v11, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1DABD0674(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DABD06C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DACB9904();
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DACC1D20;
    v3 = MEMORY[0x1E69E6158];
    v4 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v6 = v5;
    *(v2 + 56) = v3;
    *(v2 + 64) = sub_1DAA443C8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    sub_1DAA41DCC();
    v7 = sub_1DACB9AD4();
    sub_1DACB8C64();
  }
}

uint64_t sub_1DABD07D4(uint64_t a1)
{
  v2 = v1;
  v50 = sub_1DACB8754();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for NetworkEvent();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v55);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v47 - v13;
  if (sub_1DABCCFF4())
  {
    sub_1DAA4D678(v1 + qword_1EE121DC8, v57);
    v15 = v58;
    v16 = v59;
    v17 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v18 = *(a1 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v47[1] = v17;
      v48 = v16;
      v49 = v15;
      v56 = MEMORY[0x1E69E7CC0];
      sub_1DAB25BB8(0, v18, 0);
      v19 = v56;
      v20 = *(*(v2 + qword_1EE121DB0) + 16);
      v22 = *(v4 + 16);
      v21 = v4 + 16;
      v52 = v22;
      v53 = v20;
      v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v51 = *(v21 + 56);
      v54 = v21;
      v24 = (v21 + 16);
      v25 = v50;
      do
      {
        v52(v7, v23, v25);
        sub_1DAA8C2EC();
        v27 = &v14[*(v26 + 48)];
        (*v24)(v14, v7, v25);
        *v27 = v53;
        *(v27 + 1) = 0;
        v28 = MEMORY[0x1E69E7CC0];
        *(v27 + 2) = MEMORY[0x1E69E7CC0];
        *(v27 + 3) = v28;
        *(v27 + 4) = 0;
        *(v27 + 5) = 0;
        swift_storeEnumTagMultiPayload();
        v56 = v19;
        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1DAB25BB8(v29 > 1, v30 + 1, 1);
          v25 = v50;
          v19 = v56;
        }

        *(v19 + 16) = v30 + 1;
        sub_1DABD0D90(v14, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, type metadata accessor for NetworkEvent);
        v23 += v51;
        --v18;
      }

      while (v18);
      v16 = v48;
      v15 = v49;
    }

    v43 = v19;
    v44 = v15;
    v45 = v16;
  }

  else
  {
    sub_1DAA4D678(v1 + qword_1EE121DC8, v57);
    v31 = v58;
    v32 = v59;
    v33 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v34 = *(a1 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v51 = v33;
      v52 = v32;
      v53 = v31;
      v56 = MEMORY[0x1E69E7CC0];
      sub_1DAB25BB8(0, v34, 0);
      v37 = *(v4 + 16);
      v36 = v4 + 16;
      v54 = v37;
      v35 = v56;
      v38 = a1 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      v39 = *(v36 + 56);
      v40 = v50;
      do
      {
        v54(v12, v38, v40);
        swift_storeEnumTagMultiPayload();
        v56 = v35;
        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1DAB25BB8(v41 > 1, v42 + 1, 1);
          v40 = v50;
          v35 = v56;
        }

        *(v35 + 16) = v42 + 1;
        sub_1DABD0D90(v12, v35 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v42, type metadata accessor for NetworkEvent);
        v38 += v39;
        --v34;
      }

      while (v34);
      v32 = v52;
      v31 = v53;
    }

    v43 = v35;
    v44 = v31;
    v45 = v32;
  }

  sub_1DACAB38C(v43, v44, v45);

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

void sub_1DABD0C68()
{
  if (!qword_1EE11FBE0)
  {
    sub_1DAA61680(255, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
    sub_1DABD0674(255, qword_1EE120360, type metadata accessor for Chart);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FBE0);
    }
  }
}

uint64_t sub_1DABD0D10(uint64_t a1, uint64_t a2)
{
  sub_1DABD0674(0, qword_1EE120360, type metadata accessor for Chart);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABD0D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DABD0DF8()
{
  if (!qword_1EE120430)
  {
    sub_1DABD0674(255, qword_1EE120438, type metadata accessor for Chart.Entry);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE120430);
    }
  }
}

uint64_t sub_1DABD0E78(uint64_t a1, uint64_t a2)
{
  sub_1DABD0674(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABD0EF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DABD0674(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DABD0F54()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD0F84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD0FB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1DABD0FC0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DACBA174(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t sub_1DABD1064()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1DABD1094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DABD116C(uint64_t a1)
{
  v2 = sub_1DABD1380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD11A8(uint64_t a1)
{
  v2 = sub_1DABD1380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD11E4(void *a1)
{
  sub_1DABD2C08(0, &qword_1EE123B90, sub_1DABD1380, &type metadata for ExternalAnalyticsQueryParameterConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD1380();
  sub_1DACBA304();
  v17 = 0;
  v13 = v15[3];
  sub_1DACBA094();
  if (!v13)
  {
    v16 = 1;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DABD1380()
{
  result = qword_1EE124318[0];
  if (!qword_1EE124318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124318);
  }

  return result;
}

uint64_t sub_1DABD13D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  sub_1DABD2C08(0, &qword_1EE123C48, sub_1DABD1380, &type metadata for ExternalAnalyticsQueryParameterConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD1380();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v20;
  v22 = 0;
  v12 = sub_1DACB9FA4();
  v14 = v13;
  v19 = v12;
  v21 = 1;
  v15 = sub_1DACB9FA4();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  *v11 = v19;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v17;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABD1638(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DACBA174(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t sub_1DABD16DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD170C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DABD1764()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD1794(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1DABD17EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD181C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1DABD1894@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v11 = a11;
  v12 = MEMORY[0x1E69E7CC0];
  *a9 = result;
  *(a9 + 8) = a2;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = v12;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (a8)
  {
    v14 = a8;
  }

  else
  {
    v14 = v12;
  }

  if (!a11)
  {
    v11 = v12;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  *(a9 + 56) = v14;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = v11;
  return result;
}

uint64_t sub_1DABD18DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABD2C08(0, &qword_1EE123C58, sub_1DABD2510, &type metadata for ExternalAnalyticsConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v60 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DABD2510();
  sub_1DACBA2F4();
  if (!v2)
  {
    v13 = v7;
    v78 = MEMORY[0x1E69E7CC0];
    v77 = 0;
    sub_1DACB9F84();
    v14 = v10;
    v15 = v76;
    v72 = v75;
    v16 = MEMORY[0x1E69E7CC0];
    if (!v76)
    {
      swift_beginAccess();
      v16 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[16 * v18];
      *(v19 + 4) = 0xD000000000000010;
      *(v19 + 5) = 0x80000001DACEC950;
      v78 = v16;
      swift_endAccess();
    }

    v77 = 1;
    sub_1DACB9F84();
    v70 = v75;
    v71 = v76;
    if (!v76)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[16 * v21];
      *(v22 + 4) = 0x636974796C616E61;
      *(v22 + 5) = 0xEB00000000644973;
      v78 = v16;
      swift_endAccess();
    }

    v77 = 2;
    sub_1DACB9F84();
    v66 = v75;
    v67 = 0;
    v68 = v76;
    v69 = v6;
    v65 = a2;
    if (!v76)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      if (v24 >= v23 >> 1)
      {
        v16 = sub_1DAA9A3B0((v23 > 1), v24 + 1, 1, v16);
      }

      *(v16 + 2) = v24 + 1;
      v25 = &v16[16 * v24];
      *(v25 + 4) = 0xD000000000000017;
      *(v25 + 5) = 0x80000001DACEC970;
      v78 = v16;
      swift_endAccess();
    }

    v77 = 3;
    sub_1DAA488A4(0, &qword_1EE123EA0);
    v27 = v26;
    v28 = sub_1DAA963BC(&qword_1EE123E88);
    v29 = v69;
    v30 = v67;
    sub_1DACB9F84();
    if (v30)
    {
      (*(v13 + 8))(v14, v29);

      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    v64 = v28;
    v67 = v27;
    v31 = v75;
    if (!v75)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v33 = *(v16 + 2);
      v32 = *(v16 + 3);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 2) = v33 + 1;
      v34 = &v16[16 * v33];
      strcpy(v34 + 32, "proxyHostNames");
      v34[47] = -18;
      v78 = v16;
      swift_endAccess();
      v31 = 0;
    }

    v77 = 4;
    sub_1DAA488A4(0, &qword_1EE123ED8);
    sub_1DABD2C70(&qword_1EE123EC8, sub_1DABD29A8);
    sub_1DACB9F84();
    v63 = v75;
    if (!v75)
    {
      swift_beginAccess();
      v35 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v37 = *(v16 + 2);
      v36 = *(v16 + 3);
      if (v37 >= v36 >> 1)
      {
        v16 = sub_1DAA9A3B0((v36 > 1), v37 + 1, 1, v16);
      }

      *(v16 + 2) = v37 + 1;
      v38 = &v16[16 * v37];
      *(v38 + 4) = 0xD000000000000014;
      *(v38 + 5) = 0x80000001DACEC990;
      v78 = v16;
      swift_endAccess();
      v31 = v35;
    }

    LOBYTE(v75) = 5;
    sub_1DACB9F84();
    v39 = v77;
    if (v77 == 2)
    {
      v62 = 2;
      swift_beginAccess();
      v40 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v42 = *(v16 + 2);
      v41 = *(v16 + 3);
      if (v42 >= v41 >> 1)
      {
        v16 = sub_1DAA9A3B0((v41 > 1), v42 + 1, 1, v16);
      }

      *(v16 + 2) = v42 + 1;
      v43 = &v16[16 * v42];
      *(v43 + 4) = 0xD000000000000010;
      *(v43 + 5) = 0x80000001DACEC9B0;
      v78 = v16;
      swift_endAccess();
      v31 = v40;
      v39 = v62;
    }

    LOBYTE(v75) = 6;
    sub_1DACB9F84();
    v45 = v74;
    if (v74)
    {
      v46 = *(v16 + 2);
      v47 = MEMORY[0x1E69E7CC0];
      if (!v31)
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      if (v63)
      {
        v47 = v63;
      }

      v64 = v47;
      LODWORD(v63) = v39 & 1;
      if (!v46)
      {
        sub_1DAA41DCC();
        v56 = sub_1DACB9AD4();
        sub_1DACB9914();
        sub_1DACB8C64();
        a2 = v65;
        goto LABEL_59;
      }

      v61 = v31;
      v48 = v67;
      a2 = v65;
    }

    else
    {
      v62 = v39;
      v49 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v51 = *(v16 + 2);
      v50 = *(v16 + 3);
      if (v51 >= v50 >> 1)
      {
        v16 = sub_1DAA9A3B0((v50 > 1), v51 + 1, 1, v16);
      }

      *(v16 + 2) = v51 + 1;
      v52 = &v16[16 * v51];
      *(v52 + 4) = 0x69666F72506E7076;
      *(v52 + 5) = 0xEF73656D614E656CLL;
      if (v49)
      {
        v53 = v49;
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      v61 = v53;
      v54 = v63;
      if (!v63)
      {
        v54 = MEMORY[0x1E69E7CC0];
      }

      v64 = v54;
      LODWORD(v63) = v62 & 1;
      v45 = MEMORY[0x1E69E7CC0];
      v48 = v67;
    }

    sub_1DAA41D64();
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1DACC1D20;
    *(v55 + 56) = v48;
    *(v55 + 64) = sub_1DAAF691C();
    *(v55 + 32) = v16;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v56 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v31 = v61;
LABEL_59:

    (*(v13 + 8))(v14, v69);

    *a2 = v72;
    *(a2 + 8) = v15;
    v57 = v71;
    *(a2 + 16) = v70;
    *(a2 + 24) = v57;
    v58 = v68;
    *(a2 + 32) = v66;
    *(a2 + 40) = v58;
    v59 = v64;
    *(a2 + 48) = v31;
    *(a2 + 56) = v59;
    *(a2 + 64) = v63;
    *(a2 + 65) = v74;
    *(a2 + 68) = *(&v74 + 3);
    *(a2 + 72) = v45;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

unint64_t sub_1DABD240C()
{
  v1 = *v0;
  v2 = 0x636974796C616E61;
  v3 = 0x69666F72506E7076;
  if (v1 == 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0x736F4879786F7270;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1DABD2510()
{
  result = qword_1EE124420;
  if (!qword_1EE124420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124420);
  }

  return result;
}

uint64_t sub_1DABD2564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABD30DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABD2598(uint64_t a1)
{
  v2 = sub_1DABD2510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD25D4(uint64_t a1)
{
  v2 = sub_1DABD2510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD2610(void *a1)
{
  sub_1DABD2C08(0, &qword_1EE123BA0, sub_1DABD2510, &type metadata for ExternalAnalyticsConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v30 = v1[3];
  v31 = v11;
  v12 = v1[4];
  v28 = v1[5];
  v29 = v12;
  v13 = v1[6];
  v26 = v1[7];
  v27 = v13;
  v25 = *(v1 + 64);
  v24 = v1[9];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD2510();
  v15 = v4;
  sub_1DACBA304();
  LOBYTE(v34) = 0;
  v16 = v32;
  sub_1DACBA024();
  if (v16)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = v26;
  v17 = v27;
  LOBYTE(v34) = 1;
  sub_1DACBA024();
  LOBYTE(v34) = 2;
  sub_1DACBA024();
  v20 = v5;
  v34 = v17;
  v33 = 3;
  sub_1DAA488A4(0, &qword_1EE123EA0);
  v22 = v21;
  v23 = sub_1DAA963BC(&qword_1EE123E98);
  sub_1DACBA0E4();
  v31 = v23;
  v32 = v22;
  v34 = v18;
  v33 = 4;
  sub_1DAA488A4(0, &qword_1EE123ED8);
  sub_1DABD2C70(&qword_1EE123ED0, sub_1DABD2CEC);
  sub_1DACBA0E4();
  LOBYTE(v34) = 5;
  sub_1DACBA0A4();
  v34 = v24;
  v33 = 6;
  sub_1DACBA0E4();
  return (*(v20 + 8))(v8, v15);
}

unint64_t sub_1DABD29A8()
{
  result = qword_1EE1242F8;
  if (!qword_1EE1242F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242F8);
  }

  return result;
}

uint64_t sub_1DABD29FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v41 = *(a2 + 56);
      v43 = *(a1 + 48);
      v40 = *(a2 + 64);
      v38 = *(a2 + 72);
      v39 = *(a1 + 56);
      v37 = *(a1 + 64);
      v21 = *(a1 + 72);
      v22 = *(a1 + 40);
      v23 = *(a1 + 32);
      v24 = *(a2 + 40);
      v25 = *(a2 + 32);
      v26 = *(a1 + 16);
      v27 = *(a2 + 16);
      v28 = sub_1DACBA174();
      v13 = v27;
      v4 = v26;
      v14 = v25;
      v16 = v24;
      v5 = v23;
      v7 = v22;
      v11 = v21;
      v10 = v37;
      v20 = v38;
      v9 = v39;
      v19 = v40;
      v18 = v41;
      v8 = v43;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v42 = v11;
      v44 = v16;
      v29 = v7;
      v30 = v5;
      v31 = v14;
      v32 = sub_1DACBA174();
      v14 = v31;
      v11 = v42;
      v16 = v44;
      v5 = v30;
      v7 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (!v7)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  if (v5 != v14 || v7 != v16)
  {
    v33 = v11;
    v34 = sub_1DACBA174();
    v11 = v33;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v35 = v11;
  if (sub_1DAA51414(v8, v17) & 1) == 0 || (sub_1DAC37080(v9, v18) & 1) == 0 || ((v10 ^ v19))
  {
    return 0;
  }

  return sub_1DAA51414(v35, v20);
}

void sub_1DABD2C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DABD2C70(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1EE123ED8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD2CEC()
{
  result = qword_1EE124300;
  if (!qword_1EE124300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124300);
  }

  return result;
}

uint64_t sub_1DABD2D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DABD2D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for QuoteSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DABD2ED0()
{
  result = qword_1ECBE8990;
  if (!qword_1ECBE8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8990);
  }

  return result;
}

unint64_t sub_1DABD2F28()
{
  result = qword_1ECBE8998;
  if (!qword_1ECBE8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8998);
  }

  return result;
}