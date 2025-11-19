uint64_t sub_1B5E5E560@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B5EA4820();
  sub_1B5E01C50(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v8);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = sub_1B5EA4D20();
  sub_1B5E01C50(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v18 = sub_1B5EA4CC0();
  sub_1B5E01C50(v18);
  v20 = v19;
  v22 = v21;
  v23 = (v15 + v17 + *(v20 + 80)) & ~*(v20 + 80);
  v24 = (*(v22 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v1[2];
  return sub_1B5E4FC78(v1[3], v1[4], v1 + v5, v1 + v10, v1 + v15, v1 + v23, *(v1 + v24), a1, *(v1 + v24 + 8), *(v1 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t *sub_1B5E5E724(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1B5E5E784()
{
  v36 = sub_1B5EA4820();
  sub_1B5DF5DA8(v36);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = v4 + *(v5 + 64);
  v7 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v7);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v34 = *(v11 + 64);
  v37 = sub_1B5EA4D20();
  sub_1B5DF5DA8(v37);
  v13 = v12;
  v14 = *(v12 + 80);
  v33 = *(v15 + 64);
  v35 = sub_1B5EA4CC0();
  sub_1B5DF5DA8(v35);
  v17 = v16;
  v18 = *(v16 + 80);
  v32 = *(v19 + 64);
  v20 = *(v0 + 2);

  v21 = *(v0 + 3);

  v22 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v36);
  v23 = sub_1B5EA5290();
  if (!sub_1B5DF46E0(&v0[v10], 1, v23))
  {
    sub_1B5E2D1D8(v23);
    (*(v24 + 8))(&v0[v10], v23);
  }

  v25 = (v10 + v34 + v14) & ~v14;
  v26 = (v25 + v33 + v18) & ~v18;
  v27 = (v32 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v13 + 8))(&v0[v25], v37);
  (*(v17 + 8))(&v0[v26], v35);
  v29 = *&v0[v27 + 8];

  v30 = *&v0[v28];

  return MEMORY[0x1EEE6BDD0](v0, v28 + 8, v3 | v9 | v14 | v18 | 7);
}

uint64_t sub_1B5E5EA2C()
{
  v1 = sub_1B5EA4820();
  sub_1B5E01C50(v1);
  v4 = ((*(v2 + 80) + 40) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v5);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_1B5EA4D20();
  sub_1B5E01C50(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = sub_1B5EA4CC0();
  sub_1B5E01C50(v15);
  v18 = (*(v17 + 64) + ((v12 + v14 + *(v16 + 80)) & ~*(v16 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v0[2];
  v21 = v0[3];
  v22 = v0[4];
  v23 = (v0 + v18);
  v24 = *v23;
  v25 = v23[1];
  v26 = *(v0 + v19);
  v27 = swift_task_alloc();
  *(v37 + 16) = v27;
  *v27 = v37;
  v27[1] = sub_1B5E2CDCC;
  sub_1B5E5F094();

  return sub_1B5E5011C(v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_1B5E5EC7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8(v5);
  v7 = *(v6 + 40);
  v8 = sub_1B5DFA488();
  v9(v8);
  return v4;
}

uint64_t sub_1B5E5ECD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(a2, a3);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5E5ED14()
{
  v1 = sub_1B5EA4340();
  sub_1B5DF5DA8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B5E5EDE4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  sub_1B5E1A084();
  v4 = sub_1B5EA4340();
  sub_1B5E01CF8(v4);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a2(v2, v6, v7);
}

void sub_1B5E5EE64(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1B5E4DBBC(a1, v1[2]);
}

uint64_t sub_1B5E5EE70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8(v5);
  v7 = *(v6 + 32);
  v8 = sub_1B5DFA488();
  v9(v8);
  return v4;
}

uint64_t sub_1B5E5EEBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8(v5);
  v7 = *(v6 + 16);
  v8 = sub_1B5DFA488();
  v9(v8);
  return v4;
}

uint64_t sub_1B5E5EF54()
{

  return swift_once();
}

uint64_t sub_1B5E5F000(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E510B0;
  v2 = *(v1 + 752);
  v3 = *(v1 + 712);
  return v1 + 56;
}

uint64_t sub_1B5E5F030()
{
  v2 = v0[87];
  v3 = v0[84];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[67];
  v17 = v0[66];
  v12 = v0[65];
  v18 = v0[62];
  v19 = v0[61];
}

uint64_t sub_1B5E5F0BC()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[13];
}

uint64_t sub_1B5E5F0F8()
{

  return swift_once();
}

uint64_t sub_1B5E5F118()
{

  return swift_once();
}

uint64_t sub_1B5E5F138(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E4922C;
  v2 = v1[29];
  result = v1[26];
  v4 = v1[27];
  return result;
}

void sub_1B5E5F160()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t sub_1B5E5F174()
{
  result = v0[87];
  v2 = v0[84];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v11 = v0[71];
  v12 = v0[70];
  return result;
}

uint64_t sub_1B5E5F1D8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1B5E5F23C()
{

  return swift_allocError();
}

uint64_t sub_1B5E5F25C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1B5E5ECD0(a1, a2, a3);
}

uint64_t sub_1B5E5F2A0()
{
  v2 = *(v0 + 752);
  v3 = *(v0 + 712);

  return swift_beginAccess();
}

uint64_t sub_1B5E5F2C8()
{
  v4 = v0[67];
  v5 = v0[66];
  v2 = v0[65];
  v6 = v0[62];
  v7 = v0[61];
}

__n128 sub_1B5E5F330(__n128 *a1)
{
  result = *(v1 - 112);
  a1[1] = result;
  return result;
}

uint64_t sub_1B5E5F378(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E4EDB0;
  v2 = v1[35];
  v3 = v1[23];
  return v1[13];
}

void sub_1B5E5F3B8()
{
  v1 = v0[70];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[63];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
  v8 = v0[54];
  v9 = v0[55];
  v13 = v0[53];
  v14 = v0[52];
  v15 = v0[51];
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[44];
  v19 = v0[43];
  v10 = v0[40];
  v11 = v0[36];
  v12 = v0[37];
}

uint64_t sub_1B5E5F438(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E50D9C;
  v2 = *(v1 + 496);
  return *(v1 + 520);
}

uint64_t sub_1B5E5F468(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E4F0BC;
  v2 = *(v1 + 32);
  return *(v1 + 176);
}

uint64_t sub_1B5E5F4C4()
{
  v2 = *(v0 + 648);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 520);
  v7 = *(v0 + 512);
  v8 = *(v3 + 16);
  v9 = *(v0 + 240) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
  return *(v0 + 560);
}

uint64_t sub_1B5E5F520()
{
  v2 = v0[70];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[63];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[58];
  v10 = v0[54];
  v9 = v0[55];
  v11 = v0[53];
  v14 = v0[52];
  v15 = v0[51];
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[44];
  v19 = v0[43];
  v12 = v0[40];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[33];
}

uint64_t sub_1B5E5F5C0()
{
  v8 = v0[43];
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[30];
  v7 = v0[31];
  v4 = v0[42] + *(v0[40] + 48);
  v5 = *(v0[37] + 32);
  return v0[41];
}

uint64_t sub_1B5E5F5FC(uint64_t result)
{
  *(result + 8) = sub_1B5E58C60;
  v2 = *(v1 + 160);
  v3 = *(v1 + 104);
  return result;
}

void sub_1B5E5F650()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  v11 = v0[23];
  v12 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v9 = v0[17];
  v15 = v0[14];
  v16 = v0[13];
  v10 = v0[2];
}

uint64_t sub_1B5E5F694(uint64_t a1)
{
  *(a1 + 16) = v3;

  return sub_1B5E575E8(sub_1B5E5DF94, v1, v2);
}

uint64_t sub_1B5E5F6CC(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_1B5E575E8(sub_1B5E5DF74, v3, v2);
}

uint64_t sub_1B5E5F710()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[17];
  v14 = v0[14];
  v15 = v0[13];
  v12 = v0[12];
  v16 = v0[9];
  v17 = v0[6];
}

void sub_1B5E5F764()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E5F7CC()
{
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[25];
  v8 = v0[24];
  v2 = v0[21];
  v9 = v0[18];
  v10 = v0[15];
  v3 = v0[2];
}

uint64_t sub_1B5E5F864()
{
  v2 = v0[33];
  result = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[13];
  return result;
}

uint64_t sub_1B5E5F91C()
{
  v2 = v0[63];
  v1 = v0[64];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[60];
  v6 = v0[29];
  v7 = *(v0[65] + 96);
  return v0[67];
}

uint64_t sub_1B5E5F974()
{

  return swift_beginAccess();
}

void sub_1B5E5F990()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E5F9B4()
{
}

uint64_t sub_1B5E5F9CC()
{

  return swift_allocObject();
}

uint64_t sub_1B5E5F9E4()
{
}

uint64_t sub_1B5E5F9FC()
{
  v1 = v0[89];
  result = v0[84];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[76];
  v6 = *(v0[83] + 32);
  return result;
}

uint64_t sub_1B5E5FA28()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  return v0[14];
}

uint64_t sub_1B5E5FA6C(uint64_t a1)
{
  v4 = *(v1 + 56) + *(v3 + 72) * a1;
  v5 = *(v3 + 16);
  return v2;
}

uint64_t sub_1B5E5FAD0()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[48];
  return v0[50];
}

uint64_t sub_1B5E5FAEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 80);
  return a1;
}

uint64_t sub_1B5E5FB2C()
{

  return sub_1B5EA4B40();
}

uint64_t sub_1B5E5FB7C()
{
  result = v0[70];
  v2 = v0[68];
  v3 = v0[62];
  v4 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v7 = *(v0[69] + 8);
  return result;
}

__n128 sub_1B5E5FBB0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  result = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = *(v0 + 104);
  return result;
}

uint64_t sub_1B5E5FBF4@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a1[1] = a3;
  v14 = *(a2 + 48);
  return a14;
}

void sub_1B5E5FC14()
{
  v2 = v0[91];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v7 = v0[60];
  v6 = v0[61];
  v8 = v0[59];
}

uint64_t sub_1B5E5FC3C()
{

  return swift_slowAlloc();
}

void sub_1B5E5FCA8()
{
  v1 = v0[64];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
}

void sub_1B5E5FCC0()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[66];
  v5 = v0[65];
}

void sub_1B5E5FD08()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[88];
  v4 = v0[82];
  v5 = v0[79];
  v6 = v0[74];
  sub_1B5E49FF8();
  v0[95] = v7;

  sub_1B5E4A834();
}

id sub_1B5E5FD70(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t sub_1B5E5FD88()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E5FDA0()
{

  return swift_task_alloc();
}

uint64_t sub_1B5E5FDB8(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v3;
}

uint64_t sub_1B5E5FDDC(float a1)
{
  *v2 = a1;
  v3 = v1[11];
  sub_1B5DF3BFC(v1 + 7, v1[10]);
  v4 = *(v3 + 8);

  return sub_1B5EA51C0();
}

uint64_t sub_1B5E5FE1C()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E5FE38(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_1B5E5FE50()
{
  v2 = v0[80];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
}

void sub_1B5E5FE74()
{
  v3 = v0[63];
  v4 = v0[52];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];
}

uint64_t sub_1B5E5FE98()
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E5FF34()
{
  v1[77] = v0;
  v2 = v1[63];
  v3 = v1[6];
  sub_1B5DF3BFC(v1 + 2, v1[5]);

  return sub_1B5EA4B60();
}

uint64_t sub_1B5E5FFB0()
{
  v1 = v0[56];
  v2 = *(v0[57] + 96);
  return v0[58];
}

void sub_1B5E5FFDC()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v6 = v0[2];
  v5 = v0[3];
}

uint64_t sub_1B5E6007C()
{

  return swift_bridgeObjectRetain_n();
}

id sub_1B5E6009C(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_1B5E600BC()
{
  v2 = *(v0 + 652);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 448);

  return sub_1B5EA52F0();
}

uint64_t sub_1B5E600DC()
{

  return sub_1B5EA4F40();
}

void sub_1B5E600FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_1B5E6011C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1B5E6013C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_1B5E6015C()
{

  return sub_1B5DF4428(v1, v0, v2);
}

uint64_t sub_1B5E601E0()
{

  return swift_allocObject();
}

id sub_1B5E601F8(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t sub_1B5E60210()
{
}

uint64_t sub_1B5E60228(uint64_t a1)
{

  return sub_1B5E10AFC(a1, v1);
}

uint64_t sub_1B5E60240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B5EA4950();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4970();
  return sub_1B5E602C4(v5, a1);
}

uint64_t sub_1B5E602C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B5EA4950();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = sub_1B5E5F324();
  v8(v7);
  v9 = type metadata accessor for JsonParser.AsyncIterator(0);
  v10 = a2 + v9[5];
  sub_1B5EA46E0();
  result = (*(v5 + 8))(a1, v4);
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(a2 + v9[7]) = 7;
  *(a2 + v9[8]) = 0;
  return result;
}

uint64_t sub_1B5E603B4()
{
  sub_1B5E01DFC();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1B5EA43A0();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = sub_1B5EA4F10();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E604C8()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 88);
  v2 = type metadata accessor for JsonParser.AsyncIterator(0);
  *(v0 + 144) = v2;
  v3 = *(v2 + 32);
  *(v0 + 216) = v3;
  if (*(v1 + v3) == -32768)
  {
    v4 = *(v0 + 80);
    type metadata accessor for JsonParserToken(0);
    v5 = sub_1B5E63938();
    sub_1B5DF3658(v5, v6, v7, v8);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);

    sub_1B5E2CF4C();

    return v11();
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    sub_1B5E638C4();
    *(v14 + 8) = v15;
    v16 = *(v0 + 88);

    return sub_1B5E61640();
  }
}

uint64_t sub_1B5E605C4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;
  v3[21] = v8;
  v3[22] = v0;

  if (v0)
  {
    v9 = v3[3];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E606D4()
{
  v1 = *(v0 + 168);
  if (!v1)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 144);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    v17 = *(v0 + 24);

    *(v16 + v13) = 0x8000;
    v18 = v16 + *(v14 + 20);
    sub_1B5EA46C0();
    v19 = type metadata accessor for JsonParserToken(0);
    swift_storeEnumTagMultiPayload();
    v20 = v15;
LABEL_14:
    v21 = 0;
    v22 = 1;
    v23 = v19;
LABEL_75:
    sub_1B5DF3658(v20, v21, v22, v23);
    v58 = *(v0 + 136);
    v59 = *(v0 + 112);

    sub_1B5E2CF4C();
LABEL_76:

    return v60();
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 88);
  v4 = *(v3 + v2);
  if (v4 >> 14)
  {
    if (v4 >> 14 != 1)
    {
      sub_1B5E6396C();

      type metadata accessor for JsonParserToken(0);
      v20 = sub_1B5E63938();
      goto LABEL_75;
    }

    v5 = (v4 >> 8) & 0x3F;
    v6 = *(v0 + 160);
    if (v5)
    {
      if (v5 == 1)
      {
        v7 = *(v0 + 24);

        if (v1 == 0xE100000000000000 && v6 == 34 || (v8 = *(v0 + 160), (sub_1B5E63860() & 1) != 0))
        {
          v9 = *(v0 + 216);
          v10 = *(v0 + 80);
          v11 = *(v0 + 88);

          if (v4)
          {
            v12 = 16385;
          }

          else
          {
            v12 = 0;
          }

          *(v11 + v9) = v12;
          *v10 = 0;
          v10[1] = 0xE000000000000000;
          goto LABEL_73;
        }

        if (v1 == 0xE100000000000000 && *(v0 + 160) == 92)
        {
          v41 = 92;
        }

        else
        {
          v47 = sub_1B5E63860();
          v41 = *(v0 + 160);
          if ((v47 & 1) == 0)
          {
            v48 = *(v0 + 80);
            goto LABEL_72;
          }
        }

        v48 = *(v0 + 80);
        *(*(v0 + 88) + *(v0 + 216)) = v4 & 1 | 0x4200;
LABEL_72:
        *v48 = v41;
        v48[1] = v1;
LABEL_73:
        v34 = MEMORY[0x1E69A08B0];
        goto LABEL_74;
      }

      v35 = *(v0 + 80);
      v36 = *(v0 + 24);

      *(v3 + v2) = v4 & 1 | 0x4100;
      *v35 = v6;
      v35[1] = v1;
      v37 = *MEMORY[0x1E69A08B0];
      v38 = sub_1B5EA4D40();
      sub_1B5E6384C(v38);
      (*(v39 + 104))(v35, v37);
      v19 = type metadata accessor for JsonParserToken(0);
      swift_storeEnumTagMultiPayload();
      v20 = v35;
      goto LABEL_14;
    }

    sub_1B5E5F324();
    if ((sub_1B5EA5610() & 1) == 0)
    {
      v25 = *(v0 + 168);
      v26 = *(v0 + 160) == 34 && v25 == 0xE100000000000000;
      if (v26 || (sub_1B5E63860() & 1) != 0)
      {
        v27 = *(v0 + 216);
        v28 = *(v0 + 88);

        v29 = v4 & 1 | 0x4100;
LABEL_30:
        *(v28 + v27) = v29;
        goto LABEL_51;
      }

      v49 = *(v0 + 160) == 44 && v25 == 0xE100000000000000;
      if (v49 || (sub_1B5E63860() & 1) != 0)
      {
        sub_1B5E6396C();
LABEL_63:

        v34 = MEMORY[0x1E69A08E0];
        goto LABEL_74;
      }

      v61 = *(v0 + 160) == 91 && v25 == 0xE100000000000000;
      if (v61 || (sub_1B5E63860() & 1) != 0)
      {
        sub_1B5E638F0();

        *(v4 - 0x1F00000000000000) = 16385;
        v34 = MEMORY[0x1E69A08A0];
        goto LABEL_74;
      }

      v63 = *(v0 + 160) == 93 && v25 == 0xE100000000000000;
      if (v63 || (sub_1B5E63860() & 1) != 0)
      {
        sub_1B5E638F0();

        *(v4 - 0x1F00000000000000) = 0;
        v34 = MEMORY[0x1E69A08F0];
        goto LABEL_74;
      }

      v69 = *(v0 + 160) == 123 && v25 == 0xE100000000000000;
      if (v69 || (sub_1B5E63860() & 1) != 0)
      {
        sub_1B5E638F0();

        *(v4 - 0x1F00000000000000) = 0;
        goto LABEL_38;
      }

      v75 = *(v0 + 160) == 125 && v25 == 0xE100000000000000;
      if (!v75 && (sub_1B5E63860() & 1) == 0)
      {
        v90 = *(v0 + 216);
        v91 = *(v0 + 88);
        *(v0 + 32) = *(v0 + 160);
        *(v0 + 40) = v1;
        *(v91 + v90) = 0;
        *(v0 + 220) = 0;

        v92 = swift_task_alloc();
        *(v0 + 184) = v92;
        *v92 = v0;
        sub_1B5E638A8();
        goto LABEL_52;
      }

      sub_1B5E638F0();

      *(v4 - 0x1F00000000000000) = 0;
      goto LABEL_70;
    }

    goto LABEL_50;
  }

  v24 = *(v0 + 160);
  if (!*(v3 + v2))
  {
    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    if ((sub_1B5EA5610() & 1) == 0)
    {
      v32 = *(v0 + 168);
      v33 = *(v0 + 160) == 123 && v32 == 0xE100000000000000;
      if (v33 || (sub_1B5E63860() & 1) != 0)
      {
        sub_1B5E6396C();

LABEL_38:
        v34 = MEMORY[0x1E69A08A8];
LABEL_74:
        v51 = *v34;
        v52 = sub_1B5EA4D40();
        sub_1B5E6384C(v52);
        v54 = *(v53 + 104);
        v55 = sub_1B5E5F324();
        v56(v55);
        v57 = type metadata accessor for JsonParserToken(0);
        sub_1B5E5F324();
        swift_storeEnumTagMultiPayload();
        v20 = sub_1B5E6390C();
        v23 = v57;
        goto LABEL_75;
      }

      v50 = *(v0 + 160) == 125 && v32 == 0xE100000000000000;
      if (!v50 && (sub_1B5E63860() & 1) == 0)
      {
        v62 = *(v0 + 160) == 34 && v32 == 0xE100000000000000;
        if (v62 || (sub_1B5E63860() & 1) != 0)
        {
          v27 = *(v0 + 216);
          v28 = *(v0 + 88);

          v29 = 1;
          goto LABEL_30;
        }

        v64 = *(v0 + 160) == 58 && v32 == 0xE100000000000000;
        if (v64 || (sub_1B5E63860() & 1) != 0)
        {
          v65 = *(v0 + 216);
          v66 = *(v0 + 80);
          v67 = *(v0 + 88);

          *(v67 + v65) = 0x4000;
          v68 = *(v0 + 24);
          *v66 = *(v0 + 16);
          v66[1] = v68;
          v34 = MEMORY[0x1E69A0900];
          goto LABEL_74;
        }

        v70 = *(v0 + 160);
        v71 = *(v0 + 24);

        if (v70 != 44 || v32 != 0xE100000000000000)
        {
          v73 = *(v0 + 160);
          if ((sub_1B5E63860() & 1) == 0)
          {
            if (qword_1EB90D178 != -1)
            {
              swift_once();
            }

            v76 = sub_1B5EA53B0();
            sub_1B5DFD794(v76, qword_1EB90D180);

            v77 = sub_1B5EA5380();
            v78 = sub_1B5EA5A40();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = *(v0 + 160);
              v80 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v80 = 136315138;

              v81 = sub_1B5E5B1CC();

              *(v80 + 4) = v81;
              _os_log_impl(&dword_1B5DED000, v77, v78, "Recieved unexpected character: %s.", v80, 0xCu);
              sub_1B5DF3FB8(v93);
              MEMORY[0x1B8C8B330](v93, -1, -1);
              MEMORY[0x1B8C8B330](v80, -1, -1);
            }

            v82 = *(v0 + 160);
            v84 = *(v0 + 128);
            v83 = *(v0 + 136);
            v85 = *(v0 + 120);
            sub_1B5EA5BC0();
            *(v0 + 64) = 0;
            *(v0 + 72) = 0xE000000000000000;
            MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA010);
            sub_1B5EA5620();

            MEMORY[0x1B8C8A360](46, 0xE100000000000000);
            v86 = *(v0 + 64);
            v87 = *(v0 + 72);
            sub_1B5EA4F00();
            sub_1B5EA5130();
            sub_1B5E620F8(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
            swift_allocError();
            sub_1B5EA50F0();
            (*(v84 + 8))(v83, v85);
            swift_willThrow();
            v88 = *(v0 + 136);
            v89 = *(v0 + 112);

            sub_1B5E2CF4C();
            goto LABEL_76;
          }
        }

        v74 = *(v0 + 80);
        goto LABEL_63;
      }

      sub_1B5E6396C();

LABEL_70:
      v34 = MEMORY[0x1E69A08F8];
      goto LABEL_74;
    }

