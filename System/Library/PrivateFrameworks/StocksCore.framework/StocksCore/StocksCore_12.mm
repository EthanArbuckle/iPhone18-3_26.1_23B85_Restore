uint64_t StockNewsFeed.sorted(_:)@<X0>(unsigned __int8 *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_1DAB5916C((v2 + 3), v12);
  if (v4 > 1)
  {
    v11[0] = v5;
    sub_1DACB71E4();
    if (v4 == 2)
    {
      v8 = sub_1DAB7197C;
      v9 = sub_1DAB7043C;
    }

    else
    {
      v8 = sub_1DAB70BB8;
      v9 = sub_1DAB70114;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v11[0] = v5;
    sub_1DACB71E4();
    v8 = sub_1DAB72740;
    v9 = sub_1DAB70764;
LABEL_8:
    sub_1DAB6FF88(v11, v8, v9);
    v5 = v11[0];
    goto LABEL_9;
  }

  sub_1DACB71E4();
LABEL_9:
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  sub_1DAB5916C(v12, (a2 + 3));
  sub_1DACB71E4();
  return sub_1DAB59344(v12, v11);
}

uint64_t StockNewsFeed.limited(_:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[5];
  v24[3] = v2[4];
  v24[4] = v4;
  v5 = v2[3];
  v24[1] = v2[2];
  v24[2] = v5;
  v6 = v2[9];
  v24[7] = v2[8];
  v24[8] = v6;
  v7 = v2[7];
  v24[5] = v2[6];
  v24[6] = v7;
  v8 = v2[1];
  v23 = *v2;
  v24[0] = v8;
  v9 = v23;
  if (*(v23 + 16) <= result)
  {
    v12 = *(&v23 + 1);
    v11 = *&v24[0];
    sub_1DAB07228(&v23, &v20);
    v13 = v24 + 8;
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1DAB0310C(v23, v23 + 32, 0, (2 * result) | 1);
    v9 = v10;
    v12 = *(&v23 + 1);
    v11 = *&v24[0];
    sub_1DAB5916C(v24 + 8, v21 + 8);
    sub_1DAB5916C(v21 + 8, v19);
    sub_1DACB71E4();
    sub_1DAB59344(v24 + 8, v22);
    v13 = v19;
LABEL_5:
    sub_1DAB5916C(v13, v22);
    *&v20 = v9;
    *(&v20 + 1) = v12;
    *&v21[0] = v11;
    result = sub_1DAB5916C(v22, v21 + 8);
    v14 = v21[6];
    a2[6] = v21[5];
    a2[7] = v14;
    v15 = v21[8];
    a2[8] = v21[7];
    a2[9] = v15;
    v16 = v21[2];
    a2[2] = v21[1];
    a2[3] = v16;
    v17 = v21[4];
    a2[4] = v21[3];
    a2[5] = v17;
    v18 = v21[0];
    *a2 = v20;
    a2[1] = v18;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t StockNewsFeed.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(*v2 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = (*v2 + 144 * result);
    v15[0] = v3[2];
    v4 = v3[3];
    v5 = v3[4];
    v6 = v3[6];
    v15[3] = v3[5];
    v15[4] = v6;
    v15[1] = v4;
    v15[2] = v5;
    v7 = v3[7];
    v8 = v3[8];
    v9 = v3[10];
    v15[7] = v3[9];
    v15[8] = v9;
    v15[5] = v7;
    v15[6] = v8;
    v10 = v3[9];
    a2[6] = v3[8];
    a2[7] = v10;
    a2[8] = v3[10];
    v11 = v3[5];
    a2[2] = v3[4];
    a2[3] = v11;
    v12 = v3[7];
    a2[4] = v3[6];
    a2[5] = v12;
    v13 = v3[3];
    *a2 = v3[2];
    a2[1] = v13;
    return sub_1DAAD4CCC(v15, &v14);
  }

  return result;
}

Swift::Int __swiftcall StockNewsFeed.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t StockNewsFeed.makeIterator()()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  sub_1DAB0708C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DAB07084;
  *(v3 + 24) = v2;
  sub_1DACB71E4();
  return v3;
}

void sub_1DAB6CC6C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v4 + 16);
  if (v5 == v6)
  {
    sub_1DAB76F60(&v19);
    v7 = v26;
    a2[6] = v25;
    a2[7] = v7;
    a2[8] = v27;
    v8 = v22;
    a2[2] = v21;
    a2[3] = v8;
    v9 = v24;
    a2[4] = v23;
    a2[5] = v9;
    v10 = v20;
    *a2 = v19;
    a2[1] = v10;
  }

  else if (v5 >= v6)
  {
    __break(1u);
  }

  else
  {
    v11 = (v4 + 144 * v5);
    v19 = v11[2];
    v12 = v11[3];
    v13 = v11[4];
    v14 = v11[6];
    v22 = v11[5];
    v23 = v14;
    v20 = v12;
    v21 = v13;
    v15 = v11[7];
    v16 = v11[8];
    v17 = v11[10];
    v26 = v11[9];
    v27 = v17;
    v24 = v15;
    v25 = v16;
    memmove(a2, v11 + 2, 0x90uLL);
    *(a1 + 24) = v5 + 1;
    nullsub_1(a2);
    sub_1DAAD4CCC(&v19, &v18);
  }
}

void (*sub_1DAB6CD74(void (**a1)(uint64_t a1), void *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x1B0uLL);
  }

  v6 = result;
  *a1 = result;
  if (*a2 >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = (*v2 + 144 * *a2);
    *result = v7[2];
    v8 = v7[3];
    v9 = v7[4];
    v10 = v7[6];
    *(result + 3) = v7[5];
    *(result + 4) = v10;
    *(result + 1) = v8;
    *(result + 2) = v9;
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[10];
    *(result + 7) = v7[9];
    *(result + 8) = v13;
    *(result + 5) = v11;
    *(result + 6) = v12;
    memmove(result + 144, v7 + 2, 0x90uLL);
    sub_1DAAD4CCC(v6, v6 + 288);
    return sub_1DAB6CE48;
  }

  return result;
}

void sub_1DAB6CE48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 256);
  v1[24] = *(*a1 + 240);
  v1[25] = v2;
  v1[26] = v1[17];
  v3 = v1[12];
  v1[20] = v1[11];
  v1[21] = v3;
  v4 = v1[14];
  v1[22] = v1[13];
  v1[23] = v4;
  v5 = v1[10];
  v1[18] = v1[9];
  v1[19] = v5;
  sub_1DAAD4D28((v1 + 18));

  free(v1);
}

uint64_t *sub_1DAB6CEAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = v2[5];
  v16[4] = v2[4];
  v16[5] = v5;
  v6 = v2[3];
  v16[2] = v2[2];
  v16[3] = v6;
  v7 = v2[9];
  v16[8] = v2[8];
  v16[9] = v7;
  v8 = v2[7];
  v16[6] = v2[6];
  v16[7] = v8;
  v9 = v2[1];
  v16[0] = *v2;
  v16[1] = v9;
  if (v3 < 0 || *(*&v16[0] + 16) < v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v2[7];
    *(a2 + 112) = v2[6];
    *(a2 + 128) = v10;
    v11 = v2[9];
    *(a2 + 144) = v2[8];
    *(a2 + 160) = v11;
    v12 = v2[3];
    *(a2 + 48) = v2[2];
    *(a2 + 64) = v12;
    v13 = v2[5];
    *(a2 + 80) = v2[4];
    *(a2 + 96) = v13;
    v14 = v2[1];
    *(a2 + 16) = *v2;
    *(a2 + 32) = v14;
    *a2 = v3;
    *(a2 + 8) = v4;
    return sub_1DAB07228(v16, &v15);
  }

  return result;
}

uint64_t sub_1DAB6CF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[5];
  v24 = v1[6];
  v25 = v2;
  v4 = v1[7];
  v5 = v1[9];
  v26 = v1[8];
  v6 = v26;
  v27 = v5;
  v7 = v1[3];
  v9 = v1[1];
  v20 = v1[2];
  v8 = v20;
  v21 = v7;
  v10 = v1[3];
  v11 = v1[5];
  v22 = v1[4];
  v12 = v22;
  v23 = v11;
  v13 = v1[1];
  v19[0] = *v1;
  v14 = v19[0];
  v19[1] = v13;
  *(a1 + 96) = v24;
  *(a1 + 112) = v4;
  v15 = v1[9];
  *(a1 + 128) = v6;
  *(a1 + 144) = v15;
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v3;
  *a1 = v14;
  *(a1 + 16) = v9;
  v16 = *(*&v19[0] + 16);
  *(a1 + 160) = 0;
  *(a1 + 168) = v16;
  return sub_1DAB07228(v19, &v18);
}

uint64_t *sub_1DAB6CFF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB6D020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DAB75538(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1DAB6D058(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1DAB6D098(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB6D0B4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB6D0D0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB6D0EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1DAB6D104(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1DAB6D11C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 7);
  v11[6] = *(v1 + 6);
  v11[7] = v4;
  v5 = *(v1 + 9);
  v11[8] = *(v1 + 8);
  v11[9] = v5;
  v6 = *(v1 + 3);
  v11[2] = *(v1 + 2);
  v11[3] = v6;
  v7 = *(v1 + 5);
  v11[4] = *(v1 + 4);
  v11[5] = v7;
  v8 = *(v1 + 1);
  v11[0] = *v1;
  v11[1] = v8;
  sub_1DACB71E4();
  sub_1DAB07030(v11);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = 0;
  sub_1DAB0708C();
  result = swift_allocObject();
  *(result + 16) = sub_1DAB77334;
  *(result + 24) = v9;
  *a1 = result;
  return result;
}

void *sub_1DAB6D1D8()
{
  v1 = v0[7];
  v8[6] = v0[6];
  v8[7] = v1;
  v2 = v0[9];
  v8[8] = v0[8];
  v8[9] = v2;
  v3 = v0[3];
  v8[2] = v0[2];
  v8[3] = v3;
  v4 = v0[5];
  v8[4] = v0[4];
  v8[5] = v4;
  v5 = v0[1];
  v8[0] = *v0;
  v8[1] = v5;
  v6 = sub_1DAB02F80(v8);
  sub_1DAB07030(v8);
  return v6;
}

uint64_t sub_1DAB6D23C(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v11 = v3[6];
  v12 = v3[7];
  v13 = v3[8];
  v14 = v3[9];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v5 = *v3;
  v6 = v3[1];
  return sub_1DAB05768(a1, a2, a3);
}

uint64_t NewsFeedService.init(contentContext:headlineScorerFactory:appConfigurationManager:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_1DAA4D460(a2, v3 + 24);
  sub_1DAA4D460(a3, v3 + 64);
  return v3;
}

uint64_t sub_1DAB6D2F8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for AppConfiguration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE120080 != -1)
  {
    swift_once();
  }

  sub_1DAB76D80(qword_1EE123158, v7, type metadata accessor for NewsFeedService);
  sub_1DACB7F84();
  if (v43)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v10 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v11 = sub_1DAB6E3FC(a1);
    v12 = MEMORY[0x1EEE9AC00](v11);
    *(&v42 - 4) = v2;
    *(&v42 - 3) = v12;
    *(&v42 - 16) = 0;
    sub_1DAB76CAC(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
LABEL_7:
    v33 = sub_1DACB8B44();

    return v33;
  }

  v16 = *(a1 + 16);
  v17 = v1[11];
  v18 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v17);
  (*(v18 + 8))(v17, v18);
  v19 = *(v9 + 32);
  sub_1DAB7663C(v9, type metadata accessor for AppConfiguration);
  if (v19 < v16)
  {
    sub_1DAA41D64();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1DACC1D40;
    v21 = MEMORY[0x1E69E6530];
    v22 = MEMORY[0x1E69E65A8];
    v23 = *(a1 + 16);
    *(v20 + 56) = MEMORY[0x1E69E6530];
    *(v20 + 64) = v22;
    *(v20 + 32) = v23;
    v24 = v2[11];
    v25 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v24);
    (*(v25 + 8))(v24, v25);
    v26 = *(v9 + 32);
    sub_1DAB7663C(v9, type metadata accessor for AppConfiguration);
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 72) = v26;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v27 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v28 = sub_1DAB6E3FC(a1);
    v29 = MEMORY[0x1EEE9AC00](v28);
    *(&v42 - 4) = v2;
    *(&v42 - 3) = v29;
    *(&v42 - 16) = 0;
    sub_1DAB76CAC(0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    goto LABEL_7;
  }

  v34 = *(a1 + 16);
  if (v34 == 1)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v35 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();
  }

  else
  {
    sub_1DAA41D64();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E6530];
    *(v36 + 16) = xmmword_1DACC1D20;
    v38 = MEMORY[0x1E69E65A8];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = v34;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v35 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();
  }

  sub_1DAB76CAC(0);
  v43 = sub_1DAB74DF4(a1, sub_1DAB76CE0, v2);
  v39 = sub_1DACB89D4();
  sub_1DAB76CE8(0);
  sub_1DAB76D80(&qword_1EE11FA50, 255, sub_1DAB76CE8);
  sub_1DACB8A34();

  v43 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v40 = sub_1DACB89D4();
  sub_1DAB766FC();
  sub_1DAB76D80(&qword_1EE11FA18, 255, sub_1DAB76DC8);
  v33 = sub_1DACB8B64();

  return v33;
}

uint64_t sub_1DAB6D918(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1DAB767C0(0, &unk_1EE11FDF8, &qword_1EE11F968, 0x1E69B53A0, MEMORY[0x1E69D6B18]);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB8B44();

  *(swift_allocObject() + 16) = v1;
  v6 = sub_1DACB89D4();
  sub_1DAB76828();
  v7 = sub_1DACB8A64();

  return v7;
}

uint64_t sub_1DAB6DA44(uint64_t a1, void *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = a2[6];
  v5 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v4);
  v6 = *(v5 + 8);
  v7 = v3;
  sub_1DACB71E4();
  v6(v4, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = v7;
  v10 = sub_1DACB89D4();
  sub_1DAB768D4();
  v11 = sub_1DACB8A64();

  return v11;
}