LABEL_50:

    goto LABEL_51;
  }

  if (*(v3 + v2) != 1)
  {
    *(v3 + v2) = 1;
    v40 = v24;
LABEL_49:
    MEMORY[0x1B8C8A360](v40, v1);
    goto LABEL_50;
  }

  if (v1 == 0xE100000000000000 && v24 == 34)
  {
    goto LABEL_21;
  }

  if ((sub_1B5E63860() & 1) == 0)
  {
    if (v1 == 0xE100000000000000 && *(v0 + 160) == 92 || (sub_1B5E63860() & 1) != 0)
    {
      *(*(v0 + 88) + *(v0 + 216)) = 2;
    }

    v40 = *(v0 + 160);
    goto LABEL_49;
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 88);
LABEL_21:

  *(v3 + v2) = 0;
LABEL_51:
  v42 = swift_task_alloc();
  *(v0 + 152) = v42;
  *v42 = v0;
  v43 = sub_1B5E638C4();
LABEL_52:
  *(v43 + 8) = v44;
  v45 = *(v0 + 88);

  return sub_1B5E61640();
}

uint64_t sub_1B5E60FBC()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  v3[24] = v7;
  v3[25] = v8;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[21];

    v10 = v3[5];

    v11 = v3[3];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B5E610DC()
{
  v1 = *(v0 + 200);
  if (!v1)
  {
LABEL_5:
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    *(v0 + 48) = v10;
    *(v0 + 56) = v9;

    sub_1B5EA4D30();
    sub_1B5E61C5C();
    sub_1B5E620F8(&qword_1EB90EDF8, MEMORY[0x1E69E8250]);
    v11 = sub_1B5EA5630();
    (*(v7 + 8))(v6, v8);

    if (v11)
    {
      v12 = *(v0 + 220);

      v13 = sub_1B5E5F940();
      if (v12 == 1)
      {
        result = sub_1B5E61DA0(v13, v14);
        if ((v16 & 1) == 0)
        {
          sub_1B5E6394C();

          v17 = *(v0 + 24);

          *v6 = v12;
          v18 = MEMORY[0x1E69A08C0];
LABEL_28:
          v43 = *v18;
          v44 = sub_1B5EA4D40();
          sub_1B5E6384C(v44);
          (*(v45 + 104))(v6, v43);
          v46 = type metadata accessor for JsonParserToken(0);
          swift_storeEnumTagMultiPayload();
          v30 = v6;
          v31 = 0;
          v32 = 1;
          v33 = v46;
          goto LABEL_29;
        }

        __break(1u);
      }

      else
      {
        result = sub_1B5E61E00(v13, v14);
        if ((v41 & 1) == 0)
        {
          sub_1B5E6394C();

          v42 = *(v0 + 24);

          *v6 = v12;
          v18 = MEMORY[0x1E69A08C8];
          goto LABEL_28;
        }
      }

      __break(1u);
      return result;
    }

    v19 = *(v0 + 168);
    v20 = *(v0 + 24);

    v21 = v10 == 1702195828 && v9 == 0xE400000000000000;
    if (v21 || (sub_1B5E6391C() & 1) != 0)
    {

      **(v0 + 80) = 1;
    }

    else
    {
      v50 = v10 == 0x65736C6166 && v9 == 0xE500000000000000;
      if (!v50 && (sub_1B5E6391C() & 1) == 0)
      {
        v58 = v10 == 1819047278 && v9 == 0xE400000000000000;
        if (v58 || (sub_1B5E6391C() & 1) != 0)
        {

          v59 = *(v0 + 80);
          v22 = MEMORY[0x1E69A0908];
        }

        else
        {
          v60 = *(v0 + 80);
          *v60 = v10;
          v60[1] = v9;
          v22 = MEMORY[0x1E69A08D0];
        }

        goto LABEL_16;
      }

      **(v0 + 80) = 0;
    }

    v22 = MEMORY[0x1E69A08B8];
LABEL_16:
    v23 = *v22;
    v24 = sub_1B5EA4D40();
    sub_1B5E6384C(v24);
    v26 = *(v25 + 104);
    v27 = sub_1B5E5F324();
    v28(v27);
    v29 = type metadata accessor for JsonParserToken(0);
    sub_1B5E5F324();
    swift_storeEnumTagMultiPayload();
    v30 = sub_1B5E6390C();
    v33 = v29;
LABEL_29:
    sub_1B5DF3658(v30, v31, v32, v33);
    v47 = *(v0 + 136);
    v48 = *(v0 + 112);

    sub_1B5E2CF4C();

    return v49();
  }

  v2 = *(v0 + 192);
  if (v1 == 0xE100000000000000 && v2 == 44 || ((sub_1B5E5F324(), v34 = sub_1B5EA5F00(), v2 == 125) ? (v35 = v1 == 0xE100000000000000) : (v35 = 0), (v36 = *(v0 + 192), v35) || (v34 & 1) != 0 || (sub_1B5E5F940(), v37 = sub_1B5EA5F00(), v38 = *(v0 + 192), (v37 & 1) != 0)))
  {
    v3 = *(v0 + 88);
    v4 = sub_1B5E5F940();
    sub_1B5E61CB0(v4, v5);

    goto LABEL_5;
  }

  v39 = sub_1B5E5F940();
  MEMORY[0x1B8C8A360](v39);

  if (v1 == 0xE100000000000000 && v38 == 46)
  {

    v40 = 1;
  }

  else
  {
    v51 = *(v0 + 192);
    v52 = *(v0 + 220);
    v53 = sub_1B5EA5F00();

    v40 = v53 | v52;
  }

  *(v0 + 220) = v40 & 1;
  v54 = swift_task_alloc();
  *(v0 + 184) = v54;
  *v54 = v0;
  v55 = sub_1B5E638A8();
  *(v55 + 8) = v56;
  v57 = *(v0 + 88);

  return sub_1B5E61640();
}

uint64_t sub_1B5E61570()
{
  sub_1B5E01DFC();
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];

  sub_1B5E2CF4C();

  return v4();
}

uint64_t sub_1B5E615D8()
{
  sub_1B5E01DFC();
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[14];

  sub_1B5E2CF4C();

  return v4();
}

uint64_t sub_1B5E61640()
{
  v1[17] = v0;
  v2 = *(*(sub_1B5DF33E0(&qword_1EB90EE08, &unk_1B5EB7270) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v3 = sub_1B5EA4AA0();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E61738, 0, 0);
}

uint64_t sub_1B5E61738()
{
  v1 = *(v0 + 136);
  v2 = type metadata accessor for JsonParser.AsyncIterator(0);
  *(v0 + 176) = v2;
  v3 = *(v2 + 28);
  *(v0 + 208) = v3;
  v4 = *(v1 + v3);
  v5 = *(v2 + 24);
  *(v0 + 212) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v0 + 184) = v7;
  v9 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v9;
  }

  if (v4 >> 14 == 4 * v10)
  {
    v11 = *(MEMORY[0x1E69DA590] + 4);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v13 = sub_1B5E6387C(v12);

    return MEMORY[0x1EEE4A058](v13);
  }

  else
  {
    sub_1B5E62140();
    v14 = *(v0 + 168);
    v15 = *(v0 + 144);

    v16 = *(v0 + 8);
    v17 = sub_1B5E5F324();

    return v18(v17);
  }
}

uint64_t sub_1B5E61860()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E34F1C();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_1B5E34F1C();
  *v7 = v6;
  *(v8 + 200) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E61960()
{
  if (!*(v0 + 80))
  {
    sub_1B5E63210(v0 + 56, &qword_1EB90ED78, &qword_1B5EB7160);
    goto LABEL_5;
  }

  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  sub_1B5E5EF30((v0 + 56), v0 + 16);
  v5 = v4 + *(v1 + 20);
  sub_1B5EA46D0();
  sub_1B5DFC6BC(v0 + 16, v0 + 96);
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 208);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v12 = *(v0 + 136);
    v13 = (v12 + *(v0 + 212));
    v14 = sub_1B5E6390C();
    sub_1B5DF3658(v14, v15, v16, v11);
    (*(v9 + 32))(v8, v10, v11);
    v17 = sub_1B5EA4A90();
    v19 = v18;

    *v13 = v17;
    v13[1] = v19;
    *(v12 + v7) = 15;
    sub_1B5E62140();
    (*(v9 + 8))(v8, v11);
    sub_1B5DF3FB8((v0 + 16));
LABEL_5:
    v20 = *(v0 + 168);
    v21 = *(v0 + 144);

    v22 = *(v0 + 8);
    v23 = sub_1B5E5F324();

    return v24(v23);
  }

  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  sub_1B5DF3FB8((v0 + 16));
  sub_1B5DF3658(v26, 1, 1, v27);
  sub_1B5E63210(v26, &qword_1EB90EE08, &unk_1B5EB7270);
  v28 = *(MEMORY[0x1E69DA590] + 4);
  v29 = swift_task_alloc();
  *(v0 + 192) = v29;
  *v29 = v0;
  v30 = sub_1B5E6387C();

  return MEMORY[0x1EEE4A058](v30);
}

uint64_t sub_1B5E61BB4()
{
  sub_1B5E01DFC();
  v1 = v0[21];
  v2 = v0[18];

  sub_1B5E2CF4C();
  v4 = v0[25];

  return v3();
}

unint64_t sub_1B5E61C5C()
{
  result = qword_1EB90EDF0;
  if (!qword_1EB90EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EDF0);
  }

  return result;
}

uint64_t sub_1B5E61CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for JsonParser.AsyncIterator(0);
  v7 = *(v6 + 24);
  v8 = *(v6 + 28);
  v9 = *(v3 + v8);
  v10 = (v3 + v7);
  v11 = *(v3 + v7);
  v12 = *(v3 + v7 + 8);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 >> 14 == 4 * v13)
  {
  }

  else
  {
    sub_1B5E621E8(v9, v11, v12);
    sub_1B5E625B8();

    sub_1B5EA5730();
  }

  *v10 = a1;
  v10[1] = a2;
  *(v3 + v8) = 15;
  return result;
}

uint64_t sub_1B5E61DA0(uint64_t a1, uint64_t a2)
{
  sub_1B5E630FC(a1, a2);

  return 0;
}

uint64_t sub_1B5E61E00(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B5EA5C00();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_1B5E626E8(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5E620F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5E62140()
{
  v1 = type metadata accessor for JsonParser.AsyncIterator(0);
  v2 = 0;
  v3 = *(v1 + 28);
  v4 = (v0 + *(v1 + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (*(v0 + v3) >> 14 != 4 * v7)
  {
    v8 = *(v0 + v3);
    v2 = sub_1B5EA57B0();
    *(v0 + v3) = sub_1B5EA5720();
  }

  return v2;
}

uint64_t sub_1B5E621E8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1B5E62234()
{
  sub_1B5E01DFC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B5E622C8;

  return sub_1B5E603B4();
}

uint64_t sub_1B5E622C8()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1B5E34F1C();
  *v4 = v3;

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E623AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B5E62478;

  return (sub_1B5E63F20)(a1, a2, a3);
}

uint64_t sub_1B5E62478()
{
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_1B5E34F1C();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1B5E6258C@<X0>(uint64_t a1@<X8>)
{
  sub_1B5E60240(a1);

  return sub_1B5E636BC(v1);
}

unint64_t sub_1B5E625B8()
{
  result = qword_1EB90EE00;
  if (!qword_1EB90EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EE00);
  }

  return result;
}

void *sub_1B5E6260C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(&qword_1EB90EDC8, &qword_1B5EB71A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

_BYTE *sub_1B5E6267C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

unsigned __int8 *sub_1B5E626E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B5EA57C0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B5E62C70(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B5EA5C00();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B5E62C70(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B5E62CDC(sub_1B5E62CD8, 0, a1, a2);
  v6 = sub_1B5E62D10(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B5E62CDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x1EEE69100](15, v5 | (v4 << 16));
}

uint64_t sub_1B5E62D10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B5EA5700();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B5EA5AE0();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1B5E6260C(v9, 0);
  v12 = sub_1B5E62E70(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B5EA5700();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B5EA5C00();
LABEL_4:

  return sub_1B5EA5700();
}

unint64_t sub_1B5E62E70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1B5E63080(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B5EA5780();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B5EA5C00();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1B5E63080(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1B5EA5760();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B5E63080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B5EA5790();
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
    v5 = MEMORY[0x1B8C8A390](15, a1 >> 16);
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

BOOL sub_1B5E630FC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1B5EA5BB0();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1B5E63210(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B5DF33E0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B5E632B8()
{
  result = sub_1B5EA4990();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B5E6334C()
{
  result = sub_1B5EA4950();
  if (v1 <= 0x3F)
  {
    result = sub_1B5EA46F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JsonParser.AsyncIterator.JsonState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0xFFE)
  {
    if (a2 + 61442 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 61442 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 61443;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 2) & 0xF00) ^ 0xFFF;
  if (v5 >= 0xFFD)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for JsonParser.AsyncIterator.JsonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61442 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61442 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFFD)
  {
    v6 = ((a2 - 4094) >> 16) + 1;
    *result = a2 - 4094;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          v7 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
          *result = (16 * v7) & 0xFC00 | (4 * (v7 & 0x3F));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B5E6357C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 3 | (4 * ((v1 >> 8) & 3))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1B5E635B4(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x303 | (a2 << 14);
  }

  else
  {
    v2 = ((a2 - 2) << 6) & 0x300 | (a2 - 2) & 3 | 0x8000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1B5E635F4()
{
  result = sub_1B5EA4D40();
  if (v1 <= 0x3F)
  {
    result = sub_1B5EA47C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5E636BC(uint64_t a1)
{
  v2 = type metadata accessor for JsonParser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for JsonParser.AsyncIterator.JsonParseState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B5E637F8()
{
  result = qword_1EB90EE48;
  if (!qword_1EB90EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EE48);
  }

  return result;
}

uint64_t sub_1B5E63860()
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E6387C(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E61860;
  v2 = *(v1 + 136);
  return v1 + 56;
}

uint64_t sub_1B5E638F0()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);
}

uint64_t sub_1B5E6391C()
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E6394C()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 80);
}

uint64_t sub_1B5E6396C()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
}

uint64_t sub_1B5E63984()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B5E2624C();
  sub_1B5E6626C();
  return v0;
}

uint64_t sub_1B5E639C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v8);
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  sub_1B5E6EFE0();
  v14 = sub_1B5EA5920();
  v15 = sub_1B5DF46E0(v13, 1, v14);

  if (v15 == 1)
  {
    sub_1B5DF4428(v13, &qword_1EB90E590, &qword_1B5EB6080);
  }

  else
  {
    sub_1B5EA5910();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B5EA58B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B5EA56F0() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = sub_1B5E6FC2C();

      sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);

      return v23;
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

  sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return sub_1B5E6FC2C();
}

uint64_t sub_1B5E63C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1B5E6EFE0();
  v12 = sub_1B5EA5920();
  v13 = sub_1B5DF46E0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1B5DF4428(v11, &qword_1EB90E590, &qword_1B5EB6080);
  }

  else
  {
    sub_1B5EA5910();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B5EA58B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B5EA56F0() + 32;

      sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B5E63EC8()
{
  sub_1B5E6FBD0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1B5E34F04();
  sub_1B5E644B0();
  return v3;
}

uint64_t sub_1B5E63F20()
{
  sub_1B5E01DFC();
  v0[3] = v1;
  v0[4] = v2;
  swift_task_alloc();
  sub_1B5E34EEC();
  v0[5] = v3;
  *v3 = v4;
  sub_1B5E6FAC4(v3);

  return sub_1B5E603B4();
}

uint64_t sub_1B5E63FAC()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v9 = v3[4];
      swift_getObjectType();
      v10 = sub_1B5EA58B0();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1B5E64104, v10, v12);
  }

  else
  {
    sub_1B5E2CF4C();

    return v13();
  }
}

uint64_t sub_1B5E64104()
{
  sub_1B5E01DFC();
  *(v0 + 16) = *(v0 + 48);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E2CF4C();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_1B5E6418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B5E641B0, 0, 0);
}

uint64_t sub_1B5E641B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E2CED8();
  sub_1B5EA5950();
  v19 = *(MEMORY[0x1E69E87B0] + 4);
  v20 = swift_task_alloc();
  v18[7] = v20;
  v21 = sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);
  *v20 = v18;
  v20[1] = sub_1B5E642E0;
  v28 = v18[6];
  v29 = v18[3];

  return MEMORY[0x1EEE6DB98](v29, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E642E0()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;

  if (v0)
  {
    v3[8] = v0;
    if (v3[4])
    {
      v9 = v3[5];
      swift_getObjectType();
      v10 = sub_1B5EA58B0();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1B5E64428, v10, v12);
  }

  else
  {
    sub_1B5E2CF4C();

    return v13();
  }
}