uint64_t sub_1DAB6DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  sub_1DAB76A40(a1, v10, sub_1DAB768D4);
  v6 = v10[0];
  v5 = v10[1];
  sub_1DAA4D460(&v11, v12);
  v9[2] = a2;
  v9[3] = v6;
  v9[4] = v12;
  v7 = sub_1DAB6AEF4(sub_1DAB76AA8, v9, v5);

  *a3 = v7;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void sub_1DAB6DC0C(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a1;
  v9 = [*a1 feedID];
  v10 = sub_1DACB9324();
  v12 = v11;

  if (!*(a2 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_1DAA4BF3C(v10, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:
    sub_1DAB76B50(v120);
    v32 = *&v120[112];
    a5[6] = *&v120[96];
    a5[7] = v32;
    v33 = v121;
    a5[8] = *&v120[128];
    a5[9] = v33;
    v34 = *&v120[48];
    a5[2] = *&v120[32];
    a5[3] = v34;
    v35 = *&v120[80];
    a5[4] = *&v120[64];
    a5[5] = v35;
    v36 = *&v120[16];
    *a5 = *v120;
    a5[1] = v36;
    return;
  }

  sub_1DAB5916C(*(a2 + 56) + 136 * v13, v119);
  sub_1DAA41D64();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DACC2610;
  sub_1DAB59344(v119, v120);
  v17 = [v8 feedItems];
  v83 = a5;
  v85 = a4;
  if (v17)
  {
    sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
    v18 = sub_1DACB9644();

    if (v18 >> 62)
    {
      v17 = sub_1DACB9E14();
    }

    else
    {
      v17 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v19 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v19;
  *(v16 + 32) = v17;
  sub_1DAB5916C(v119, &v110);
  v20 = v111;
  v21 = MEMORY[0x1E69E6158];
  *(v16 + 96) = MEMORY[0x1E69E6158];
  v22 = sub_1DAA443C8();
  *(v16 + 104) = v22;
  *(v16 + 72) = v20;
  sub_1DACB71E4();
  v23 = [v8 feedID];
  v24 = sub_1DACB9324();
  v26 = v25;

  *(v16 + 136) = v21;
  *(v16 + 144) = v22;
  *(v16 + 112) = v24;
  *(v16 + 120) = v26;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v27 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v28 = [v8 feedItems];
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = v28;
    sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
    v31 = sub_1DACB9644();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v122 = v29;
  v84 = v8;
  v37 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_47:
    v38 = sub_1DACB9E14();
  }

  else
  {
    v38 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = 0;
  v86 = MEMORY[0x1E69E7CC0];
  while (v38 != v39)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1E12777A0](v39, v31);
    }

    else
    {
      if (v39 >= *(v37 + 16))
      {
        goto LABEL_43;
      }

      v40 = *(v31 + 8 * v39 + 32);
    }

    v41 = v40;
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
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

    v43 = [a3 objectForKey_];

    ++v39;
    if (v43)
    {
      MEMORY[0x1E12770F0]();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v86 = v122;
      v39 = v42;
    }
  }

  v45 = v85[3];
  v31 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v45);
  v105 = v116;
  v106 = v117;
  v107 = v118;
  v101 = v112;
  v102 = v113;
  v103 = v114;
  v104 = v115;
  v99 = v110;
  v100 = v111;
  nullsub_1(&v99);
  *&v120[96] = v105;
  *&v120[112] = v106;
  *&v120[128] = v107;
  *&v120[32] = v101;
  *&v120[48] = v102;
  *&v120[64] = v103;
  *&v120[80] = v104;
  *v120 = v99;
  *&v120[16] = v100;
  v46 = *(v31 + 16);
  sub_1DAB59344(v119, &v88);
  v47 = v46(v86, v120, v45, v31);
  v108[6] = *&v120[96];
  v108[7] = *&v120[112];
  v109 = *&v120[128];
  v108[2] = *&v120[32];
  v108[3] = *&v120[48];
  v108[4] = *&v120[64];
  v108[5] = *&v120[80];
  v108[0] = *v120;
  v108[1] = *&v120[16];
  sub_1DAB76B6C(v108);
  if (v86 >> 62)
  {
    v48 = sub_1DACB9E14();
    v49 = v84;
    if (v48)
    {
      goto LABEL_27;
    }

LABEL_49:

    v37 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v74 = [v49 feedID];
    v75 = sub_1DACB9324();
    v77 = v76;

    *&v88 = v37;
    *(&v88 + 1) = v75;
    *&v89 = v77;
    sub_1DAB5916C(v119, &v89 + 8);
    *&v120[96] = v94;
    *&v120[112] = v95;
    *&v120[128] = v96;
    v121 = v97;
    *&v120[32] = v90;
    *&v120[48] = v91;
    *&v120[64] = v92;
    *&v120[80] = v93;
    *v120 = v88;
    *&v120[16] = v89;
    nullsub_1(v120);
    v78 = *&v120[112];
    v83[6] = *&v120[96];
    v83[7] = v78;
    v79 = v121;
    v83[8] = *&v120[128];
    v83[9] = v79;
    v80 = *&v120[48];
    v83[2] = *&v120[32];
    v83[3] = v80;
    v81 = *&v120[80];
    v83[4] = *&v120[64];
    v83[5] = v81;
    v82 = *&v120[16];
    *v83 = *v120;
    v83[1] = v82;
    return;
  }

  v48 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = v84;
  if (!v48)
  {
    goto LABEL_49;
  }

LABEL_27:
  v98 = MEMORY[0x1E69E7CC0];
  sub_1DAAA50F8(0, v48 & ~(v48 >> 63), 0);
  if (v48 < 0)
  {
    __break(1u);
  }

  else
  {
    v50 = 0;
    v37 = v98;
    v51 = v86;
    a3 = (v86 & 0xC000000000000001);
    v85 = (v48 - 1);
    while (1)
    {
      if (a3)
      {
        v31 = MEMORY[0x1E12777A0](v50, v51);
      }

      else
      {
        if (v50 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v31 = *(v51 + 8 * v50 + 32);
        swift_unknownObjectRetain();
      }

      v52 = [swift_unknownObjectRetain() identifier];
      v53 = sub_1DACB9324();
      if (!*(v47 + 16))
      {
        break;
      }

      v55 = sub_1DAA4BF3C(v53, v54);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        goto LABEL_44;
      }

      v58 = *(v47 + 56) + 136 * v55;
      v88 = *v58;
      v59 = *(v58 + 48);
      v60 = *(v58 + 64);
      v61 = *(v58 + 32);
      v89 = *(v58 + 16);
      v90 = v61;
      v91 = v59;
      v92 = v60;
      v62 = *(v58 + 80);
      v63 = *(v58 + 96);
      v64 = *(v58 + 112);
      *&v96 = *(v58 + 128);
      v94 = v63;
      v95 = v64;
      v93 = v62;
      sub_1DAAA5860(&v88, v120);
      swift_unknownObjectRelease();
      v98 = v37;
      v66 = *(v37 + 16);
      v65 = *(v37 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1DAAA50F8((v65 > 1), v66 + 1, 1);
        v37 = v98;
      }

      *&v120[88] = v93;
      *&v120[104] = v94;
      *&v120[120] = v95;
      *&v120[24] = v89;
      *&v120[40] = v90;
      *&v120[56] = v91;
      *&v120[72] = v92;
      *&v120[136] = v96;
      *&v120[8] = v88;
      *v120 = v31;
      sub_1DAAA58BC(v120);
      *(v37 + 16) = v66 + 1;
      v67 = (v37 + 144 * v66);
      v67[2] = *v120;
      v68 = *&v120[16];
      v69 = *&v120[32];
      v70 = *&v120[64];
      v67[5] = *&v120[48];
      v67[6] = v70;
      v67[3] = v68;
      v67[4] = v69;
      v71 = *&v120[80];
      v72 = *&v120[96];
      v73 = *&v120[128];
      v67[9] = *&v120[112];
      v67[10] = v73;
      v67[7] = v71;
      v67[8] = v72;
      if (v85 == v50)
      {

        v49 = v84;
        goto LABEL_50;
      }

      ++v50;
      v51 = v86;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_45;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1DAB6E3FC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1DACB71E4();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v35 = v2;
  v36 = result;
  v34 = v6;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          goto LABEL_40;
        }

        v5 = *(v2 + 8 * v10);
        ++v8;
        if (v5)
        {
          v8 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

LABEL_10:
    v42 = v5;
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = v11;
    v39 = v11 >> 62;
    v13 = v11 >> 62 ? sub_1DACB9E14() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_39;
    }

LABEL_14:
    sub_1DACB71E4();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v40 = v13;
    if (!result)
    {
      if (v14)
      {
LABEL_21:
        sub_1DACB9E14();
      }

      else
      {
        v17 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v19 = *(v17 + 16);
      }

      v18 = v1;
      result = sub_1DACB9CD4();
      v9 = result;
      v17 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v14)
    {
      goto LABEL_21;
    }

    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

    v18 = v1;
LABEL_23:
    v38 = v9;
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = v12;
    if (v39)
    {
      v24 = v17;
      result = sub_1DACB9E14();
      v17 = v24;
      v22 = v12;
      v23 = result;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v42 - 1) & v42;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v40)
      {
        goto LABEL_43;
      }

      v25 = v17 + 8 * v20 + 32;
      v42 &= v42 - 1;
      v37 = v17;
      if (v39)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        sub_1DAB767C0(0, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
        sub_1DAB76E44();
        for (i = 0; i != v23; ++i)
        {
          v27 = sub_1DAB74CEC(v41, i, v22);
          v29 = *v28;
          (v27)(v41, 0);
          *(v25 + 8 * i) = v29;
        }
      }

      else
      {
        sub_1DAA420F4(0, &qword_1EE11F920, 0x1E69B52D0);
        swift_arrayInitWithCopy();
      }

      v2 = v35;
      v1 = v36;
      v6 = v34;
      v9 = v38;
      v5 = v42;
      if (v40 >= 1)
      {
        v30 = *(v37 + 16);
        v31 = __OFADD__(v30, v40);
        v32 = v30 + v40;
        if (v31)
        {
          goto LABEL_44;
        }

        *(v37 + 16) = v32;
      }
    }

    else
    {

      v9 = v38;
      v1 = v18;
      if (v40 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v33 = sub_1DACB9E14();
  v16 = v33 + v13;
  if (!__OFADD__(v33, v13))
  {
    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v9;
}

uint64_t sub_1DAB6E784()
{
  sub_1DAB76CAC(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB6E7E8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = sub_1DACB71E4();
  sub_1DAC2874C(v4);
  v5 = sub_1DACB71E4();
  return sub_1DAC28778(v5);
}

uint64_t sub_1DAB6E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 16);
  sub_1DACB71F4();
  v16 = [objc_msgSend(v15 configurationManager)];
  swift_unknownObjectRelease();
  v17 = [objc_allocWithZone(MEMORY[0x1E69B52D8]) init];
  [v17 setContext_];
  [v17 setConfiguration_];
  [v17 setOptions_];
  sub_1DAA420F4(0, &qword_1EE11F920, 0x1E69B52D0);
  v18 = sub_1DACB9634();
  [v17 setFeedRequests_];

  if (v16)
  {
    v19 = [v16 isOrderFeedEndpointEnabled];
  }

  else
  {
    v19 = 1;
  }

  v20 = [objc_opt_self() temporaryFeedDatabaseWithEndpoint_];
  [v17 setFeedDatabase_];

  if (a7)
  {
    v21 = objc_allocWithZone(MEMORY[0x1E69B5268]);
    v22 = sub_1DACB92F4();
    v23 = sub_1DACB92F4();
    v24 = [v21 initWithGroupName:v22 cacheControlKey:v23];

    [v17 setEdgeCacheHint_];
  }

  v25 = [v17 operationID];
  v26 = sub_1DACB9324();
  v28 = v27;

  v29 = swift_allocObject();
  v29[2] = a6;
  v29[3] = sub_1DAB76E08;
  v29[4] = v14;
  v29[5] = v26;
  v29[6] = v28;
  v29[7] = a3;
  v29[8] = a4;
  v32[4] = sub_1DAB76E10;
  v32[5] = v29;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_1DAB6F0DC;
  v32[3] = &block_descriptor_55;
  v30 = _Block_copy(v32);
  sub_1DACB71E4();
  sub_1DACB71F4();

  [v17 setRequestCompletionHandler_];
  _Block_release(v30);
  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
  swift_unknownObjectRelease();
}

uint64_t sub_1DAB6EB94(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  sub_1DACB71E4();
  sub_1DACB71E4();
  a3(v5);
}

void sub_1DAB6EC08(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  if (a3)
  {
    v12 = a3;
    swift_getErrorValue();
    v13 = v12;
    v14 = sub_1DACA8450(v48);
    sub_1DACB9904();
    sub_1DAA41D64();
    if (!v14)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1DACC1D40;
      v27 = MEMORY[0x1E69E6158];
      *(v26 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1DAA443C8();
      *(v26 + 64) = v28;
      *(v26 + 32) = a7;
      *(v26 + 40) = a8;
      sub_1DAA4436C(0, &qword_1EE123B10);
      sub_1DACB71E4();
      sub_1DACB9DD4();
      *(v26 + 96) = v27;
      *(v26 + 104) = v28;
      *(v26 + 72) = 0;
      *(v26 + 80) = 0xE000000000000000;
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v29 = sub_1DACB9AD4();
      sub_1DACB8C64();

      (a9)(v12);
LABEL_28:

      return;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DACC1D20;
    if (a4 >> 62)
    {
      v16 = sub_1DACB9E14();
    }

    else
    {
      v16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
LABEL_27:
      sub_1DAB770D4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v15 + 56) = v42;
      *(v15 + 64) = sub_1DAAF691C();
      *(v15 + 32) = v17;
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v43 = sub_1DACB9AD4();
      sub_1DACB8C64();

      a5(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
      goto LABEL_28;
    }

    v47 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v16 & ~(v16 >> 63), 0);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v44 = v15;
      v45 = v12;
      v17 = v47;
      if ((a4 & 0xC000000000000001) != 0)
      {
        v18 = 0;
        do
        {
          MEMORY[0x1E12777A0](v18, a4);
          v19 = [swift_unknownObjectRetain() feedID];
          v20 = sub_1DACB9324();
          v22 = v21;
          swift_unknownObjectRelease_n();

          v24 = *(v47 + 16);
          v23 = *(v47 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1DAA5859C((v23 > 1), v24 + 1, 1);
          }

          ++v18;
          *(v47 + 16) = v24 + 1;
          v25 = v47 + 16 * v24;
          *(v25 + 32) = v20;
          *(v25 + 40) = v22;
        }

        while (v16 != v18);
      }

      else
      {
        v33 = (a4 + 32);
        do
        {
          v34 = *v33;
          v35 = [v34 feedID];
          v36 = sub_1DACB9324();
          v38 = v37;

          v40 = *(v47 + 16);
          v39 = *(v47 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1DAA5859C((v39 > 1), v40 + 1, 1);
          }

          *(v47 + 16) = v40 + 1;
          v41 = v47 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          ++v33;
          --v16;
        }

        while (v16);
      }

      v12 = v45;
      v15 = v44;
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    if (a2)
    {
      if (a1)
      {
        a5(a2, a1);
        return;
      }

      sub_1DAB76C58();
      v31 = swift_allocError();
      v32 = 2;
    }

    else
    {
      sub_1DAB76C58();
      v31 = swift_allocError();
      v32 = 1;
    }

    *v30 = v32;
    a9();
  }
}

uint64_t sub_1DAB6F0DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1DAA420F4(0, &qword_1EE11F908, 0x1E69B52E0);
    v6 = sub_1DACB9644();
  }

  if (a3)
  {
    sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
    a3 = sub_1DACB9644();
  }

  sub_1DACB71F4();
  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t sub_1DAB6F1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_allocWithZone(MEMORY[0x1E69B52B0]);
  sub_1DACB71F4();
  v12 = [v11 init];
  v13 = *(a5 + 16);
  v14 = [objc_msgSend(v13 configurationManager)];
  swift_unknownObjectRelease();
  [v12 setConfiguration_];
  swift_unknownObjectRelease();
  [v12 setContext_];
  sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
  v15 = sub_1DACB9634();
  [v12 setFeedItems_];

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = sub_1DAA73914;
  v16[5] = v10;
  v19[4] = sub_1DAB76C4C;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1DAB11E70;
  v19[3] = &block_descriptor_10;
  v17 = _Block_copy(v19);
  sub_1DACB71F4();

  [v12 setHeadlinesMapCompletionHandler_];
  _Block_release(v17);
  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
}

void sub_1DAB6F3F0(void *a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
    goto LABEL_3;
  }

  if (!a1)
  {
    sub_1DAB76C58();
    v8 = swift_allocError();
    v6 = v8;
    *v11 = 0;
LABEL_3:
    a3(v8);
    v9 = v6;

    goto LABEL_5;
  }

  v12 = a1;
  a5();
  v9 = v12;

LABEL_5:
}

void *NewsFeedService.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  return v0;
}

uint64_t NewsFeedService.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB6F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DAB5916C(a2, v13);
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v13;
  sub_1DAB6A620(MEMORY[0x1E69E7CC0], sub_1DAB75F40, v12, a1);
  v10 = (*(a6 + 8))();

  return v10;
}

uint64_t sub_1DAB6F628(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v27 = a3;
  v28 = a4;
  v8 = type metadata accessor for NewsFeedRequest();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = *(*a2 + 16);
  if (v15)
  {
    v26[0] = a1;
    v26[1] = v5;
    v16 = *a1;
    v17 = (v14 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v20 = v8[6];
      sub_1DACB71E4();
      sub_1DACB7CB4();
      v21 = v8[7];
      v22 = sub_1DACB7CC4();
      (*(*(v22 - 8) + 16))(&v13[v21], v28, v22);
      *v13 = v19;
      *(v13 + 1) = v18;
      *(v13 + 2) = v27;
      v23 = v30;
      sub_1DAB5916C(v30, &v13[v8[8]]);
      sub_1DAB59344(v23, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAADC014(0, v16[2] + 1, 1, v16);
      }

      v25 = v16[2];
      v24 = v16[3];
      if (v25 >= v24 >> 1)
      {
        v16 = sub_1DAADC014(v24 > 1, v25 + 1, 1, v16);
      }

      v16[2] = v25 + 1;
      result = sub_1DAB591C8(v13, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25);
      v17 += 2;
      --v15;
    }

    while (v15);
    *v26[0] = v16;
  }

  return result;
}

uint64_t sub_1DAB6F830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[2] = a2;
  v8[3] = a3;
  sub_1DAB6A764(MEMORY[0x1E69E7CC0], sub_1DAB75F60, v8, a1);
  v6 = (*(a5 + 8))();

  return v6;
}

uint64_t sub_1DAB6F8C4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v37 = a3;
  v7 = type metadata accessor for NewsFeedRequest();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 48);
  v41[2] = *(a2 + 32);
  v41[3] = v12;
  v13 = *(a2 + 136);
  v42 = *(a2 + 128);
  v14 = *(a2 + 112);
  v41[6] = *(a2 + 96);
  v41[7] = v14;
  v15 = *(a2 + 80);
  v41[4] = *(a2 + 64);
  v41[5] = v15;
  v16 = *(a2 + 16);
  v41[0] = *a2;
  v41[1] = v16;
  v17 = *(v13 + 16);
  if (v17)
  {
    v33 = v4;
    v18 = *(a2 + 112);
    v39[6] = *(a2 + 96);
    v39[7] = v18;
    v40 = *(a2 + 128);
    v19 = *(a2 + 48);
    v39[2] = *(a2 + 32);
    v39[3] = v19;
    v20 = *(a2 + 80);
    v39[4] = *(a2 + 64);
    v39[5] = v20;
    v21 = *(a2 + 16);
    v39[0] = *a2;
    v39[1] = v21;
    nullsub_1(v39);
    v22 = *a1;
    v23 = (v13 + 40);
    v34 = a1;
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      v26 = v36;
      v27 = *(v36 + 24);
      sub_1DACB71E4();
      sub_1DACB7CB4();
      v28 = *(v26 + 28);
      v29 = sub_1DACB7CC4();
      (*(*(v29 - 8) + 16))(&v11[v28], v43, v29);
      *v11 = v25;
      *(v11 + 1) = v24;
      *(v11 + 2) = v37;
      sub_1DAB5916C(v39, &v11[*(v26 + 32)]);
      sub_1DAA806E4(v41, &v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DAADC014(0, v22[2] + 1, 1, v22);
      }

      v31 = v22[2];
      v30 = v22[3];
      v32 = v34;
      if (v31 >= v30 >> 1)
      {
        v22 = sub_1DAADC014(v30 > 1, v31 + 1, 1, v22);
      }

      v22[2] = v31 + 1;
      result = sub_1DAB591C8(v11, v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31);
      v23 += 2;
      --v17;
    }

    while (v17);
    *v32 = v22;
  }

  return result;
}

char *sub_1DAB6FB30(_BYTE *a1, char *a2)
{
  v2 = a2;
  v3 = *a1;
  if (v3 > 1)
  {
    v7 = a2;
    if (v3 == 2)
    {
      sub_1DACB71E4();
      v4 = sub_1DAB7197C;
      v5 = sub_1DAB7043C;
    }

    else
    {
      sub_1DACB71E4();
      v4 = sub_1DAB70BB8;
      v5 = sub_1DAB70114;
    }

    goto LABEL_8;
  }

  if (*a1)
  {
    v7 = a2;
    sub_1DACB71E4();
    v4 = sub_1DAB72740;
    v5 = sub_1DAB70764;
LABEL_8:
    sub_1DAB6FF88(&v7, v4, v5);
    return v7;
  }

  sub_1DACB71E4();
  return v2;
}

uint64_t sub_1DAB6FC4C(_OWORD *a1, __int128 *a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a1[7];
  v46[6] = a1[6];
  v46[7] = v17;
  v46[8] = a1[8];
  v18 = a1[3];
  v46[2] = a1[2];
  v46[3] = v18;
  v19 = a1[5];
  v46[4] = a1[4];
  v46[5] = v19;
  v20 = a1[1];
  v46[0] = *a1;
  v46[1] = v20;
  v21 = a2[7];
  v43 = a2[6];
  v44 = v21;
  v45 = a2[8];
  v22 = a2[3];
  v39 = a2[2];
  v40 = v22;
  v23 = a2[5];
  v41 = a2[4];
  v42 = v23;
  v24 = a2[1];
  v37 = *a2;
  v38 = v24;
  sub_1DAA9B6F0(v46);
  v25 = [*sub_1DAA9B6E0(v46) publishDate];
  if (!v25)
  {
    goto LABEL_5;
  }

  v26 = v25;
  sub_1DACB7C74();

  v27 = *(v5 + 32);
  v27(v16, v14, v4);
  v36[6] = v43;
  v36[7] = v44;
  v36[8] = v45;
  v36[2] = v39;
  v36[3] = v40;
  v36[4] = v41;
  v36[5] = v42;
  v36[0] = v37;
  v36[1] = v38;
  sub_1DAA9B6F0(v36);
  v28 = [*sub_1DAA9B6E0(v36) publishDate];
  if (!v28)
  {
    (*(v5 + 8))(v16, v4);
LABEL_5:
    v31 = 0;
    return v31 & 1;
  }

  v29 = v35;
  v30 = v28;
  sub_1DACB7C74();

  v27(v11, v29, v4);
  v31 = sub_1DACB7C24();
  v32 = *(v5 + 8);
  v32(v11, v4);
  v32(v16, v4);
  return v31 & 1;
}

uint64_t sub_1DAB6FF88(char **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DAC06988(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_1DAB7000C(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1DAB7000C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DACBA104();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1DACB96C4();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1DAB70114(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 144 * a3;
    v6 = result - a3 + 1;
    while (2)
    {
      v62 = a3;
      v8 = v6;
      for (i = v5; ; i -= 9)
      {
        v42 = *i;
        v10 = i[1];
        v11 = i[2];
        v12 = i[4];
        v45 = i[3];
        v46 = v12;
        v43 = v10;
        v44 = v11;
        v13 = i[5];
        v14 = i[6];
        v15 = i[8];
        v49 = i[7];
        v50 = v15;
        v47 = v13;
        v48 = v14;
        v51 = *(i - 9);
        v16 = *(i - 8);
        v17 = *(i - 7);
        v18 = *(i - 5);
        v54 = *(i - 6);
        v55 = v18;
        v52 = v16;
        v53 = v17;
        v19 = *(i - 4);
        v20 = *(i - 3);
        v21 = *(i - 1);
        v58 = *(i - 2);
        v59 = v21;
        v56 = v19;
        v57 = v20;
        v60[2] = v44;
        v60[3] = v45;
        v60[0] = v42;
        v60[1] = v43;
        v60[7] = v49;
        v60[8] = v50;
        v60[5] = v47;
        v60[6] = v48;
        v60[4] = v46;
        v60[15] = v20;
        v60[16] = v58;
        v60[17] = v21;
        v60[11] = v53;
        v60[12] = v54;
        v60[13] = v55;
        v60[14] = v19;
        v60[9] = v51;
        v60[10] = v52;
        v61[6] = v48;
        v61[7] = v49;
        v61[8] = v50;
        v61[2] = v44;
        v61[3] = v45;
        v61[4] = v46;
        v61[5] = v47;
        v61[0] = v42;
        v61[1] = v43;
        if (sub_1DAA9B6F0(v61) == 1)
        {
          break;
        }

        v22 = sub_1DAA9B6E0(v61);
        v41[6] = v57;
        v41[7] = v58;
        v41[8] = v59;
        v41[2] = v53;
        v41[3] = v54;
        v41[4] = v55;
        v41[5] = v56;
        v41[0] = v51;
        v41[1] = v52;
        v23 = sub_1DAA9B6F0(v41);
        v24 = sub_1DAA9B6E0(v41);
        if (v23 == 1)
        {
          sub_1DAAD4CCC(&v51, &v32);
          v7 = &v32;
          goto LABEL_5;
        }

        v25 = v24;
        sub_1DAAD4CCC(&v51, &v32);
        sub_1DAAD4CCC(&v42, &v32);
        result = sub_1DAB76F80(v60, &qword_1EE120158);
        if (*(v25 + 88) >= *(v22 + 88))
        {
          goto LABEL_6;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v26 = i - 9;
        v37 = i[5];
        v38 = i[6];
        v39 = i[7];
        v40 = i[8];
        v33 = i[1];
        v34 = i[2];
        v35 = i[3];
        v36 = i[4];
        v32 = *i;
        v27 = *(i - 4);
        i[4] = *(i - 5);
        i[5] = v27;
        v28 = *(i - 2);
        i[6] = *(i - 3);
        i[7] = v28;
        i[8] = *(i - 1);
        v29 = *(i - 6);
        i[2] = *(i - 7);
        i[3] = v29;
        v30 = *(i - 8);
        *i = *(i - 9);
        i[1] = v30;
        v26[4] = v36;
        v26[5] = v37;
        v26[6] = v38;
        v26[7] = v39;
        v26[8] = v40;
        v26[1] = v33;
        v26[2] = v34;
        v26[3] = v35;
        *v26 = v32;
        if (!v8)
        {
          goto LABEL_6;
        }

        ++v8;
      }

      sub_1DAA9B6E0(v61);
      sub_1DAAD4CCC(&v51, v41);
      v7 = v41;
LABEL_5:
      sub_1DAAD4CCC(&v42, v7);
      result = sub_1DAB76F80(v60, &qword_1EE120158);
LABEL_6:
      a3 = v62 + 1;
      v5 += 144;
      --v6;
      if (v62 + 1 == a2)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_1DAB7043C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 144 * a3;
    v6 = result - a3 + 1;
    while (2)
    {
      v62 = a3;
      v8 = v6;
      for (i = v5; ; i -= 9)
      {
        v42 = *i;
        v10 = i[1];
        v11 = i[2];
        v12 = i[4];
        v45 = i[3];
        v46 = v12;
        v43 = v10;
        v44 = v11;
        v13 = i[5];
        v14 = i[6];
        v15 = i[8];
        v49 = i[7];
        v50 = v15;
        v47 = v13;
        v48 = v14;
        v51 = *(i - 9);
        v16 = *(i - 8);
        v17 = *(i - 7);
        v18 = *(i - 5);
        v54 = *(i - 6);
        v55 = v18;
        v52 = v16;
        v53 = v17;
        v19 = *(i - 4);
        v20 = *(i - 3);
        v21 = *(i - 1);
        v58 = *(i - 2);
        v59 = v21;
        v56 = v19;
        v57 = v20;
        v60[2] = v44;
        v60[3] = v45;
        v60[0] = v42;
        v60[1] = v43;
        v60[7] = v49;
        v60[8] = v50;
        v60[5] = v47;
        v60[6] = v48;
        v60[4] = v46;
        v60[15] = v20;
        v60[16] = v58;
        v60[17] = v21;
        v60[11] = v53;
        v60[12] = v54;
        v60[13] = v55;
        v60[14] = v19;
        v60[9] = v51;
        v60[10] = v52;
        v61[6] = v48;
        v61[7] = v49;
        v61[8] = v50;
        v61[2] = v44;
        v61[3] = v45;
        v61[4] = v46;
        v61[5] = v47;
        v61[0] = v42;
        v61[1] = v43;
        if (sub_1DAA9B6F0(v61) == 1)
        {
          break;
        }

        v22 = sub_1DAA9B6E0(v61);
        v41[6] = v57;
        v41[7] = v58;
        v41[8] = v59;
        v41[2] = v53;
        v41[3] = v54;
        v41[4] = v55;
        v41[5] = v56;
        v41[0] = v51;
        v41[1] = v52;
        v23 = sub_1DAA9B6F0(v41);
        v24 = sub_1DAA9B6E0(v41);
        if (v23 == 1)
        {
          sub_1DAAD4CCC(&v51, &v32);
          v7 = &v32;
          goto LABEL_5;
        }

        v25 = v24;
        sub_1DAAD4CCC(&v51, &v32);
        sub_1DAAD4CCC(&v42, &v32);
        result = sub_1DAB76F80(v60, &qword_1EE120158);
        if (*(v25 + 72) >= *(v22 + 72))
        {
          goto LABEL_6;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v26 = i - 9;
        v37 = i[5];
        v38 = i[6];
        v39 = i[7];
        v40 = i[8];
        v33 = i[1];
        v34 = i[2];
        v35 = i[3];
        v36 = i[4];
        v32 = *i;
        v27 = *(i - 4);
        i[4] = *(i - 5);
        i[5] = v27;
        v28 = *(i - 2);
        i[6] = *(i - 3);
        i[7] = v28;
        i[8] = *(i - 1);
        v29 = *(i - 6);
        i[2] = *(i - 7);
        i[3] = v29;
        v30 = *(i - 8);
        *i = *(i - 9);
        i[1] = v30;
        v26[4] = v36;
        v26[5] = v37;
        v26[6] = v38;
        v26[7] = v39;
        v26[8] = v40;
        v26[1] = v33;
        v26[2] = v34;
        v26[3] = v35;
        *v26 = v32;
        if (!v8)
        {
          goto LABEL_6;
        }

        ++v8;
      }

      sub_1DAA9B6E0(v61);
      sub_1DAAD4CCC(&v51, v41);
      v7 = v41;
LABEL_5:
      sub_1DAAD4CCC(&v42, v7);
      result = sub_1DAB76F80(v60, &qword_1EE120158);
LABEL_6:
      a3 = v62 + 1;
      v5 += 144;
      --v6;
      if (v62 + 1 == a2)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_1DAB70764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DACB7CC4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v68 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v77 = &v68 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v68 - v18;
  v69 = a2;
  if (a3 != a2)
  {
    v20 = result;
    v21 = *a4;
    v22 = (v17 + 32);
    v76 = (v17 + 8);
    v73 = v21;
    v23 = (v21 + 144 * a3);
    v24 = a1 - a3 + 1;
LABEL_7:
    v71 = v23;
    v72 = a3;
    v70 = v24;
    v25 = v24;
    v26 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    while (1)
    {
      v88 = *v23;
      v27 = v23[1];
      v28 = v23[2];
      v29 = v23[4];
      v91 = v23[3];
      v92 = v29;
      v89 = v27;
      v90 = v28;
      v30 = v23[5];
      v31 = v23[6];
      v32 = v23[8];
      v95 = v23[7];
      v96 = v32;
      v93 = v30;
      v94 = v31;
      v97 = *(v23 - 9);
      v33 = *(v23 - 8);
      v34 = *(v23 - 7);
      v35 = *(v23 - 5);
      v100 = *(v23 - 6);
      v101 = v35;
      v98 = v33;
      v99 = v34;
      v36 = *(v23 - 4);
      v37 = *(v23 - 3);
      v38 = *(v23 - 1);
      v104 = *(v23 - 2);
      v105 = v38;
      v102 = v36;
      v103 = v37;
      v106[2] = v90;
      v106[3] = v91;
      v106[0] = v88;
      v106[1] = v89;
      v106[7] = v95;
      v106[8] = v96;
      v106[5] = v93;
      v106[6] = v94;
      v106[4] = v92;
      sub_1DAA9B6F0(v106);
      v39 = *sub_1DAA9B6E0(v106);
      sub_1DAAD4CCC(&v97, v87);
      sub_1DAAD4CCC(&v88, v87);
      v40 = [v39 v26[140]];
      if (!v40)
      {
        goto LABEL_5;
      }

      v41 = v40;
      v107 = v25;
      v42 = v20;
      v43 = v77;
      sub_1DACB7C74();

      v44 = *v22;
      v45 = v43;
      v20 = v42;
      (*v22)(v19, v45, v42);
      v87[6] = v103;
      v87[7] = v104;
      v87[8] = v105;
      v87[2] = v99;
      v87[3] = v100;
      v87[4] = v101;
      v87[5] = v102;
      v87[0] = v97;
      v87[1] = v98;
      sub_1DAA9B6F0(v87);
      v46 = [*sub_1DAA9B6E0(v87) v26[140]];
      if (!v46)
      {
        (*v76)(v19, v42);
LABEL_5:
        sub_1DAAD4D28(&v97);
        result = sub_1DAAD4D28(&v88);
LABEL_6:
        a3 = v72 + 1;
        v23 = v71 + 9;
        v24 = v70 - 1;
        if (v72 + 1 == v69)
        {
          return result;
        }

        goto LABEL_7;
      }

      v47 = v46;
      v48 = v22;
      v49 = v19;
      v50 = v75;
      sub_1DACB7C74();

      v51 = v74;
      v52 = v50;
      v19 = v49;
      v22 = v48;
      v44(v74, v52, v42);
      LOBYTE(v47) = sub_1DACB7C24();
      v53 = *v76;
      v54 = v51;
      v20 = v42;
      (*v76)(v54, v42);
      v53(v19, v42);
      sub_1DAAD4D28(&v97);
      result = sub_1DAAD4D28(&v88);
      if ((v47 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (!v73)
      {
        break;
      }

      v55 = v23 - 9;
      v56 = v23[7];
      v84 = v23[6];
      v85 = v56;
      v86 = v23[8];
      v57 = v23[3];
      v80 = v23[2];
      v81 = v57;
      v58 = v23[5];
      v82 = v23[4];
      v83 = v58;
      v59 = v23[1];
      v78 = *v23;
      v79 = v59;
      v60 = *(v23 - 4);
      v23[4] = *(v23 - 5);
      v23[5] = v60;
      v61 = *(v23 - 2);
      v23[6] = *(v23 - 3);
      v23[7] = v61;
      v23[8] = *(v23 - 1);
      v62 = *(v23 - 6);
      v23[2] = *(v23 - 7);
      v23[3] = v62;
      v63 = *(v23 - 8);
      *v23 = *(v23 - 9);
      v23[1] = v63;
      v64 = v83;
      v55[4] = v82;
      v55[5] = v64;
      v65 = v85;
      v55[6] = v84;
      v55[7] = v65;
      v55[8] = v86;
      v66 = v81;
      v55[2] = v80;
      v55[3] = v66;
      v67 = v79;
      *v55 = v78;
      v55[1] = v67;
      v26 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      if (!v107)
      {
        goto LABEL_6;
      }

      v25 = v107 + 1;
      v23 -= 9;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB70BB8(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v147 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v151 = *v147;
    if (!*v147)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = a3;
    if (result)
    {
LABEL_113:
      v133 = v6;
      v134 = v9;
      v135 = (v9 + 16);
      v9 = *(v9 + 16);
      if (v9 >= 2)
      {
        while (1)
        {
          v136 = *v5;
          if (!*v5)
          {
            goto LABEL_148;
          }

          v137 = (v134 + 16 * v9);
          v138 = *v137;
          v5 = &v135[2 * v9];
          v6 = *(v5 + 8);
          sub_1DAB73714((v136 + 144 * *v137), (v136 + 144 * *v5), (v136 + 144 * v6), v151);
          if (v133)
          {
          }

          if (v6 < v138)
          {
            goto LABEL_136;
          }

          if (v9 - 2 >= *v135)
          {
            goto LABEL_137;
          }

          *v137 = v138;
          v137[1] = v6;
          v139 = *v135 - v9;
          if (*v135 < v9)
          {
            goto LABEL_138;
          }

          v9 = *v135 - 1;
          result = memmove(v5, (v5 + 16), 16 * v139);
          *v135 = v9;
          v5 = a3;
          if (v9 <= 1)
          {
          }
        }
      }
    }

LABEL_144:
    result = sub_1DAC0694C(v9);
    v9 = result;
    goto LABEL_113;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if ((v8 + 1) < v7)
    {
      v5 = *a3;
      v12 = (*a3 + 144 * v11);
      v199 = *v12;
      v13 = v12[1];
      v14 = v12[2];
      v15 = v12[3];
      v203 = v12[4];
      v202 = v15;
      v201 = v14;
      v200 = v13;
      v16 = v12[5];
      v17 = v12[6];
      v18 = v12[7];
      v207 = v12[8];
      v206 = v18;
      v205 = v17;
      v204 = v16;
      v19 = (v5 + 144 * v10);
      v208 = *v19;
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v212 = v19[4];
      v211 = v22;
      v210 = v21;
      v209 = v20;
      v23 = v19[5];
      v24 = v19[6];
      v25 = v19[7];
      v216 = v19[8];
      v215 = v25;
      v214 = v24;
      v213 = v23;
      v229 = v202;
      v228 = v201;
      v226 = v199;
      v227 = v200;
      v234 = v207;
      v233 = v206;
      v232 = v205;
      v230 = v203;
      v231 = v204;
      v241 = v24;
      v242 = v25;
      v243 = v216;
      v237 = v210;
      v238 = v211;
      v239 = v212;
      v240 = v23;
      v235 = v208;
      v236 = v209;
      v223 = v205;
      v224 = v206;
      v225 = v207;
      v219 = v201;
      v220 = v202;
      v222 = v204;
      v221 = v203;
      v218 = v200;
      v217 = v199;
      v143 = v6;
      v145 = v10;
      if (sub_1DAA9B6F0(&v217) == 1)
      {
        sub_1DAA9B6E0(&v217);
        sub_1DAAD4CCC(&v208, &v172);
        sub_1DAAD4CCC(&v199, &v172);
        result = sub_1DAB76F80(&v226, &qword_1EE120158);
        v26 = 0;
      }

      else
      {
        v28 = sub_1DAA9B6E0(&v217);
        v178 = v214;
        v179 = v215;
        v180 = v216;
        v174 = v210;
        v175 = v211;
        v176 = v212;
        v177 = v213;
        v172 = v208;
        v173 = v209;
        v29 = sub_1DAA9B6F0(&v172);
        v30 = sub_1DAA9B6E0(&v172);
        if (v29 == 1)
        {
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158);
          v26 = 0;
        }

        else
        {
          v6 = v30;
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158);
          v26 = *(v6 + 88) < *(v28 + 88);
        }

        v10 = v145;
      }

      v31 = v10;
      v32 = v10 + 2;
      if (v32 >= v7)
      {
        v7 = v32;
        goto LABEL_25;
      }

      v33 = (v5 + 144 * v31 + 288);
      while (1)
      {
        v154 = *v33;
        v34 = v33[1];
        v35 = v33[2];
        v36 = v33[4];
        v157 = v33[3];
        v158 = v36;
        v155 = v34;
        v156 = v35;
        v37 = v33[5];
        v38 = v33[6];
        v39 = v33[8];
        v161 = v33[7];
        v162 = v39;
        v159 = v37;
        v160 = v38;
        v163 = *(v33 - 9);
        v40 = *(v33 - 8);
        v41 = *(v33 - 7);
        v42 = *(v33 - 5);
        v166 = *(v33 - 6);
        v167 = v42;
        v164 = v40;
        v165 = v41;
        v43 = *(v33 - 4);
        v44 = *(v33 - 3);
        v45 = *(v33 - 1);
        v170 = *(v33 - 2);
        v171 = v45;
        v168 = v43;
        v169 = v44;
        v174 = v156;
        v175 = v157;
        v172 = v154;
        v173 = v155;
        v179 = v161;
        v180 = v162;
        v177 = v159;
        v178 = v160;
        v176 = v158;
        v187 = v44;
        v188 = v170;
        v189 = v45;
        v183 = v165;
        v184 = v166;
        v185 = v167;
        v186 = v43;
        v181 = v163;
        v182 = v164;
        v195 = v159;
        v196 = v160;
        v197 = v161;
        v198 = v162;
        v192 = v156;
        v193 = v157;
        v194 = v158;
        v190 = v154;
        v191 = v155;
        if (sub_1DAA9B6F0(&v190) == 1)
        {
          break;
        }

        v5 = sub_1DAA9B6E0(&v190);
        v153[6] = v169;
        v153[7] = v170;
        v153[8] = v171;
        v153[2] = v165;
        v153[3] = v166;
        v153[4] = v167;
        v153[5] = v168;
        v153[0] = v163;
        v153[1] = v164;
        v46 = sub_1DAA9B6F0(v153);
        v47 = sub_1DAA9B6E0(v153);
        if (v46 == 1)
        {
          goto LABEL_20;
        }

        v6 = v47;
        sub_1DAAD4CCC(&v163, v152);
        sub_1DAAD4CCC(&v154, v152);
        result = sub_1DAB76F80(&v172, &qword_1EE120158);
        if (((v26 ^ (*(v6 + 88) >= *(v5 + 88))) & 1) == 0)
        {
          v7 = v32;
LABEL_24:
          v11 = v32 - 1;
LABEL_25:
          v48 = a3;
          v10 = v145;
          if (v26)
          {
            v27 = a3;
LABEL_27:
            if (v7 < v10)
            {
              goto LABEL_141;
            }

            if (v10 > v11)
            {
              v6 = v143;
              goto LABEL_39;
            }

            v140 = v9;
            v49 = 144 * v7 - 144;
            v50 = 144 * v10;
            v51 = v7;
            v52 = v10;
            v53 = v7;
            v54 = v52;
            v55 = v52;
            v6 = v143;
            do
            {
              if (v55 != --v53)
              {
                v56 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v5 = v56 + v49;
                v177 = *(v56 + v50 + 80);
                v178 = *(v56 + v50 + 96);
                v179 = *(v56 + v50 + 112);
                v180 = *(v56 + v50 + 128);
                v173 = *(v56 + v50 + 16);
                v174 = *(v56 + v50 + 32);
                v175 = *(v56 + v50 + 48);
                v176 = *(v56 + v50 + 64);
                v172 = *(v56 + v50);
                result = memmove((v56 + v50), (v56 + v49), 0x90uLL);
                *(v5 + 80) = v177;
                *(v5 + 96) = v178;
                *(v5 + 112) = v179;
                *(v5 + 128) = v180;
                *(v5 + 16) = v173;
                *(v5 + 32) = v174;
                *(v5 + 48) = v175;
                *(v5 + 64) = v176;
                *v5 = v172;
              }

              ++v55;
              v49 -= 144;
              v50 += 144;
            }

            while (v55 < v53);
            v48 = a3;
            v9 = v140;
            v7 = v51;
            v10 = v54;
          }

          else
          {
            v6 = v143;
          }

          v27 = v48;
          goto LABEL_39;
        }

LABEL_16:
        v33 += 9;
        if (v7 == ++v32)
        {
          goto LABEL_24;
        }
      }

      sub_1DAA9B6E0(&v190);
LABEL_20:
      sub_1DAAD4CCC(&v163, v153);
      sub_1DAAD4CCC(&v154, v153);
      result = sub_1DAB76F80(&v172, &qword_1EE120158);
      if (v26)
      {
        v7 = v32;
        v11 = v32 - 1;
        v27 = a3;
        v10 = v145;
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    v7 = (v8 + 1);
    v27 = a3;
LABEL_39:
    v57 = v27[1];
    if (v7 < v57)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_140;
      }

      if (v7 - v10 < a4)
      {
        break;
      }
    }

LABEL_60:
    if (v7 < v10)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAADB818(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v86 = *(v9 + 16);
    v85 = *(v9 + 24);
    v5 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      result = sub_1DAADB818((v85 > 1), v86 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v5;
    v87 = v9 + 16 * v86;
    *(v87 + 32) = v10;
    *(v87 + 40) = v7;
    v150 = *v147;
    v151 = v7;
    if (!*v147)
    {
      goto LABEL_149;
    }

    if (v86)
    {
      while (1)
      {
        v88 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v89 = *(v9 + 32);
          v90 = *(v9 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_80:
          if (v92)
          {
            goto LABEL_127;
          }

          v105 = (v9 + 16 * v5);
          v107 = *v105;
          v106 = v105[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_130;
          }

          v111 = (v9 + 32 + 16 * v88);
          v113 = *v111;
          v112 = v111[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_134;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v5 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v115 = (v9 + 16 * v5);
        v117 = *v115;
        v116 = v115[1];
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_94:
        if (v110)
        {
          goto LABEL_129;
        }

        v118 = v9 + 16 * v88;
        v120 = *(v118 + 32);
        v119 = *(v118 + 40);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_132;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_101:
        v126 = v88 - 1;
        if (v88 - 1 >= v5)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v127 = *v27;
        if (!*v27)
        {
          goto LABEL_146;
        }

        v128 = v27;
        v129 = v9;
        v130 = v9 + 32;
        v9 = *(v9 + 32 + 16 * v126);
        v131 = *(v130 + 16 * v88 + 8);
        sub_1DAB73714((v127 + 144 * v9), (v127 + 144 * *(v130 + 16 * v88)), (v127 + 144 * v131), v150);
        if (v6)
        {
        }

        if (v131 < v9)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1DAC0694C(v129);
        }

        if (v126 >= *(v129 + 2))
        {
          goto LABEL_124;
        }

        v132 = &v129[16 * v126];
        *(v132 + 4) = v9;
        *(v132 + 5) = v131;
        v244 = v129;
        result = sub_1DAC068C0(v88);
        v9 = v244;
        v5 = *(v244 + 2);
        v27 = v128;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = v9 + 32 + 16 * v5;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_125;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_126;
      }

      v100 = (v9 + 16 * v5);
      v102 = *v100;
      v101 = v100[1];
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_128;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_131;
      }

      if (v104 >= v96)
      {
        v122 = (v9 + 32 + 16 * v88);
        v124 = *v122;
        v123 = v122[1];
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_135;
        }

        if (v91 < v125)
        {
          v88 = v5 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v7 = v27[1];
    v8 = v151;
    if (v151 >= v7)
    {
      goto LABEL_111;
    }
  }

  v58 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_142;
  }

  if (v58 >= v57)
  {
    v58 = v27[1];
  }

  if (v58 < v10)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v7 == v58)
  {
    goto LABEL_60;
  }

  v141 = v9;
  v144 = v6;
  v146 = v10;
  v59 = *v27;
  v60 = (v59 + 144 * v7);
  v61 = v10 - v7 + 1;
  v149 = v58;
LABEL_51:
  v151 = v7;
  v63 = v61;
  for (i = v60; ; i -= 9)
  {
    v208 = *i;
    v65 = i[1];
    v66 = i[2];
    v67 = i[3];
    v212 = i[4];
    v211 = v67;
    v210 = v66;
    v209 = v65;
    v68 = i[5];
    v69 = i[6];
    v70 = i[7];
    v216 = i[8];
    v215 = v70;
    v214 = v69;
    v213 = v68;
    v217 = *(i - 9);
    v71 = *(i - 8);
    v72 = *(i - 7);
    v73 = *(i - 6);
    v221 = *(i - 5);
    v220 = v73;
    v219 = v72;
    v218 = v71;
    v74 = *(i - 4);
    v75 = *(i - 3);
    v76 = *(i - 2);
    v225 = *(i - 1);
    v224 = v76;
    v223 = v75;
    v222 = v74;
    v229 = v211;
    v228 = v210;
    v226 = v208;
    v227 = v209;
    v234 = v216;
    v233 = v215;
    v232 = v214;
    v230 = v212;
    v231 = v213;
    v241 = v75;
    v242 = v76;
    v243 = v225;
    v237 = v219;
    v238 = v220;
    v239 = v221;
    v240 = v74;
    v235 = v217;
    v236 = v218;
    v178 = v214;
    v179 = v215;
    v180 = v216;
    v174 = v210;
    v175 = v211;
    v176 = v212;
    v177 = v213;
    v172 = v208;
    v173 = v209;
    if (sub_1DAA9B6F0(&v172) == 1)
    {
      sub_1DAA9B6E0(&v172);
      sub_1DAAD4CCC(&v217, &v199);
      v62 = &v199;
LABEL_49:
      sub_1DAAD4CCC(&v208, v62);
      sub_1DAB76F80(&v226, &qword_1EE120158);
LABEL_50:
      v7 = (v151 + 1);
      v60 += 9;
      --v61;
      if (v151 + 1 == v149)
      {
        v7 = v149;
        v6 = v144;
        v10 = v146;
        v27 = a3;
        v9 = v141;
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    v5 = sub_1DAA9B6E0(&v172);
    v205 = v223;
    v206 = v224;
    v207 = v225;
    v201 = v219;
    v202 = v220;
    v204 = v222;
    v203 = v221;
    v200 = v218;
    v199 = v217;
    v77 = sub_1DAA9B6F0(&v199);
    v78 = sub_1DAA9B6E0(&v199);
    if (v77 == 1)
    {
      sub_1DAAD4CCC(&v217, &v190);
      v62 = &v190;
      goto LABEL_49;
    }

    v79 = v78;
    sub_1DAAD4CCC(&v217, &v190);
    sub_1DAAD4CCC(&v208, &v190);
    result = sub_1DAB76F80(&v226, &qword_1EE120158);
    if (*(v79 + 88) >= *(v5 + 88))
    {
      goto LABEL_50;
    }

    if (!v59)
    {
      break;
    }

    v80 = i - 9;
    v195 = i[5];
    v196 = i[6];
    v197 = i[7];
    v198 = i[8];
    v191 = i[1];
    v192 = i[2];
    v193 = i[3];
    v194 = i[4];
    v190 = *i;
    v81 = *(i - 4);
    i[4] = *(i - 5);
    i[5] = v81;
    v82 = *(i - 2);
    i[6] = *(i - 3);
    i[7] = v82;
    i[8] = *(i - 1);
    v83 = *(i - 6);
    i[2] = *(i - 7);
    i[3] = v83;
    v84 = *(i - 8);
    *i = *(i - 9);
    i[1] = v84;
    v80[4] = v194;
    v80[5] = v195;
    v80[6] = v196;
    v80[7] = v197;
    v80[8] = v198;
    v80[1] = v191;
    v80[2] = v192;
    v80[3] = v193;
    *v80 = v190;
    if (!v63)
    {
      goto LABEL_50;
    }

    ++v63;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_1DAB7197C(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v147 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v151 = *v147;
    if (!*v147)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = a3;
    if (result)
    {
LABEL_113:
      v133 = v6;
      v134 = v9;
      v135 = (v9 + 16);
      v9 = *(v9 + 16);
      if (v9 >= 2)
      {
        while (1)
        {
          v136 = *v5;
          if (!*v5)
          {
            goto LABEL_148;
          }

          v137 = (v134 + 16 * v9);
          v138 = *v137;
          v5 = &v135[2 * v9];
          v6 = *(v5 + 8);
          sub_1DAB73D70((v136 + 144 * *v137), (v136 + 144 * *v5), (v136 + 144 * v6), v151);
          if (v133)
          {
          }

          if (v6 < v138)
          {
            goto LABEL_136;
          }

          if (v9 - 2 >= *v135)
          {
            goto LABEL_137;
          }

          *v137 = v138;
          v137[1] = v6;
          v139 = *v135 - v9;
          if (*v135 < v9)
          {
            goto LABEL_138;
          }

          v9 = *v135 - 1;
          result = memmove(v5, (v5 + 16), 16 * v139);
          *v135 = v9;
          v5 = a3;
          if (v9 <= 1)
          {
          }
        }
      }
    }

LABEL_144:
    result = sub_1DAC0694C(v9);
    v9 = result;
    goto LABEL_113;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if ((v8 + 1) < v7)
    {
      v5 = *a3;
      v12 = (*a3 + 144 * v11);
      v199 = *v12;
      v13 = v12[1];
      v14 = v12[2];
      v15 = v12[3];
      v203 = v12[4];
      v202 = v15;
      v201 = v14;
      v200 = v13;
      v16 = v12[5];
      v17 = v12[6];
      v18 = v12[7];
      v207 = v12[8];
      v206 = v18;
      v205 = v17;
      v204 = v16;
      v19 = (v5 + 144 * v10);
      v208 = *v19;
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v212 = v19[4];
      v211 = v22;
      v210 = v21;
      v209 = v20;
      v23 = v19[5];
      v24 = v19[6];
      v25 = v19[7];
      v216 = v19[8];
      v215 = v25;
      v214 = v24;
      v213 = v23;
      v229 = v202;
      v228 = v201;
      v226 = v199;
      v227 = v200;
      v234 = v207;
      v233 = v206;
      v232 = v205;
      v230 = v203;
      v231 = v204;
      v241 = v24;
      v242 = v25;
      v243 = v216;
      v237 = v210;
      v238 = v211;
      v239 = v212;
      v240 = v23;
      v235 = v208;
      v236 = v209;
      v223 = v205;
      v224 = v206;
      v225 = v207;
      v219 = v201;
      v220 = v202;
      v222 = v204;
      v221 = v203;
      v218 = v200;
      v217 = v199;
      v143 = v6;
      v145 = v10;
      if (sub_1DAA9B6F0(&v217) == 1)
      {
        sub_1DAA9B6E0(&v217);
        sub_1DAAD4CCC(&v208, &v172);
        sub_1DAAD4CCC(&v199, &v172);
        result = sub_1DAB76F80(&v226, &qword_1EE120158);
        v26 = 0;
      }

      else
      {
        v28 = sub_1DAA9B6E0(&v217);
        v178 = v214;
        v179 = v215;
        v180 = v216;
        v174 = v210;
        v175 = v211;
        v176 = v212;
        v177 = v213;
        v172 = v208;
        v173 = v209;
        v29 = sub_1DAA9B6F0(&v172);
        v30 = sub_1DAA9B6E0(&v172);
        if (v29 == 1)
        {
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158);
          v26 = 0;
        }

        else
        {
          v6 = v30;
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158);
          v26 = *(v6 + 72) < *(v28 + 72);
        }

        v10 = v145;
      }

      v31 = v10;
      v32 = v10 + 2;
      if (v32 >= v7)
      {
        v7 = v32;
        goto LABEL_25;
      }

      v33 = (v5 + 144 * v31 + 288);
      while (1)
      {
        v154 = *v33;
        v34 = v33[1];
        v35 = v33[2];
        v36 = v33[4];
        v157 = v33[3];
        v158 = v36;
        v155 = v34;
        v156 = v35;
        v37 = v33[5];
        v38 = v33[6];
        v39 = v33[8];
        v161 = v33[7];
        v162 = v39;
        v159 = v37;
        v160 = v38;
        v163 = *(v33 - 9);
        v40 = *(v33 - 8);
        v41 = *(v33 - 7);
        v42 = *(v33 - 5);
        v166 = *(v33 - 6);
        v167 = v42;
        v164 = v40;
        v165 = v41;
        v43 = *(v33 - 4);
        v44 = *(v33 - 3);
        v45 = *(v33 - 1);
        v170 = *(v33 - 2);
        v171 = v45;
        v168 = v43;
        v169 = v44;
        v174 = v156;
        v175 = v157;
        v172 = v154;
        v173 = v155;
        v179 = v161;
        v180 = v162;
        v177 = v159;
        v178 = v160;
        v176 = v158;
        v187 = v44;
        v188 = v170;
        v189 = v45;
        v183 = v165;
        v184 = v166;
        v185 = v167;
        v186 = v43;
        v181 = v163;
        v182 = v164;
        v195 = v159;
        v196 = v160;
        v197 = v161;
        v198 = v162;
        v192 = v156;
        v193 = v157;
        v194 = v158;
        v190 = v154;
        v191 = v155;
        if (sub_1DAA9B6F0(&v190) == 1)
        {
          break;
        }

        v5 = sub_1DAA9B6E0(&v190);
        v153[6] = v169;
        v153[7] = v170;
        v153[8] = v171;
        v153[2] = v165;
        v153[3] = v166;
        v153[4] = v167;
        v153[5] = v168;
        v153[0] = v163;
        v153[1] = v164;
        v46 = sub_1DAA9B6F0(v153);
        v47 = sub_1DAA9B6E0(v153);
        if (v46 == 1)
        {
          goto LABEL_20;
        }

        v6 = v47;
        sub_1DAAD4CCC(&v163, v152);
        sub_1DAAD4CCC(&v154, v152);
        result = sub_1DAB76F80(&v172, &qword_1EE120158);
        if (((v26 ^ (*(v6 + 72) >= *(v5 + 72))) & 1) == 0)
        {
          v7 = v32;
LABEL_24:
          v11 = v32 - 1;
LABEL_25:
          v48 = a3;
          v10 = v145;
          if (v26)
          {
            v27 = a3;
LABEL_27:
            if (v7 < v10)
            {
              goto LABEL_141;
            }

            if (v10 > v11)
            {
              v6 = v143;
              goto LABEL_39;
            }

            v140 = v9;
            v49 = 144 * v7 - 144;
            v50 = 144 * v10;
            v51 = v7;
            v52 = v10;
            v53 = v7;
            v54 = v52;
            v55 = v52;
            v6 = v143;
            do
            {
              if (v55 != --v53)
              {
                v56 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v5 = v56 + v49;
                v177 = *(v56 + v50 + 80);
                v178 = *(v56 + v50 + 96);
                v179 = *(v56 + v50 + 112);
                v180 = *(v56 + v50 + 128);
                v173 = *(v56 + v50 + 16);
                v174 = *(v56 + v50 + 32);
                v175 = *(v56 + v50 + 48);
                v176 = *(v56 + v50 + 64);
                v172 = *(v56 + v50);
                result = memmove((v56 + v50), (v56 + v49), 0x90uLL);
                *(v5 + 80) = v177;
                *(v5 + 96) = v178;
                *(v5 + 112) = v179;
                *(v5 + 128) = v180;
                *(v5 + 16) = v173;
                *(v5 + 32) = v174;
                *(v5 + 48) = v175;
                *(v5 + 64) = v176;
                *v5 = v172;
              }

              ++v55;
              v49 -= 144;
              v50 += 144;
            }

            while (v55 < v53);
            v48 = a3;
            v9 = v140;
            v7 = v51;
            v10 = v54;
          }

          else
          {
            v6 = v143;
          }

          v27 = v48;
          goto LABEL_39;
        }

LABEL_16:
        v33 += 9;
        if (v7 == ++v32)
        {
          goto LABEL_24;
        }
      }

      sub_1DAA9B6E0(&v190);
LABEL_20:
      sub_1DAAD4CCC(&v163, v153);
      sub_1DAAD4CCC(&v154, v153);
      result = sub_1DAB76F80(&v172, &qword_1EE120158);
      if (v26)
      {
        v7 = v32;
        v11 = v32 - 1;
        v27 = a3;
        v10 = v145;
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    v7 = (v8 + 1);
    v27 = a3;
LABEL_39:
    v57 = v27[1];
    if (v7 < v57)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_140;
      }

      if (v7 - v10 < a4)
      {
        break;
      }
    }

LABEL_60:
    if (v7 < v10)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAADB818(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v86 = *(v9 + 16);
    v85 = *(v9 + 24);
    v5 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      result = sub_1DAADB818((v85 > 1), v86 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v5;
    v87 = v9 + 16 * v86;
    *(v87 + 32) = v10;
    *(v87 + 40) = v7;
    v150 = *v147;
    v151 = v7;
    if (!*v147)
    {
      goto LABEL_149;
    }

    if (v86)
    {
      while (1)
      {
        v88 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v89 = *(v9 + 32);
          v90 = *(v9 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_80:
          if (v92)
          {
            goto LABEL_127;
          }

          v105 = (v9 + 16 * v5);
          v107 = *v105;
          v106 = v105[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_130;
          }

          v111 = (v9 + 32 + 16 * v88);
          v113 = *v111;
          v112 = v111[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_134;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v5 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v115 = (v9 + 16 * v5);
        v117 = *v115;
        v116 = v115[1];
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_94:
        if (v110)
        {
          goto LABEL_129;
        }

        v118 = v9 + 16 * v88;
        v120 = *(v118 + 32);
        v119 = *(v118 + 40);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_132;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_101:
        v126 = v88 - 1;
        if (v88 - 1 >= v5)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v127 = *v27;
        if (!*v27)
        {
          goto LABEL_146;
        }

        v128 = v27;
        v129 = v9;
        v130 = v9 + 32;
        v9 = *(v9 + 32 + 16 * v126);
        v131 = *(v130 + 16 * v88 + 8);
        sub_1DAB73D70((v127 + 144 * v9), (v127 + 144 * *(v130 + 16 * v88)), (v127 + 144 * v131), v150);
        if (v6)
        {
        }

        if (v131 < v9)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1DAC0694C(v129);
        }

        if (v126 >= *(v129 + 2))
        {
          goto LABEL_124;
        }

        v132 = &v129[16 * v126];
        *(v132 + 4) = v9;
        *(v132 + 5) = v131;
        v244 = v129;
        result = sub_1DAC068C0(v88);
        v9 = v244;
        v5 = *(v244 + 2);
        v27 = v128;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = v9 + 32 + 16 * v5;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_125;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_126;
      }

      v100 = (v9 + 16 * v5);
      v102 = *v100;
      v101 = v100[1];
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_128;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_131;
      }

      if (v104 >= v96)
      {
        v122 = (v9 + 32 + 16 * v88);
        v124 = *v122;
        v123 = v122[1];
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_135;
        }

        if (v91 < v125)
        {
          v88 = v5 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v7 = v27[1];
    v8 = v151;
    if (v151 >= v7)
    {
      goto LABEL_111;
    }
  }

  v58 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_142;
  }

  if (v58 >= v57)
  {
    v58 = v27[1];
  }

  if (v58 < v10)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v7 == v58)
  {
    goto LABEL_60;
  }

  v141 = v9;
  v144 = v6;
  v146 = v10;
  v59 = *v27;
  v60 = (v59 + 144 * v7);
  v61 = v10 - v7 + 1;
  v149 = v58;
LABEL_51:
  v151 = v7;
  v63 = v61;
  for (i = v60; ; i -= 9)
  {
    v208 = *i;
    v65 = i[1];
    v66 = i[2];
    v67 = i[3];
    v212 = i[4];
    v211 = v67;
    v210 = v66;
    v209 = v65;
    v68 = i[5];
    v69 = i[6];
    v70 = i[7];
    v216 = i[8];
    v215 = v70;
    v214 = v69;
    v213 = v68;
    v217 = *(i - 9);
    v71 = *(i - 8);
    v72 = *(i - 7);
    v73 = *(i - 6);
    v221 = *(i - 5);
    v220 = v73;
    v219 = v72;
    v218 = v71;
    v74 = *(i - 4);
    v75 = *(i - 3);
    v76 = *(i - 2);
    v225 = *(i - 1);
    v224 = v76;
    v223 = v75;
    v222 = v74;
    v229 = v211;
    v228 = v210;
    v226 = v208;
    v227 = v209;
    v234 = v216;
    v233 = v215;
    v232 = v214;
    v230 = v212;
    v231 = v213;
    v241 = v75;
    v242 = v76;
    v243 = v225;
    v237 = v219;
    v238 = v220;
    v239 = v221;
    v240 = v74;
    v235 = v217;
    v236 = v218;
    v178 = v214;
    v179 = v215;
    v180 = v216;
    v174 = v210;
    v175 = v211;
    v176 = v212;
    v177 = v213;
    v172 = v208;
    v173 = v209;
    if (sub_1DAA9B6F0(&v172) == 1)
    {
      sub_1DAA9B6E0(&v172);
      sub_1DAAD4CCC(&v217, &v199);
      v62 = &v199;
LABEL_49:
      sub_1DAAD4CCC(&v208, v62);
      sub_1DAB76F80(&v226, &qword_1EE120158);
LABEL_50:
      v7 = (v151 + 1);
      v60 += 9;
      --v61;
      if (v151 + 1 == v149)
      {
        v7 = v149;
        v6 = v144;
        v10 = v146;
        v27 = a3;
        v9 = v141;
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    v5 = sub_1DAA9B6E0(&v172);
    v205 = v223;
    v206 = v224;
    v207 = v225;
    v201 = v219;
    v202 = v220;
    v204 = v222;
    v203 = v221;
    v200 = v218;
    v199 = v217;
    v77 = sub_1DAA9B6F0(&v199);
    v78 = sub_1DAA9B6E0(&v199);
    if (v77 == 1)
    {
      sub_1DAAD4CCC(&v217, &v190);
      v62 = &v190;
      goto LABEL_49;
    }

    v79 = v78;
    sub_1DAAD4CCC(&v217, &v190);
    sub_1DAAD4CCC(&v208, &v190);
    result = sub_1DAB76F80(&v226, &qword_1EE120158);
    if (*(v79 + 72) >= *(v5 + 72))
    {
      goto LABEL_50;
    }

    if (!v59)
    {
      break;
    }

    v80 = i - 9;
    v195 = i[5];
    v196 = i[6];
    v197 = i[7];
    v198 = i[8];
    v191 = i[1];
    v192 = i[2];
    v193 = i[3];
    v194 = i[4];
    v190 = *i;
    v81 = *(i - 4);
    i[4] = *(i - 5);
    i[5] = v81;
    v82 = *(i - 2);
    i[6] = *(i - 3);
    i[7] = v82;
    i[8] = *(i - 1);
    v83 = *(i - 6);
    i[2] = *(i - 7);
    i[3] = v83;
    v84 = *(i - 8);
    *i = *(i - 9);
    i[1] = v84;
    v80[4] = v194;
    v80[5] = v195;
    v80[6] = v196;
    v80[7] = v197;
    v80[8] = v198;
    v80[1] = v191;
    v80[2] = v192;
    v80[3] = v193;
    *v80 = v190;
    if (!v63)
    {
      goto LABEL_50;
    }

    ++v63;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_1DAB72740(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v161 = a1;
  v8 = sub_1DACB7CC4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v174 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v173 = &v159 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v175 = &v159 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v180 = &v159 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v163 = &v159 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v162 = &v159 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v165 = &v159 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v164 = &v159 - v26;
  v170 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_101:
    a4 = *v161;
    if (!*v161)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = v5;
    if ((result & 1) == 0)
    {
LABEL_135:
      result = sub_1DAC0694C(v29);
      v29 = result;
    }

    v263 = v29;
    v154 = v29;
    v155 = *(v29 + 16);
    if (v155 >= 2)
    {
      v29 = 144;
      while (*v170)
      {
        v156 = *&v154[16 * v155];
        v157 = *&v154[16 * v155 + 24];
        sub_1DAB743CC((*v170 + 144 * v156), (*v170 + 144 * *&v154[16 * v155 + 16]), (*v170 + 144 * v157), a4);
        if (v28)
        {
        }

        if (v157 < v156)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_1DAC0694C(v154);
        }

        if (v155 - 2 >= *(v154 + 2))
        {
          goto LABEL_129;
        }

        v158 = &v154[16 * v155];
        *v158 = v156;
        *(v158 + 1) = v157;
        v263 = v154;
        result = sub_1DAC068C0(v155 - 1);
        v154 = v263;
        v155 = *(v263 + 16);
        if (v155 <= 1)
        {
        }
      }

      goto LABEL_139;
    }
  }

  v159 = a4;
  v28 = 0;
  v178 = (v25 + 32);
  v176 = (v25 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  v30 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
  while (1)
  {
    v31 = v28++;
    v166 = v31;
    if (v28 < v27)
    {
      a4 = *v170;
      v32 = (*v170 + 144 * v28);
      v245 = *v32;
      v33 = v32[1];
      v34 = v32[2];
      v35 = v32[3];
      v249 = v32[4];
      v248 = v35;
      v247 = v34;
      v246 = v33;
      v36 = v32[5];
      v37 = v32[6];
      v38 = v32[7];
      v253 = v32[8];
      v252 = v38;
      v251 = v37;
      v250 = v36;
      v241 = v32[5];
      v242 = v32[6];
      v243 = v32[7];
      v244 = v32[8];
      v237 = v32[1];
      v238 = v32[2];
      v239 = v32[3];
      v240 = v32[4];
      v236 = *v32;
      v39 = (a4 + 144 * v31);
      v254 = *v39;
      v40 = v39[1];
      v41 = v39[2];
      v42 = v39[4];
      v257 = v39[3];
      v258 = v42;
      v255 = v40;
      v256 = v41;
      v43 = v39[5];
      v44 = v39[6];
      v45 = v39[8];
      v261 = v39[7];
      v262 = v45;
      v259 = v43;
      v260 = v44;
      v232 = v39[5];
      v233 = v39[6];
      v234 = v39[7];
      v235 = v39[8];
      v228 = v39[1];
      v229 = v39[2];
      v230 = v39[3];
      v231 = v39[4];
      v227 = *v39;
      sub_1DAAD4CCC(&v245, &v218);
      sub_1DAAD4CCC(&v254, &v218);
      LODWORD(v179) = sub_1DAB6FC4C(&v236, &v227);
      if (v5)
      {
        v215 = v233;
        v216 = v234;
        v217 = v235;
        v211 = v229;
        v212 = v230;
        v213 = v231;
        v214 = v232;
        v209 = v227;
        v210 = v228;
        sub_1DAAD4D28(&v209);
        v224 = v242;
        v225 = v243;
        v226 = v244;
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v223 = v241;
        v218 = v236;
        v219 = v237;
        sub_1DAAD4D28(&v218);
      }

      v215 = v233;
      v216 = v234;
      v217 = v235;
      v211 = v229;
      v212 = v230;
      v213 = v231;
      v214 = v232;
      v209 = v227;
      v210 = v228;
      sub_1DAAD4D28(&v209);
      v224 = v242;
      v225 = v243;
      v226 = v244;
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v223 = v241;
      v218 = v236;
      v219 = v237;
      result = sub_1DAAD4D28(&v218);
      v28 = v31 + 2;
      if (v31 + 2 < v27)
      {
        v160 = v29;
        v46 = (a4 + 144 * v31 + 288);
        v171 = 0;
        v172 = v27;
        do
        {
          v182 = *v46;
          v47 = v46[1];
          v48 = v46[2];
          v49 = v46[4];
          v185 = v46[3];
          v186 = v49;
          v183 = v47;
          v184 = v48;
          v50 = v46[5];
          v51 = v46[6];
          v52 = v46[8];
          v189 = v46[7];
          v190 = v52;
          v187 = v50;
          v188 = v51;
          v191 = *(v46 - 9);
          v53 = *(v46 - 8);
          v54 = *(v46 - 7);
          v55 = *(v46 - 5);
          v194 = *(v46 - 6);
          v195 = v55;
          v192 = v53;
          v193 = v54;
          v56 = *(v46 - 4);
          v57 = *(v46 - 3);
          v58 = *(v46 - 1);
          v198 = *(v46 - 2);
          v199 = v58;
          v196 = v56;
          v197 = v57;
          v202 = v184;
          v203 = v185;
          v200 = v182;
          v201 = v183;
          v207 = v189;
          v208 = v190;
          v205 = v187;
          v206 = v188;
          v204 = v186;
          sub_1DAA9B6F0(&v200);
          a4 = *sub_1DAA9B6E0(&v200);
          sub_1DAAD4CCC(&v191, v181);
          sub_1DAAD4CCC(&v182, v181);
          v59 = [a4 v30[140]];
          if (v59)
          {
            v60 = v165;
            a4 = v59;
            sub_1DACB7C74();

            v61 = *v178;
            v62 = v164;
            (*v178)(v164, v60, v8);
            v181[6] = v197;
            v181[7] = v198;
            v181[8] = v199;
            v181[2] = v193;
            v181[3] = v194;
            v181[4] = v195;
            v181[5] = v196;
            v181[0] = v191;
            v181[1] = v192;
            sub_1DAA9B6F0(v181);
            v63 = [*sub_1DAA9B6E0(v181) v30[140]];
            if (v63)
            {
              v64 = v163;
              v65 = v63;
              sub_1DACB7C74();

              a4 = v28;
              v66 = v162;
              v61(v162, v64, v8);
              LODWORD(v177) = sub_1DACB7C24();
              v67 = *v176;
              v68 = v66;
              v28 = a4;
              (*v176)(v68, v8);
              v67(v62, v8);
              sub_1DAAD4D28(&v191);
              result = sub_1DAAD4D28(&v182);
              v5 = v171;
              v27 = v172;
              if ((v179 ^ v177))
              {
                goto LABEL_17;
              }
            }

            else
            {
              (*v176)(v62, v8);
              sub_1DAAD4D28(&v191);
              result = sub_1DAAD4D28(&v182);
              v5 = v171;
              v27 = v172;
              if (v179)
              {
LABEL_15:
                v29 = v160;
                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_1DAAD4D28(&v191);
            result = sub_1DAAD4D28(&v182);
            if (v179)
            {
              goto LABEL_15;
            }
          }

          ++v28;
          v46 += 9;
        }

        while (v27 != v28);
        v28 = v27;
LABEL_17:
        v29 = v160;
      }

      if (v179)
      {
LABEL_19:
        v69 = v166;
        if (v28 < v166)
        {
          goto LABEL_132;
        }

        if (v166 < v28)
        {
          v160 = v29;
          v171 = v5;
          v70 = 144 * v28 - 144;
          v71 = 144 * v166;
          v169 = v28;
          do
          {
            if (v69 != --v28)
            {
              v72 = *v170;
              if (!*v170)
              {
                goto LABEL_138;
              }

              a4 = v72 + v70;
              v205 = *(v72 + v71 + 80);
              v206 = *(v72 + v71 + 96);
              v207 = *(v72 + v71 + 112);
              v208 = *(v72 + v71 + 128);
              v201 = *(v72 + v71 + 16);
              v202 = *(v72 + v71 + 32);
              v203 = *(v72 + v71 + 48);
              v204 = *(v72 + v71 + 64);
              v200 = *(v72 + v71);
              result = memmove((v72 + v71), (v72 + v70), 0x90uLL);
              *(a4 + 80) = v205;
              *(a4 + 96) = v206;
              *(a4 + 112) = v207;
              *(a4 + 128) = v208;
              *(a4 + 16) = v201;
              *(a4 + 32) = v202;
              *(a4 + 48) = v203;
              *(a4 + 64) = v204;
              *a4 = v200;
            }

            ++v69;
            v70 -= 144;
            v71 += 144;
          }

          while (v69 < v28);
          v5 = v171;
          v29 = v160;
          v28 = v169;
        }
      }
    }

    v73 = v170[1];
    if (v28 < v73)
    {
      if (__OFSUB__(v28, v166))
      {
        goto LABEL_131;
      }

      if (v28 - v166 < v159)
      {
        if (__OFADD__(v166, v159))
        {
          goto LABEL_133;
        }

        if (v166 + v159 < v73)
        {
          v73 = v166 + v159;
        }

        if (v73 < v166)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (v28 != v73)
        {
          break;
        }
      }
    }

LABEL_49:
    if (v28 < v166)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v171 = v5;
    if ((result & 1) == 0)
    {
      result = sub_1DAADB818(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v108 = *(v29 + 16);
    v107 = *(v29 + 24);
    v109 = v108 + 1;
    if (v108 >= v107 >> 1)
    {
      result = sub_1DAADB818((v107 > 1), v108 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v109;
    v110 = v29 + 16 * v108;
    *(v110 + 32) = v166;
    *(v110 + 40) = v28;
    v179 = *v161;
    if (!v179)
    {
      goto LABEL_140;
    }

    if (v108)
    {
      while (1)
      {
        a4 = v109 - 1;
        if (v109 >= 4)
        {
          break;
        }

        if (v109 == 3)
        {
          v111 = *(v29 + 32);
          v112 = *(v29 + 40);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_69:
          if (v114)
          {
            goto LABEL_119;
          }

          v127 = (v29 + 16 * v109);
          v129 = *v127;
          v128 = v127[1];
          v130 = __OFSUB__(v128, v129);
          v131 = v128 - v129;
          v132 = v130;
          if (v130)
          {
            goto LABEL_122;
          }

          v133 = (v29 + 32 + 16 * a4);
          v135 = *v133;
          v134 = v133[1];
          v121 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v121)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v131, v136))
          {
            goto LABEL_126;
          }

          if (v131 + v136 >= v113)
          {
            if (v113 < v136)
            {
              a4 = v109 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v137 = (v29 + 16 * v109);
        v139 = *v137;
        v138 = v137[1];
        v121 = __OFSUB__(v138, v139);
        v131 = v138 - v139;
        v132 = v121;
LABEL_83:
        if (v132)
        {
          goto LABEL_121;
        }

        v140 = v29 + 16 * a4;
        v142 = *(v140 + 32);
        v141 = *(v140 + 40);
        v121 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v121)
        {
          goto LABEL_124;
        }

        if (v143 < v131)
        {
          goto LABEL_3;
        }

LABEL_90:
        v148 = a4 - 1;
        if (a4 - 1 >= v109)
        {
          __break(1u);
LABEL_115:
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
          goto LABEL_134;
        }

        if (!*v170)
        {
          goto LABEL_137;
        }

        v149 = v28;
        v28 = v29;
        v150 = *(v29 + 32 + 16 * v148);
        v151 = *(v29 + 32 + 16 * a4);
        v29 = *(v29 + 32 + 16 * a4 + 8);
        v152 = v171;
        sub_1DAB743CC((*v170 + 144 * v150), (*v170 + 144 * v151), (*v170 + 144 * v29), v179);
        v171 = v152;
        if (v152)
        {
        }

        if (v29 < v150)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1DAC0694C(v28);
        }

        if (v148 >= *(v28 + 16))
        {
          goto LABEL_116;
        }

        v153 = v28 + 16 * v148;
        *(v153 + 32) = v150;
        *(v153 + 40) = v29;
        v263 = v28;
        result = sub_1DAC068C0(a4);
        v29 = v263;
        v109 = *(v263 + 16);
        v28 = v149;
        if (v109 <= 1)
        {
          goto LABEL_3;
        }
      }

      v115 = v29 + 32 + 16 * v109;
      v116 = *(v115 - 64);
      v117 = *(v115 - 56);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_117;
      }

      v120 = *(v115 - 48);
      v119 = *(v115 - 40);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_118;
      }

      v122 = (v29 + 16 * v109);
      v124 = *v122;
      v123 = v122[1];
      v121 = __OFSUB__(v123, v124);
      v125 = v123 - v124;
      if (v121)
      {
        goto LABEL_120;
      }

      v121 = __OFADD__(v113, v125);
      v126 = v113 + v125;
      if (v121)
      {
        goto LABEL_123;
      }

      if (v126 >= v118)
      {
        v144 = (v29 + 32 + 16 * a4);
        v146 = *v144;
        v145 = v144[1];
        v121 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v121)
        {
          goto LABEL_127;
        }

        if (v113 < v147)
        {
          a4 = v109 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v5 = v171;
    v27 = v170[1];
    if (v28 >= v27)
    {
      goto LABEL_101;
    }
  }

  v167 = v73;
  v160 = v29;
  v74 = *v170;
  v171 = v5;
  v172 = v74;
  v75 = (v74 + 144 * v28);
  v76 = v166 - v28 + 1;
  v77 = v178;
LABEL_40:
  v168 = v76;
  v169 = v28;
  v78 = v76;
  v79 = v75;
  v177 = v75;
  while (1)
  {
    v236 = *v79;
    v80 = v79[1];
    v81 = v79[2];
    v82 = v79[3];
    v240 = v79[4];
    v239 = v82;
    v238 = v81;
    v237 = v80;
    v83 = v79[5];
    v84 = v79[6];
    v85 = v79[7];
    v244 = v79[8];
    v243 = v85;
    v242 = v84;
    v241 = v83;
    v245 = *(v79 - 9);
    v86 = *(v79 - 8);
    v87 = *(v79 - 7);
    v88 = *(v79 - 6);
    v249 = *(v79 - 5);
    v248 = v88;
    v247 = v87;
    v246 = v86;
    v89 = *(v79 - 4);
    v90 = *(v79 - 3);
    v91 = *(v79 - 2);
    v253 = *(v79 - 1);
    v252 = v91;
    v251 = v90;
    v250 = v89;
    v256 = v238;
    v257 = v239;
    v254 = v236;
    v255 = v237;
    v261 = v243;
    v262 = v244;
    v258 = v240;
    v259 = v241;
    v260 = v242;
    sub_1DAA9B6F0(&v254);
    a4 = *sub_1DAA9B6E0(&v254);
    sub_1DAAD4CCC(&v245, &v227);
    sub_1DAAD4CCC(&v236, &v227);
    v92 = [a4 v30[140]];
    if (!v92)
    {
      goto LABEL_38;
    }

    a4 = v92;
    v179 = v78;
    v93 = v175;
    sub_1DACB7C74();

    v94 = *v77;
    (*v77)(v180, v93, v8);
    v233 = v251;
    v234 = v252;
    v235 = v253;
    v229 = v247;
    v230 = v248;
    v232 = v250;
    v231 = v249;
    v228 = v246;
    v227 = v245;
    sub_1DAA9B6F0(&v227);
    v95 = [*sub_1DAA9B6E0(&v227) v30[140]];
    if (!v95)
    {
      (*v176)(v180, v8);
LABEL_38:
      sub_1DAAD4D28(&v245);
      sub_1DAAD4D28(&v236);
      goto LABEL_39;
    }

    v96 = v95;
    v97 = v174;
    sub_1DACB7C74();

    v98 = v173;
    v99 = v180;
    v100 = v178;
    v94(v173, v97, v8);
    a4 = sub_1DACB7C24();
    v101 = *v176;
    (*v176)(v98, v8);
    v101(v99, v8);
    sub_1DAAD4D28(&v245);
    result = sub_1DAAD4D28(&v236);
    if ((a4 & 1) == 0)
    {
      v30 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      v77 = v100;
      v75 = v177;
LABEL_39:
      v28 = v169 + 1;
      v75 += 9;
      v76 = v168 - 1;
      if (v169 + 1 != v167)
      {
        goto LABEL_40;
      }

      v28 = v167;
      v5 = v171;
      v29 = v160;
      goto LABEL_49;
    }

    if (!v172)
    {
      break;
    }

    v102 = v79 - 9;
    v223 = v79[5];
    v224 = v79[6];
    v225 = v79[7];
    v226 = v79[8];
    v219 = v79[1];
    v220 = v79[2];
    v221 = v79[3];
    v222 = v79[4];
    v218 = *v79;
    v103 = *(v79 - 4);
    v79[4] = *(v79 - 5);
    v79[5] = v103;
    v104 = *(v79 - 2);
    v79[6] = *(v79 - 3);
    v79[7] = v104;
    v79[8] = *(v79 - 1);
    v105 = *(v79 - 6);
    v79[2] = *(v79 - 7);
    v79[3] = v105;
    v106 = *(v79 - 8);
    *v79 = *(v79 - 9);
    v79[1] = v106;
    v102[4] = v222;
    v102[5] = v223;
    v102[6] = v224;
    v102[7] = v225;
    v102[8] = v226;
    v102[1] = v219;
    v102[2] = v220;
    v102[3] = v221;
    *v102 = v218;
    v30 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    v77 = v100;
    v75 = v177;
    if (!v179)
    {
      goto LABEL_39;
    }

    v78 = v179 + 1;
    v79 -= 9;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1DAB73714(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 144;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 144;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[144 * v11] <= a4)
    {
      memmove(a4, __dst, 144 * v11);
    }

    v12 = &v4[144 * v11];
    if (v10 >= 144 && v6 > v7)
    {
      v31 = &qword_1EE120158;
LABEL_31:
      v32 = v6 - 144;
      v5 -= 144;
      v33 = v12;
      do
      {
        v12 = v33;
        v67 = *(v33 - 144);
        v34 = *(v33 - 128);
        v35 = *(v33 - 112);
        v36 = *(v33 - 80);
        v70 = *(v33 - 96);
        v71 = v36;
        v68 = v34;
        v69 = v35;
        v37 = *(v33 - 64);
        v38 = *(v33 - 48);
        v39 = *(v33 - 16);
        v74 = *(v33 - 32);
        v75 = v39;
        v72 = v37;
        v73 = v38;
        v41 = *v32;
        v40 = *(v6 - 8);
        v42 = *(v6 - 6);
        v78 = *(v6 - 7);
        v79 = v42;
        v44 = *(v6 - 8);
        v43 = *(v6 - 7);
        v45 = *v32;
        v76 = v41;
        v77 = v44;
        v46 = *(v6 - 2);
        v84 = *(v6 - 1);
        v47 = *(v6 - 4);
        v48 = *(v6 - 2);
        v82 = *(v6 - 3);
        v83 = v48;
        v49 = *(v6 - 6);
        v50 = *(v6 - 4);
        v80 = *(v6 - 5);
        v81 = v50;
        v91 = v73;
        v92 = v74;
        v93 = v75;
        v87 = v69;
        v88 = v70;
        v89 = v71;
        v90 = v72;
        v85 = v67;
        v86 = v68;
        v100 = v82;
        v101 = v46;
        v102 = *(v6 - 1);
        v96 = v43;
        v97 = v49;
        v98 = v80;
        v99 = v47;
        v94 = v45;
        v95 = v40;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          sub_1DAA9B6E0(&v103);
          sub_1DAAD4CCC(&v76, &v58);
          sub_1DAAD4CCC(&v67, &v58);
          sub_1DAB76F80(&v85, v31);
        }

        else
        {
          v51 = v31;
          v112 = sub_1DAA9B6E0(&v103);
          v64 = v82;
          v65 = v83;
          v66 = v84;
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v63 = v81;
          v58 = v76;
          v59 = v77;
          v52 = sub_1DAA9B6F0(&v58);
          v53 = sub_1DAA9B6E0(&v58);
          if (v52 == 1)
          {
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51);
          }

          else
          {
            v54 = v53;
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51);
            if (*(v54 + 88) < *(v112 + 88))
            {
              if (v5 + 144 < v6 || v5 >= v6 || v5 + 144 != v6)
              {
                memmove(v5, v6 - 144, 0x90uLL);
              }

              if (v12 <= v4 || (v6 -= 144, v32 <= v7))
              {
                v6 = v32;
                goto LABEL_52;
              }

              goto LABEL_31;
            }
          }
        }

        v33 = v12 - 144;
        if ((v5 + 144) < v12 || v5 >= v12 || v5 + 144 != v12)
        {
          memmove(v5, (v12 - 144), 0x90uLL);
        }

        v5 -= 144;
      }

      while (v33 > v4);
      v12 -= 144;
    }
  }

  else
  {
    if (a4 != __src || &__src[144 * v9] <= a4)
    {
      memmove(a4, __src, 144 * v9);
    }

    v12 = &v4[144 * v9];
    if (v8 >= 144 && v6 < v5)
    {
      v13 = &qword_1EE120158;
      while (1)
      {
        v67 = *v6;
        v14 = *(v6 + 1);
        v15 = *(v6 + 2);
        v16 = *(v6 + 4);
        v70 = *(v6 + 3);
        v71 = v16;
        v68 = v14;
        v69 = v15;
        v17 = *(v6 + 5);
        v18 = *(v6 + 6);
        v19 = *(v6 + 8);
        v74 = *(v6 + 7);
        v75 = v19;
        v72 = v17;
        v73 = v18;
        v76 = *v4;
        v20 = *(v4 + 1);
        v21 = *(v4 + 2);
        v22 = *(v4 + 4);
        v79 = *(v4 + 3);
        v80 = v22;
        v77 = v20;
        v78 = v21;
        v23 = *(v4 + 5);
        v24 = *(v4 + 6);
        v25 = *(v4 + 8);
        v83 = *(v4 + 7);
        v84 = v25;
        v81 = v23;
        v82 = v24;
        v87 = v69;
        v88 = v70;
        v85 = v67;
        v86 = v68;
        v92 = v74;
        v93 = v75;
        v90 = v72;
        v91 = v73;
        v89 = v71;
        v100 = v24;
        v101 = v83;
        v102 = v25;
        v96 = v78;
        v97 = v79;
        v98 = v80;
        v99 = v23;
        v94 = v76;
        v95 = v77;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          break;
        }

        v27 = v13;
        v112 = sub_1DAA9B6E0(&v103);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        v28 = sub_1DAA9B6F0(&v58);
        v29 = sub_1DAA9B6E0(&v58);
        if (v28 == 1)
        {
          sub_1DAAD4CCC(&v76, v57);
          sub_1DAAD4CCC(&v67, v57);
          v13 = v27;
          v26 = v27;
          goto LABEL_12;
        }

        v30 = v29;
        sub_1DAAD4CCC(&v76, v57);
        sub_1DAAD4CCC(&v67, v57);
        v13 = v27;
        sub_1DAB76F80(&v85, v27);
        if (*(v30 + 88) < *(v112 + 88))
        {
          if (v7 != v6)
          {
            memmove(v7, v6, 0x90uLL);
          }

          v6 += 144;
          goto LABEL_18;
        }

LABEL_13:
        if (v7 < v4 || v7 >= v4 + 144 || v7 != v4)
        {
          memmove(v7, v4, 0x90uLL);
        }

        v4 += 144;
LABEL_18:
        v7 += 144;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_50;
        }
      }

      sub_1DAA9B6E0(&v103);
      sub_1DAAD4CCC(&v76, &v58);
      sub_1DAAD4CCC(&v67, &v58);
      v26 = v13;
LABEL_12:
      sub_1DAB76F80(&v85, v26);
      goto LABEL_13;
    }

LABEL_50:
    v6 = v7;
  }

LABEL_52:
  v55 = (v12 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v55])
  {
    memmove(v6, v4, 144 * v55);
  }

  return 1;
}

uint64_t sub_1DAB73D70(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 144;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 144;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[144 * v11] <= a4)
    {
      memmove(a4, __dst, 144 * v11);
    }

    v12 = &v4[144 * v11];
    if (v10 >= 144 && v6 > v7)
    {
      v31 = &qword_1EE120158;
LABEL_31:
      v32 = v6 - 144;
      v5 -= 144;
      v33 = v12;
      do
      {
        v12 = v33;
        v67 = *(v33 - 144);
        v34 = *(v33 - 128);
        v35 = *(v33 - 112);
        v36 = *(v33 - 80);
        v70 = *(v33 - 96);
        v71 = v36;
        v68 = v34;
        v69 = v35;
        v37 = *(v33 - 64);
        v38 = *(v33 - 48);
        v39 = *(v33 - 16);
        v74 = *(v33 - 32);
        v75 = v39;
        v72 = v37;
        v73 = v38;
        v41 = *v32;
        v40 = *(v6 - 8);
        v42 = *(v6 - 6);
        v78 = *(v6 - 7);
        v79 = v42;
        v44 = *(v6 - 8);
        v43 = *(v6 - 7);
        v45 = *v32;
        v76 = v41;
        v77 = v44;
        v46 = *(v6 - 2);
        v84 = *(v6 - 1);
        v47 = *(v6 - 4);
        v48 = *(v6 - 2);
        v82 = *(v6 - 3);
        v83 = v48;
        v49 = *(v6 - 6);
        v50 = *(v6 - 4);
        v80 = *(v6 - 5);
        v81 = v50;
        v91 = v73;
        v92 = v74;
        v93 = v75;
        v87 = v69;
        v88 = v70;
        v89 = v71;
        v90 = v72;
        v85 = v67;
        v86 = v68;
        v100 = v82;
        v101 = v46;
        v102 = *(v6 - 1);
        v96 = v43;
        v97 = v49;
        v98 = v80;
        v99 = v47;
        v94 = v45;
        v95 = v40;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          sub_1DAA9B6E0(&v103);
          sub_1DAAD4CCC(&v76, &v58);
          sub_1DAAD4CCC(&v67, &v58);
          sub_1DAB76F80(&v85, v31);
        }

        else
        {
          v51 = v31;
          v112 = sub_1DAA9B6E0(&v103);
          v64 = v82;
          v65 = v83;
          v66 = v84;
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v63 = v81;
          v58 = v76;
          v59 = v77;
          v52 = sub_1DAA9B6F0(&v58);
          v53 = sub_1DAA9B6E0(&v58);
          if (v52 == 1)
          {
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51);
          }

          else
          {
            v54 = v53;
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51);
            if (*(v54 + 72) < *(v112 + 72))
            {
              if (v5 + 144 < v6 || v5 >= v6 || v5 + 144 != v6)
              {
                memmove(v5, v6 - 144, 0x90uLL);
              }

              if (v12 <= v4 || (v6 -= 144, v32 <= v7))
              {
                v6 = v32;
                goto LABEL_52;
              }

              goto LABEL_31;
            }
          }
        }

        v33 = v12 - 144;
        if ((v5 + 144) < v12 || v5 >= v12 || v5 + 144 != v12)
        {
          memmove(v5, (v12 - 144), 0x90uLL);
        }

        v5 -= 144;
      }

      while (v33 > v4);
      v12 -= 144;
    }
  }

  else
  {
    if (a4 != __src || &__src[144 * v9] <= a4)
    {
      memmove(a4, __src, 144 * v9);
    }

    v12 = &v4[144 * v9];
    if (v8 >= 144 && v6 < v5)
    {
      v13 = &qword_1EE120158;
      while (1)
      {
        v67 = *v6;
        v14 = *(v6 + 1);
        v15 = *(v6 + 2);
        v16 = *(v6 + 4);
        v70 = *(v6 + 3);
        v71 = v16;
        v68 = v14;
        v69 = v15;
        v17 = *(v6 + 5);
        v18 = *(v6 + 6);
        v19 = *(v6 + 8);
        v74 = *(v6 + 7);
        v75 = v19;
        v72 = v17;
        v73 = v18;
        v76 = *v4;
        v20 = *(v4 + 1);
        v21 = *(v4 + 2);
        v22 = *(v4 + 4);
        v79 = *(v4 + 3);
        v80 = v22;
        v77 = v20;
        v78 = v21;
        v23 = *(v4 + 5);
        v24 = *(v4 + 6);
        v25 = *(v4 + 8);
        v83 = *(v4 + 7);
        v84 = v25;
        v81 = v23;
        v82 = v24;
        v87 = v69;
        v88 = v70;
        v85 = v67;
        v86 = v68;
        v92 = v74;
        v93 = v75;
        v90 = v72;
        v91 = v73;
        v89 = v71;
        v100 = v24;
        v101 = v83;
        v102 = v25;
        v96 = v78;
        v97 = v79;
        v98 = v80;
        v99 = v23;
        v94 = v76;
        v95 = v77;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          break;
        }

        v27 = v13;
        v112 = sub_1DAA9B6E0(&v103);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        v28 = sub_1DAA9B6F0(&v58);
        v29 = sub_1DAA9B6E0(&v58);
        if (v28 == 1)
        {
          sub_1DAAD4CCC(&v76, v57);
          sub_1DAAD4CCC(&v67, v57);
          v13 = v27;
          v26 = v27;
          goto LABEL_12;
        }

        v30 = v29;
        sub_1DAAD4CCC(&v76, v57);
        sub_1DAAD4CCC(&v67, v57);
        v13 = v27;
        sub_1DAB76F80(&v85, v27);
        if (*(v30 + 72) < *(v112 + 72))
        {
          if (v7 != v6)
          {
            memmove(v7, v6, 0x90uLL);
          }

          v6 += 144;
          goto LABEL_18;
        }

LABEL_13:
        if (v7 < v4 || v7 >= v4 + 144 || v7 != v4)
        {
          memmove(v7, v4, 0x90uLL);
        }

        v4 += 144;
LABEL_18:
        v7 += 144;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_50;
        }
      }

      sub_1DAA9B6E0(&v103);
      sub_1DAAD4CCC(&v76, &v58);
      sub_1DAAD4CCC(&v67, &v58);
      v26 = v13;
LABEL_12:
      sub_1DAB76F80(&v85, v26);
      goto LABEL_13;
    }

LABEL_50:
    v6 = v7;
  }

LABEL_52:
  v55 = (v12 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v55])
  {
    memmove(v6, v4, 144 * v55);
  }

  return 1;
}

uint64_t sub_1DAB743CC(char *a1, char *a2, char *a3, char *a4)
{
  v104 = sub_1DACB7CC4();
  v8 = *(*(v104 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v104);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v97 = &v93 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v93 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v96 = (&v93 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v95 = &v93 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v100 = &v93 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v93 - v24;
  v25 = a2 - a1;
  v26 = (a2 - a1) / 144;
  v142 = a3;
  v27 = (a3 - a2) / 144;
  if (v26 >= v27)
  {
    v103 = a1;
    v100 = v22;
    if (a4 != a2 || &a2[144 * v27] <= a4)
    {
      v60 = v23;
      memmove(a4, a2, 144 * v27);
      v23 = v60;
    }

    v31 = &a4[144 * v27];
    if (a3 - a2 >= 144 && a2 > v103)
    {
      v61 = (v23 + 32);
      v99 = (v23 + 8);
      v62 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      v94 = a4;
      v96 = (v23 + 32);
LABEL_31:
      v63 = a2 - 144;
      v142 -= 144;
      v64 = v31;
      while (1)
      {
        v65 = v64;
        v115 = *(v64 - 9);
        v66 = *(v64 - 8);
        v67 = *(v64 - 7);
        v68 = *(v64 - 5);
        v118 = *(v64 - 6);
        v119 = v68;
        v116 = v66;
        v117 = v67;
        v69 = *(v64 - 4);
        v70 = *(v64 - 3);
        v71 = *(v64 - 1);
        v122 = *(v64 - 2);
        v123 = v71;
        v120 = v69;
        v121 = v70;
        v72 = *(v63 + 3);
        v126 = *(v63 + 2);
        v127 = v72;
        v73 = *(v63 + 1);
        v124 = *v63;
        v125 = v73;
        v74 = *(v63 + 8);
        v131 = *(v63 + 7);
        v132 = v74;
        v75 = *(v63 + 6);
        v129 = *(v63 + 5);
        v130 = v75;
        v128 = *(v63 + 4);
        v139 = v121;
        v140 = v122;
        v141 = v71;
        v135 = v117;
        v136 = v118;
        v137 = v119;
        v138 = v120;
        v133 = v115;
        v134 = v116;
        sub_1DAA9B6F0(&v133);
        v76 = *sub_1DAA9B6E0(&v133);
        sub_1DAAD4CCC(&v124, &v106);
        sub_1DAAD4CCC(&v115, &v106);
        v77 = [v76 v62[140]];
        if (v77)
        {
          v105 = v65;
          v78 = v101;
          v79 = v77;
          sub_1DACB7C74();

          v80 = v100;
          v81 = v78;
          v82 = v104;
          v102 = *v61;
          (v102)(v100, v81, v104);
          v112 = v130;
          v113 = v131;
          v114 = v132;
          v108 = v126;
          v109 = v127;
          v110 = v128;
          v111 = v129;
          v106 = v124;
          v107 = v125;
          sub_1DAA9B6F0(&v106);
          v83 = [*sub_1DAA9B6E0(&v106) v62[140]];
          if (v83)
          {
            v84 = a2;
            v85 = v142;
            v86 = v98;
            v87 = v83;
            sub_1DACB7C74();

            v88 = v97;
            (v102)(v97, v86, v82);
            LODWORD(v102) = sub_1DACB7C24();
            v89 = *v99;
            (*v99)(v88, v82);
            v89(v80, v82);
            sub_1DAAD4D28(&v124);
            sub_1DAAD4D28(&v115);
            if (v102)
            {
              v31 = v105;
              v62 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
              if ((v85 + 144) < v84 || v142 >= v84)
              {
                memmove(v142, v63, 0x90uLL);
                v90 = v103;
                a4 = v94;
                v61 = v96;
                if (v31 <= v94)
                {
LABEL_52:
                  a2 = v63;
                  break;
                }
              }

              else
              {
                v90 = v103;
                v61 = v96;
                if (v85 + 144 != v84)
                {
                  memmove(v142, v63, 0x90uLL);
                }

                a4 = v94;
                if (v31 <= v94)
                {
                  goto LABEL_52;
                }
              }

              a2 = v63;
              if (v63 > v90)
              {
                goto LABEL_31;
              }

              goto LABEL_52;
            }

            a2 = v84;
            a4 = v94;
            v65 = v105;
            v61 = v96;
            v62 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
          }

          else
          {
            (*v99)(v80, v82);
            sub_1DAAD4D28(&v124);
            sub_1DAAD4D28(&v115);
            v65 = v105;
          }
        }

        else
        {
          sub_1DAAD4D28(&v124);
          sub_1DAAD4D28(&v115);
        }

        v64 = v65 - 144;
        if (v142 + 144 < v65 || v142 >= v65 || v142 + 144 != v65)
        {
          memmove(v142, v65 - 144, 0x90uLL);
        }

        v142 -= 144;
        if (v64 <= a4)
        {
          v31 = v65 - 144;
          break;
        }
      }
    }
  }

  else
  {
    v28 = a1;
    if (a4 != a1 || &a1[144 * v26] <= a4)
    {
      v29 = a1;
      v30 = v23;
      memmove(a4, v29, 144 * v26);
      v23 = v30;
    }

    v31 = &a4[144 * v26];
    v32 = v103;
    if (v25 >= 144 && a2 < v142)
    {
      v33 = (v23 + 32);
      v99 = (v23 + 8);
      v34 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      v101 = (v23 + 32);
      v105 = v31;
      while (1)
      {
        v115 = *a2;
        v35 = *(a2 + 1);
        v36 = *(a2 + 2);
        v37 = *(a2 + 4);
        v118 = *(a2 + 3);
        v119 = v37;
        v116 = v35;
        v117 = v36;
        v38 = *(a2 + 5);
        v39 = *(a2 + 6);
        v40 = *(a2 + 8);
        v122 = *(a2 + 7);
        v123 = v40;
        v120 = v38;
        v121 = v39;
        v124 = *a4;
        v41 = *(a4 + 1);
        v42 = *(a4 + 2);
        v43 = *(a4 + 4);
        v127 = *(a4 + 3);
        v128 = v43;
        v125 = v41;
        v126 = v42;
        v44 = *(a4 + 5);
        v45 = *(a4 + 6);
        v46 = *(a4 + 8);
        v131 = *(a4 + 7);
        v132 = v46;
        v129 = v44;
        v130 = v45;
        v135 = v117;
        v136 = v118;
        v133 = v115;
        v134 = v116;
        v140 = v122;
        v141 = v123;
        v138 = v120;
        v139 = v121;
        v137 = v119;
        sub_1DAA9B6F0(&v133);
        v47 = *sub_1DAA9B6E0(&v133);
        sub_1DAAD4CCC(&v124, &v106);
        sub_1DAAD4CCC(&v115, &v106);
        v48 = [v47 v34[140]];
        if (!v48)
        {
          sub_1DAAD4D28(&v124);
          sub_1DAAD4D28(&v115);
          goto LABEL_17;
        }

        v102 = a2;
        v103 = v28;
        v49 = v100;
        v50 = v48;
        sub_1DACB7C74();

        v51 = *v33;
        v52 = v49;
        v34 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
        v53 = v104;
        (*v33)(v32, v52, v104);
        v112 = v130;
        v113 = v131;
        v114 = v132;
        v108 = v126;
        v109 = v127;
        v110 = v128;
        v111 = v129;
        v106 = v124;
        v107 = v125;
        sub_1DAA9B6F0(&v106);
        v54 = [*sub_1DAA9B6E0(&v106) publishDate];
        if (!v54)
        {
          break;
        }

        v55 = v96;
        v56 = v54;
        sub_1DACB7C74();

        v57 = v95;
        v51(v95, v55, v53);
        LOBYTE(v56) = sub_1DACB7C24();
        v58 = *v99;
        (*v99)(v57, v53);
        v58(v32, v53);
        sub_1DAAD4D28(&v124);
        sub_1DAAD4D28(&v115);
        if ((v56 & 1) == 0)
        {
          a2 = v102;
          v28 = v103;
          v31 = v105;
          v34 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
LABEL_17:
          if (v28 < a4 || v28 >= a4 + 144 || v28 != a4)
          {
            memmove(v28, a4, 0x90uLL);
          }

          a4 += 144;
          v33 = v101;
          goto LABEL_22;
        }

        v59 = v102;
        v28 = v103;
        v31 = v105;
        if (v103 != v102)
        {
          memmove(v103, v102, 0x90uLL);
        }

        a2 = v59 + 144;
        v33 = v101;
        v34 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
LABEL_22:
        v28 += 144;
        if (a4 >= v31 || a2 >= v142)
        {
          goto LABEL_24;
        }
      }

      (*v99)(v32, v53);
      sub_1DAAD4D28(&v124);
      sub_1DAAD4D28(&v115);
      a2 = v102;
      v28 = v103;
      goto LABEL_17;
    }

LABEL_24:
    a2 = v28;
  }

  v91 = (v31 - a4) / 144;
  if (a2 != a4 || a2 >= &a4[144 * v91])
  {
    memmove(a2, a4, 144 * v91);
  }

  return 1;
}

uint64_t (*sub_1DAB74CEC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12777A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DAB77328;
  }

  __break(1u);
  return result;
}

void (*sub_1DAB74D6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12777A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DAB74DEC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB74DF4(uint64_t a1, void (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v52 = a3;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v6 = a1 + 64;
    v7 = -1 << *(a1 + 32);
    result = sub_1DACB9BC4();
    if (result < 0 || (v8 = result, result >= 1 << *(a1 + 32)))
    {
LABEL_19:
      __break(1u);
      return v51;
    }

    else
    {
      v35 = v4;
      v36 = *(a1 + 36);
      v9 = 1;
      while (1)
      {
        v10 = v8 >> 6;
        if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          break;
        }

        v11 = *(a1 + 56);
        v12 = *(a1 + 48) + 136 * v8;
        v48[0] = *v12;
        v13 = *(v12 + 64);
        v15 = *(v12 + 16);
        v14 = *(v12 + 32);
        v48[3] = *(v12 + 48);
        v48[4] = v13;
        v48[1] = v15;
        v48[2] = v14;
        v17 = *(v12 + 96);
        v16 = *(v12 + 112);
        v18 = *(v12 + 80);
        v49 = *(v12 + 128);
        v48[6] = v17;
        v48[7] = v16;
        v48[5] = v18;
        v19 = *(v11 + 8 * v8);
        v20 = *(v12 + 112);
        v45 = *(v12 + 96);
        v46 = v20;
        v21 = *(v12 + 128);
        v22 = *(v12 + 48);
        v41 = *(v12 + 32);
        v42 = v22;
        v23 = *(v12 + 80);
        v43 = *(v12 + 64);
        v44 = v23;
        v24 = *(v12 + 16);
        v39 = *v12;
        v40 = v24;
        *&v47 = v21;
        *(&v47 + 1) = v19;
        sub_1DAA806E4(v48, v38);
        sub_1DACB71E4();
        a2(&v39, v19);
        v50[6] = v45;
        v50[7] = v46;
        v50[8] = v47;
        v50[2] = v41;
        v50[3] = v42;
        v50[4] = v43;
        v50[5] = v44;
        v50[0] = v39;
        v50[1] = v40;
        sub_1DAB7663C(v50, sub_1DAB76EC8);
        sub_1DACB9D34();
        v25 = *(v51 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        result = sub_1DACB9D44();
        v26 = 1 << *(a1 + 32);
        if (v8 >= v26)
        {
          goto LABEL_23;
        }

        v6 = a1 + 64;
        v27 = *(a1 + 64 + 8 * v10);
        if ((v27 & (1 << v8)) == 0)
        {
          goto LABEL_24;
        }

        if (v36 != *(a1 + 36))
        {
          goto LABEL_25;
        }

        v28 = v27 & (-2 << (v8 & 0x3F));
        if (v28)
        {
          v8 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v29 = v35;
        }

        else
        {
          v30 = v10 << 6;
          v31 = v10 + 1;
          v29 = v35;
          v32 = (a1 + 72 + 8 * v10);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              v8 = __clz(__rbit64(v33)) + v30;
              goto LABEL_16;
            }
          }

          v8 = 1 << *(a1 + 32);
        }

LABEL_16:
        if (v9 == v29)
        {
          return v51;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v9;
          if (v8 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  return result;
}

BOOL sub_1DAB750B8(uint64_t a1, uint64_t a2)
{
  sub_1DAB76FDC(a1, v22);
  sub_1DAB76FDC(a2, v24);
  if (v23 <= 2u)
  {
    if (!v23)
    {
      sub_1DAB76FDC(v22, v12);
      v4 = v12[0];
      if (!v26)
      {
        v3 = *v24;
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    if (v23 == 1)
    {
      sub_1DAB76FDC(v22, v12);
      if (v26 == 1)
      {
        v3 = *v24;
        v4 = v12[0];
LABEL_12:
        v6 = sub_1DAA51414(v4, v3);
LABEL_24:
        v5 = v6;

        goto LABEL_25;
      }

      goto LABEL_26;
    }

    sub_1DAB76FDC(v22, v20);
    if (v26 != 2)
    {
      sub_1DAB76AE0(&v20[8], qword_1EE122680, &type metadata for HeadlineCondition);
      goto LABEL_29;
    }

    v18[0] = *&v20[8];
    v18[1] = *&v20[24];
    v18[2] = *&v20[40];
    v19 = v21;
    v16[0] = *&v24[8];
    v16[1] = *&v24[24];
    v16[2] = *&v24[40];
    v17 = v25;
    if (*v20 == *v24)
    {
      sub_1DAB7704C(v18, v12);
      sub_1DAB7704C(v16, v14);
      if (v13 == 255)
      {
        sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
        sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
        if (v15 == 255)
        {
          sub_1DAB76AE0(v12, qword_1EE122680, &type metadata for HeadlineCondition);
          goto LABEL_35;
        }
      }

      else
      {
        sub_1DAB7704C(v12, v11);
        if (v15 != 255)
        {
          v9[0] = v14[0];
          v9[1] = v14[1];
          v9[2] = v14[2];
          v10 = v15;
          v7 = sub_1DAC797E4(v11, v9);
          sub_1DAAD4D7C(v9);
          sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
          sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
          sub_1DAAD4D7C(v11);
          sub_1DAB76AE0(v12, qword_1EE122680, &type metadata for HeadlineCondition);
          if (!v7)
          {
            goto LABEL_38;
          }

LABEL_35:
          sub_1DAB77014(v22);
          return 1;
        }

        sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
        sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
        sub_1DAAD4D7C(v11);
      }

      sub_1DAB7663C(v12, sub_1DAB77210);
    }

    else
    {
      sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
      sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
    }

LABEL_38:
    sub_1DAB77014(v22);
    return 0;
  }

  if (v23 == 3)
  {
    sub_1DAB76FDC(v22, v12);
    if (v26 != 3)
    {
LABEL_29:
      sub_1DAB76F80(v22, qword_1EE1215A0);
      return 0;
    }

    if (v12[0] != *v24)
    {
      goto LABEL_38;
    }

    v5 = *&v12[1] == *&v24[8];
  }

  else
  {
    if (v23 != 4)
    {
      sub_1DAB76FDC(v22, v12);
      if (v26 == 5)
      {
        v6 = sub_1DAC37150(v12[0], *v24);
        goto LABEL_24;
      }

LABEL_26:

      goto LABEL_29;
    }

    sub_1DAB76FDC(v22, v12);
    if (v26 != 4)
    {
      sub_1DAAD4D7C(v12);
      goto LABEL_29;
    }

    *v20 = *v24;
    *&v20[16] = *&v24[16];
    *&v20[32] = *&v24[32];
    v20[48] = v24[48];
    v5 = sub_1DAC797E4(v12, v20);
    sub_1DAAD4D7C(v20);
    sub_1DAAD4D7C(v12);
  }

LABEL_25:
  sub_1DAB77014(v22);
  return v5;
}

uint64_t type metadata accessor for NewsFeedRequest()
{
  result = qword_1EE123200;
  if (!qword_1EE123200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAB75538(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t _s10StocksCore15NewsFeedServiceC10fetchFeeds3for13TeaFoundation7PromiseCySayAA05StockcD0VGGSayAA0cD7RequestVG_tF_0(uint64_t a1)
{
  v89 = *v1;
  v3 = type metadata accessor for NewsFeedRequest();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v84 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    *&v97 = MEMORY[0x1E69E7CC0];
    sub_1DAB769C4();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  v85 = v1;
  *&v97 = MEMORY[0x1E69E7CC0];
  sub_1DACB9D64();
  v90 = objc_opt_self();
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);
  v87 = v10;
  v88 = v11;
  v13 = v11;
  do
  {
    v14 = v12;
    sub_1DAB76A40(v13, v8, type metadata accessor for NewsFeedRequest);
    v15 = [objc_allocWithZone(MEMORY[0x1E69B52D0]) init];
    v16 = *v8;
    v17 = v8[1];
    v18 = sub_1DACB92F4();
    [v15 setFeedID_];

    [v15 setMaxCount_];
    v19 = v3[7];
    v20 = v8 + v3[6];
    v21 = sub_1DACB7C04();
    v22 = sub_1DACB7C04();
    v23 = [v90 feedRangeFromDate:v21 toDate:v22];

    [v15 setFeedRange_];
    sub_1DAB7663C(v8, type metadata accessor for NewsFeedRequest);
    sub_1DACB9D34();
    v24 = *(v97 + 16);
    sub_1DACB9D74();
    sub_1DACB9D84();
    sub_1DACB9D44();
    v12 = v14;
    v13 += v14;
    --v10;
  }

  while (v10);
  v86 = v97;
  v90 = v3[8];
  v25 = v88;
  v26 = v87 - 1;
  v27 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v28 = v25;
    v29 = v91;
    sub_1DAB76A40(v25, v91, type metadata accessor for NewsFeedRequest);
    v30 = *v29;
    v31 = v29[1];
    sub_1DAB5916C(v29 + v90, v96);
    sub_1DAB59344(v96, &v97);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v94[0] = v27;
    v33 = sub_1DAA4BF3C(v30, v31);
    v35 = v27[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v39 = v34;
    if (v27[3] < v38)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v42 = v33;
    sub_1DAB65DAC();
    v33 = v42;
    if (v39)
    {
LABEL_11:
      v27 = *&v94[0];
      v41 = *(*&v94[0] + 56) + 136 * v33;
      sub_1DAB5916C(v41, &v97);
      sub_1DAB5916C(v96, v41);
      sub_1DAB7669C(&v97);
      goto LABEL_15;
    }

LABEL_13:
    v27 = *&v94[0];
    *(*&v94[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v43 = (v27[6] + 16 * v33);
    *v43 = v30;
    v43[1] = v31;
    sub_1DAB5916C(v96, v27[7] + 136 * v33);
    v44 = v27[2];
    v37 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v37)
    {
      goto LABEL_51;
    }

    v27[2] = v45;
    sub_1DACB71E4();
LABEL_15:
    sub_1DAB7663C(v91, type metadata accessor for NewsFeedRequest);
    if (!v26)
    {
      v26 = v86;
      if ((v86 & 0x8000000000000000) == 0 && (v86 & 0x4000000000000000) == 0)
      {
        v46 = *(v86 + 16);
        if (v46)
        {
          goto LABEL_20;
        }

LABEL_53:
        v48 = MEMORY[0x1E69E7CC8];
        goto LABEL_54;
      }

LABEL_52:
      v46 = sub_1DACB9E14();
      if (!v46)
      {
        goto LABEL_53;
      }

LABEL_20:
      v47 = 0;
      v91 = v26 & 0xC000000000000001;
      v48 = MEMORY[0x1E69E7CC8];
LABEL_21:
      v90 = v48;
      v49 = v47;
      while (1)
      {
        if (v91)
        {
          v50 = MEMORY[0x1E12777A0](v49, v26);
        }

        else
        {
          if (v49 >= *(v26 + 16))
          {
            goto LABEL_50;
          }

          v50 = *(v26 + 8 * v49 + 32);
        }

        v51 = v50;
        v47 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_49;
        }

        v52 = [v50 feedID];
        v53 = sub_1DACB9324();
        v55 = v54;

        if (v27[2])
        {
          v56 = sub_1DAA4BF3C(v53, v55);
          v58 = v57;

          if (v58)
          {
            sub_1DAB5916C(v27[7] + 136 * v56, v93);
            sub_1DAB5916C(v93, v94);
            v103 = v94[6];
            v104 = v94[7];
            v105 = v95;
            v99 = v94[2];
            v100 = v94[3];
            v101 = v94[4];
            v102 = v94[5];
            v97 = v94[0];
            v98 = v94[1];
            sub_1DAA806E4(v94, &v92);
            v48 = v90;
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v92 = v48;
            v60 = sub_1DAB095DC(&v97);
            v62 = v48[2];
            v63 = (v61 & 1) == 0;
            v37 = __OFADD__(v62, v63);
            v64 = v62 + v63;
            if (v37)
            {
              __break(1u);
              goto LABEL_56;
            }

            v65 = v61;
            if (v48[3] < v64)
            {
              sub_1DAB60C70(v64, v59);
              v48 = v92;
              v60 = sub_1DAB095DC(&v97);
              if ((v65 & 1) != (v66 & 1))
              {
                goto LABEL_58;
              }

LABEL_37:
              if (v65)
              {
                goto LABEL_38;
              }

LABEL_40:
              v48[(v60 >> 6) + 8] |= 1 << v60;
              v69 = v48[6] + 136 * v60;
              *(v69 + 80) = v102;
              *(v69 + 96) = v103;
              *(v69 + 112) = v104;
              *(v69 + 128) = v105;
              *(v69 + 16) = v98;
              *(v69 + 32) = v99;
              *(v69 + 48) = v100;
              *(v69 + 64) = v101;
              *v69 = v97;
              *(v48[7] + 8 * v60) = MEMORY[0x1E69E7CC0];
              v70 = v48[2];
              v37 = __OFADD__(v70, 1);
              v71 = v70 + 1;
              if (!v37)
              {
                v48[2] = v71;
                goto LABEL_42;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            if (v59)
            {
              goto LABEL_37;
            }

            v68 = v60;
            sub_1DAB65BF4();
            v60 = v68;
            v48 = v92;
            if ((v65 & 1) == 0)
            {
              goto LABEL_40;
            }

LABEL_38:
            v67 = v60;
            sub_1DAB7669C(v93);
            v60 = v67;
LABEL_42:
            v72 = (v48[7] + 8 * v60);
            v73 = v51;
            MEMORY[0x1E12770F0]();
            if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v74 = *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1DACB9694();
            }

            sub_1DACB96F4();

            if (v47 == v46)
            {
LABEL_54:

              MEMORY[0x1EEE9AC00](v79);
              *(&v84 - 2) = v85;
              *(&v84 - 1) = v48;
              sub_1DAB766FC();
              sub_1DACB8BB4();

              v80 = sub_1DACB89D4();
              sub_1DAB76828();
              sub_1DACB8A74();

              v81 = sub_1DACB89D4();
              sub_1DAB768D4();
              sub_1DACB8A74();

              *(swift_allocObject() + 16) = v27;
              v82 = sub_1DACB89D4();
              sub_1DAB770D4(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
              v83 = sub_1DACB8A84();

              return v83;
            }

            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v49;
        if (v47 == v46)
        {
          v48 = v90;
          goto LABEL_54;
        }
      }
    }

    --v26;
    v25 = v28 + v14;
  }

  sub_1DAB610B0(v38, isUniquelyReferenced_nonNull_native);
  v33 = sub_1DAA4BF3C(v30, v31);
  if ((v39 & 1) == (v40 & 1))
  {
LABEL_10:
    if (v39)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_57:
  sub_1DACBA1F4();
  __break(1u);
LABEL_58:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DAB75F80()
{
  result = qword_1ECBE7F20;
  if (!qword_1ECBE7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F20);
  }

  return result;
}

unint64_t sub_1DAB75FD8()
{
  result = qword_1EE11EDC8;
  if (!qword_1EE11EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EDC8);
  }

  return result;
}

uint64_t sub_1DAB76088(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB76170(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB760CC()
{
  result = qword_1ECBE7F40;
  if (!qword_1ECBE7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F40);
  }

  return result;
}

void sub_1DAB76170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB760CC();
    v7 = a3(a1, &type metadata for StockNewsFeed, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB76224(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB770D4(255, a2, &type metadata for Headline, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore17HeadlineConditionO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 8)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t get_enum_tag_for_layout_string_10StocksCore17HeadlineConditionOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 9)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DAB762DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 58))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 57);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAB76318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAB76368(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t sub_1DAB763EC()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1DAB764AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1DAB764F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DAB765AC()
{
  if (!qword_1EE11D7B8)
  {
    sub_1DAB770D4(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11D7B8);
    }
  }
}

uint64_t sub_1DAB7663C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB766CC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1DAB6D2F8(v1);
}

void sub_1DAB766FC()
{
  if (!qword_1EE11F9F8)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1DAB767C0(255, &qword_1EE11FA10, &qword_1EE11F938, 0x1E69B6E30, MEMORY[0x1E69E62F8]);
    sub_1DAB767C0(255, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F9F8);
    }
  }
}

void sub_1DAB767C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DAA420F4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAB76828()
{
  if (!qword_1EE11F950)
  {
    sub_1DAA420F4(255, &qword_1EE11F968, 0x1E69B53A0);
    sub_1DAB767C0(255, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F950);
    }
  }
}

void sub_1DAB768D4()
{
  if (!qword_1EE11F960)
  {
    sub_1DAA420F4(255, &qword_1EE11F968, 0x1E69B53A0);
    sub_1DAB767C0(255, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, MEMORY[0x1E69E62F8]);
    sub_1DAA4436C(255, qword_1EE121398);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE11F960);
    }
  }
}

void sub_1DAB769C4()
{
  if (!qword_1EE11FE58)
  {
    sub_1DAB770D4(255, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE58);
    }
  }
}

uint64_t sub_1DAB76A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAB76AC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAB76AE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAB770D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1DAB76B50(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1DAB76BC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *a2 = v4;
  a2[1] = v3;
  sub_1DAA4D678(a1, (a2 + 2));
  v5 = v4;
  return sub_1DACB71E4();
}

uint64_t sub_1DAB76C10@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *a2 = *a1;
  a2[1] = v3;
  v5 = v4;
  return sub_1DACB71E4();
}

unint64_t sub_1DAB76C58()
{
  result = qword_1ECBE7F70;
  if (!qword_1ECBE7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F70);
  }

  return result;
}

void sub_1DAB76D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAB76D80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1DAB76E44()
{
  result = qword_1ECBE7F78;
  if (!qword_1ECBE7F78)
  {
    sub_1DAB767C0(255, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F78);
  }

  return result;
}

void sub_1DAB76EC8()
{
  if (!qword_1EE1201D0)
  {
    sub_1DAB767C0(255, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1201D0);
    }
  }
}

double sub_1DAB76F60(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x1FFFFFFFELL;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

uint64_t sub_1DAB76F80(uint64_t a1, unint64_t *a2)
{
  sub_1DAB771BC(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB7704C(uint64_t a1, uint64_t a2)
{
  sub_1DAB770D4(0, qword_1EE122680, &type metadata for HeadlineCondition, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAB770D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAB77124(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[7];
  v11[6] = a1[6];
  v11[7] = v5;
  v11[8] = a1[8];
  v6 = a1[3];
  v11[2] = a1[2];
  v11[3] = v6;
  v7 = a1[5];
  v11[4] = a1[4];
  v11[5] = v7;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  result = sub_1DAC78658(v11);
  if ((result & 1) == 0)
  {
    return 1;
  }

  v10 = *v3 + 1;
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    *v3 = v10;
    return v10 <= v4;
  }

  return result;
}

void sub_1DAB771BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1DAB77210()
{
  if (!qword_1ECBE7F88)
  {
    sub_1DAB770D4(255, qword_1EE122680, &type metadata for HeadlineCondition, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7F88);
    }
  }
}

unint64_t sub_1DAB772AC()
{
  result = qword_1ECBE7F90;
  if (!qword_1ECBE7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F90);
  }

  return result;
}

uint64_t sub_1DAB7733C(uint64_t a1)
{
  if (*(a1 + 128) <= 1u)
  {
    return sub_1DAB77354(a1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1DAB77354(uint64_t a1)
{
  v63 = a1;
  sub_1DAA49610();
  v3 = v2;
  v57 = *(v2 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB77A94();
  v56 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB77B14(0, &qword_1EE11FC30, sub_1DAA49610);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v52 - v15;
  v16 = MEMORY[0x1E6969530];
  sub_1DAB77B14(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v52 - v19;
  v21 = sub_1DACB7CC4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v52 - v27;
  v29 = v1 + *(type metadata accessor for Chart(0) + 20);
  v59 = v3;
  v30 = *(v3 + 36);
  v31 = *(v22 + 16);
  v55 = v29;
  v62 = v28;
  v31(v28, v29 + v30, v21);
  v32 = type metadata accessor for Quote();
  v33 = v63;
  sub_1DAA89B2C(v63 + *(v32 + 92), v20, &qword_1EE125280, v16);
  v34 = *(v22 + 48);
  if (v34(v20, 1, v21) == 1)
  {
    v31(v26, v33 + *(v32 + 88), v21);
    v35 = v21;
    if (v34(v20, 1, v21) != 1)
    {
      sub_1DAA89D34(v20, &qword_1EE125280, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v22 + 32))(v26, v20, v21);
    v35 = v21;
  }

  sub_1DAA5D520(&qword_1EE123A48);
  v36 = v62;
  v37 = sub_1DACB9224();
  v38 = *(v22 + 8);
  v38(v26, v35);
  v38(v36, v35);
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

  v39 = v58;
  sub_1DAB77B68(v55, v58);
  v40 = v57;
  v41 = v59;
  (*(v57 + 56))(v39, 0, 1, v59);
  v42 = v61;
  sub_1DABC4258(v61);
  v43 = *(v56 + 48);
  v44 = v60;
  sub_1DAA89B2C(v39, v60, &qword_1EE11FC30, sub_1DAA49610);
  sub_1DAA89B2C(v42, v44 + v43, &qword_1EE11FC30, sub_1DAA49610);
  v45 = *(v40 + 48);
  if (v45(v44, 1, v41) == 1)
  {
    sub_1DAA89D34(v42, &qword_1EE11FC30, sub_1DAA49610);
    sub_1DAA89D34(v39, &qword_1EE11FC30, sub_1DAA49610);
    if (v45(v44 + v43, 1, v41) == 1)
    {
      sub_1DAA89D34(v44, &qword_1EE11FC30, sub_1DAA49610);
LABEL_9:
      v46 = 1;
      return v46 & 1;
    }

LABEL_12:
    sub_1DAB77BCC(v44, sub_1DAB77A94);
    v46 = 0;
    return v46 & 1;
  }

  v47 = v54;
  sub_1DAA89B2C(v44, v54, &qword_1EE11FC30, sub_1DAA49610);
  if (v45(v44 + v43, 1, v41) == 1)
  {
    sub_1DAA89D34(v61, &qword_1EE11FC30, sub_1DAA49610);
    sub_1DAA89D34(v39, &qword_1EE11FC30, sub_1DAA49610);
    sub_1DAB77BCC(v47, sub_1DAA49610);
    goto LABEL_12;
  }

  v48 = v44 + v43;
  v49 = v53;
  sub_1DAB77C2C(v48, v53);
  sub_1DAA5D520(&qword_1EE123A40);
  if (sub_1DACB9264())
  {
    v50 = *(v41 + 36);
    v46 = sub_1DACB9264();
  }

  else
  {
    v46 = 0;
  }

  sub_1DAB77BCC(v49, sub_1DAA49610);
  sub_1DAA89D34(v61, &qword_1EE11FC30, sub_1DAA49610);
  sub_1DAA89D34(v39, &qword_1EE11FC30, sub_1DAA49610);
  sub_1DAB77BCC(v47, sub_1DAA49610);
  sub_1DAA89D34(v44, &qword_1EE11FC30, sub_1DAA49610);
  return v46 & 1;
}

void sub_1DAB77A94()
{
  if (!qword_1EE11FC28)
  {
    sub_1DAB77B14(255, &qword_1EE11FC30, sub_1DAA49610);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC28);
    }
  }
}

void sub_1DAB77B14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAB77B68(uint64_t a1, uint64_t a2)
{
  sub_1DAA49610();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB77BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB77C2C(uint64_t a1, uint64_t a2)
{
  sub_1DAA49610();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB77CB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v87 = a4;
  v88 = a3;
  v96 = a1;
  v9 = sub_1DACB8204();
  v90 = v9;
  v102 = *(v9 - 8);
  v10 = v102;
  v11 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v13;
  v14 = sub_1DACB7CC4();
  v101 = *(v14 - 8);
  v15 = v101;
  v16 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v18;
  v19 = a2[1];
  v97 = *a2;
  v95 = v19;
  v20 = a2[3];
  v98 = a2[2];
  v94 = v20;
  v99 = sub_1DACB82E4();
  sub_1DAA4D678(v5 + 16, &v111);
  v93 = *(v15 + 16);
  v93(v18, a3, v14);
  v80[1] = v15 + 16;
  v91 = *(v10 + 16);
  v100 = v10 + 16;
  v91(v13, a4, v9);
  v21 = v112;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v109 = type metadata accessor for YahooBaseOperationFactory();
  v110 = &off_1F56825C8;
  v28 = v109;
  v83 = v109;
  v108 = v27;
  v86 = type metadata accessor for YahooQuoteDetailOperation(0);
  v29 = objc_allocWithZone(v86);
  v30 = v109;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v106 = v28;
  v107 = &off_1F56825C8;
  v105[0] = v36;
  *&v29[qword_1EE127038] = v96;
  sub_1DAA4D678(v105, &v29[qword_1EE127040]);
  v37 = &v29[qword_1EE127048];
  v38 = v95;
  *v37 = v97;
  *(v37 + 1) = v38;
  v39 = v94;
  *(v37 + 2) = v98;
  *(v37 + 3) = v39;
  v40 = v82;
  v93(&v29[qword_1ECBE9AC8], v82, v14);
  v41 = v92;
  v42 = v90;
  v43 = v91;
  v91(&v29[qword_1EE127050], v92, v90);
  v104.receiver = v29;
  v104.super_class = v86;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v44 = objc_msgSendSuper2(&v104, sel_init);
  v45 = *(v102 + 8);
  v102 += 8;
  v85 = v45;
  v45(v41, v42);
  v46 = *(v101 + 8);
  v101 += 8;
  v84 = v46;
  v81 = v14;
  v46(v40, v14);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  __swift_destroy_boxed_opaque_existential_1(&v111);
  v86 = sub_1DACB82B4();

  sub_1DAA4D678(v89 + 16, &v111);
  v47 = v93;
  v93(v40, v88, v14);
  v43(v41, v87, v42);
  v48 = v112;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = (v80 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v52;
  v55 = v83;
  v109 = v83;
  v110 = &off_1F56825C8;
  v108 = v54;
  v56 = type metadata accessor for YahooMultiQuoteOperation(0);
  v57 = objc_allocWithZone(v56);
  v58 = v109;
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
  v60 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = (v80 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v62;
  v106 = v55;
  v107 = &off_1F56825C8;
  v105[0] = v64;
  v65 = v96;
  *&v57[qword_1EE126B00] = v96;
  sub_1DAA4D678(v105, &v57[qword_1EE126B08]);
  v66 = &v57[qword_1EE126B10];
  v67 = v95;
  *v66 = v97;
  *(v66 + 1) = v67;
  v68 = v94;
  *(v66 + 2) = v98;
  *(v66 + 3) = v68;
  v69 = v40;
  v70 = v81;
  v47(&v57[qword_1ECBE9340], v40, v81);
  v71 = v92;
  v72 = v90;
  v91(&v57[qword_1EE126B18], v92, v90);
  v103.receiver = v57;
  v103.super_class = v56;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v73 = objc_msgSendSuper2(&v103, sel_init);
  v85(v71, v72);
  v84(v69, v70);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  __swift_destroy_boxed_opaque_existential_1(&v111);
  sub_1DACB82B4();

  v74 = sub_1DACB89D4();
  sub_1DACB89C4();

  v75 = swift_allocObject();
  *(v75 + 16) = v65;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1DAB78E2C;
  *(v76 + 24) = v75;
  sub_1DACB71E4();
  v77 = sub_1DACB89D4();
  sub_1DAA7F334();
  v78 = sub_1DACB8A64();

  return v78;
}

uint64_t sub_1DAB7860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC8];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v9[0] = *(v7 - 1);
      v9[1] = v8;
      sub_1DACB71E4();
      sub_1DAB786C0(&v10, v9, a1, a2);

      v7 += 2;
      --v5;
    }

    while (v5);
    return v10;
  }

  return result;
}

unint64_t sub_1DAB786C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v78 = a1;
  sub_1DAB78E7C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v72[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v72[-v14];
  v15 = type metadata accessor for YahooQuoteDetailItem(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v72[-v22];
  if (!*(a3 + 16))
  {
    return result;
  }

  v25 = *a2;
  v24 = a2[1];
  result = sub_1DAA4BF3C(v25, v24);
  if ((v26 & 1) == 0)
  {
    return result;
  }

  sub_1DAB78F98(*(a3 + 56) + *(v16 + 72) * result, v20, type metadata accessor for YahooQuoteDetailItem);
  sub_1DAB78ED4(v20, v23);
  v27 = *(a4 + 16);
  v79 = v25;
  if (v27 && (v28 = sub_1DAA4BF3C(v25, v24), (v29 & 1) != 0))
  {
    v30 = v28;
    v31 = *(a4 + 56);
    v32 = type metadata accessor for YahooMultiQuoteItem(0);
    v33 = *(v32 - 8);
    v34 = v31 + *(v33 + 72) * v30;
    v35 = v80;
    sub_1DAB78F98(v34, v80, type metadata accessor for YahooMultiQuoteItem);
    (*(v33 + 56))(v35, 0, 1, v32);
    v36 = v23[1];
    if (!v36)
    {
LABEL_6:
      sub_1DACB71E4();
      v75 = v79;
      v74 = v24;
      goto LABEL_9;
    }
  }

  else
  {
    v37 = type metadata accessor for YahooMultiQuoteItem(0);
    (*(*(v37 - 8) + 56))(v80, 1, 1, v37);
    v36 = v23[1];
    if (!v36)
    {
      goto LABEL_6;
    }
  }

  v75 = *v23;
  v74 = v36;
LABEL_9:
  v38 = v23[3];
  v76 = v23[2];
  v39 = (v23 + *(v15 + 84));
  if (!v39[1])
  {
    sub_1DAB78F98(v80, v13, sub_1DAB78E7C);
    v41 = type metadata accessor for YahooMultiQuoteItem(0);
    if ((*(*(v41 - 8) + 48))(v13, 1, v41) == 1)
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DAB78F38(v13, sub_1DAB78E7C);
    }

    else
    {
      v42 = &v13[*(v41 + 64)];
      v44 = *v42;
      v43 = v42[1];
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB78F38(v13, type metadata accessor for YahooMultiQuoteItem);
      if (v43)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_15;
  }

  v40 = *v39;
  sub_1DACB71E4();
  sub_1DACB71E4();
  swift_bridgeObjectRetain_n();
LABEL_15:
  sub_1DACB71E4();
  sub_1DAC4A894(&v96);

  v73 = v96;
  v45 = (v23 + *(v15 + 80));
  if (v45[1])
  {
    v46 = *v45;
    v47 = v45[1];
  }

  else
  {
    v48 = v77;
    sub_1DAB78F98(v80, v77, sub_1DAB78E7C);
    v49 = type metadata accessor for YahooMultiQuoteItem(0);
    v50 = (*(*(v49 - 8) + 48))(v48, 1, v49);
    v51 = sub_1DAB78E7C;
    if (v50 == 1)
    {
      v46 = 0;
      v47 = 0;
    }

    else
    {
      v52 = &v48[*(v49 + 60)];
      v46 = *v52;
      v47 = v52[1];
      sub_1DACB71E4();
      v51 = type metadata accessor for YahooMultiQuoteItem;
    }

    sub_1DAB78F38(v48, v51);
  }

  v81 = v76;
  v82 = v38;
  sub_1DACB71E4();
  v77 = v38;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](v79, v24);
  v54 = v81;
  v53 = v82;
  v55 = qword_1EE122610;
  sub_1DACB71E4();
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v57 = sub_1DAA4BF3C(v79, v24), (v58 & 1) != 0))
  {
    v59 = v57;

    v60 = (*(v56 + 56) + 16 * v59);
    v46 = *v60;
    v47 = v60[1];
    sub_1DACB71E4();
  }

  else if (!v47)
  {
    sub_1DACB71E4();
    v46 = v79;
    v47 = v24;
  }

  v61 = qword_1EE13E390;
  v62 = v79;
  v63 = v79;
  v64 = v24;
  if (*(qword_1EE13E390 + 16))
  {
    v65 = sub_1DAA4BF3C(v79, v24);
    v63 = v62;
    v64 = v24;
    if (v66)
    {

      v67 = (*(v61 + 56) + 16 * v65);
      v63 = *v67;
      v68 = v67[1];
      v64 = sub_1DACB71E4();
    }
  }

  v81 = v54;
  v82 = v53;
  v83 = v62;
  v84 = v24;
  v85 = v75;
  v86 = v74;
  v87 = v76;
  v88 = v77;
  v89 = v73;
  v90 = v46;
  v91 = v47;
  v92 = v63;
  v93 = v64;
  v94 = 0u;
  v95 = 0u;
  v69 = v78;
  v70 = *v78;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v69;
  sub_1DAA88E98(&v81, v62, v24, isUniquelyReferenced_nonNull_native);

  *v69 = v96;
  sub_1DAB78F38(v80, sub_1DAB78E7C);
  return sub_1DAB78F38(v23, type metadata accessor for YahooQuoteDetailItem);
}

uint64_t sub_1DAB78E34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAB78E7C()
{
  if (!qword_1EE1266E8)
  {
    type metadata accessor for YahooMultiQuoteItem(255);
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1266E8);
    }
  }
}

uint64_t sub_1DAB78ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB78F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB78F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAB79000(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DAA4D460(a2, v4 + 24);
  return v4;
}

uint64_t sub_1DAB7905C()
{
  v1 = *v0;
  v2 = sub_1DACB93B4();
  if (*(v1 + 16))
  {
    v4 = sub_1DAA4BF3C(v2, v3);
    v6 = v5;

    if (v6)
    {
      v7 = (*(v1 + 56) + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1DACB71E4();
      return v9;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DAB790D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  sub_1DACB71E4();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  while (v7)
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 56) + 104 * (v11 | (v9 << 6)));
      v13 = v12[9];
      if (v13)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v15 = v12[12];
    v38 = a2;
    v39 = v12[8];
    v40 = v12[7];
    v41 = v12[5];
    v42 = v12[3];
    v16 = *v12;
    v17 = v12[1];
    v43 = sub_1DACB93B4();
    v44 = v18;
    sub_1DACB71E4();
    swift_bridgeObjectRetain_n();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1DAA4BF3C(v43, v44);
    v22 = v10[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_24;
    }

    if (v10[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v20;
        sub_1DAB65314();
        v20 = v35;
      }

      v25 = v44;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v37 = v20;
      sub_1DAAA2514(v24, isUniquelyReferenced_nonNull_native);
      v25 = v44;
      v26 = sub_1DAA4BF3C(v43, v44);
      if ((v37 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }

      v21 = v26;
      if (v37)
      {
LABEL_19:

        v33 = (v10[7] + 16 * v21);
        v34 = v33[1];
        *v33 = v39;
        v33[1] = v13;

        a2 = v38;
        goto LABEL_20;
      }
    }

    v10[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v10[6] + 16 * v21);
    *v28 = v43;
    v28[1] = v25;
    v29 = (v10[7] + 16 * v21);
    *v29 = v39;
    v29[1] = v13;
    v30 = v10[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_25;
    }

    v10[2] = v32;

    a2 = v38;
LABEL_20:
  }

LABEL_6:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      *a2 = v10;
      return result;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAB793CC(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DAA4D460(a2, v2 + 24);
  return v2;
}

uint64_t sub_1DAB793F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t sub_1DAB79420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB79460()
{
  sub_1DAAA167C();
  sub_1DACB8BB4();
  v0 = sub_1DACB89D4();
  v1 = sub_1DACB8A54();

  return v1;
}

uint64_t sub_1DAB794FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1DACB71E4();
  sub_1DAB790D8(v2, &v7);
  sub_1DAB79594();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAB79594()
{
  if (!qword_1EE11FE98)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE98);
    }
  }
}

uint64_t SymbolEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t SymbolEntity.symbol.getter()
{
  v1 = *(v0 + 16);
  sub_1DACB6ED4();
  return v3;
}

uint64_t (*SymbolEntity.symbol.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t SymbolEntity.name.getter()
{
  v1 = *(v0 + 24);
  sub_1DACB6ED4();
  return v3;
}

uint64_t (*SymbolEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t SymbolEntity.exchange.getter()
{
  v1 = *(v0 + 32);
  sub_1DACB6ED4();
  return v3;
}

uint64_t (*SymbolEntity.exchange.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t SymbolEntity.shortName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1DACB71E4();
  return v1;
}

uint64_t SymbolEntity.compactName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB79974@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EF80 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EE11EF90;
  v2 = qword_1EE11EF98;
  *a1 = qword_1EE11EF88;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t static SymbolEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EF80 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EE11EF90;
  v2 = qword_1EE11EF98;
  *a1 = qword_1EE11EF88;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB79A8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE7FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static SymbolEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE7FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB79BDC(uint64_t a1)
{
  v2 = sub_1DAA9A61C(&unk_1EE11EF70, type metadata accessor for SymbolEntity);

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB79C58(uint64_t a1)
{
  v2 = sub_1DAA9A61C(&qword_1EE123528, type metadata accessor for SymbolEntity);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB79CE0()
{
  v22 = MEMORY[0x1E6968E10];
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v21 = &v20 - v2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7354();
  __swift_allocate_value_buffer(v15, qword_1ECBE7FA0);
  __swift_project_value_buffer(v15, qword_1ECBE7FA0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v3);
  sub_1DACB7914();
  v16 = *(v13 + 56);
  v13 += 56;
  v16(v21, 1, 1, v12);
  sub_1DAA8E4FC(0, &qword_1ECBE6D78, v22, MEMORY[0x1E69E6F90]);
  v17 = *(v13 + 16);
  v18 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_1DACCAE40;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

uint64_t static SymbolEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for SymbolEntity();
  v1 = sub_1DACB7AB4();
  v2 = sub_1DAA9A61C(&qword_1ECBE7FB8, type metadata accessor for SymbolEntity);
  v3 = sub_1DAA9A61C(&qword_1ECBE7FC0, MEMORY[0x1E6968FB0]);

  return MEMORY[0x1EEDBF5F8](sub_1DAB7A268, 0, v0, v1, v2, v3);
}

uint64_t sub_1DAB7A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SymbolEntity() + 40);
  v5 = sub_1DACB7AB4();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1DAB7A2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7AB4();
  v5 = sub_1DAA9A61C(&qword_1ECBE7FC0, MEMORY[0x1E6968FB0]);

  return MEMORY[0x1EEDBF5F8](sub_1DAB7A268, 0, a1, v4, a2, v5);
}

double sub_1DAB7A390@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  sub_1DACB6ED4();
  v5 = a1[3];
  sub_1DACB6ED4();
  v6 = a1[4];
  sub_1DACB6ED4();
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[8];
  v24 = a1[7];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20]();
  v10 = qword_1EE122610;
  sub_1DACB71E4();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v12 = sub_1DAA4BF3C(v26, v27);
    if (v13)
    {
      v14 = v12;

      v15 = (*(v11 + 56) + 16 * v14);
      v8 = *v15;
      v7 = v15[1];
      sub_1DACB71E4();
    }
  }

  v16 = qword_1EE13E390;
  if (!*(qword_1EE13E390 + 16))
  {

LABEL_11:
    v21 = v24;
    goto LABEL_12;
  }

  v25 = v8;
  v23 = v7;
  v17 = sub_1DAA4BF3C(v26, v27);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    v7 = v23;
    v8 = v25;
    goto LABEL_11;
  }

  v20 = (*(v16 + 56) + 16 * v17);
  v21 = *v20;
  v9 = v20[1];
  sub_1DACB71E4();
  v7 = v23;
  v8 = v25;
LABEL_12:
  sub_1DAAD5434(a1);
  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v26;
  *(a2 + 40) = v27;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 64) = 0;
  *(a2 + 72) = v8;
  *(a2 + 80) = v7;
  *(a2 + 88) = v21;
  *(a2 + 96) = v9;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  return result;
}

unint64_t sub_1DAB7A5A0()
{
  result = qword_1EE11F090;
  if (!qword_1EE11F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F090);
  }

  return result;
}

void sub_1DAB7A63C()
{
  if (!qword_1ECBE7FD0)
  {
    type metadata accessor for SymbolEntity();
    sub_1DAA9A61C(&qword_1EE123548, type metadata accessor for SymbolEntity);
    v0 = sub_1DACB7364();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7FD0);
    }
  }
}

void sub_1DAB7A6EC()
{
  if (!qword_1ECBE7FE0)
  {
    type metadata accessor for SymbolEntity();
    sub_1DACB7AB4();
    sub_1DAA9A61C(&qword_1ECBE7FB8, type metadata accessor for SymbolEntity);
    sub_1DAA9A61C(&qword_1ECBE7FC0, MEMORY[0x1E6968FB0]);
    v0 = sub_1DACB8C44();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7FE0);
    }
  }
}