uint64_t sub_1B5E64428()
{
  sub_1B5E01DFC();
  *(v0 + 16) = *(v0 + 64);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E2CF4C();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_1B5E644B0()
{
  sub_1B5E6FBD0();
  v1 = sub_1B5EA4990();
  v2 = sub_1B5DF5DA8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  v9 = v8 - v7;
  *(v0 + qword_1EB90EE70) = 0;
  sub_1B5E34F04();
  sub_1B5EA4960();
  (*(v4 + 32))(v0 + qword_1EB90EE50, v9, v1);
  return v0;
}

uint64_t TokenStreamHandler.content()()
{
  sub_1B5E2CED8();
  v2 = v1;
  v4 = v3;
  v2[8] = v5;
  v2[9] = v3;
  v6 = *v0;
  v2[10] = *v0;
  v7 = sub_1B5EA4F10();
  v2[11] = v7;
  sub_1B5E01C50(v7);
  v2[12] = v8;
  v10 = *(v9 + 64);
  v2[13] = sub_1B5E2D0C8();
  v11 = *(v6 + 80);
  v2[14] = v11;
  v12 = sub_1B5EA5AD0();
  v2[15] = v12;
  sub_1B5E01C50(v12);
  v2[16] = v13;
  v15 = *(v14 + 64);
  v2[17] = sub_1B5E2D0C8();
  v16 = *(v11 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v18 = sub_1B5EA56D0();
  v2[21] = v18;
  sub_1B5E01C50(v18);
  v2[22] = v19;
  v21 = *(v20 + 64);
  v2[23] = sub_1B5E2D0C8();
  v22 = sub_1B5EA4740();
  v2[24] = v22;
  sub_1B5E01C50(v22);
  v2[25] = v23;
  v25 = *(v24 + 64);
  v2[26] = sub_1B5E2D0C8();
  v26 = sub_1B5EA4770();
  v2[27] = v26;
  sub_1B5E01C50(v26);
  v2[28] = v27;
  v29 = *(v28 + 64);
  v2[29] = sub_1B5E2D0C8();
  v30 = sub_1B5EA4750();
  v2[30] = v30;
  sub_1B5E01C50(v30);
  v2[31] = v31;
  v33 = *(v32 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v34 = sub_1B5DF33E0(&qword_1EB90EC38, &qword_1B5EB7028);
  sub_1B5E01CF8(v34);
  v36 = *(v35 + 64);
  v2[34] = sub_1B5E2D0C8();
  v37 = *(MEMORY[0x1E69DA5A8] + 4);
  v38 = swift_task_alloc();
  v2[35] = v38;
  *v38 = v2;
  v38[1] = sub_1B5E648F8;

  return MEMORY[0x1EEE4A078](v4);
}

uint64_t sub_1B5E648F8()
{
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[36] = v0;

  if (v0)
  {
    v10 = v3[33];
    v9 = v3[34];
    v11 = v3[32];
    v12 = v3[29];
    v13 = v3[26];
    v14 = v3[23];
    v16 = v3[19];
    v15 = v3[20];
    v25 = v3[17];
    v17 = v3[13];

    sub_1B5E2CF4C();
    sub_1B5E6FB04();

    __asm { BRAA            X1, X16 }
  }

  sub_1B5E5F8EC();
  sub_1B5E6FB04();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1B5E64A9C()
{
  v1 = v0[34];
  v2 = v0[9];
  v3 = sub_1B5EA4700();
  sub_1B5E10AFC(v3, v1);

  v4 = sub_1B5EA47B0();
  v5 = sub_1B5DF46E0(v1, 1, v4);
  v6 = MEMORY[0x1E69DA540];
  if (v5 == 1)
  {
    v8 = v0[30];
    v7 = v0[31];
    sub_1B5DF4428(v0[34], &qword_1EB90EC38, &qword_1B5EB7028);
    sub_1B5DF33E0(&qword_1EB90ED18, &qword_1B5EB73E0);
    v9 = *(v7 + 72);
    v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B5EAFC20;
    sub_1B5EA4720();
    v12 = v11 + v10;
    v13 = v11;
    (*(v7 + 104))(v12, *v6, v8);
  }

  else
  {
    v14 = sub_1B5EA4780();
    v15 = *(*(v4 - 8) + 8);
    v16 = sub_1B5E5F324();
    v17(v16);
    v18 = *(v14 + 16);
    if (v18)
    {
      v19 = v0[31];
      v20 = v0[28];
      v137 = MEMORY[0x1E69E7CC0];
      sub_1B5E5C044();
      v13 = v137;
      v21 = *(v20 + 16);
      v20 += 16;
      v22 = *(v20 + 64);
      sub_1B5E34D90();
      v24 = v14 + v23;
      v130 = *(v20 + 56);
      v132 = v25;
      v26 = (v20 - 8);
      do
      {
        v27 = v13;
        v28 = v0[33];
        v29 = v0[29];
        v30 = v0[27];
        v132(v29, v24, v30);
        sub_1B5EA4760();
        v13 = v27;
        (*v26)(v29, v30);
        v31 = *(v27 + 16);
        if (v31 >= *(v27 + 24) >> 1)
        {
          sub_1B5E5C044();
          v13 = v27;
        }

        v32 = v0[33];
        v33 = v0[30];
        *(v13 + 16) = v31 + 1;
        v34 = *(v19 + 80);
        sub_1B5E34D90();
        (*(v19 + 32))(v13 + v35 + *(v19 + 72) * v31);
        v24 += v130;
        --v18;
      }

      while (v18);

      v6 = MEMORY[0x1E69DA540];
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }
  }

  v36 = v0[14];
  v37 = sub_1B5EA5870();
  v136 = v37;
  v38 = *(v13 + 16);
  if (v38)
  {
    v39 = v0[31];
    v40 = v0[25];
    v41 = v0[18];
    v43 = *(v39 + 16);
    v39 += 16;
    v42 = v43;
    v115 = v0[10];
    v44 = v13 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v45 = *(v39 + 56);
    v46 = (v39 + 72);
    v134 = *v6;
    v123 = (v39 - 8);
    v122 = (v39 + 80);
    v120 = (v0[22] + 8);
    v121 = (v40 + 32);
    v119 = (v40 + 8);
    v113 = (v41 + 8);
    v114 = (v41 + 16);
    v47 = v0[36];
    v133 = MEMORY[0x1E69E7CC0];
    v126 = v45;
    v128 = v43;
    v124 = (v39 + 72);
    do
    {
      v48 = v0[32];
      v49 = v0[30];
      v42(v48, v44, v49);
      v50 = (*v46)(v48, v49);
      v51 = v0[32];
      v52 = v0[30];
      if (v50 == v134)
      {
        v53 = v0[26];
        v55 = v0[23];
        v54 = v0[24];
        v56 = v0[21];
        (*v122)(v0[32], v52);
        (*v121)(v53, v51, v54);
        sub_1B5EA4730();
        sub_1B5EA56C0();
        v57 = sub_1B5EA56B0();
        v59 = v58;

        v60 = *v120;
        v61 = sub_1B5E5FB14();
        v62(v61);
        if (v59 >> 60 == 15)
        {
          (*v119)(v0[26], v0[24]);
        }

        else
        {
          v63 = v0[20];
          v64 = *(v115 + 88);
          v65 = v0[14];
          sub_1B5EA5370();
          if (v47)
          {
            swift_getErrorValue();
            v67 = v0[2];
            v66 = v0[3];
            v68 = v0[4];
            v69 = sub_1B5EA5F70();
            v116 = v70;
            v117 = v69;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v133 = sub_1B5E6DFCC(0, *(v133 + 2) + 1, 1, v133);
            }

            v72 = *(v133 + 2);
            v71 = *(v133 + 3);
            if (v72 >= v71 >> 1)
            {
              v133 = sub_1B5E6DFCC((v71 > 1), v72 + 1, 1, v133);
            }

            v73 = v0[26];
            v74 = v0[24];
            sub_1B5E25DA0(v57, v59);

            (*v119)(v73, v74);
            v47 = 0;
            *(v133 + 2) = v72 + 1;
            v75 = &v133[16 * v72];
            *(v75 + 4) = v117;
            *(v75 + 5) = v116;
          }

          else
          {
            v118 = v0[26];
            v76 = v0[24];
            v77 = v0[20];
            v78 = v0[14];
            (*v114)(v0[19], v77, v78);
            sub_1B5EA58A0();
            sub_1B5EA5890();
            sub_1B5E25DA0(v57, v59);
            (*v113)(v77, v78);
            (*v119)(v118, v76);
            v47 = 0;
          }
        }

        v42 = v128;
        v46 = v124;
        v45 = v126;
      }

      else
      {
        (*v123)(v0[32], v52);
      }

      v44 += v45;
      --v38;
    }

    while (v38);

    v79 = v136;
  }

  else
  {
    v79 = v37;

    v133 = MEMORY[0x1E69E7CC0];
  }

  v80 = v0[17];
  v81 = v0[14];
  v0[5] = v79;
  sub_1B5EA58A0();
  swift_getWitnessTable();
  sub_1B5EA5640();
  if (sub_1B5DF46E0(v80, 1, v81) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    if (*(v133 + 2))
    {
      sub_1B5EA5BC0();
      MEMORY[0x1B8C8A360](0xD00000000000004DLL, 0x80000001B5EAA030);
      v0[6] = v133;
      v82 = sub_1B5E5F324();
      sub_1B5DF33E0(v82, v83);
      sub_1B5E5ECD0(&qword_1EB90EE60, &qword_1EB90EE58, &qword_1B5EB73E8);
      sub_1B5EA5650();

      v84 = sub_1B5E5F318();
      MEMORY[0x1B8C8A360](v84);
    }

    v95 = v0[12];
    v94 = v0[13];
    v96 = v0[11];
    v97 = v0[9];
    sub_1B5EA4F00();
    sub_1B5EA5130();
    sub_1B5E6F7DC();
    sub_1B5E6EE20(v98, v99);
    sub_1B5E5F23C();
    sub_1B5EA50F0();
    (*(v95 + 8))(v94, v96);
    swift_willThrow();
    v100 = sub_1B5EA47C0();
    sub_1B5DF5EB8(v100);
    (*(v101 + 8))(v97);
    v103 = v0[33];
    v102 = v0[34];
    v104 = v0[32];
    v105 = v0[29];
    v106 = v0[26];
    v107 = v0[23];
    v109 = v0[19];
    v108 = v0[20];
    v110 = v0[17];
    v111 = v0[13];

    sub_1B5E2CF4C();
  }

  else
  {
    v85 = v0[33];
    v86 = v0[34];
    v87 = v0[32];
    v88 = v0[29];
    v125 = v0[26];
    v127 = v0[23];
    v129 = v0[20];
    v131 = v0[19];
    v90 = v0[17];
    v89 = v0[18];
    v91 = v0[14];
    v135 = v0[13];
    v92 = v0[8];

    (*(v89 + 32))(v92, v90, v91);

    sub_1B5E2CF4C();
  }

  return v93();
}

uint64_t TokenStreamHandler.stream(fields:)(uint64_t a1)
{
  v2 = v1;
  v143 = a1;
  v3 = *v1;
  v140 = sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0);
  sub_1B5DF5DA8(v140);
  v152 = v4;
  v6 = *(v5 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v136 - v8;
  v151 = sub_1B5DF33E0(&qword_1EB90EE68, &qword_1B5EB73F8);
  sub_1B5DF5DA8(v151);
  v138 = v10;
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v136 - v14;
  v15 = sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  v155 = sub_1B5DF5DA8(v15);
  v156 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v155);
  v147 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v136 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v139 = &v136 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v154 = &v136 - v25;
  v149 = sub_1B5EA51A0();
  v26 = sub_1B5DF5DA8(v149);
  v153 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5DFD7E8();
  v148 = v31 - v30;
  v32 = sub_1B5EA51B0();
  v33 = sub_1B5DF5DA8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5DFD7E8();
  v40 = v39 - v38;
  v41 = sub_1B5EA5290();
  v42 = sub_1B5DF5DA8(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1B5DFD7E8();
  v47 = *(v3 + 88);
  v48 = *(v3 + 80);
  sub_1B5EA5360();
  sub_1B5EA5270();
  v49 = *(v44 + 8);
  v50 = sub_1B5E34F04();
  v51(v50);
  v52 = v35[11];
  v53 = sub_1B5E6FA20();
  if (v54(v53) != *MEMORY[0x1E69A0B70])
  {
LABEL_29:
    v133 = v35[1];
    v134 = sub_1B5E6FA20();
    v135(v134);
LABEL_30:
    result = sub_1B5EA5CA0();
    __break(1u);
    return result;
  }

  v55 = v35[12];
  v56 = sub_1B5E6FA20();
  v57(v56);
  v58 = *(*v40 + 16);

  v59 = v143;

  v61 = sub_1B5DFDD48(v60);
  v62 = v61;
  v63 = *(v58 + 16);
  v141 = v2;
  v142 = v9;
  if (v63)
  {
    v137 = v61;
    v157 = MEMORY[0x1E69E7CC0];
    v64 = sub_1B5E6FAE4();
    sub_1B5E5C0FC(v64, v65, v66);
    v67 = v157;
    v145 = *(v153 + 16);
    v68 = *(v153 + 80);
    sub_1B5E34D90();
    v136 = v58;
    v70 = v58 + v69;
    v144 = *(v71 + 56);
    v153 = v71;
    v72 = (v71 - 8);
    do
    {
      v145(v148, v70, v149);
      v73 = sub_1B5EA5190();
      v75 = v74;
      v76 = *v72;
      v77 = sub_1B5E26234();
      v78(v77);
      v157 = v67;
      v80 = *(v67 + 16);
      v79 = *(v67 + 24);
      if (v80 >= v79 >> 1)
      {
        v82 = sub_1B5E6FAF4(v79);
        sub_1B5E5C0FC(v82, v80 + 1, 1);
        v67 = v157;
      }

      *(v67 + 16) = v80 + 1;
      v81 = v67 + 16 * v80;
      *(v81 + 32) = v73;
      *(v81 + 40) = v75;
      v70 += v144;
      --v63;
    }

    while (v63);

    v2 = v141;
    v9 = v142;
    v59 = v143;
    v62 = v137;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  v83 = sub_1B5DFDD48(v67);
  sub_1B5E6E67C(v83, v62);
  sub_1B5E2624C();

  v84 = *(v62 + 16);

  if (v84 != *(v59 + 16))
  {
    goto LABEL_30;
  }

  v35 = MEMORY[0x1E69E7CC0];
  if (v84)
  {
    v157 = MEMORY[0x1E69E7CC0];
    sub_1B5E5C0DC(0, v84, 0);
    v35 = v157;
    type metadata accessor for Field(0);
    LODWORD(v153) = *MEMORY[0x1E69E8790];
    v85 = v139;
    v149 = *(v138 + 104);
    v86 = (v138 + 8);
    do
    {
      v87 = *(v155 + 48);
      v89 = v150;
      v88 = v151;
      v149(v150, v153, v151);
      sub_1B5EA5970();
      (*v86)(v89, v88);
      v157 = v35;
      v91 = v35[2];
      v90 = v35[3];
      if (v91 >= v90 >> 1)
      {
        v95 = sub_1B5E6FAF4(v90);
        sub_1B5E5C0DC(v95, v91 + 1, 1);
        v85 = v139;
        v35 = v157;
      }

      v35[2] = v91 + 1;
      v92 = *(v156 + 80);
      sub_1B5E34D90();
      sub_1B5E6E864(v85, v35 + v93 + *(v94 + 72) * v91);
      --v84;
    }

    while (v84);
    v2 = v141;
    v9 = v142;
    v59 = v143;
  }

  v96 = sub_1B5E65DB8(v59, v35);
  v97 = *(v2 + qword_1EB90EE70);
  *(v2 + qword_1EB90EE70) = v96;

  v98 = 0;
  v99 = v35[2];
  v100 = v140;
  while (1)
  {
    v101 = v35[2];
    if (v99 == v98)
    {
      break;
    }

    if (v98 >= v101)
    {
      __break(1u);

      sub_1B5DF4428(v101, &qword_1EB90ED08, &unk_1B5EB7400);
      __break(1u);
      goto LABEL_29;
    }

    v102 = *(v156 + 80);
    sub_1B5E34D90();
    v104 = *(v103 + 72);
    v105 = v154;
    sub_1B5E6EFE0();
    sub_1B5E65EBC(v105, v2);
    ++v98;
    v106 = sub_1B5DFA488();
    sub_1B5DF4428(v106, v107, &unk_1B5EB7400);
  }

  if (v101)
  {
    v157 = MEMORY[0x1E69E7CC0];
    v108 = sub_1B5E6FAE4();
    sub_1B5E5C0BC(v108, v109, v110);
    v111 = v157;
    v112 = *(v156 + 80);
    sub_1B5E34D90();
    v114 = v35 + v113;
    v115 = (v152 + 32);
    v156 = *(v116 + 72);
    do
    {
      v117 = v146;
      sub_1B5E6EFE0();
      v118 = v147;
      sub_1B5E6E864(v117, v147);
      v119 = *(v155 + 48);
      v120 = *v115;
      v121 = sub_1B5E5FB14();
      v120(v121);
      v122 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
      sub_1B5DF5EB8(v122);
      (*(v123 + 8))(v118 + v119);
      v157 = v111;
      v124 = v9;
      v125 = v100;
      v127 = v111[2];
      v126 = v111[3];
      if (v127 >= v126 >> 1)
      {
        v131 = sub_1B5E6FAF4(v126);
        sub_1B5E5C0BC(v131, v127 + 1, 1);
        v111 = v157;
      }

      v111[2] = v127 + 1;
      v128 = *(v152 + 80);
      sub_1B5E34D90();
      (v120)(v111 + v129 + *(v130 + 72) * v127, v124, v125);
      v114 += v156;
      --v101;
      v100 = v125;
      v9 = v124;
    }

    while (v101);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v111;
}

uint64_t sub_1B5E65DB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1B5EA5920();
  sub_1B5DF3658(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  return sub_1B5E63C28(0, 0, v8, &unk_1B5EB7618, v10);
}

uint64_t sub_1B5E65EBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  sub_1B5E6EFE0();
  v8 = *(v4 + 56);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = *(v2 + 80);
  v10[3] = *(v2 + 88);
  v10[4] = v9;
  v11 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  sub_1B5EA5980();
  (*(*(v11 - 8) + 8))(&v7[v8], v11);
  v12 = sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0);
  return (*(*(v12 - 8) + 8))(v7, v12);
}

uint64_t sub_1B5E66094(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90F038, &qword_1B5EB7608);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, a1, v2);
  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x1E69E8760])
  {
    return (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + qword_1EB90EE70))
    {
      v8 = *(result + qword_1EB90EE70);

      sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
      sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
      sub_1B5EA5940();
    }
  }

  return result;
}