uint64_t sub_1DAB7A7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DAA94754;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1DAB7A954(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v30 = a2[6];
  v31 = v3;
  v32 = *(a2 + 16);
  v4 = a2[3];
  v26 = a2[2];
  v27 = v4;
  v5 = a2[5];
  v28 = a2[4];
  v29 = v5;
  v6 = a2[1];
  v24 = *a2;
  v25 = v6;
  sub_1DAB7B4F0(0, &qword_1EE11FE18, sub_1DAB7B28C, MEMORY[0x1E69D6B18]);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DACB8B44();
  v10 = v2[6];
  v11 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v10);
  (*(v11 + 8))(v10, v11);
  v12 = sub_1DACB89D4();
  sub_1DACB89C4();

  v13 = swift_allocObject();
  v14 = v31;
  *(v13 + 112) = v30;
  *(v13 + 128) = v14;
  *(v13 + 144) = v32;
  v15 = v27;
  *(v13 + 48) = v26;
  *(v13 + 64) = v15;
  v16 = v29;
  *(v13 + 80) = v28;
  *(v13 + 96) = v16;
  v17 = v25;
  *(v13 + 16) = v24;
  *(v13 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1DAB7B324;
  *(v18 + 24) = v13;
  sub_1DAB7B374(&v24, v23);
  v19 = sub_1DACB89D4();
  sub_1DAB7B3D0();
  sub_1DACB8A64();

  v20 = sub_1DACB89D4();
  sub_1DAAD4E00();
  v21 = sub_1DACB8A54();

  return v21;
}

uint64_t sub_1DAB7AB90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(a3 + 112);
  v14[6] = *(a3 + 96);
  v14[7] = v7;
  v15 = *(a3 + 128);
  v8 = *(a3 + 48);
  v14[2] = *(a3 + 32);
  v14[3] = v8;
  v9 = *(a3 + 80);
  v14[4] = *(a3 + 64);
  v14[5] = v9;
  v10 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v10;
  v11 = *(v6 + 16);
  v12 = sub_1DACB71E4();
  v11(v12, v14, v5, v6);
  return a1;
}

uint64_t sub_1DAB7AC38(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DACB9E14())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_18:
      *v36 = v5;
      v36[8] = 0;
      sub_1DAB7B4F0(0, &qword_1EE11FE40, sub_1DAAD4E00, MEMORY[0x1E69D6B18]);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      return sub_1DACB8AE4();
    }

    v46 = MEMORY[0x1E69E7CC0];
    sub_1DAAA50F8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v5 = v46;
    v7 = i - 1;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12777A0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [swift_unknownObjectRetain() identifier];
      v10 = sub_1DACB9324();
      v12 = v11;
      if (!*(a2 + 16))
      {
        goto LABEL_24;
      }

      v13 = v10;

      v14 = sub_1DAA4BF3C(v13, v12);
      LOBYTE(v13) = v15;

      if ((v13 & 1) == 0)
      {
        break;
      }

      v16 = *(a2 + 56) + 136 * v14;
      v37 = *v16;
      v17 = *(v16 + 64);
      v19 = *(v16 + 16);
      v18 = *(v16 + 32);
      v40 = *(v16 + 48);
      v41 = v17;
      v38 = v19;
      v39 = v18;
      v21 = *(v16 + 96);
      v20 = *(v16 + 112);
      v22 = *(v16 + 80);
      v45 = *(v16 + 128);
      v43 = v21;
      v44 = v20;
      v42 = v22;
      sub_1DAAA5860(&v37, v36);
      swift_unknownObjectRelease();
      v46 = v5;
      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DAAA50F8((v23 > 1), v24 + 1, 1);
        v5 = v46;
      }

      *&v36[88] = v42;
      *&v36[104] = v43;
      *&v36[120] = v44;
      *&v36[24] = v38;
      *&v36[40] = v39;
      *&v36[56] = v40;
      *&v36[72] = v41;
      *&v36[136] = v45;
      *&v36[8] = v37;
      *v36 = v8;
      sub_1DAAA58BC(v36);
      *(v5 + 16) = v24 + 1;
      v25 = (v5 + 144 * v24);
      v25[2] = *v36;
      v26 = *&v36[16];
      v27 = *&v36[32];
      v28 = *&v36[64];
      v25[5] = *&v36[48];
      v25[6] = v28;
      v25[3] = v26;
      v25[4] = v27;
      v29 = *&v36[80];
      v30 = *&v36[96];
      v31 = *&v36[128];
      v25[9] = *&v36[112];
      v25[10] = v31;
      v25[7] = v29;
      v25[8] = v30;
      if (v7 == v6)
      {
        goto LABEL_18;
      }

      if (__OFADD__(++v6, 1))
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_1DAB7AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  sub_1DACB71F4();
  sub_1DAB16534(a6);
  v14 = objc_allocWithZone(MEMORY[0x1E69B5198]);
  v15 = sub_1DACB9634();

  v16 = sub_1DACB9634();
  v17 = [v14 initWithContext:v13 articleIDs:v15 ignoreCacheForArticleIDs:v16];

  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = sub_1DAA73914;
  v18[5] = v12;
  v22[4] = sub_1DAB7B554;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1DAA74E58;
  v22[3] = &block_descriptor_11;
  v19 = _Block_copy(v22);
  v20 = v17;
  sub_1DACB71F4();

  [v20 setFetchCompletionBlock_];
  _Block_release(v19);

  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
}