uint64_t sub_1B5E6626C()
{
  sub_1B5E6FA14();
  v2 = sub_1B5EA4990();
  v3 = sub_1B5DF5DA8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  *(v0 + qword_1EB90EE70) = 0;
  sub_1B5E5F910();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_1B5E5F910();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B5E01A08;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B5E01A10;
  *(v14 + 24) = v12;
  v15 = v1;
  sub_1B5EA4960();
  (*(v5 + 32))(v0 + qword_1EB90EE50, v10, v2);
  return v0;
}

uint64_t sub_1B5E66404(void *a1)
{
  sub_1B5E5F910();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);

  return sub_1B5EA59D0();
}

uint64_t sub_1B5E664B4()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 16);
  swift_willThrow();
  v2 = v1;
  sub_1B5E2CF4C();
  v4 = *(v0 + 16);

  return v3();
}

uint64_t TokenStreamHandler.finalize()()
{
  sub_1B5E01DFC();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = *v0;
  v1[7] = *v0;
  v5 = sub_1B5EA4F30();
  v1[8] = v5;
  sub_1B5E01C50(v5);
  v1[9] = v6;
  v8 = *(v7 + 64);
  v1[10] = sub_1B5E2D0C8();
  v9 = sub_1B5EA4F10();
  v1[11] = v9;
  sub_1B5E01C50(v9);
  v1[12] = v10;
  v12 = *(v11 + 64);
  v1[13] = sub_1B5E2D0C8();
  v1[14] = *(v4 + 80);
  v13 = sub_1B5EA5AD0();
  v1[15] = v13;
  sub_1B5E01C50(v13);
  v1[16] = v14;
  v16 = *(v15 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v17 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  v1[19] = v17;
  sub_1B5E01CF8(v17);
  v19 = *(v18 + 64);
  v1[20] = sub_1B5E2D0C8();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1B5E66724()
{
  sub_1B5E34EC0();
  v1 = *(v0[6] + qword_1EB90EE70);
  v0[21] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86A8] + 4);

    v3 = swift_task_alloc();
    v0[22] = v3;
    v4 = sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
    *v3 = v0;
    v3[1] = sub_1B5E66924;
    v6 = v0[19];
    v5 = v0[20];
    v7 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v5, v1, v6, v4, v7);
  }

  else
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    sub_1B5EA4F20();
    (*(v9 + 104))(v8, *MEMORY[0x1E69A0958], v10);
    sub_1B5EA5130();
    sub_1B5E6F7DC();
    sub_1B5E6EE20(v11, v12);
    swift_allocError();
    sub_1B5EA5100();
    v13 = *(v9 + 8);
    v14 = sub_1B5E5F324();
    v15(v14);
    swift_willThrow();
    v16 = v0[20];
    v17 = v0[17];
    v18 = v0[18];
    v19 = v0[13];
    v20 = v0[10];

    sub_1B5E2CF4C();

    return v21();
  }
}

uint64_t sub_1B5E66924()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E34F1C();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E66A20()
{
  v1 = v0[20];
  v2 = sub_1B5EA47C0();
  result = sub_1B5DF46E0(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v0[23];
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[7];
  v44 = *(v2 - 8);
  v45 = v2;
  (*(v44 + 32))(v0[5], v1, v2);
  v0[2] = sub_1B5EA4700();
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  *(v8 + 24) = *(v7 + 88);
  v9 = sub_1B5E5FB14();
  sub_1B5DF33E0(v9, v10);
  sub_1B5E5ECD0(&qword_1EB90EE80, &qword_1EB90EE78, &unk_1B5EB7418);
  v11 = sub_1B5EA57E0();

  v0[3] = v11;
  sub_1B5EA58A0();
  swift_getWitnessTable();
  sub_1B5EA5A30();

  v12 = sub_1B5DF46E0(v5, 1, v6);
  v13 = v0[15];
  v14 = v0[16];
  if (v12 != 1)
  {
    v32 = v0[17];
    v33 = v0[14];
    (*(v14 + 16))(v32, v0[18], v0[15]);
    result = sub_1B5DF46E0(v32, 1, v33);
    if (result != 1)
    {
      v35 = v0[20];
      v34 = v0[21];
      v37 = v0[17];
      v36 = v0[18];
      v38 = v0[15];
      v39 = v0[16];
      v41 = v0[13];
      v40 = v0[14];
      v42 = v0[10];
      v43 = v0[4];

      (*(v39 + 8))(v36, v38);
      (*(*(v40 - 8) + 32))(v43, v37, v40);

      sub_1B5E2CF4C();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v15 = v0[21];
  v16 = v0[18];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  v20 = v0[5];
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6F7DC();
  sub_1B5E6EE20(v21, v22);
  swift_allocError();
  sub_1B5EA50F0();
  v23 = *(v18 + 8);
  v24 = sub_1B5E5F318();
  v25(v24);
  swift_willThrow();

  (*(v44 + 8))(v20, v45);
  (*(v14 + 8))(v16, v13);
  v26 = v0[20];
  v27 = v0[17];
  v28 = v0[18];
  v29 = v0[13];
  v30 = v0[10];

  sub_1B5E2CF4C();
LABEL_6:

  return v31();
}

uint64_t sub_1B5E66E38()
{
  sub_1B5E34EC0();
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[13];
  v7 = v0[10];

  sub_1B5E2CF4C();

  return v8();
}

uint64_t sub_1B5E66ED8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v66[1] = a2;
  v70 = a3;
  v78 = sub_1B5EA4740();
  v4 = *(v78 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5EA56D0();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1B5EA4770();
  v10 = *(v84 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1B5EA4750();
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v87);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v66 - v21;
  v23 = sub_1B5EA4780();
  v24 = *(v23 + 16);
  v71 = a1;
  if (v24)
  {
    v74 = v4;
    v75 = v22;
    v76 = v17;
    v85 = MEMORY[0x1E69E7CC0];
    v25 = v23;
    sub_1B5E5C044();
    v26 = v85;
    v28 = *(v10 + 16);
    v27 = v10 + 16;
    v29 = *(v27 + 64);
    v73 = v25;
    v30 = v25 + ((v29 + 32) & ~v29);
    v80 = *(v27 + 56);
    v81 = v28;
    v82 = v27;
    v31 = (v27 - 8);
    v79 = v13 + 32;
    do
    {
      v32 = v83;
      v33 = v84;
      (v81)(v83, v30, v84);
      sub_1B5EA4760();
      (*v31)(v32, v33);
      v85 = v26;
      v34 = *(v26 + 16);
      if (v34 >= *(v26 + 24) >> 1)
      {
        sub_1B5E5C044();
        v26 = v85;
      }

      *(v26 + 16) = v34 + 1;
      (*(v13 + 32))(v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v20, v87);
      v30 = v80 + v30;
      --v24;
    }

    while (v24);

    a1 = v71;
    v22 = v75;
    v17 = v76;
    v35 = v26;
    v36 = v74;
  }

  else
  {
    v36 = v4;

    v35 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v35 + 16);
  if (v37)
  {
    v84 = 0;
    v40 = *(v13 + 16);
    v39 = (v13 + 16);
    v38 = v40;
    v41 = (v39[64] + 32) & ~v39[64];
    v66[0] = v35;
    v42 = v35 + v41;
    v43 = *(v39 + 7);
    v81 = (v39 + 72);
    v82 = v43;
    v80 = (v39 - 8);
    LODWORD(v79) = *MEMORY[0x1E69DA540];
    v73 = (v36 + 4);
    v74 = (v39 + 80);
    v72 = v36 + 1;
    v83 = 0xE000000000000000;
    v75 = v40;
    v76 = v39;
    do
    {
      v44 = v87;
      v38(v22, v42, v87);
      v38(v17, v22, v44);
      v45 = (*v81)(v17, v44);
      if (v45 == v79)
      {
        (*v74)(v17, v87);
        v47 = v77;
        v46 = v78;
        (*v73)(v77, v17, v78);
        v48 = sub_1B5EA4730();
        v49 = v22;
        v50 = v17;
        v52 = v51;
        v85 = v84;
        v86 = v83;

        MEMORY[0x1B8C8A360](v48, v52);

        v17 = v50;
        v22 = v49;

        v83 = v86;
        v84 = v85;
        v38 = v75;
        (*v72)(v47, v46);
        (*v80)(v49, v87);
      }

      else
      {
        v53 = *v80;
        v54 = v22;
        v55 = v22;
        v56 = v87;
        (*v80)(v54, v87);
        v57 = v56;
        v22 = v55;
        v53(v17, v57);
      }

      v42 += v82;
      --v37;
    }

    while (v37);

    a1 = v71;
  }

  else
  {
  }

  v58 = v67;
  sub_1B5EA56C0();
  v59 = sub_1B5EA56B0();
  v61 = v60;

  result = (*(v68 + 8))(v58, v69);
  v63 = v70;
  if (v61 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v64 = v66[2];
    sub_1B5EA5370();
    if (v64)
    {

      v65 = 1;
    }

    else
    {
      v65 = 0;
    }

    sub_1B5E25DA0(v59, v61);
    return sub_1B5DF3658(v63, v65, 1, a1);
  }

  return result;
}

uint64_t sub_1B5E67598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  v7 = sub_1B5DF33E0(&qword_1EB90F040, &qword_1B5EB7620);
  v6[30] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v9 = sub_1B5EA4F10();
  v6[32] = v9;
  v10 = *(v9 - 8);
  v6[33] = v10;
  v11 = *(v10 + 64) + 15;
  v6[34] = swift_task_alloc();
  v12 = type metadata accessor for Field(0);
  v6[35] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v14 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v6[37] = v14;
  v15 = *(v14 - 8);
  v6[38] = v15;
  v16 = *(v15 + 64) + 15;
  v6[39] = swift_task_alloc();
  v17 = sub_1B5DF33E0(&qword_1EB90EE68, &qword_1B5EB73F8);
  v6[40] = v17;
  v18 = *(v17 - 8);
  v6[41] = v18;
  v19 = *(v18 + 64) + 15;
  v6[42] = swift_task_alloc();
  v20 = sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0);
  v6[43] = v20;
  v21 = *(v20 - 8);
  v6[44] = v21;
  v22 = *(v21 + 64) + 15;
  v6[45] = swift_task_alloc();
  v23 = sub_1B5EA4D40();
  v6[46] = v23;
  v24 = *(v23 - 8);
  v6[47] = v24;
  v25 = *(v24 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v26 = type metadata accessor for JsonParserToken(0);
  v6[50] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v28 = sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  v6[52] = v28;
  v29 = *(v28 - 8);
  v6[53] = v29;
  v30 = *(v29 + 64) + 15;
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v31 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v6[56] = v31;
  v32 = *(v31 - 8);
  v6[57] = v32;
  v33 = *(v32 + 64) + 15;
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v34 = *(*(sub_1B5DF33E0(&qword_1EB90F050, &qword_1B5EB7630) - 8) + 64) + 15;
  v6[66] = swift_task_alloc();
  v35 = sub_1B5EA4950();
  v6[67] = v35;
  v36 = *(v35 - 8);
  v6[68] = v36;
  v37 = *(v36 + 64) + 15;
  v6[69] = swift_task_alloc();
  v38 = type metadata accessor for JsonParser.AsyncIterator(0);
  v6[70] = v38;
  v39 = *(*(v38 - 8) + 64) + 15;
  v6[71] = swift_task_alloc();
  v40 = *(*(sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638) - 8) + 64) + 15;
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v41 = *(*(type metadata accessor for JsonParser(0) - 8) + 64) + 15;
  v6[78] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E67B2C, 0, 0);
}

uint64_t sub_1B5E67B2C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  *(v0 + 632) = sub_1B5DFDD48(v3);
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = *(v0 + 456);
    v7 = *(v0 + 424);
    v64 = *(v0 + 416);
    v8 = *(v0 + 352);
    v9 = *(v0 + 224);
    v68 = MEMORY[0x1E69E7CC0];
    v10 = sub_1B5E6FAE4();
    sub_1B5E5C11C(v10, v11, v12);
    v5 = v68;
    v13 = *(v7 + 80);
    sub_1B5E34D90();
    v15 = v9 + v14;
    v66 = v6;
    v16 = (v6 + 32);
    v62 = (v8 + 8);
    v63 = *(v7 + 72);
    do
    {
      v17 = *(v0 + 520);
      v19 = *(v0 + 440);
      v18 = *(v0 + 448);
      v20 = *(v0 + 432);
      v21 = *(v0 + 344);
      sub_1B5E6EFE0();
      v22 = sub_1B5E5FB14();
      sub_1B5E6E864(v22, v23);
      v24 = *v16;
      (*v16)(v17, v20 + *(v64 + 48), v18);
      (*v62)(v20, v21);
      v26 = *(v68 + 16);
      v25 = *(v68 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B5E5C11C(v25 > 1, v26 + 1, 1);
      }

      v27 = *(v0 + 520);
      v28 = *(v0 + 448);
      *(v68 + 16) = v26 + 1;
      v29 = *(v66 + 80);
      sub_1B5E34D90();
      v24(v68 + v30 + *(v31 + 72) * v26);
      v15 += v63;
      --v4;
    }

    while (v4);
  }

  v32 = *(v0 + 624);
  v33 = *(v0 + 616);
  v34 = *(v0 + 568);
  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  v37 = *(v0 + 544);
  v38 = *(v0 + 536);
  v65 = *(v0 + 448);
  v39 = *(v0 + 232);
  v40 = *(v0 + 216);

  v67 = sub_1B5E35420(v41, v5);
  *(v0 + 144) = v67;
  v42 = qword_1EB90EE50;
  v43 = sub_1B5EA4990();
  sub_1B5DF5EB8(v43);
  (*(v44 + 16))(v32, v39 + v42);
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v45, v46, v47, v65);
  sub_1B5EA4970();
  v48 = *(v37 + 16);
  v49 = sub_1B5E5FA54();
  v50(v49);
  v51 = v34 + v35[5];
  sub_1B5EA46E0();
  (*(v37 + 8))(v36, v38);
  v52 = (v34 + v35[6]);
  *v52 = 0;
  v52[1] = 0xE000000000000000;
  *(v34 + v35[7]) = 7;
  *(v34 + v35[8]) = 0;
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 680) = *MEMORY[0x1E69A0900];
  *(v0 + 684) = *MEMORY[0x1E69A08B0];
  v53 = MEMORY[0x1E69A08C0];
  *(v0 + 688) = *MEMORY[0x1E69A08C8];
  *(v0 + 692) = *v53;
  *(v0 + 696) = *MEMORY[0x1E69A08B8];
  v54 = MEMORY[0x1E69A08D0];
  *(v0 + 700) = *MEMORY[0x1E69A08E8];
  *(v0 + 704) = *v54;
  *(v0 + 708) = *MEMORY[0x1E69A08A8];
  v55 = MEMORY[0x1E69A08A0];
  *(v0 + 712) = *MEMORY[0x1E69A08F8];
  *(v0 + 716) = *v55;
  *(v0 + 720) = *MEMORY[0x1E69A08F0];
  v56 = MEMORY[0x1E69A0908];
  *(v0 + 724) = *MEMORY[0x1E69A08E0];
  *(v0 + 728) = *v56;
  *(v0 + 732) = *MEMORY[0x1E69E8790];
  *(v0 + 648) = 0;
  *(v0 + 640) = v67;
  *(v0 + 672) = 0;
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 656) = v57;
  *v57 = v58;
  v57[1] = sub_1B5E67F54;
  v59 = *(v0 + 568);
  v60 = *(v0 + 528);

  return sub_1B5E603B4();
}

uint64_t sub_1B5E67F54()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 656);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  *(v3 + 664) = v0;

  if (v0)
  {
    v9 = *(v3 + 632);
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E68058()
{
  v2 = v0;
  if (sub_1B5DF46E0(*(v0 + 528), 1, *(v0 + 400)) == 1)
  {
    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    v5 = *(v0 + 568);

    sub_1B5E6F80C();
    sub_1B5E6EF24(v5, v6);
    sub_1B5E6F7F4();
    sub_1B5E6EF24(v4, v7);
    goto LABEL_3;
  }

  v10 = *(v0 + 408);
  v11 = sub_1B5E6FB20();
  sub_1B5E6EF7C(v11, v12);
  sub_1B5DFA488();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v0 + 632);
    v14 = *(v0 + 624);
    v15 = *(v0 + 568);
    v16 = *(v2 + 408);
    v17 = *(v2 + 208);

    sub_1B5E6F80C();
    sub_1B5E6EF24(v15, v18);
    sub_1B5E6F7F4();
    sub_1B5E6EF24(v14, v19);
    v8 = sub_1B5EA47C0();
    sub_1B5DF5EB8(v8);
    (*(v20 + 32))(v17, v16, v8);
    v9 = 0;
    goto LABEL_6;
  }

  v32 = *(v0 + 680);
  v33 = *(v0 + 408);
  v35 = *(v0 + 384);
  v34 = *(v2 + 392);
  v36 = *(v2 + 376);
  (*(v36 + 32))(v34, v33, *(v2 + 368));
  v37 = *(v36 + 16);
  v38 = sub_1B5E6FBE4();
  v39(v38);
  v41 = *(v36 + 88);
  v40 = v36 + 88;
  v42 = sub_1B5E6FB20();
  v44 = v43(v42);
  if (v44 == v32)
  {
    v45 = *(v2 + 632);
    v46 = sub_1B5E6FBA8();
    v47(v46);
    v48 = v34[1];
    if (*(v45 + 16))
    {
      v49 = *v34;
      v50 = *(v2 + 632);
      v51 = *(v50 + 40);
      sub_1B5EA5FD0();
      sub_1B5EA5710();
      v52 = sub_1B5EA6020();
      v53 = ~(-1 << *(v50 + 32));
      while (1)
      {
        v54 = *(v2 + 632);
        v55 = v52 & v53;
        if (((*(v54 + (((v52 & v53) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v52 & v53)) & 1) == 0)
        {
          break;
        }

        v56 = (*(v54 + 48) + 16 * v55);
        if (*v56 != v49 || v56[1] != v48)
        {
          v58 = sub_1B5EA5F00();
          v52 = v55 + 1;
          if ((v58 & 1) == 0)
          {
            continue;
          }
        }

        v59 = *(v2 + 672);
        v60 = sub_1B5E6F998();
        v61(v60);
        *(v2 + 112) = v49;
        *(v2 + 120) = v48;

        goto LABEL_128;
      }
    }

    v73 = *(v2 + 392);
    v75 = *(v2 + 368);
    v74 = *(v2 + 376);

    v76 = *(v74 + 8);
    v77 = sub_1B5E26234();
    v78(v77);
LABEL_127:
    v48 = *(v2 + 672);
    v49 = *(v2 + 648);
LABEL_128:
    v256 = *(v2 + 640);
LABEL_129:
    *(v2 + 648) = v49;
    *(v2 + 640) = v256;
LABEL_130:
    *(v2 + 672) = v48;
    goto LABEL_131;
  }

  v466 = v2;
  if (v44 != *(v2 + 684))
  {
    if (v44 == *(v2 + 688))
    {
      v79 = sub_1B5E6F8C4();
      v80(v79);
      v81 = *v35;
      v82 = sub_1B5E6FAA4();
      sub_1B5E6A144(v82, v83, v84, v85);
      if (!v32)
      {
LABEL_126:
        v361 = sub_1B5E6F998();
        v362(v361);
        goto LABEL_127;
      }
    }

    else if (v44 == *(v2 + 692))
    {
      v86 = sub_1B5E6F8C4();
      v87(v86);
      v88 = *v35;
      v89 = sub_1B5E6FAA4();
      sub_1B5E6A854(v89, v90, v91, v92);
      if (!v32)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v44 != *(v2 + 696))
      {
        if (v44 == *(v2 + 700))
        {
          v132 = *(v2 + 632);
          v133 = *(v2 + 376);
          v134 = *(v2 + 384);
          v135 = *(v2 + 368);

          v136 = *(v133 + 96);
          v137 = sub_1B5E26234();
          v138(v137);
          v140 = *v134;
          v139 = v134[1];
          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4();
          }

          v141 = sub_1B5EA53B0();
          sub_1B5DFD794(v141, qword_1EB90D180);
          sub_1B5E2624C();

          v142 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            sub_1B5E5FD88();
            v143 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v143);
            *v40 = 136315138;

            v144 = sub_1B5E5B1CC();

            *(v40 + 4) = v144;
            sub_1B5E6F8A4(&dword_1B5DED000, v145, v146, "Unexpectedly encountered illegal sequence: %s.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          sub_1B5E6F834();
          v148 = *(v147 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          *(v2 + 128) = v467;
          *(v2 + 136) = v468;
          sub_1B5E6F884();
          MEMORY[0x1B8C8A360](v149 + 12, v150 | 0x8000000000000000);
          sub_1B5EA5620();

          MEMORY[0x1B8C8A360](46, 0xE100000000000000);
          v151 = *(v2 + 128);
          v152 = *(v2 + 136);
        }

        else
        {
          if (v44 != *(v2 + 704))
          {
            if (v44 != *(v2 + 708))
            {
              goto LABEL_59;
            }

            v173 = sub_1B5E6F998();
            v174(v173);
LABEL_131:
            v363 = swift_task_alloc();
            *(v2 + 656) = v363;
            *v363 = v2;
            v363[1] = sub_1B5E67F54;
            v364 = *(v2 + 568);
            v365 = *(v2 + 528);
            sub_1B5E6FBF0();

            return sub_1B5E603B4();
          }

          v153 = *(v2 + 632);
          v154 = *(v2 + 376);
          v155 = *(v2 + 384);
          v135 = *(v2 + 368);

          v156 = *(v154 + 96);
          v157 = sub_1B5E26234();
          v158(v157);
          v160 = *v155;
          v159 = v155[1];
          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4();
          }

          v161 = sub_1B5EA53B0();
          sub_1B5DFD794(v161, qword_1EB90D180);
          sub_1B5E2624C();

          v162 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            sub_1B5E5FD88();
            v163 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v163);
            *(v40 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v164, v165, "Unexpectedly encountered illegal identifier: %s.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          sub_1B5E6F834();
          v148 = *(v166 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();

          MEMORY[0x1B8C8A360](v160, v159);

          MEMORY[0x1B8C8A360](46, 0xE100000000000000);
        }

        sub_1B5EA4F00();
        sub_1B5EA5130();
        sub_1B5E6F7DC();
        sub_1B5E6EE20(v167, v168);
        v169 = sub_1B5E5F23C();
        sub_1B5EA50F0();
        (*(v2 + 8))(v135, v148);
        v460 = v169;
        goto LABEL_55;
      }

      v95 = sub_1B5E6F8C4();
      v96(v95);
      v97 = *v35;
      v98 = sub_1B5E6FAA4();
      sub_1B5E6AF64(v98, v99, v100, v101);
      if (!v32)
      {
        goto LABEL_126;
      }
    }

    v102 = *(v2 + 632);
    v103 = *(v2 + 392);
    v105 = *(v2 + 368);
    v104 = *(v2 + 376);

    v106 = *(v104 + 8);
    v107 = sub_1B5E26234();
    v108(v107);
    v460 = v32;
    goto LABEL_33;
  }

  v62 = *(v2 + 664);
  v63 = *(v2 + 616);
  v64 = sub_1B5E6FBA8();
  v65(v64);
  v66 = *v34;
  v67 = v34[1];

  sub_1B5E6BD80((v2 + 112), v63, (v2 + 144), v66, v67);
  if (!v62)
  {
    v93 = sub_1B5E6F998();
    v94(v93);

    goto LABEL_127;
  }

  v68 = *(v2 + 632);
  v69 = *(v2 + 392);
  v70 = v62;
  v72 = *(v2 + 368);
  v71 = *(v2 + 376);

  (*(v71 + 8))(v69, v72);
  v460 = v70;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_33:
          v109 = *(v2 + 640);
          v110 = *(v2 + 568);
          v443 = *(v2 + 240);
          v448 = *(v2 + 248);
          sub_1B5E6F80C();
          sub_1B5E6EF24(v111, v112);
          v40 = v109 + 64;
          v113 = *(v109 + 64);
          sub_1B5E6FA38();
          v116 = v115 & v114;
          v118 = (63 - v117) >> 6;
          v454 = v109;

          v35 = 0;
          if (!v116)
          {
            goto LABEL_35;
          }

          while (2)
          {
            v119 = v35;
LABEL_39:
            v121 = *(v2 + 448);
            v120 = *(v2 + 456);
            v1 = *(v2 + 248);
            v122 = __clz(__rbit64(v116));
            v116 &= v116 - 1;
            v123 = v122 | (v119 << 6);
            v124 = (*(v454 + 48) + 16 * v123);
            v126 = *v124;
            v125 = v124[1];
            (*(v120 + 16))(&v1[*(v443 + 48)], *(v454 + 56) + *(v120 + 72) * v123, v121);
            *v1 = v126;
            v2 = v466;
            *(v448 + 8) = v125;
            *(v466 + 160) = v460;

            v127 = v460;
            sub_1B5EA59A0();
            v44 = sub_1B5DF4428(v1, &qword_1EB90F040, &qword_1B5EB7620);
            if (v116)
            {
              continue;
            }

            break;
          }

LABEL_35:
          while (1)
          {
            v119 = (v35 + 1);
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v119 >= v118)
            {
              v128 = *(v2 + 640);
              v129 = *(v2 + 624);
              sub_1B5E6F7F4();
              sub_1B5E6EF24(v130, v131);

LABEL_3:
              v8 = sub_1B5EA47C0();
              v9 = 1;
LABEL_6:
              v21 = *(v2 + 672);
              v22 = *(v2 + 640);
              v23 = *(v2 + 624);
              v24 = *(v2 + 616);
              v25 = v2;
              v26 = *(v2 + 608);
              v27 = v25[75];
              v28 = v25[74];
              v29 = v25[73];
              v402 = v25[72];
              v403 = v25[71];
              v404 = v25[69];
              v405 = v25[66];
              v406 = v25[65];
              v407 = v25[64];
              v408 = v25[63];
              v410 = v25[62];
              v412 = v25[61];
              v415 = v25[60];
              v418 = v25[59];
              v421 = v25[58];
              v424 = v25[55];
              v427 = v25[54];
              v430 = v25[51];
              v433 = v25[49];
              v436 = v25[48];
              v439 = v25[45];
              v442 = v25[42];
              v447 = v25[39];
              v453 = v25[36];
              v459 = v25[34];
              v465 = v25[31];
              sub_1B5DF3658(v25[26], v9, 1, v8);
              sub_1B5DF4428(v24, &qword_1EB90F058, &unk_1B5EB7638);

              sub_1B5E2CF4C();
              sub_1B5E6FBF0();

              __asm { BRAA            X1, X16 }
            }

            v116 = *(v40 + 8 * v119);
            ++v35;
            if (v116)
            {
              v35 = v119;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_59:
          if (v44 != *(v2 + 712))
          {
            break;
          }

          if (!*(v2 + 672))
          {
            goto LABEL_89;
          }

          if (*(*(v2 + 640) + 16))
          {
            v175 = *(v2 + 648);
            v176 = *(v2 + 672);
            v177 = sub_1B5E5AE4C();
            if (v178)
            {
              v179 = *(v2 + 456);
              v180 = *(v2 + 392);
              v181 = *(v2 + 368);
              v182 = *(v2 + 376);
              (*(v179 + 16))(*(v2 + 464), *(*(v2 + 640) + 56) + *(v179 + 72) * v177, *(v2 + 448));
              *(v2 + 168) = 0;
              sub_1B5EA59A0();
              v183 = *(v179 + 8);
              v184 = sub_1B5E26234();
              v185(v184);
              v186 = *(v182 + 8);
              v187 = sub_1B5E5F318();
              v188(v187);
              goto LABEL_127;
            }
          }

          v230 = *(v2 + 632);

          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4();
          }

          v231 = sub_1B5EA53B0();
          sub_1B5DFD794(v231, qword_1EB90D180);
          sub_1B5E2624C();

          v232 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            v233 = *(v2 + 648);
            sub_1B5E5FD88();
            v234 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v234);
            *(v40 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v235, v236, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          v237 = *(v2 + 648);
          sub_1B5E6F834();
          v239 = *(v238 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          sub_1B5E6FB2C();
          sub_1B5E6F884();
          v242 = v241 + 11;
LABEL_99:
          MEMORY[0x1B8C8A360](v242, v240 | 0x8000000000000000);
          v286 = sub_1B5E6FA20();
          MEMORY[0x1B8C8A360](v286);
          sub_1B5E6FA78();
          sub_1B5EA4F00();
          v287 = sub_1B5EA5130();
          sub_1B5E6F7DC();
          sub_1B5E6EE20(v288, v289);
          sub_1B5E5F23C();
          sub_1B5E6FB80();
          (*(v2 + 8))(v35, v239);
          v2 = v466;
LABEL_100:
          v460 = v287;
LABEL_55:
          swift_willThrow();
          v170 = *(v1 + 1);
          v1 += 8;
          v171 = sub_1B5E5FA54();
          v172(v171);
        }

        if (v44 == *(v2 + 716))
        {
          if (!*(v2 + 672))
          {
            goto LABEL_89;
          }

          if (*(*(v2 + 640) + 16))
          {
            v189 = *(v2 + 648);
            v190 = *(v2 + 672);
            v191 = sub_1B5E5AE4C();
            if (v192)
            {
              v193 = *(v2 + 640);
              v413 = *(v2 + 732);
              v419 = *(v2 + 608);
              v194 = *(v2 + 504);
              v431 = *(v2 + 512);
              v434 = *(v2 + 616);
              v195 = *(v466 + 456);
              v196 = *(v466 + 448);
              v461 = *(v466 + 392);
              v449 = *(v466 + 376);
              v455 = *(v466 + 368);
              v416 = *(v466 + 360);
              v425 = *(v466 + 352);
              v428 = *(v466 + 344);
              v197 = *(v466 + 336);
              v198 = *(v466 + 328);
              v199 = *(v466 + 320);
              v437 = *(v466 + 312);
              v440 = *(v466 + 304);
              v444 = *(v466 + 296);
              v422 = *(v466 + 288);
              v200 = *(v466 + 280);
              v201 = v195[2];
              v201(v431, *(v193 + 56) + v195[9] * v191, v196);
              (*(v198 + 104))(v197, v413, v199);
              sub_1B5EA5970();
              (*(v198 + 8))(v197, v199);
              v201(v419, v194, v196);
              sub_1B5E5F704();
              sub_1B5DF3658(v202, v203, v204, v196);
              sub_1B5E6F038(v419, v434);
              (*(v425 + 16))(v422, v416, v428);
              type metadata accessor for Field.FieldType(0);
              sub_1B5E5F3AC();
              swift_storeEnumTagMultiPayload();
              sub_1B5EA5990();
              (*(v440 + 8))(v437, v444);
              v205 = v195[1];
              v205(v194, v196);
              v206 = *(v425 + 8);
              v207 = sub_1B5E6FB20();
              v208(v207);
              v205(v431, v196);
              v2 = v466;
              (*(v449 + 8))(v461, v455);
              goto LABEL_127;
            }
          }

          v268 = *(v2 + 632);

          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4();
          }

          v269 = sub_1B5EA53B0();
          sub_1B5DFD794(v269, qword_1EB90D180);
          sub_1B5E2624C();

          v270 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            v2 = v466;
            v271 = *(v466 + 648);
            sub_1B5E5FD88();
            v272 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v272);
            *(v40 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v273, v274, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          else
          {

            v2 = v466;
          }

          v283 = *(v2 + 648);
          sub_1B5E6F834();
          v239 = *(v284 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          sub_1B5E6FB2C();
          sub_1B5E6F884();
          v242 = v285 + 12;
          goto LABEL_99;
        }

        if (v44 != *(v2 + 720))
        {
          break;
        }

        if (!*(v2 + 672))
        {
          goto LABEL_89;
        }

        v209 = *(v2 + 616);
        v210 = *(v2 + 600);
        v211 = *(v2 + 448);
        sub_1B5E6EFE0();
        v212 = sub_1B5DF46E0(v210, 1, v211);
        v213 = *(v2 + 600);
        if (v212 == 1)
        {
          v214 = *(v2 + 632);

          sub_1B5DF4428(v213, &qword_1EB90F058, &unk_1B5EB7638);
          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4();
          }

          v215 = sub_1B5EA53B0();
          sub_1B5DFD794(v215, qword_1EB90D180);
          sub_1B5E2624C();

          v216 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            sub_1B5E6FA58();
            v217 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v217);
            *(v40 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v218, v219, "Continuation for nested field stream: %s does not exist. This is a bug in GMS or malformed json output.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          v220 = v466;
          v221 = *(v466 + 648);
          v222 = *(v466 + 392);
          v223 = *(v466 + 368);
          v1 = *(v466 + 376);
          v225 = *(v466 + 264);
          v224 = *(v466 + 272);
          v226 = *(v466 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          sub_1B5E6FB2C();
          sub_1B5E6F884();
          v229 = v228 + 10;
LABEL_116:
          MEMORY[0x1B8C8A360](v229, v227 | 0x8000000000000000);
          v338 = sub_1B5E6FA20();
          MEMORY[0x1B8C8A360](v338);
          sub_1B5E6FA78();
          sub_1B5EA4F00();
          v287 = sub_1B5EA5130();
          sub_1B5E6F7DC();
          sub_1B5E6EE20(v339, v340);
          sub_1B5E5F23C();
          sub_1B5E6FB80();
          (*(v225 + 8))(v224, v226);
          v2 = v220;
          goto LABEL_100;
        }

        v290 = *(v2 + 640);
        v291 = *(v2 + 496);
        v292 = *(v2 + 448);
        v293 = v2;
        v294 = *(*(v2 + 456) + 32);
        v294(v291, v213, v292);
        if (*(v290 + 16))
        {
          v295 = v293[81];
          v296 = v293[80];
          v297 = sub_1B5E5AE4C();
          if (v298)
          {
            v299 = v293[81];
            v300 = v293[80];
            v301 = v293[62];
            v302 = v293[57];
            v303 = *(v302 + 72);
            (*(v302 + 16))(v293[61], *(v300 + 56) + v303 * v297, v293[56]);
            v293[24] = 0;
            sub_1B5EA59A0();
            v293[25] = 0;
            sub_1B5EA59A0();
            swift_beginAccess();
            sub_1B5E6FB20();
            v256 = v300;
            v304 = sub_1B5E5AE4C();
            if (v305)
            {
              v306 = v304;
              v463 = *(v466 + 592);
              v307 = *(v466 + 448);
              v308 = *(v466 + 144);
              swift_isUniquelyReferenced_nonNull_native();
              v309 = *(*(v466 + 144) + 24);
              sub_1B5DF33E0(&qword_1EB90E960, &qword_1B5EB66B0);
              sub_1B5E6FC4C();
              sub_1B5E6FC0C();
              v294(v463, *(v300 + 56) + v306 * v303, v307);
              sub_1B5E6FBE4();
              sub_1B5EA5C90();
              v310 = 0;
              *(v466 + 144) = v300;
            }

            else
            {
              v256 = *(v466 + 640);
              v310 = 1;
            }

            v2 = v466;
            v383 = *(v466 + 608);
            v384 = *(v466 + 592);
            v386 = *(v466 + 488);
            v385 = *(v466 + 496);
            v388 = *(v466 + 448);
            v387 = *(v466 + 456);
            v458 = *(v466 + 392);
            v464 = *(v466 + 616);
            v389 = *(v466 + 376);
            v452 = *(v466 + 368);
            sub_1B5DF3658(v384, v310, 1, v388);
            swift_endAccess();
            sub_1B5DF4428(v384, &qword_1EB90F058, &unk_1B5EB7638);
            v390 = *(v387 + 8);
            v390(v386, v388);
            v390(v385, v388);
            (*(v389 + 8))(v458, v452);
            sub_1B5DF5DF0();
            sub_1B5DF3658(v391, v392, v393, v388);
            sub_1B5E6F038(v383, v464);
            *(v466 + 112) = 0;
            *(v466 + 120) = 0;
LABEL_139:

            v49 = 0;
            v48 = 0;
            goto LABEL_129;
          }
        }

        v341 = v293[79];

        if (qword_1EB90D178 != -1)
        {
          sub_1B5E34CF4();
        }

        v342 = sub_1B5EA53B0();
        sub_1B5DFD794(v342, qword_1EB90D180);
        sub_1B5E2624C();

        v343 = sub_1B5EA5380();
        sub_1B5EA5A40();
        sub_1B5E6FB50();
        if (sub_1B5E6FB38())
        {
          sub_1B5E6FA58();
          v344 = sub_1B5E6F9C0();
          sub_1B5E6FA2C(v344);
          *(v40 + 4) = sub_1B5E6F944(4.8149e-34);
          sub_1B5E6F8A4(&dword_1B5DED000, v345, v346, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
          sub_1B5E6F850();
          sub_1B5E6F9DC();
        }

        v2 = v466;
        v347 = *(v466 + 648);
        v1 = *(v466 + 448);
        v348 = *(v466 + 456);
        v456 = *(v466 + 392);
        v349 = *(v466 + 376);
        v445 = *(v466 + 496);
        v450 = *(v466 + 368);
        v351 = *(v466 + 264);
        v350 = *(v466 + 272);
        v352 = *(v466 + 256);
        sub_1B5E6F894();
        sub_1B5EA5BC0();
        sub_1B5E6FB2C();
        sub_1B5E6F884();
        MEMORY[0x1B8C8A360](v353 + 10, v354 | 0x8000000000000000);
        v355 = sub_1B5E6FA20();
        MEMORY[0x1B8C8A360](v355);
        sub_1B5E6FA78();
        sub_1B5EA4F00();
        v356 = sub_1B5EA5130();
        sub_1B5E6F7DC();
        sub_1B5E6EE20(v357, v358);
        sub_1B5E5F23C();
        sub_1B5E6FB80();
        (*(v351 + 8))(v350, v352);
        v460 = v356;
        swift_willThrow();
        (*(v348 + 8))(v445, v1);
        (*(v349 + 8))(v456, v450);
      }

      if (v44 == *(v2 + 724))
      {
        if (!*(v2 + 672))
        {
LABEL_89:
          v266 = sub_1B5E6F998();
          v267(v266);
          v48 = 0;
          goto LABEL_130;
        }

        if (*(*(v2 + 640) + 16))
        {
          v243 = *(v2 + 648);
          v244 = *(v2 + 672);
          v245 = sub_1B5E5AE4C();
          if (v246)
          {
            v247 = *(v2 + 616);
            v248 = *(v2 + 584);
            v249 = *(v2 + 448);
            v250 = *(v2 + 456);
            v251 = *(v250 + 72);
            v462 = *(v250 + 16);
            (v462)(*(v2 + 480), *(*(v2 + 640) + 56) + v251 * v245, v249);
            sub_1B5E26234();
            sub_1B5E6EFE0();
            if (sub_1B5DF46E0(v248, 1, v249) != 1)
            {
              v2 = v466;
              v409 = *(v466 + 732);
              v426 = *(v466 + 616);
              v367 = *(v466 + 584);
              v411 = *(v466 + 504);
              v414 = *(v466 + 608);
              v368 = *(v466 + 448);
              v369 = *(v466 + 456);
              v441 = *(v466 + 480);
              v446 = *(v466 + 376);
              v451 = *(v466 + 368);
              v457 = *(v466 + 392);
              v370 = *(v466 + 360);
              v371 = *(v466 + 336);
              v420 = *(v466 + 352);
              v423 = *(v466 + 344);
              v373 = *(v466 + 320);
              v372 = *(v466 + 328);
              v429 = *(v466 + 312);
              v432 = *(v466 + 304);
              v435 = *(v466 + 296);
              v438 = *(v466 + 472);
              v417 = *(v466 + 288);
              v374 = *(v466 + 280);
              (*(v369 + 32))();
              *(v466 + 184) = 0;
              sub_1B5EA59A0();
              (*(v372 + 104))(v371, v409, v373);
              sub_1B5EA5970();
              (*(v372 + 8))(v371, v373);
              v375 = sub_1B5E6FBE4();
              v462(v375);
              sub_1B5E5F704();
              sub_1B5DF3658(v376, v377, v378, v368);
              sub_1B5E6F038(v414, v426);
              v379 = *(v420 + 16);
              v380 = sub_1B5E5F324();
              v381(v380);
              type metadata accessor for Field.FieldType(0);
              sub_1B5E5F3AC();
              swift_storeEnumTagMultiPayload();
              sub_1B5EA5990();
              (*(v432 + 8))(v429, v435);
              v382 = *(v369 + 8);
              v382(v411, v368);
              (*(v420 + 8))(v370, v423);
              v382(v438, v368);
              v382(v441, v368);
              (*(v446 + 8))(v457, v451);
              goto LABEL_127;
            }

            v252 = *(v466 + 648);
            v253 = *(v466 + 640);
            v254 = *(v466 + 480);
            v255 = *(v466 + 448);
            sub_1B5DF4428(*(v466 + 584), &qword_1EB90F058, &unk_1B5EB7638);
            *(v466 + 176) = 0;
            sub_1B5EA59A0();
            swift_beginAccess();
            sub_1B5E6FB20();
            v256 = v253;
            v257 = sub_1B5E5AE4C();
            if (v258)
            {
              v259 = v257;
              v260 = *(v466 + 576);
              v261 = *(v466 + 448);
              v262 = *(v466 + 456);
              v263 = *(v466 + 144);
              swift_isUniquelyReferenced_nonNull_native();
              v264 = *(*(v466 + 144) + 24);
              sub_1B5DF33E0(&qword_1EB90E960, &qword_1B5EB66B0);
              sub_1B5E6FC4C();
              sub_1B5E6FC0C();
              (*(v262 + 32))(v260, *(v256 + 56) + v259 * v251, v261);
              sub_1B5E6FBE4();
              sub_1B5EA5C90();
              v265 = 0;
              *(v466 + 144) = v256;
            }

            else
            {
              v256 = *(v466 + 640);
              v265 = 1;
            }

            v394 = *(v466 + 576);
            v395 = *(v466 + 480);
            v396 = *(v466 + 448);
            v397 = *(v466 + 456);
            v398 = *(v466 + 392);
            v399 = *(v466 + 368);
            v400 = *(v466 + 376);
            sub_1B5DF3658(v394, v265, 1, v396);
            swift_endAccess();
            sub_1B5DF4428(v394, &qword_1EB90F058, &unk_1B5EB7638);
            (*(v397 + 8))(v395, v396);
            (*(v400 + 8))(v398, v399);
            v2 = v466;
            *(v466 + 112) = 0;
            *(v466 + 120) = 0;
            goto LABEL_139;
          }
        }

        v328 = *(v2 + 632);

        if (qword_1EB90D178 != -1)
        {
          sub_1B5E34CF4();
        }

        v329 = sub_1B5EA53B0();
        sub_1B5DFD794(v329, qword_1EB90D180);
        sub_1B5E2624C();

        v330 = sub_1B5EA5380();
        sub_1B5EA5A40();
        sub_1B5E6FB50();
        if (sub_1B5E6FB38())
        {
          sub_1B5E6FA58();
          v331 = sub_1B5E6F9C0();
          sub_1B5E6FA2C(v331);
          *(v40 + 4) = sub_1B5E6F944(4.8149e-34);
          sub_1B5E6F8A4(&dword_1B5DED000, v332, v333, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
          sub_1B5E6F850();
          sub_1B5E6F9DC();
        }

        v220 = v466;
        v334 = *(v466 + 648);
        v335 = *(v466 + 392);
        v336 = *(v466 + 368);
        v1 = *(v466 + 376);
        v225 = *(v466 + 264);
        v224 = *(v466 + 272);
        v226 = *(v466 + 256);
        sub_1B5E6F894();
        sub_1B5EA5BC0();
        sub_1B5E6FB2C();
        sub_1B5E6F884();
        v229 = v337 + 6;
        goto LABEL_116;
      }

      if (v44 != *(v2 + 728))
      {
        break;
      }

      v275 = *(v466 + 664);
      sub_1B5E6B67C((v466 + 112), *(v466 + 616), (v466 + 144));
      if (!v275)
      {
        v2 = v466;
        goto LABEL_126;
      }

      v2 = v466;
      v276 = *(v466 + 632);
      v277 = *(v466 + 392);
      v279 = *(v466 + 368);
      v278 = *(v466 + 376);

      v280 = *(v278 + 8);
      v281 = sub_1B5E26234();
      v282(v281);
      v460 = v275;
    }

    if (v44 != *MEMORY[0x1E69A08D8])
    {
      break;
    }

    v311 = *(v466 + 632);

    if (qword_1EB90D178 != -1)
    {
      sub_1B5E34CF4();
    }

    v312 = sub_1B5EA53B0();
    sub_1B5DFD794(v312, qword_1EB90D180);
    v313 = sub_1B5EA5380();
    v314 = sub_1B5EA5A40();
    if (os_log_type_enabled(v313, v314))
    {
      v315 = swift_slowAlloc();
      *v315 = 0;
      _os_log_impl(&dword_1B5DED000, v313, v314, "Unexpectedly encountered eof for json stream.", v315, 2u);
      MEMORY[0x1B8C8B330](v315, -1, -1);
    }

    v2 = v466;
    v316 = *(v466 + 392);
    v317 = *(v466 + 368);
    v318 = *(v466 + 376);
    v320 = *(v466 + 264);
    v319 = *(v466 + 272);
    v321 = *(v466 + 256);

    sub_1B5E6F884();
    sub_1B5EA4F00();
    sub_1B5EA5130();
    sub_1B5E6F7DC();
    sub_1B5E6EE20(v322, v323);
    v324 = swift_allocError();
    sub_1B5EA50F0();
    (*(v320 + 8))(v319, v321);
    v460 = v324;
    swift_willThrow();
    v325 = *(v318 + 8);
    v326 = sub_1B5E26234();
    v327(v326);
  }

  v359 = *(v466 + 368);
  sub_1B5E6FBF0();

  return MEMORY[0x1EEE6B1D8]();
}