void sub_1DAB7B12C(void *a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  v7 = [a1 error];
  if (v7)
  {
    v9 = v7;
    a2();
  }

  else if ([a1 fetchedObject] && (sub_1DAB7B28C(0), (swift_dynamicCast() & 1) != 0))
  {
    a4();
  }

  else
  {
    sub_1DAB7B560();
    v8 = swift_allocError();
    a2();
  }
}

unint64_t sub_1DAB7B2C0()
{
  result = qword_1EE11F880;
  if (!qword_1EE11F880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11F880);
  }

  return result;
}

uint64_t sub_1DAB7B32C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_1DAB7B3D0()
{
  if (!qword_1EE11F9B0)
  {
    sub_1DAB7B28C(255);
    sub_1DAB7B440();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F9B0);
    }
  }
}

void sub_1DAB7B440()
{
  if (!qword_1EE11FCC8)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FCC8);
    }
  }
}

void sub_1DAB7B4A0()
{
  if (!qword_1EE11FAA0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FAA0);
    }
  }
}

void sub_1DAB7B4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAB7B560()
{
  result = qword_1ECBE7FE8;
  if (!qword_1ECBE7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7FE8);
  }

  return result;
}

unint64_t sub_1DAB7B5C8()
{
  result = qword_1ECBE7FF0;
  if (!qword_1ECBE7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7FF0);
  }

  return result;
}