uint64_t sub_1B5E69D40()
{
  sub_1B5E01DFC();
  *(v0 + 152) = *(v0 + 664);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E69DCC()
{
  v65 = v0[83];
  v1 = v0[80];
  v2 = v0[71];
  v59 = v0[30];
  v61 = v0[31];
  sub_1B5E6F80C();
  sub_1B5E6EF24(v3, v4);
  v6 = v1 + 64;
  v5 = *(v1 + 64);
  sub_1B5E6FA38();
  v9 = v8 & v7;
  v11 = (63 - v10) >> 6;
  v63 = v1;

  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_7:
      v15 = v0[31];
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v14 << 6);
      v18 = (*(v63 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      (*(v0[57] + 16))(&v15[*(v59 + 48)], *(v63 + 56) + *(v0[57] + 72) * v17, v0[56]);
      *v15 = v19;
      *(v61 + 8) = v20;
      v0[20] = v65;

      v21 = v65;
      sub_1B5EA59A0();
      result = sub_1B5DF4428(v15, &qword_1EB90F040, &qword_1B5EB7620);
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_7;
    }
  }

  v22 = v0[80];
  v23 = v0[78];
  sub_1B5E6F7F4();
  sub_1B5E6EF24(v24, v25);

  sub_1B5EA47C0();
  v26 = v0[84];
  v27 = v0[80];
  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[76];
  v31 = v0[75];
  v32 = v0[74];
  v33 = v0[73];
  v34 = v0[72];
  v41 = v0[71];
  v42 = v0[69];
  v43 = v0[66];
  v44 = v0[65];
  v45 = v0[64];
  v46 = v0[63];
  v47 = v0[62];
  v48 = v0[61];
  v49 = v0[60];
  v50 = v0[59];
  v51 = v0[58];
  v52 = v0[55];
  v53 = v0[54];
  v54 = v0[51];
  v55 = v0[49];
  v56 = v0[48];
  v57 = v0[45];
  v58 = v0[42];
  v60 = v0[39];
  v62 = v0[36];
  v64 = v0[34];
  v66 = v0[31];
  v35 = v0[26];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v36, v37, v38, v39);
  sub_1B5DF4428(v29, &qword_1EB90F058, &unk_1B5EB7638);

  sub_1B5E2CF4C();

  return v40();
}

uint64_t sub_1B5E6A144(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v58 = a4;
  v59 = a2;
  v53 = a3;
  v5 = sub_1B5EA4F10();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - v10;
  v11 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - v24;
  v26 = type metadata accessor for Field(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v48 - v29);
  result = swift_beginAccess();
  v57 = a1[1];
  if (!v57)
  {
    return result;
  }

  v52 = v19;
  v32 = *a1;
  *v30 = v58;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v17, 1, v18) != 1)
  {
    v38 = v52;
    (*(v52 + 32))(v25, v17, v18);
LABEL_10:
    sub_1B5E6F0A8();
    v46 = v54;
    sub_1B5EA5990();
    (*(v55 + 8))(v46, v56);
    (*(v38 + 8))(v25, v18);
    return sub_1B5E6EF24(v30, type metadata accessor for Field);
  }

  v33 = v32;
  v34 = v57;

  sub_1B5DF4428(v17, &qword_1EB90F058, &unk_1B5EB7638);
  v35 = v53;
  swift_beginAccess();
  v36 = *v35;
  v59 = v33;
  sub_1B5E4D8A8(v36, v15);
  v37 = sub_1B5DF46E0(v15, 1, v18);
  v38 = v52;
  if (v37 != 1)
  {
    (*(v52 + 32))(v23, v15, v18);
    swift_endAccess();

    v25 = v23;
    goto LABEL_10;
  }

  sub_1B5DF4428(v15, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v39 = sub_1B5EA53B0();
  sub_1B5DFD794(v39, qword_1EB90D180);

  v40 = sub_1B5EA5380();
  v41 = sub_1B5EA5A40();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v60 = v43;
    *v42 = 136315138;
    v44 = v59;
    *(v42 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v40, v41, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v42, 0xCu);
    sub_1B5DF3FB8(v43);
    MEMORY[0x1B8C8B330](v43, -1, -1);
    v45 = v42;
    v34 = v57;
    MEMORY[0x1B8C8B330](v45, -1, -1);
  }

  else
  {

    v44 = v59;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v44, v34);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v47 = v49;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v50 + 8))(v47, v51);
  swift_willThrow();
  return sub_1B5E6EF24(v30, type metadata accessor for Field);
}

uint64_t sub_1B5E6A854(uint64_t *a1, uint64_t a2, uint64_t *a3, double a4)
{
  v58 = a2;
  v53 = a3;
  v6 = sub_1B5EA4F10();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v11;
  v12 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v19 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - v25;
  v27 = type metadata accessor for Field(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v49 - v30);
  result = swift_beginAccess();
  v57 = a1[1];
  if (!v57)
  {
    return result;
  }

  v52 = v20;
  v33 = *a1;
  *v31 = a4;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v18, 1, v19) != 1)
  {
    v39 = v52;
    (*(v52 + 32))(v26, v18, v19);
LABEL_10:
    sub_1B5E6F0A8();
    v47 = v54;
    sub_1B5EA5990();
    (*(v55 + 8))(v47, v56);
    (*(v39 + 8))(v26, v19);
    return sub_1B5E6EF24(v31, type metadata accessor for Field);
  }

  v34 = v33;
  v35 = v57;

  sub_1B5DF4428(v18, &qword_1EB90F058, &unk_1B5EB7638);
  v36 = v53;
  swift_beginAccess();
  v37 = *v36;
  v58 = v34;
  sub_1B5E4D8A8(v37, v16);
  v38 = sub_1B5DF46E0(v16, 1, v19);
  v39 = v52;
  if (v38 != 1)
  {
    (*(v52 + 32))(v24, v16, v19);
    swift_endAccess();

    v26 = v24;
    goto LABEL_10;
  }

  sub_1B5DF4428(v16, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v40 = sub_1B5EA53B0();
  sub_1B5DFD794(v40, qword_1EB90D180);

  v41 = sub_1B5EA5380();
  v42 = sub_1B5EA5A40();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v59 = v44;
    *v43 = 136315138;
    v45 = v58;
    *(v43 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v41, v42, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v43, 0xCu);
    sub_1B5DF3FB8(v44);
    MEMORY[0x1B8C8B330](v44, -1, -1);
    v46 = v43;
    v35 = v57;
    MEMORY[0x1B8C8B330](v46, -1, -1);
  }

  else
  {

    v45 = v58;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v45, v35);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v48 = v49;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v50 + 8))(v48, v51);
  swift_willThrow();
  return sub_1B5E6EF24(v31, type metadata accessor for Field);
}

uint64_t sub_1B5E6AF64(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v58 = a4;
  v53 = a3;
  v59 = a2;
  v5 = sub_1B5EA4F10();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - v10;
  v11 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - v24;
  v26 = type metadata accessor for Field(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v48 - v29;
  result = swift_beginAccess();
  v57 = a1[1];
  if (!v57)
  {
    return result;
  }

  v52 = v19;
  v32 = *a1;
  *v30 = v58 & 1;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v17, 1, v18) != 1)
  {
    v38 = v52;
    (*(v52 + 32))(v25, v17, v18);
LABEL_10:
    sub_1B5E6F0A8();
    v46 = v54;
    sub_1B5EA5990();
    (*(v55 + 8))(v46, v56);
    (*(v38 + 8))(v25, v18);
    return sub_1B5E6EF24(v30, type metadata accessor for Field);
  }

  v33 = v32;
  v34 = v57;

  sub_1B5DF4428(v17, &qword_1EB90F058, &unk_1B5EB7638);
  v35 = v53;
  swift_beginAccess();
  v36 = *v35;
  v59 = v33;
  sub_1B5E4D8A8(v36, v15);
  v37 = sub_1B5DF46E0(v15, 1, v18);
  v38 = v52;
  if (v37 != 1)
  {
    (*(v52 + 32))(v23, v15, v18);
    swift_endAccess();

    v25 = v23;
    goto LABEL_10;
  }

  sub_1B5DF4428(v15, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v39 = sub_1B5EA53B0();
  sub_1B5DFD794(v39, qword_1EB90D180);

  v40 = sub_1B5EA5380();
  v41 = sub_1B5EA5A40();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v60 = v43;
    *v42 = 136315138;
    v44 = v59;
    *(v42 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v40, v41, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v42, 0xCu);
    sub_1B5DF3FB8(v43);
    MEMORY[0x1B8C8B330](v43, -1, -1);
    v45 = v42;
    v34 = v57;
    MEMORY[0x1B8C8B330](v45, -1, -1);
  }

  else
  {

    v44 = v59;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v44, v34);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v47 = v49;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v50 + 8))(v47, v51);
  swift_willThrow();
  return sub_1B5E6EF24(v30, type metadata accessor for Field);
}

uint64_t sub_1B5E6B67C(uint64_t *a1, char *a2, uint64_t *a3)
{
  v47 = a3;
  v52 = a2;
  v4 = sub_1B5EA4F10();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - v9;
  v10 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  v17 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = type metadata accessor for Field(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  result = swift_beginAccess();
  v51 = a1[1];
  if (!v51)
  {
    return result;
  }

  v43 = *a1;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v24, v16, v17);
LABEL_10:
    sub_1B5E6F0A8();
    v40 = v48;
    sub_1B5EA5990();
    (*(v49 + 8))(v40, v50);
    (*(v18 + 8))(v24, v17);
    return sub_1B5E6EF24(v29, type metadata accessor for Field);
  }

  v52 = v29;
  v31 = v51;

  sub_1B5DF4428(v16, &qword_1EB90F058, &unk_1B5EB7638);
  v32 = v47;
  swift_beginAccess();
  v33 = v43;
  sub_1B5E4D8A8(*v32, v14);
  if (sub_1B5DF46E0(v14, 1, v17) != 1)
  {
    (*(v18 + 32))(v22, v14, v17);
    swift_endAccess();

    v24 = v22;
    v29 = v52;
    goto LABEL_10;
  }

  sub_1B5DF4428(v14, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v34 = sub_1B5EA53B0();
  sub_1B5DFD794(v34, qword_1EB90D180);

  v35 = sub_1B5EA5380();
  v36 = sub_1B5EA5A40();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v35, v36, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v37, 0xCu);
    sub_1B5DF3FB8(v38);
    v39 = v52;
    MEMORY[0x1B8C8B330](v38, -1, -1);
    v31 = v51;
    MEMORY[0x1B8C8B330](v37, -1, -1);
  }

  else
  {

    v39 = v52;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v33, v31);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v41 = v44;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v45 + 8))(v41, v46);
  swift_willThrow();
  return sub_1B5E6EF24(v39, type metadata accessor for Field);
}

uint64_t sub_1B5E6BD80(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v56 = a2;
  v50 = a3;
  v7 = sub_1B5EA4F10();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v45 - v12;
  v13 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v20 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v46 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v26 = type metadata accessor for Field(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v45 - v29);
  swift_beginAccess();
  if (!a1[1])
  {
  }

  v31 = a1[1];
  v45 = *a1;
  *v30 = v55;
  v30[1] = a5;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v19, 1, v20) != 1)
  {
    v43 = v51;
    (*(v51 + 32))(v25, v19, v20);
    sub_1B5E6F0A8();

LABEL_11:
    v44 = v52;
    sub_1B5EA5990();
    (*(v53 + 8))(v44, v54);
    (*(v43 + 8))(v25, v20);
    sub_1B5E6EF24(v30, type metadata accessor for Field);
  }

  v32 = v19;
  v33 = v31;
  sub_1B5DF4428(v32, &qword_1EB90F058, &unk_1B5EB7638);
  v34 = v50;
  swift_beginAccess();
  v35 = v45;
  sub_1B5E4D8A8(*v34, v17);
  if (sub_1B5DF46E0(v17, 1, v20) != 1)
  {
    v43 = v51;
    v25 = v46;
    (*(v51 + 32))(v46, v17, v20);
    swift_endAccess();

    sub_1B5E6F0A8();
    goto LABEL_11;
  }

  sub_1B5DF4428(v17, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v36 = sub_1B5EA53B0();
  sub_1B5DFD794(v36, qword_1EB90D180);

  v37 = sub_1B5EA5380();
  v38 = sub_1B5EA5A40();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v37, v38, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v39, 0xCu);
    sub_1B5DF3FB8(v40);
    MEMORY[0x1B8C8B330](v40, -1, -1);
    MEMORY[0x1B8C8B330](v39, -1, -1);
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v35, v33);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v41 = v47;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v48 + 8))(v41, v49);
  swift_willThrow();
  sub_1B5E6EF24(v30, type metadata accessor for Field);
}

uint64_t TokenStreamHandler.deinit()
{
  v1 = qword_1EB90EE50;
  v2 = sub_1B5EA4990();
  sub_1B5DF5EB8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_1EB90EE70);

  return v0;
}

uint64_t TokenStreamHandler.__deallocating_deinit()
{
  TokenStreamHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t TokenStreamHandler<>.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v1);
  v3 = *(v2 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - v5;
  v6 = sub_1B5DF33E0(&qword_1EB90EE88, &qword_1B5EB7428);
  sub_1B5DF5DA8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
  v15 = sub_1B5DF5DA8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  v24 = sub_1B5DF33E0(&qword_1EB90EE98, &qword_1B5EB7438);
  v45 = sub_1B5DF5DA8(v24);
  v46 = v25;
  v27 = *(v26 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  sub_1B5EA45D0();
  (*(v8 + 104))(v13, *MEMORY[0x1E69E8790], v6);
  sub_1B5EA5970();
  (*(v8 + 8))(v13, v6);
  sub_1B5EA5920();
  v29 = v44;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v30, v31, v32, v33);
  (*(v17 + 16))(v21, v23, v14);
  v34 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  v36 = v47;
  *(v35 + 4) = v47;
  (*(v17 + 32))(&v35[v34], v21, v14);

  v37 = sub_1B5E63C28(0, 0, v29, &unk_1B5EB7448, v35);
  v38 = *(v36 + qword_1EB90EE70);
  *(v36 + qword_1EB90EE70) = v37;

  sub_1B5E5F910();
  swift_allocObject();
  swift_weakInit();
  sub_1B5EA5980();
  sub_1B5EA59B0();
  (*(v17 + 8))(v23, v14);
  v39 = *(v46 + 8);
  v40 = sub_1B5E6FA20();
  return v41(v40);
}

uint64_t sub_1B5E6C97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  v6 = *(*(sub_1B5EA45D0() - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v7 = sub_1B5DF33E0(&qword_1EB90F028, &qword_1B5EB7600);
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  v10 = *(*(sub_1B5DF33E0(&qword_1EB90EE08, &unk_1B5EB7270) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v11 = sub_1B5EA4AA0();
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v13 = *(v12 + 64) + 15;
  v5[28] = swift_task_alloc();
  v14 = sub_1B5EA4950();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v16 = *(v15 + 64) + 15;
  v5[31] = swift_task_alloc();
  v17 = sub_1B5EA46F0();
  v5[32] = v17;
  v18 = *(v17 - 8);
  v5[33] = v18;
  v19 = *(v18 + 64) + 15;
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E6CBC4, 0, 0);
}

uint64_t sub_1B5E6CBC4()
{
  sub_1B5E01DFC();
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[19];
  sub_1B5EA46E0();
  sub_1B5EA4970();
  sub_1B5E6F9A8();
  sub_1B5E6EE20(v4, v5);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1B5E34EEC();
  v0[35] = v7;
  *v7 = v8;
  v9 = sub_1B5E6F964(v7);

  return MEMORY[0x1EEE6D8C8](v9);
}

uint64_t sub_1B5E6CC80()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E34F1C();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v8 + 288) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E6CD7C()
{
  v1 = *(v0 + 272);
  if (!*(v0 + 40))
  {
    v25 = *(v0 + 256);
    v26 = *(v0 + 264);
    v27 = *(v0 + 224);
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    v30 = *(v0 + 168);
    v31 = *(v0 + 144);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    sub_1B5EA46C0();
    v32 = *(v26 + 8);
    v33 = sub_1B5E5F324();
    v34(v33);
    sub_1B5EA47C0();
    sub_1B5E5F704();
    sub_1B5DF3658(v35, v36, v37, v38);

    sub_1B5E2CF4C();
    sub_1B5E6FB04();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  sub_1B5E5EF30((v0 + 16), v0 + 56);
  sub_1B5EA46D0();
  sub_1B5DFC6BC(v0 + 56, v0 + 96);
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    sub_1B5E5F704();
    sub_1B5DF3658(v13, v14, v15, v7);
    v16 = *(v5 + 32);
    v17 = sub_1B5DFA488();
    v18(v17);
    sub_1B5EA4A90();
    sub_1B5EA45C0();
    sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
    sub_1B5EA5990();
    v19 = *(v9 + 8);
    v20 = sub_1B5E5FA54();
    v21(v20);
    v22 = *(v5 + 8);
    v23 = sub_1B5E5F318();
    v24(v23);
    sub_1B5DF3FB8((v0 + 56));
  }

  else
  {
    v41 = *(v0 + 200);
    v42 = *(v0 + 208);
    sub_1B5DF3FB8((v0 + 56));
    sub_1B5DF5DF0();
    sub_1B5DF3658(v43, v44, v45, v42);
    sub_1B5DF4428(v41, &qword_1EB90EE08, &unk_1B5EB7270);
  }

  sub_1B5E6F9A8();
  sub_1B5E6EE20(v46, v47);
  v48 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 280) = v49;
  *v49 = v50;
  sub_1B5E6F964();
  sub_1B5E6FB04();

  return MEMORY[0x1EEE6D8C8]();
}

uint64_t sub_1B5E6D030()
{
  sub_1B5E01DFC();
  *(v0 + 136) = *(v0 + 288);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E6D0BC()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v8 = *(v2 + 8);
  v9 = sub_1B5E5F324();
  v10(v9);

  sub_1B5E2CF4C();
  v12 = v0[36];

  return v11();
}

uint64_t sub_1B5E6D19C(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90F020, &qword_1B5EB75F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, a1, v2);
  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x1E69E8760])
  {
    return (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + qword_1EB90EE70))
    {
      v8 = *(result + qword_1EB90EE70);

      sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
      sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
      sub_1B5EA5940();
    }
  }

  return result;
}

uint64_t TokenStreamHandler<>.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  sub_1B5E5F8EC();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B5E6D3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E2CED8();
  sub_1B5EA5950();
  v19 = *(MEMORY[0x1E69E87B0] + 4);
  v20 = swift_task_alloc();
  v18[4] = v20;
  v21 = sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);
  *v20 = v18;
  v20[1] = sub_1B5E4B3A4;
  v28 = v18[2];
  v29 = v18[3];

  return MEMORY[0x1EEE6DB98](v28, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E6D494(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B5E2C184;

  return TokenStreamHandler<>.AsyncIterator.next()(a1);
}

uint64_t sub_1B5E6D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B5E6D5F8;

  return sub_1B5E6418C(a1, a2, a3);
}

uint64_t sub_1B5E6D5F8()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1B5E6D704@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  TokenStreamHandler<>.makeAsyncIterator()(a1);
}

void sub_1B5E6D73C()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1B5E6FB68(v2, v5, &qword_1EB90F078, &qword_1B5EB7680);
  sub_1B5E6FA14();
  v9 = sub_1B5EA5350();
  sub_1B5DFD8F0(v9);
  v11 = *(v10 + 80);
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69A0E80], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6D814()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1B5E6FB68(v2, v5, &qword_1EB90DB90, &qword_1B5EB7070);
  sub_1B5E6FA14();
  v9 = sub_1B5EA5450();
  sub_1B5DFD8F0(v9);
  v11 = *(v10 + 80);
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69C61C0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6D8EC()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1B5E6FB68(v2, v5, &qword_1EB90E638, &qword_1B5EB60B0);
  v9 = sub_1B5E6FA14();
  v10 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(v9);
  sub_1B5DFD8F0(v10);
  v12 = *(v11 + 80);
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(type metadata accessor for GenerativeExperiencesSessionClientData.Conversation, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6D9C4()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1B5E6FB68(v2, v5, &qword_1EB90F018, &qword_1B5EB75E0);
  sub_1B5E6FA14();
  v9 = sub_1B5EA5540();
  sub_1B5DFD8F0(v9);
  v11 = *(v10 + 80);
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69C6360], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6DA9C()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1B5E6FB68(v2, v5, &qword_1EB90F008, &qword_1B5EB75D0);
  sub_1B5E6FA14();
  v9 = sub_1B5EA47B0();
  sub_1B5DFD8F0(v9);
  v11 = *(v10 + 80);
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69DA560], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6DB74()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1B5E6FB68(v2, v5, &qword_1EB90F010, &qword_1B5EB75D8);
  sub_1B5E6FA14();
  v9 = sub_1B5EA4770();
  sub_1B5DFD8F0(v9);
  v11 = *(v10 + 80);
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69DA558], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6DC94(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_1B5E6FAD4();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1B5E6FAB4();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1B5E6E1EC(v15, v12, a5, a6, a7, a8);
  v17 = sub_1B5DF33E0(a7, a8);
  sub_1B5DFD8F0(v17);
  v19 = *(v18 + 80);
  sub_1B5E34D90();
  if (a1)
  {
    sub_1B5E6E5B4(a4 + v20, v15, v16 + v20);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B5E6DD94(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_1B5E6FAD4();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1B5E6FAB4();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1B5DF33E0(&qword_1EB90EFF0, &qword_1B5EB75A8);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[6 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1B5E5FA54();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90EC50, &qword_1B5EB75B0);
    sub_1B5E5FA54();
    swift_arrayInitWithCopy();
  }
}

void sub_1B5E6DEB4(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_1B5E6FAD4();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1B5E6FAB4();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1B5DF33E0(&qword_1EB90EFF8, &qword_1B5EB75B8);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[4 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1B5E5FA54();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90F000, &unk_1B5EB75C0);
    sub_1B5E5FA54();
    swift_arrayInitWithCopy();
  }
}