uint64_t sub_1DAB7B61C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1DACB9BC4();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 136 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);
    result = sub_1DACB71E4();
    if (v13 >= v14 >> 1)
    {
      result = sub_1DAA5859C((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1DAAA2C74(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DAB7B848()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE8000);
  __swift_project_value_buffer(v9, qword_1ECBE8000);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB7BA28()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE8018);
  __swift_project_value_buffer(v9, qword_1ECBE8018);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB7BC04@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAF41C0(0, &qword_1EE123AB8, qword_1EE125F28);
  sub_1DACB6D94();
  sub_1DACB6D84();
  *a1 = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AA8, &unk_1EE125A10);
  sub_1DACB6D84();
  a1[1] = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40);
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  a1[2] = result;
  return result;
}

uint64_t sub_1DAB7BD24(uint64_t a1)
{
  v2[45] = a1;
  v3 = sub_1DACB8204();
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();
  v6 = sub_1DACB7CC4();
  v2[49] = v6;
  v7 = *(v6 - 8);
  v2[50] = v7;
  v8 = *(v7 + 64) + 15;
  v2[51] = swift_task_alloc();
  v9 = sub_1DACB8344();
  v2[52] = v9;
  v10 = *(v9 - 8);
  v2[53] = v10;
  v11 = *(v10 + 64) + 15;
  v2[54] = swift_task_alloc();
  v12 = sub_1DACB81B4();
  v2[55] = v12;
  v13 = *(v12 - 8);
  v2[56] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *(v1 + 8);
  v2[57] = v15;
  v2[58] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1DAB7BEFC, 0, 0);
}