char *sub_1B5E6DFCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B5DF33E0(&qword_1EB90ED10, &unk_1B5EB70F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B5E6E0FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(a3, a4);
  v8 = sub_1B5E6FA14();
  v9 = a5(v8);
  sub_1B5E01C50(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1B5E6E1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(a3, a4);
  v10 = sub_1B5DF33E0(a5, a6);
  sub_1B5E01C50(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  if (v12)
  {
    if (result - v14 != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B5E6E2E4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(&qword_1EB90ED10, &unk_1B5EB70F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *sub_1B5E6E3CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

char *sub_1B5E6E40C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

uint64_t sub_1B5E6E474(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_1B5E6FB9C();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_1B5DF5EB8(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    sub_1B5E6F910();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_1B5E6F910();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B5E6E530(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

char *sub_1B5E6E558(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

uint64_t sub_1B5E6E5B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B5E6FB9C();
  if (v7 < v6 || (v8 = sub_1B5E34F04(), v10 = sub_1B5DF33E0(v8, v9), result = sub_1B5DF5EB8(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = sub_1B5E34F04();
    sub_1B5DF33E0(v13, v14);
    sub_1B5E6F910();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    sub_1B5E6F910();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1B5E6E67C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1B5E41824(0, v6, v8);
    v9 = sub_1B5E6F190(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1B5E6F100(v12, v6, a2, a1);

    MEMORY[0x1B8C8B330](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1B5E6E864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E6E910()
{
  sub_1B5E34EC0();
  v2 = v1;
  v3 = sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
  sub_1B5E01CF8(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  v10 = sub_1B5E2CEE4(v9);
  *v10 = v11;
  v10[1] = sub_1B5E2CDCC;

  return sub_1B5E6C97C(v2, v6, v7, v8, v0 + v5);
}

void sub_1B5E6EA54()
{
  if (!qword_1EB90EEB0[0])
  {
    v0 = type metadata accessor for TokenStreamHandler<>.AsyncIterator();
    if (!v1)
    {
      atomic_store(v0, qword_1EB90EEB0);
    }
  }
}

uint64_t sub_1B5E6EAB8()
{
  result = sub_1B5EA4990();
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

uint64_t sub_1B5E6EBA8()
{
  result = type metadata accessor for Field.FieldType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B5E6EC14()
{
  sub_1B5E6ED98(319, qword_1EB90EF58, type metadata accessor for Field, MEMORY[0x1E69E87C8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B5E6ECD4()
{
  sub_1B5E6ED98(319, &qword_1EB90EFE0, MEMORY[0x1E69DA6C0], MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B5E6ED98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1B5DFD694(&qword_1EB90E920, &qword_1B5EB6680);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B5E6EE20(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5E6EE64(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1B5E66094(a1);
}

uint64_t sub_1B5E6EE70()
{
  sub_1B5E34EC0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1B5E2CEE4(v6);
  *v7 = v8;
  v9 = sub_1B5E6FAC4(v7);

  return sub_1B5E67598(v9, v1, v2, v3, v4, v5);
}

uint64_t sub_1B5E6EF24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1B5DF5EB8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E6EF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JsonParserToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E6EFE0()
{
  sub_1B5E6FB9C();
  v3 = sub_1B5DF33E0(v1, v2);
  sub_1B5DF5EB8(v3);
  v5 = *(v4 + 16);
  v6 = sub_1B5DFA488();
  v7(v6);
  return v0;
}

uint64_t sub_1B5E6F038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E6F0A8()
{
  sub_1B5E6FB9C();
  v2 = v1(0);
  sub_1B5DF5EB8(v2);
  v4 = *(v3 + 16);
  v5 = sub_1B5DFA488();
  v6(v5);
  return v0;
}

void *sub_1B5E6F100(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1B5E6F190(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B5E6F190(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_1B5EA5FD0();

      sub_1B5EA5710();
      v42 = sub_1B5EA6020();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_1B5EA5F00();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_1B5E6F534(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_1B5EA5FD0();

      sub_1B5EA5710();
      v19 = sub_1B5EA6020();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_1B5EA5F00();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1B5E6F534(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  result = sub_1B5EA5B90();
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
    sub_1B5EA5FD0();

    sub_1B5EA5710();
    result = sub_1B5EA6020();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B5E6F750()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1B5E2CEE4(v2);
  *v3 = v4;
  v5 = sub_1B5E6FAC4(v3);

  return sub_1B5E66494(v5, v1);
}

void sub_1B5E6F834()
{
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[34];
  v6 = *(*(v1 - 168) + 264);
  v7 = *(v1 - 168);
}

void sub_1B5E6F850()
{
  sub_1B5DF3FB8(v0);

  JUMPOUT(0x1B8C8B330);
}

void sub_1B5E6F8A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B5E6F8C4()
{
  v1 = v0[83];
  v2 = v0[77];
  v3 = v0[46];
  v4 = *(v0[47] + 96);
  return v0[48];
}

uint64_t sub_1B5E6F924()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B5E6F944(float a1)
{
  *v1 = a1;

  return sub_1B5E5B1CC();
}

uint64_t sub_1B5E6F964(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E6CC80;
  v2 = *(v1 + 248);
  v3 = *(v1 + 232);
  return v1 + 16;
}

uint64_t sub_1B5E6F998()
{
  result = v0[49];
  v2 = v0[46];
  v3 = *(v0[47] + 8);
  return result;
}

uint64_t sub_1B5E6F9C0()
{

  return swift_slowAlloc();
}

void sub_1B5E6F9DC()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E6F9F8@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_1B5E6E474(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_1B5E6FA58()
{
  v2 = *(*(v0 - 168) + 648);

  return swift_slowAlloc();
}

void sub_1B5E6FA78()
{

  JUMPOUT(0x1B8C8A360);
}

void sub_1B5E6FB2C()
{
  v1 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v1;
}

BOOL sub_1B5E6FB38()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1B5E6FB50()
{
}

size_t sub_1B5E6FB68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B5E6E0FC(v5, a2, a3, a4, v4);
}

uint64_t sub_1B5E6FB80()
{

  return sub_1B5EA50F0();
}

uint64_t sub_1B5E6FBA8()
{
  v1 = v0[46];
  v2 = *(v0[47] + 96);
  return v0[48];
}

uint64_t sub_1B5E6FC0C()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t sub_1B5E6FC2C()
{

  return swift_task_create();
}

uint64_t sub_1B5E6FC4C()
{

  return sub_1B5EA5C70();
}

uint64_t dispatch thunk of XPCServiceClientConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 24))();
}

uint64_t dispatch thunk of XPCServiceClientConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B5E6FE1C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B5E6FE1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B5E6FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B5E6FF80, 0, 0);
}

uint64_t sub_1B5E6FF80()
{
  v1 = *(v0[6] + 16);
  v2 = *(MEMORY[0x1E69C5B08] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B5E70024;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE2EE30](v6, v7, v4, v5);
}

uint64_t sub_1B5E70024()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B5E70118()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B5E70174@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1B5E702CC();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E70208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B5E6FE1C;

  return sub_1B5E6FF58(a1, a2, a3, a4);
}

uint64_t sub_1B5E702CC()
{
  v0 = swift_allocObject();
  v1 = sub_1B5DF33E0(&qword_1EB90EBF0, &qword_1B5EB6DB0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1B5EA4DA0();
  return v0;
}

uint64_t related decl e for SummarizationClientError.alternateErrorCodeForAnalytics.getter()
{
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1);
  sub_1B5E72440();
  sub_1B5EA41E0();
  return 0;
}

BOOL related decl e for SummarizationClientError.isDataValidationMissingRequiredDataError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 500)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 700;
}

BOOL related decl e for SummarizationClientError.isAccountError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 2300)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 2400;
}

BOOL related decl e for SummarizationClientError.hasUnderlyingGenerativeError.getter(uint64_t a1)
{
  v8 = a1;
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E72428();
  sub_1B5E723E0(v1, v2);
  v3 = sub_1B5EA4200();
  sub_1B5E4D8BC(v3, &v6);

  v4 = v7 != 0;
  sub_1B5E63210(&v6, &qword_1EB90E668, &qword_1B5EB60D0);
  return v4;
}

uint64_t sub_1B5E705F8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1B5EA4100();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1B5EA4110();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = a1;
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E723E0(&qword_1EB90DA18, type metadata accessor for SummarizationClientError);
  v11 = sub_1B5EA4200();
  sub_1B5E4D8BC(v11, &v32);

  if (!v33)
  {
    sub_1B5E63210(&v32, &qword_1EB90E668, &qword_1B5EB60D0);
    v20 = sub_1B5EA5130();
    return sub_1B5DF3658(a2, 1, 1, v20);
  }

  sub_1B5DF7148(&v32, v34);
  sub_1B5E5E268(v34, &v32);
  if (swift_dynamicCast())
  {
    v12 = v31[0];
    v13 = v31[1];
    v14 = sub_1B5EA4150();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1B5EA4140();
    v17 = sub_1B5EA5130();
    sub_1B5E723E0(&qword_1EB90E660, MEMORY[0x1E69A0A68]);
    v18 = v35;
    sub_1B5EA4130();
    v19 = v18;
    if (!v18)
    {
      sub_1B5DF3FB8(v34);

      sub_1B5E24A58(v12, v13);
      return sub_1B5DF3658(a2, 0, 1, v17);
    }

    sub_1B5E24A58(v12, v13);
  }

  else
  {
    sub_1B5EA40D0();
    sub_1B5DF6A60(MEMORY[0x1E69E7CC0]);
    sub_1B5E723E0(&qword_1EB90DA80, MEMORY[0x1E6967E98]);
    sub_1B5EA4220();
    v19 = sub_1B5EA40C0();
    (*(v7 + 8))(v10, v6);
    swift_willThrow();
  }

  if (qword_1ED7D2988 != -1)
  {
    swift_once();
  }

  v22 = sub_1B5EA53B0();
  sub_1B5DFD794(v22, qword_1ED7D2990);

  v23 = v19;
  v24 = sub_1B5EA5380();
  v25 = sub_1B5EA5A40();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v32 = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_1B5E5B1CC();
    *(v26 + 12) = 2112;
    v29 = v19;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v30;
    *v27 = v30;
    _os_log_impl(&dword_1B5DED000, v24, v25, "Error extracting %s: %@", v26, 0x16u);
    sub_1B5E63210(v27, &unk_1EB90F890, &qword_1B5EB6DC0);
    MEMORY[0x1B8C8B330](v27, -1, -1);
    sub_1B5DF3FB8(v28);
    MEMORY[0x1B8C8B330](v28, -1, -1);
    MEMORY[0x1B8C8B330](v26, -1, -1);
  }

  swift_willThrow();
  return sub_1B5DF3FB8(v34);
}

uint64_t related decl e for SummarizationClientError.userFacingLocalizedMessage.getter(void *a1)
{
  v3 = *(*(sub_1B5DF33E0(&qword_1EB90F080, &qword_1B5EB7728) - 8) + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1B5E724EC();
  v6 = sub_1B5DF5DA8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  v13 = v12 - v11;
  sub_1B5E72450();
  if (a1)
  {

    sub_1B5DF5DF0();
    sub_1B5DF3658(v14, v15, v16, v5);
  }

  else if (sub_1B5DF46E0(v1, 1, v5) != 1)
  {
    (*(v8 + 32))(v13, v1, v5);
    v24 = sub_1B5EA5110();
    (*(v8 + 8))(v13, v5);
    return v24;
  }

  sub_1B5E63210(v1, &qword_1EB90F080, &qword_1B5EB7728);
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v17 = sub_1B5EA53B0();
  sub_1B5DFD794(v17, qword_1ED7D2990);
  v18 = sub_1B5EA5380();
  sub_1B5EA5A40();
  v19 = sub_1B5E72498();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    MEMORY[0x1B8C8B330](v21, -1, -1);
  }

  return 0;
}

BOOL related decl e for SummarizationClientError.isGuardrailOutOfDateError.getter(void *a1)
{
  v58 = sub_1B5EA5070();
  v3 = sub_1B5DF5DA8(v58);
  v60 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  v9 = v8 - v7;
  v10 = sub_1B5EA50E0();
  v11 = sub_1B5DF5DA8(v10);
  v61 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  v17 = v16 - v15;
  v18 = sub_1B5EA5090();
  v19 = sub_1B5DF5DA8(v18);
  v59 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  v25 = v24 - v23;
  v26 = *(*(sub_1B5DF33E0(&qword_1EB90F080, &qword_1B5EB7728) - 8) + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v27);
  v28 = sub_1B5E724EC();
  v29 = sub_1B5DF5DA8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1B5DFD7E8();
  v36 = v35 - v34;
  sub_1B5E72450();
  if (a1)
  {

    sub_1B5DF5DF0();
    sub_1B5DF3658(v37, v38, v39, v28);
LABEL_4:
    sub_1B5E63210(v1, &qword_1EB90F080, &qword_1B5EB7728);
    if (qword_1ED7D2988 != -1)
    {
      sub_1B5E25E6C();
      swift_once();
    }

    v40 = sub_1B5EA53B0();
    sub_1B5DFD794(v40, qword_1ED7D2990);
    v41 = sub_1B5EA5380();
    sub_1B5EA5A40();
    v42 = sub_1B5E72498();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      MEMORY[0x1B8C8B330](v44, -1, -1);
    }

    return 0;
  }

  if (sub_1B5DF46E0(v1, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  (*(v31 + 32))(v36, v1, v28);
  sub_1B5EA5120();
  v49 = v61[11];
  v50 = sub_1B5E34F04();
  if (v51(v50) == *MEMORY[0x1E69A0A60])
  {
    v52 = v61[12];
    v53 = sub_1B5E34F04();
    v54(v53);
    (*(v59 + 32))(v25, v17, v18);
    sub_1B5EA5080();
    (*(v59 + 8))(v25, v18);
    (*(v31 + 8))(v36, v28);
    v47 = (*(v60 + 88))(v9, v58) == *MEMORY[0x1E69A0A30];
    (*(v60 + 8))(v9, v58);
    return v47;
  }

  (*(v31 + 8))(v36, v28);
  v55 = v61[1];
  v56 = sub_1B5E34F04();
  v57(v56);
  return 0;
}

BOOL related decl e for SummarizationClientError.isSafetyError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 2012)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 2200;
}

uint64_t sub_1B5E71250(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B5EA5010();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B5DF33E0(&qword_1EB90F098, &qword_1B5EB7748);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19[-v10];
  v12 = sub_1B5EA5030();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  related decl 'e' for SummarizationClientError.denyListRejectedErrorInfo.getter(a2, v11);
  if (sub_1B5DF46E0(v11, 1, v12) == 1)
  {
    sub_1B5E63210(v11, &qword_1EB90F098, &qword_1B5EB7748);
    v17 = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1B5EA5020();
    v17 = sub_1B5EA4F80();
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v16, v12);
  }

  return v17 & 1;
}

uint64_t sub_1B5E7151C(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v38 = sub_1B5EA4FC0();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5EA4FE0();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B5EA4F90();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B5DF33E0(&qword_1EB90F090, &qword_1B5EB7740);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34 - v17;
  v19 = sub_1B5EA4FF0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  related decl 'e' for SummarizationClientError.safetyRejectedErrorInfo.getter(a2, v18);
  v35 = v11;
  v36 = v23;
  v37 = v20;
  if (sub_1B5DF46E0(v18, 1, v19) == 1)
  {
    sub_1B5E63210(v18, &qword_1EB90F090, &qword_1B5EB7740);
    return 0;
  }

  v26 = v37;
  v27 = v36;
  (*(v37 + 32))();
  sub_1B5EA4FA0();
  v28 = sub_1B5EA4F80();
  (*(v41 + 8))(v14, v35);
  if ((v28 & 1) == 0)
  {
    (*(v26 + 8))(v27, v19);
    return 0;
  }

  v42 = v19;
  sub_1B5EA4F70();
  v29 = sub_1B5EA4FD0();
  result = (*(v39 + 8))(v10, v40);
  v30 = 0;
  v31 = *(v29 + 16);
  v32 = v38;
  while (1)
  {
    v24 = v31 != v30;
    if (v31 == v30)
    {
LABEL_10:
      (*(v37 + 8))(v36, v42);

      return v24;
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    (*(v3 + 16))(v6, v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30++, v32);
    v33 = sub_1B5EA4FB0();
    result = (*(v3 + 8))(v6, v32);
    if (v33)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E71994(uint64_t a1, uint64_t (*a2)(void), unsigned int *a3, uint64_t (*a4)(char *, uint64_t))
{
  v7 = a2(0);
  sub_1B5DF5DA8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  (*(v9 + 104))(&v19 - v13, *a3, v7);
  LOBYTE(a4) = a4(v14, a1);
  v15 = *(v9 + 8);
  v16 = sub_1B5E34F04();
  v17(v16);
  return a4 & 1;
}

BOOL related decl e for SummarizationClientError.isSensitiveContentError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 2200)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 2300;
}

uint64_t sub_1B5E71B84@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v72 = a2;
  v78 = a4;
  v70 = sub_1B5EA5040();
  v5 = sub_1B5DF5DA8(v70);
  v73 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v69 = v10 - v9;
  v11 = sub_1B5EA50E0();
  v12 = sub_1B5DF5DA8(v11);
  v74 = v13;
  v75 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFD7E8();
  v18 = v17 - v16;
  v19 = sub_1B5EA5060();
  v20 = sub_1B5DF5DA8(v19);
  v71 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7E8();
  v26 = v25 - v24;
  v27 = *(*(sub_1B5DF33E0(&qword_1EB90F080, &qword_1B5EB7728) - 8) + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = sub_1B5EA5130();
  v32 = sub_1B5DF5DA8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1B5DFD7E8();
  v39 = v38 - v37;
  v40 = v76;
  sub_1B5E705F8(a1, v30);
  if (v40)
  {

    sub_1B5DF5DF0();
    sub_1B5DF3658(v41, v42, v43, v31);
    v76 = 0;
    goto LABEL_4;
  }

  v67 = v26;
  v68 = v19;
  v76 = 0;
  v44 = v75;
  if (sub_1B5DF46E0(v30, 1, v31) == 1)
  {
LABEL_4:
    sub_1B5E63210(v30, &qword_1EB90F080, &qword_1B5EB7728);
    if (!related decl 'e' for SummarizationClientError.isSafetyError.getter())
    {
      if (qword_1ED7D2988 != -1)
      {
        sub_1B5E25E6C();
        swift_once();
      }

      v45 = sub_1B5EA53B0();
      v46 = sub_1B5DFD794(v45, qword_1ED7D2990);
      v47 = sub_1B5EA5380();
      sub_1B5EA5A40();
      v48 = sub_1B5E72498();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        MEMORY[0x1B8C8B330](v50, -1, -1);
      }
    }

    goto LABEL_10;
  }

  (*(v34 + 32))(v39, v30, v31);
  sub_1B5EA5120();
  v56 = v74;
  if ((*(v74 + 88))(v18, v44) == *MEMORY[0x1E69A0A58])
  {
    (*(v56 + 96))(v18, v44);
    v57 = v71;
    v58 = v67;
    v59 = v68;
    (*(v71 + 32))(v67, v18, v68);
    v60 = v69;
    sub_1B5EA5050();
    (*(v57 + 8))(v58, v59);
    (*(v34 + 8))(v39, v31);
    v61 = v73;
    v62 = v70;
    v63 = (*(v73 + 88))(v60, v70);
    if (v63 == *v72)
    {
      (*(v61 + 96))(v60, v62);
      v64 = v77(0);
      v65 = v78;
      (*(*(v64 - 8) + 32))(v78, v60, v64);
      v51 = v65;
      v52 = 0;
      v53 = 1;
      v54 = v64;
      return sub_1B5DF3658(v51, v52, v53, v54);
    }

    (*(v61 + 8))(v60, v62);
  }

  else
  {
    (*(v34 + 8))(v39, v31);
    (*(v56 + 8))(v18, v44);
  }

LABEL_10:
  v77(0);
  sub_1B5DF5DF0();
  return sub_1B5DF3658(v51, v52, v53, v54);
}

uint64_t Error.toSummarizationClientError()(uint64_t a1)
{
  v2 = sub_1B5DF5DA8(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7);
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E724D8();
  if (swift_dynamicCast())
  {
    v10 = v33;
    goto LABEL_16;
  }

  sub_1B5DF33E0(&qword_1EB90F088, &qword_1B5EB7730);
  sub_1B5E724D8();
  if (!swift_dynamicCast())
  {
LABEL_10:
    v10 = 0;
    goto LABEL_16;
  }

  sub_1B5DF17A8(&v33, v30);
  sub_1B5DF3BFC(v30, v31);
  swift_getDynamicType();
  v11 = sub_1B5EA4170();
  v13 = v12;
  if (v11 == sub_1B5EA56A0() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1B5EA5F00();

    if ((v16 & 1) == 0)
    {
      sub_1B5DF3FB8(v30);
      goto LABEL_10;
    }
  }

  v17 = v31;
  v18 = v32;
  v19 = sub_1B5DF3BFC(v30, v31);
  v20 = *(v17 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22);
  v25 = *(v18 + 8);
  v26 = sub_1B5EA5EE0();
  if (v26)
  {
    v27 = v26;
    (*(v20 + 8))(v24, v17);
  }

  else
  {
    v27 = swift_allocError();
    (*(v20 + 32))(v28, v24, v17);
  }

  v10 = sub_1B5EA4230();

  sub_1B5DF3FB8(v30);
LABEL_16:
  (*(v4 + 8))(v9, a1);
  return v10;
}

uint64_t sub_1B5E723E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5E72450()
{

  return sub_1B5E705F8(v1, v0);
}

void sub_1B5E7247C()
{

  type metadata accessor for SummarizationClientError(0);
}

uint64_t sub_1B5E724EC()
{

  return sub_1B5EA5130();
}

uint64_t SummarizationXPCRequest.Error.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E72588(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001B5EAA440 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D726177657270 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001B5EA7580 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001B5EA7600 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001B5EA75C0 == a2;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001B5EA7650 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000019 && 0x80000001B5EA75E0 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001FLL && 0x80000001B5EA7670 == a2;
                if (v12 || (sub_1B5EA5F00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000002FLL && 0x80000001B5EAA460 == a2;
                  if (v13 || (sub_1B5EA5F00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000002BLL && 0x80000001B5EAA490 == a2;
                    if (v14 || (sub_1B5EA5F00() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001DLL && 0x80000001B5EAA4C0 == a2;
                      if (v15 || (sub_1B5EA5F00() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000002DLL && 0x80000001B5EAA4E0 == a2;
                        if (v16 || (sub_1B5EA5F00() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x80000001B5EAA510 == a2;
                          if (v17 || (sub_1B5EA5F00() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000022 && 0x80000001B5EAA530 == a2;
                            if (v18 || (sub_1B5EA5F00() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000028 && 0x80000001B5EAA560 == a2;
                              if (v19 || (sub_1B5EA5F00() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000022 && 0x80000001B5EAA590 == a2;
                                if (v20 || (sub_1B5EA5F00() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000028 && 0x80000001B5EAA5C0 == a2;
                                  if (v21 || (sub_1B5EA5F00() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000022 && 0x80000001B5EAA5F0 == a2;
                                    if (v22 || (sub_1B5EA5F00() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000014 && 0x80000001B5EA8D30 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1B5EA5F00();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}