uint64_t sub_1DAB7BEFC()
{
  v31 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = sub_1DACB8C94();
  v0[59] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB98E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    v0[44] = v5;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v8 = sub_1DACB9214();
    v10 = sub_1DAA7ABE4(v8, v9, &v30);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetching stocks for symbol query with identifiers=[%s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v11 = v0[58];
  v12 = v0[55];
  v13 = v0[56];
  v23 = v0[54];
  v14 = v0[51];
  v28 = v0[52];
  v29 = v0[57];
  v25 = v0[50];
  v26 = v0[49];
  v27 = v0[53];
  v15 = v0[47];
  v16 = v0[48];
  v17 = v0[46];
  v24 = v0[45];
  sub_1DACB6D24();
  v19 = v0[39];
  v18 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v19);
  (*(v13 + 104))(v29, *MEMORY[0x1E69D63C8], v12);
  sub_1DACB8334();
  sub_1DACB7CB4();
  (*(v15 + 104))(v16, *MEMORY[0x1E69D6490], v17);
  v0[60] = (*(v18 + 8))(v24, v29, v23, v14, v16, v19, v18);
  (*(v15 + 8))(v16, v17);
  (*(v25 + 8))(v14, v26);
  (*(v27 + 8))(v23, v28);
  (*(v13 + 8))(v29, v12);
  v20 = *(MEMORY[0x1E69D6B08] + 4);
  v21 = swift_task_alloc();
  v0[61] = v21;
  *v21 = v0;
  v21[1] = sub_1DAB7C270;

  return MEMORY[0x1EEE44EE0](v0 + 41);
}

uint64_t sub_1DAB7C270()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_1DAB7C7AC;
  }

  else
  {
    v5 = *(v2 + 480);

    __swift_destroy_boxed_opaque_existential_1((v2 + 288));
    v4 = sub_1DAB7C394;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DAB7C394()
{
  v55 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB98E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 496);
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v53[0] = v51;
    *v8 = 136315394;
    *(v0 + 336) = v7;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v9 = sub_1DACB9214();
    v11 = sub_1DAA7ABE4(v9, v10, v53);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = sub_1DACB71E4();
    v13 = sub_1DAB1C3A0(v12);

    *(v0 + 344) = v13;
    v14 = sub_1DACB9214();
    v16 = v15;

    v17 = sub_1DAA7ABE4(v14, v16, v53);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetched stocks for symbol query with identifiers=[%s], stocks=[%s]", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v51, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 360);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = v18 + 40;
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23 = (v21 + 16 * v20);
      v24 = v20;
      while (1)
      {
        if (v24 >= v19)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v20 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_24;
        }

        if (*(v3 + 16))
        {
          break;
        }

LABEL_7:
        ++v24;
        v23 += 2;
        if (v20 == v19)
        {
          goto LABEL_20;
        }
      }

      v25 = *(v23 - 1);
      v26 = *v23;
      sub_1DACB71E4();
      v27 = sub_1DAA4BF3C(v25, v26);
      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = *(v3 + 56) + 136 * v27;
      *(v0 + 16) = *v29;
      v30 = *(v29 + 16);
      v31 = *(v29 + 32);
      v32 = *(v29 + 64);
      *(v0 + 64) = *(v29 + 48);
      *(v0 + 80) = v32;
      *(v0 + 32) = v30;
      *(v0 + 48) = v31;
      v33 = *(v29 + 80);
      v34 = *(v29 + 96);
      v35 = *(v29 + 112);
      *(v0 + 144) = *(v29 + 128);
      *(v0 + 112) = v34;
      *(v0 + 128) = v35;
      *(v0 + 96) = v33;
      v36 = *(v29 + 112);
      v53[6] = *(v29 + 96);
      v53[7] = v36;
      v54 = *(v29 + 128);
      v37 = *(v29 + 48);
      v53[2] = *(v29 + 32);
      v53[3] = v37;
      v38 = *(v29 + 80);
      v53[4] = *(v29 + 64);
      v53[5] = v38;
      v39 = *(v29 + 16);
      v53[0] = *v29;
      v53[1] = v39;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      sub_1DAB9BFD8(v53, v52);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DAADC048(0, *(v22 + 2) + 1, 1, v22);
      }

      v41 = *(v22 + 2);
      v40 = *(v22 + 3);
      if (v41 >= v40 >> 1)
      {
        v22 = sub_1DAADC048((v40 > 1), v41 + 1, 1, v22);
      }

      *(v22 + 2) = v41 + 1;
      v42 = &v22[64 * v41];
      v43 = v52[0];
      v44 = v52[1];
      v45 = v52[3];
      *(v42 + 4) = v52[2];
      *(v42 + 5) = v45;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      if (v20 == v19)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_7;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v46 = *(v0 + 456);
  v47 = *(v0 + 432);
  v48 = *(v0 + 408);
  v49 = *(v0 + 384);

  v50 = *(v0 + 8);

  v50(v22);
}