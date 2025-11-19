uint64_t sub_1AF77F840(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a2 + 16);

  if (!v5)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v7 = 0;
  v8 = v6 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v30 = v6 + 40;
  do
  {
    v9 = (v8 + 16 * v7++);
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = v3 == v11 && v4 == v10;
      if (v12 || (sub_1AFDFEE28() & 1) != 0)
      {
        goto LABEL_5;
      }

      v33 = v11;
      v34 = v10;
      sub_1AF770DF0();
      sub_1AF770E44();

      if (sub_1AFDFCD68())
      {
        break;
      }

LABEL_5:
      v9 += 2;
      if (++v7 - v5 == 1)
      {
        goto LABEL_20;
      }
    }

    v13 = v32;
    v35 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC05CE4(0, *(v32 + 16) + 1, 1);
      v13 = v35;
    }

    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
      v16 = v15 + 1;
      v13 = v35;
    }

    *(v13 + 16) = v16;
    v32 = v13;
    v17 = v13 + 16 * v15;
    *(v17 + 32) = v11;
    *(v17 + 40) = v10;
    v8 = v30;
  }

  while (v7 != v5);
LABEL_20:

  v18 = *(v32 + 16);

  if (v18)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();

    v33 = 0x6E6920726F727245;
    v34 = 0xE900000000000020;
    v21 = a3[42];
    v20 = a3[43];

    MEMORY[0x1B2718AE0](v21, v20);

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    v23 = a3[2];
    v22 = a3[3];

    MEMORY[0x1B2718AE0](v23, v22);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v3, v4);
    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF33DD0);

    v25 = MEMORY[0x1B2718E40](v24, MEMORY[0x1E69E6158]);
    v27 = v26;

    MEMORY[0x1B2718AE0](v25, v27);

    v28 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v29 = v28;
      swift_once();
      v28 = v29;
    }

    v33 = 0;
    sub_1AF0D4F18(v28, &v33, 0x6E6920726F727245, 0xE900000000000020);
  }

  return result;
}

uint64_t sub_1AF77FBC8()
{
  v1 = v0;
  v2 = v0[20];
  if (v2)
  {
    v3 = *(v2 + 16);

    if (v3)
    {
      sub_1AF4486E4();
      v4 = 0;
      v5 = v2 + 40;
      v6 = MEMORY[0x1E69E7CC0];
      v52 = v2 + 40;
      do
      {
        v54 = v6;
        v7 = (v5 + 16 * v4++);
        while (1)
        {
          v57 = v4;
          v8 = *(v7 - 1);
          v9 = *v7;

          v10 = sub_1AFDFDF18();
          v11 = sub_1AFDFDF18();
          v12 = sub_1AFDFDF18();
          v59 = v8;
          v60 = v9;
          if (sub_1AFDFDF18() & 1) != 0 || (v12 & 1) != 0 || (v11 & 1) != 0 || (v10)
          {
            break;
          }

          v7 += 2;
          ++v4;
          if (v57 + 1 - v3 == 1)
          {
            v6 = v54;
            goto LABEL_18;
          }
        }

        v6 = v54;
        v61 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AFC05CE4(0, *(v54 + 16) + 1, 1);
          v6 = v61;
        }

        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1AFC05CE4(v13 > 1, v14 + 1, 1);
          v6 = v61;
        }

        *(v6 + 16) = v14 + 1;
        v15 = v6 + 16 * v14;
        *(v15 + 32) = v8;
        *(v15 + 40) = v9;
        v5 = v52;
      }

      while (v4 != v3);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_18:

    if (!*(v6 + 16))
    {

      v24 = v56[25];
      if (v24)
      {
        goto LABEL_25;
      }

      return swift_arrayDestroy();
    }

    v1 = v56;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
    v16 = v56[42];
    v17 = v56[43];

    MEMORY[0x1B2718AE0](v16, v17);

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    v18 = v56[2];
    v19 = v56[3];

    MEMORY[0x1B2718AE0](v18, v19);

    MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF33DA0);
    v20 = MEMORY[0x1B2718E40](v6, MEMORY[0x1E69E6158]);
    v22 = v21;

    MEMORY[0x1B2718AE0](v20, v22);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v23 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v50 = v23;
      swift_once();
      v23 = v50;
    }

    v59 = 0;
    sub_1AF0D4F18(v23, &v59, 0, 0xE000000000000000);
  }

  v24 = v1[25];
  if (!v24)
  {
    return swift_arrayDestroy();
  }

LABEL_25:
  v25 = *(v24 + 16);

  if (v25)
  {
    sub_1AF4486E4();
    v26 = 0;
    v27 = v24 + 40;
    v28 = MEMORY[0x1E69E7CC0];
    v53 = v24 + 40;
    do
    {
      v55 = v28;
      v29 = (v27 + 16 * v26++);
      while (1)
      {
        v58 = v26;
        v30 = *(v29 - 1);
        v31 = *v29;

        v59 = v30;
        v60 = v31;
        v32 = sub_1AFDFDF18();
        v59 = v30;
        v60 = v31;
        v33 = sub_1AFDFDF18();
        v59 = v30;
        v60 = v31;
        v34 = sub_1AFDFDF18();
        v59 = v30;
        v60 = v31;
        if (sub_1AFDFDF18() & 1) != 0 || (v34 & 1) != 0 || (v33 & 1) != 0 || (v32)
        {
          break;
        }

        v29 += 2;
        ++v26;
        if (v58 + 1 - v25 == 1)
        {
          v28 = v55;
          goto LABEL_43;
        }
      }

      v28 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v55 + 16) + 1, 1);
        v28 = v61;
      }

      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AFC05CE4(v36 > 1, v37 + 1, 1);
        v28 = v61;
      }

      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v30;
      *(v38 + 40) = v31;
      v27 = v53;
    }

    while (v26 != v25);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

LABEL_43:
  swift_arrayDestroy();

  if (!*(v28 + 16))
  {
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
  v40 = v56[42];
  v41 = v56[43];

  MEMORY[0x1B2718AE0](v40, v41);

  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v43 = v56[2];
  v42 = v56[3];

  MEMORY[0x1B2718AE0](v43, v42);

  MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF33D70);
  v44 = MEMORY[0x1B2718E40](v28, MEMORY[0x1E69E6158]);
  v46 = v45;

  MEMORY[0x1B2718AE0](v44, v46);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v48 = v59;
  v47 = v60;
  v49 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v51 = v49;
    swift_once();
    v49 = v51;
  }

  v59 = 0;
  sub_1AF0D4F18(v49, &v59, v48, v47);
}

void sub_1AF78037C()
{
  if (v0[18])
  {
    v1 = v0[3];
    v29 = v0[2];
    v30 = v1;
    sub_1AF4486E4();
    if ((sub_1AFDFDF18() & 1) == 0)
    {
      v2 = v0[27];
      v3 = 1 << *(v2 + 32);
      v4 = -1;
      if (v3 < 64)
      {
        v4 = ~(-1 << v3);
      }

      v5 = v4 & *(v2 + 64);
      v6 = (v3 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v7 = 0;
      for (i = 0; v5; i |= sub_1AFDFDF18())
      {
        v9 = v7;
LABEL_10:
        v10 = (*(v2 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
        v12 = *v10;
        v11 = v10[1];
        v5 &= v5 - 1;
        v29 = v12;
        v30 = v11;
      }

      while (1)
      {
        v9 = v7 + 1;
        if (v7 + 1 >= v6)
        {
          break;
        }

        v5 = *(v2 + 8 * v7++ + 72);
        if (v5)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      if ((i & 1) == 0)
      {
        v13 = v0[21];
        if (v13)
        {
          v14 = *(v13 + 16);

          if (!v14)
          {

            v18 = v0[26];
            if (!v18)
            {
LABEL_27:
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v29 = 0;
              v30 = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
              v23 = v0[42];
              v24 = v0[43];

              MEMORY[0x1B2718AE0](v23, v24);

              MEMORY[0x1B2718AE0](46, 0xE100000000000000);
              v26 = v0[2];
              v25 = v0[3];

              MEMORY[0x1B2718AE0](v26, v25);

              MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF33E30);
              v27 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                v28 = v27;
                swift_once();
                v27 = v28;
              }

              v29 = 0;
              sub_1AF0D4F18(v27, &v29, 0, 0xE000000000000000);

              return;
            }

LABEL_21:
            v19 = *(v18 + 16);

            if (v19)
            {
              v20 = 0;
              v21 = (v18 + 40);
              do
              {
                v22 = *v21;
                v29 = *(v21 - 1);
                v30 = v22;
                v20 |= sub_1AFDFDF18();
                v21 += 2;
                --v19;
              }

              while (v19);

              if (v20)
              {
                return;
              }
            }

            else
            {
            }

            goto LABEL_27;
          }

          v15 = 0;
          v16 = (v13 + 40);
          do
          {
            v17 = *v16;
            v29 = *(v16 - 1);
            v30 = v17;
            v15 |= sub_1AFDFDF18();
            v16 += 2;
            --v14;
          }

          while (v14);

          if (v15)
          {
            return;
          }
        }

        v18 = v0[26];
        if (!v18)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }
    }
  }
}

uint64_t sub_1AF780744()
{

  sub_1AF771214(*(v0 + 248), *(v0 + 256));

  return v0;
}

uint64_t sub_1AF780844()
{
  sub_1AF780744();

  return swift_deallocClassInstance();
}

void *sub_1AF7808B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF77AA7C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF780958@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1AF7809A0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = a1[20];
  v6 = a2[20];
  if (v5)
  {
    if (!v6 || (sub_1AFB7B948(v5, v6) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v6)
  {
    goto LABEL_34;
  }

  v7 = a1[21];
  v8 = a2[21];
  if (v7)
  {
    if (!v8 || (sub_1AFB7B948(v7, v8) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v8)
  {
    goto LABEL_34;
  }

  v9 = a1[25];
  v10 = a2[25];
  if (v9)
  {
    if (!v10 || (sub_1AFB7B948(v9, v10) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v10)
  {
    goto LABEL_34;
  }

  v11 = a1[26];
  v12 = a2[26];
  if (v11)
  {
    if (!v12 || (sub_1AFB7B948(v11, v12) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v12)
  {
    goto LABEL_34;
  }

  v13 = a1[27];
  v14 = a2[27];

  v15 = sub_1AF776394(v13, v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_34;
  }

  v16 = a2[28];
  if (a1[28])
  {
    if (v16)
    {

      v18 = sub_1AF776394(v17, v16);

      if (v18)
      {
        goto LABEL_30;
      }
    }

LABEL_34:
    v23 = 0;
    return v23 & 1;
  }

  if (v16)
  {
    goto LABEL_34;
  }

LABEL_30:
  v19 = sub_1AF776F1C();
  v21 = v20;
  if (v19 == sub_1AF776F1C() && v21 == v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1AFDFEE28();
  }

  return v23 & 1;
}

unint64_t sub_1AF780B60()
{
  result = qword_1EB63E710;
  if (!qword_1EB63E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E710);
  }

  return result;
}

unint64_t sub_1AF780BB4()
{
  result = qword_1EB63E720;
  if (!qword_1EB63E720)
  {
    sub_1AF780FD0(255, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E720);
  }

  return result;
}

unint64_t sub_1AF780C48()
{
  result = qword_1EB63E728;
  if (!qword_1EB63E728)
  {
    sub_1AF780D78(255, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    sub_1AF780D10(&qword_1ED726C58, &qword_1ED726C70, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E728);
  }

  return result;
}

uint64_t sub_1AF780D10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF780FD0(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF780D78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF780FD0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF780DE4()
{
  result = qword_1EB63E740;
  if (!qword_1EB63E740)
  {
    sub_1AF780D78(255, &qword_1EB63E730, &qword_1EB63E738, &_s8MetadataVN);
    sub_1AF780EA4(&qword_1EB63E748, sub_1AF774FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E740);
  }

  return result;
}

uint64_t sub_1AF780EA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF780FD0(255, &qword_1EB63E738, &_s8MetadataVN, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF780F34()
{
  result = qword_1EB63E750;
  if (!qword_1EB63E750)
  {
    sub_1AF780FD0(255, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720]);
    sub_1AF75FCC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E750);
  }

  return result;
}

void sub_1AF780FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF781020()
{
  result = qword_1EB63E768;
  if (!qword_1EB63E768)
  {
    sub_1AF780D78(255, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
    sub_1AF7810B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E768);
  }

  return result;
}

unint64_t sub_1AF7810B0()
{
  result = qword_1EB63E770;
  if (!qword_1EB63E770)
  {
    sub_1AF780FD0(255, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN, MEMORY[0x1E69E62F8]);
    sub_1AF78114C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E770);
  }

  return result;
}

unint64_t sub_1AF78114C()
{
  result = qword_1EB63E778;
  if (!qword_1EB63E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E778);
  }

  return result;
}

void sub_1AF7811A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF781204()
{
  if (!qword_1EB63E788)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E788);
    }
  }
}

unint64_t sub_1AF781260()
{
  result = qword_1EB63E790;
  if (!qword_1EB63E790)
  {
    sub_1AF7811A0(255, &qword_1EB63E780, sub_1AF781204, MEMORY[0x1E69E6720]);
    sub_1AF78132C(&qword_1EB63E798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E790);
  }

  return result;
}

uint64_t sub_1AF78132C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF781204();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF78138C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v53 = a5;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v44 = a1;
  v12 = a1 + 72;
  v42 = v10;
  while (v9)
  {
    v47 = a4;
    v17 = v11;
LABEL_13:
    v19 = (v17 << 10) | (16 * __clz(__rbit64(v9)));
    v20 = (*(v44 + 48) + v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v44 + 56) + v19);
    v24 = *v23;
    v25 = v23[1];
    v52[0] = v21;
    v52[1] = v22;
    v52[2] = v24;
    v52[3] = v25;

    a2(&v48, v52);

    v26 = v48;
    v27 = v49;
    v45 = v50;
    v46 = v51;
    v28 = *v53;
    v29 = sub_1AF419914(v48, v49);
    v31 = v30;
    v32 = v28[2] + ((v30 & 1) == 0);
    if (v28[3] >= v32)
    {
      v33 = v26;
      if ((v47 & 1) == 0)
      {
        sub_1AF849704();
      }

      v36 = v27;
    }

    else
    {
      sub_1AF8357A0(v32, v47 & 1);
      v33 = v26;
      v34 = sub_1AF419914(v26, v27);
      if ((v31 & 1) != (v35 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v29 = v34;
      v36 = v27;
    }

    v9 &= v9 - 1;
    v37 = *v53;
    v38 = 16 * v29;
    if (v31)
    {
      v13 = (v37[7] + v38);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v37[7] + v38);
      *v16 = v15;
      v16[1] = v14;

      a4 = 1;
    }

    else
    {
      a4 = 1;
      v37[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v37[6] + v38);
      *v39 = v33;
      v39[1] = v36;
      v40 = (v37[7] + v38);
      *v40 = v45;
      v40[1] = v46;
      ++v37[2];
    }

    v11 = v17;
    v10 = v42;
  }

  v18 = v11;
  while (1)
  {
    v17 = v18 + 1;
    if (v18 + 1 >= v10)
    {
      break;
    }

    v9 = *(v12 + 8 * v18++);
    if (v9)
    {
      v47 = a4;
      goto LABEL_13;
    }
  }

  sub_1AF0FBB14();
}

uint64_t sub_1AF781654(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 216);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v37 = v1;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v2 + 48) + ((v7 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v10 == 99 && v11 == 0xE100000000000000;
    if (!v13 && (sub_1AFDFEE28() & 1) == 0)
    {
      v14 = v12 == 0x7070636A626FLL && v11 == 0xE600000000000000;
      if (!v14 && (sub_1AFDFEE28() & 1) == 0 && (v12 != 0x6C6174656DLL || v11 != 0xE500000000000000))
      {
        v16 = sub_1AFDFEE28();
        v17 = v12 == 0x7466697773 && v11 == 0xE500000000000000;
        v18 = v17;
        if ((v16 & 1) == 0 && !v18 && (sub_1AFDFEE28() & 1) == 0 && (v12 != 29546 || v11 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
        {
          continue;
        }
      }
    }

    v19 = *(v1 + 216);
    if (*(v19 + 16))
    {

      v20 = sub_1AF419914(v12, v11);
      if (v21)
      {
        v22 = (*(v19 + 56) + 16 * v20);
        v23 = v22[1];
        v38 = *v22;
        if (*(v1 + 232))
        {
          v24 = *(v1 + 232);
        }

        else
        {
          v24 = MEMORY[0x1E69E7CC8];
        }

        *(v1 + 232) = v24;
        v39 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *(v1 + 232);
        *(v1 + 232) = 0x8000000000000000;
        v27 = sub_1AF419914(v12, v11);
        v29 = v28;
        v30 = v26[2] + ((v28 & 1) == 0);
        if (v26[3] >= v30)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AF849704();
          }
        }

        else
        {
          sub_1AF8357A0(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_1AF419914(v12, v11);
          if ((v29 & 1) != (v32 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v27 = v31;
        }

        if (v29)
        {
          v33 = (v26[7] + 16 * v27);
          *v33 = v38;
          v33[1] = v39;
        }

        else
        {
          v26[(v27 >> 6) + 8] |= 1 << v27;
          v34 = (v26[6] + 16 * v27);
          *v34 = v12;
          v34[1] = v11;
          v35 = (v26[7] + 16 * v27);
          *v35 = v38;
          v35[1] = v39;
          ++v26[2];
        }

        v1 = v37;
        *(v37 + 232) = v26;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7++ + 72);
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AF7819E8()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF781A3C(void *a1)
{
  sub_1AF781CA4(0, &qword_1EB63E7B8, sub_1AF781C50, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF781C50();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1AFDFE708();
    v12 = 1;
    sub_1AFDFE708();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF781C50()
{
  result = qword_1EB63E7C0;
  if (!qword_1EB63E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E7C0);
  }

  return result;
}

void sub_1AF781CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF781D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s17CodeSourceSnippetC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17CodeSourceSnippetC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF781ED0()
{
  result = qword_1EB63E7D0;
  if (!qword_1EB63E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E7D0);
  }

  return result;
}

unint64_t sub_1AF781F28()
{
  result = qword_1EB63E7D8;
  if (!qword_1EB63E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E7D8);
  }

  return result;
}

unint64_t sub_1AF781F80()
{
  result = qword_1EB63E7E0;
  if (!qword_1EB63E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E7E0);
  }

  return result;
}

unint64_t sub_1AF781FD8()
{
  result = qword_1EB63E7E8;
  if (!qword_1EB63E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E7E8);
  }

  return result;
}

unint64_t sub_1AF782030()
{
  result = qword_1EB63E7F0;
  if (!qword_1EB63E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E7F0);
  }

  return result;
}

unint64_t sub_1AF782088()
{
  result = qword_1EB63E7F8;
  if (!qword_1EB63E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E7F8);
  }

  return result;
}

double sub_1AF7820F4@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = v1[3];
  v3 = v1[4];
  if (v3)
  {
    v5 = v1[3];
LABEL_9:
    v9 = 40 * (__clz(__rbit64(v3)) | (v5 << 6));
    v10 = *(v2 + 48) + v9;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v16 = *(v2 + 56) + v9;
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v10) = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    v1[3] = v5;
    v1[4] = (v3 - 1) & v3;
    v21 = v1[5];
    v1[5] = v21 + 1;
    *a1 = v21;
    *(a1 + 8) = v12;
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    *(a1 + 32) = v14;
    *(a1 + 40) = v15;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18;
    *(a1 + 64) = v10;
    *(a1 + 72) = v19;
    *(a1 + 80) = v20;
  }

  else
  {
    v6 = (v1[2] + 64) >> 6;
    if (v6 <= v4 + 1)
    {
      v7 = v4 + 1;
    }

    else
    {
      v7 = (v1[2] + 64) >> 6;
    }

    v8 = v7 - 1;
    while (1)
    {
      v5 = v4 + 1;
      if (v4 + 1 >= v6)
      {
        break;
      }

      v3 = *(v1[1] + 8 + 8 * v4++);
      if (v3)
      {
        goto LABEL_9;
      }
    }

    v1[3] = v8;
    v1[4] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t sub_1AF782220(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF6247EC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1AF79F688(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF78228C(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1AFC28858(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1AF79F790(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF782304(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_1AF782388(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_1AF6B0504(v3, v4);

      sub_1AF6B0504(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_1AF782460(unint64_t result, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v6 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2719C70](v8, v6);
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    a3(&v10, a2);

    if (v3)
    {
      break;
    }

    ++v8;
  }

  while (v7 != v8);
  return result;
}

unint64_t sub_1AF78254C(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = (*a2 + 112);
    v8 = *v7;

    sub_1AF5AA544(v6, v8);
    if (v9)
    {

      MEMORY[0x1B2718E00](v10);
      if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
    }

    ++v5;
  }

  while (v4 != v5);
  return result;
}

unint64_t sub_1AF782684(unint64_t result, uint64_t *a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
    }

    v6 = *a2;

    MEMORY[0x1B2718E00](v7);
    if (*((*(v6 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    ++v5;
    sub_1AFDFD4B8();
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_1AF7827B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_1AFC854D0(*(a1 + 16), 0);
    sub_1AFC892B8(&v7, v4 + 4, v2, a1);

    sub_1AF0FBB14();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v4;
  sub_1AF782304(&v8, sub_1AF624800, sub_1AF79F880);
  v5 = v8;
  if (v1)
  {
  }

  return v5;
}

uint64_t sub_1AF7828AC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1AF7A4574(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = MEMORY[0x1E6968FB0];
  sub_1AF7A4574(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], v4);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - v12;
  *(v2 + 136) = a1;

  v14 = sub_1AFDFC128();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1AF7F4084(1, v13);
  sub_1AF7A7C7C(v13, &qword_1ED7315E0, v9);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  v17 = *(a1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock);

  [v17 lock];
  sub_1AFDFC308();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AF7AE9EC;
  *(v18 + 24) = v15;
  v19 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_onUserTemplatesChanged;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + v19);
  *(a1 + v19) = 0x8000000000000000;
  sub_1AF85324C(sub_1AF464154, v18, v8, isUniquelyReferenced_nonNull_native);
  *(a1 + v19) = v24;
  [*(a1 + v16) unlock];

  v21 = sub_1AFDFC318();
  (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  return sub_1AF48710C(v8, v2 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID);
}

uint64_t sub_1AF782B8C()
{
  v1 = *(v0 + 184);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_10:

    v11 = sub_1AF791074(v10);
    if (v12)
    {
      v15 = v12;
      v26 = v14;
      v27 = v13;
      v28 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF42533C(0, v7[2] + 1, 1, v7);
      }

      v17 = v7[2];
      v16 = v7[3];
      v18 = v7;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_1AF42533C(v16 > 1, v17 + 1, 1, v7);
      }

      v18[2] = v17 + 1;
      v7 = v18;
      v8 = &v18[4 * v17];
      v8[4] = v28;
      v8[5] = v15;
      v8[6] = v27;
      v8[7] = v26;
    }

    v4 &= v4 - 1;
  }

  while (1)
  {
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6++ + 72);
    if (v4)
    {
      v6 = v9;
      goto LABEL_10;
    }
  }

  v19 = v7[2];
  if (v19)
  {
    v20 = v7 + 7;
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;

      sub_1AF783728(v21, v22, v23, v24, 1, 0);

      v20 += 4;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1AF782D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[25];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v8)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[21];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v9)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[22];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v10)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[23];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v11)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[24];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v12)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[26];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v13)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[27];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[28];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v15)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[30];
  if (!*(v6 + 16))
  {
    goto LABEL_28;
  }

  v7 = sub_1AF419914(a1, a2);
  if ((v16 & 1) == 0)
  {

LABEL_28:
    v6 = v3[31];
    if (*(v6 + 16))
    {

      v7 = sub_1AF419914(a1, a2);
      if (v17)
      {
        goto LABEL_30;
      }
    }

    return 0;
  }

LABEL_30:
  v18 = *(*(v6 + 56) + 8 * v7);

  return v18;
}

uint64_t sub_1AF782F9C(uint64_t a1, unint64_t a2)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    MEMORY[0x1B2718AE0](95, 0xE100000000000000);
    v6 = sub_1AFDFEA08();
    v8 = v7;

    MEMORY[0x1B2718AE0](v6, v8);

    v9 = a1;
    v10 = a2;
  }

  else
  {
    v9 = sub_1AFDFEA08();
    v10 = v11;
  }

  ++*(v2 + 144);
  v12 = v9;
  if (!sub_1AF782D90(v9, v10))
  {
    return v12;
  }

  return sub_1AF782F9C(a1, a2);
}

uint64_t sub_1AF7830EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AF432690(MEMORY[0x1E69E7CC0]);
  v54 = v4;
  v9 = *(v4 + 256);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v56 = v13;
  v57 = a4;
  v55 = a1;
  while (v12)
  {
    v17 = a3;
LABEL_11:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v14 << 6);
    v21 = (*(v9 + 48) + 16 * v20);
    v22 = *v21;
    v23 = (*(v9 + 56) + 24 * v20);
    v59 = *v23;
    v62 = v21[1];
    v63 = v23[1];
    v24 = v23[2];
    v25 = *v21 == a1 && v21[1] == a2;
    if (v25 || (sub_1AFDFEE28() & 1) != 0)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      a3 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = sub_1AF419914(a3, a4);
      v29 = v28;
      if (v8[3] >= (v8[2] + ((v28 & 1) == 0)))
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = v27;
          sub_1AF8498A8();
          v27 = v50;
        }

        a4 = v57;
      }

      else
      {
        sub_1AF835A74(v8[2] + ((v28 & 1) == 0), isUniquelyReferenced_nonNull_native);
        v27 = sub_1AF419914(a3, a4);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_52;
        }
      }

      a1 = v55;
      if (v29)
      {
        v31 = (v8[7] + 24 * v27);
        *v31 = v59;
        v31[1] = v63;
        v31[2] = v24;

        a4 = v57;
      }

      else
      {
        v8[(v27 >> 6) + 8] |= 1 << v27;
        v15 = (v8[6] + 16 * v27);
        *v15 = a3;
        v15[1] = a4;
        v16 = (v8[7] + 24 * v27);
        *v16 = v59;
        v16[1] = v63;
        v16[2] = v24;
        ++v8[2];
      }

      v13 = v56;
    }

    else
    {
      v32 = v59 == a1 && v63 == a2;
      if (v32 || (sub_1AFDFEE28() & 1) != 0)
      {
        swift_retain_n();

        swift_bridgeObjectRetain_n();

        v60 = swift_isUniquelyReferenced_nonNull_native();
        v33 = sub_1AF419914(v22, v62);
        v35 = v34;
        if (v8[3] >= (v8[2] + ((v34 & 1) == 0)))
        {
          a3 = v17;
          if (v60)
          {
            if ((v34 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v61 = v33;
            sub_1AF8498A8();
            v33 = v61;
            if ((v35 & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          sub_1AF835A74(v8[2] + ((v34 & 1) == 0), v60);
          v33 = sub_1AF419914(v22, v62);
          if ((v35 & 1) != (v36 & 1))
          {
            goto LABEL_52;
          }

          a3 = v17;
          if ((v35 & 1) == 0)
          {
LABEL_32:
            v8[(v33 >> 6) + 8] |= 1 << v33;
            v37 = (v8[6] + 16 * v33);
            *v37 = v22;
            v37[1] = v62;
            v38 = (v8[7] + 24 * v33);
            a4 = v57;
            *v38 = a3;
            v38[1] = v57;
            v38[2] = v24;
            ++v8[2];

            goto LABEL_36;
          }
        }

        v39 = (v8[7] + 24 * v33);
        a4 = v57;
        *v39 = a3;
        v39[1] = v57;
        v39[2] = v24;

        swift_bridgeObjectRelease_n();

LABEL_36:

        v13 = v56;
      }

      else
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v53 = swift_isUniquelyReferenced_nonNull_native();
        v64 = v8;
        v41 = sub_1AF419914(v22, v62);
        v42 = v8[2] + ((v40 & 1) == 0);
        if (v8[3] >= v42)
        {
          a3 = v17;
          if ((v53 & 1) == 0)
          {
            v51 = v40;
            sub_1AF8498A8();
            v40 = v51;
          }

          v46 = v24;
        }

        else
        {
          v43 = v40;
          sub_1AF835A74(v42, v53);
          v44 = sub_1AF419914(v22, v62);
          if ((v43 & 1) != (v45 & 1))
          {
LABEL_52:
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v41 = v44;
          v40 = v43;
          v46 = v24;
          a3 = v17;
        }

        v8 = v64;
        if (v40)
        {
          v47 = (v64[7] + 24 * v41);
          *v47 = v59;
          v47[1] = v63;
          v47[2] = v46;
        }

        else
        {
          v64[(v41 >> 6) + 8] |= 1 << v41;
          v48 = (v64[6] + 16 * v41);
          *v48 = v22;
          v48[1] = v62;
          v49 = (v64[7] + 24 * v41);
          *v49 = v59;
          v49[1] = v63;
          v49[2] = v46;
          ++v64[2];
        }

        v13 = v56;
        a4 = v57;
      }
    }
  }

  while (1)
  {
    v18 = v14 + 1;
    if (v14 + 1 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14++ + 72);
    if (v12)
    {
      v17 = a3;
      v14 = v18;
      goto LABEL_11;
    }
  }

  *(v54 + 256) = v8;
}

uint64_t sub_1AF783728(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v9 = a2;
  v448 = result;
  if (result == a3 && a2 == a4)
  {
    return result;
  }

  result = sub_1AFDFEE28();
  if (result)
  {
    return result;
  }

  v436 = sub_1AF432980(MEMORY[0x1E69E7CC0]);

  v11 = sub_1AF7A3C1C(v10, a6 & 1, v448, v9, sub_1AF8FC1C4);

  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v444 = v7;
  v445 = a4;
  v447 = v9;
  v411 = v11;
  v413 = v15;
  while (v14)
  {
    v19 = v16;
LABEL_13:
    v20 = __clz(__rbit64(v14)) | (v19 << 6);
    v21 = (*(v11 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v11 + 56) + 8 * v20);
    sub_1AF4486E4();

    *(v24 + 24) = sub_1AFDFDEB8();
    *(v24 + 32) = v25;

    v427 = v22;
    v26 = sub_1AF419914(v23, v22);
    if (v27)
    {
      v28 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v7[23];
      v7[23] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84C2DC();
      }

      sub_1AF6B7624(v28, v30);
      v7[23] = v30;
    }

    v32 = *(v24 + 24);
    v31 = *(v24 + 32);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v7[23];
    v7[23] = 0x8000000000000000;
    v36 = sub_1AF419914(v32, v31);
    v37 = v35;
    v38 = v34[2] + ((v35 & 1) == 0);
    if (v34[3] >= v38)
    {
      if (v33)
      {
        v41 = v34;
        if ((v35 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AF84C2DC();
        v41 = v34;
        if ((v37 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1AF83AE94(v38, v33);
      v39 = sub_1AF419914(v32, v31);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_250;
      }

      v36 = v39;
      v41 = v34;
      if ((v37 & 1) == 0)
      {
LABEL_20:
        v41[(v36 >> 6) + 8] |= 1 << v36;
        v42 = (v41[6] + 16 * v36);
        *v42 = v32;
        v42[1] = v31;
        *(v41[7] + 8 * v36) = v24;
        ++v41[2];
        goto LABEL_24;
      }
    }

    *(v41[7] + 8 * v36) = v24;

LABEL_24:
    v7 = v444;
    v444[23] = v41;
    v43 = *(v24 + 32);
    v416 = *(v24 + 24);

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v427;
    v46 = sub_1AF419914(v23, v427);
    v48 = v47;
    v49 = v436[2] + ((v47 & 1) == 0);
    if (v436[3] >= v49)
    {
      if ((v44 & 1) == 0)
      {
        v52 = v46;
        sub_1AF849704();
        v46 = v52;
      }

      v45 = v427;
    }

    else
    {
      sub_1AF8357A0(v49, v44);
      v46 = sub_1AF419914(v23, v427);
      if ((v48 & 1) != (v50 & 1))
      {
LABEL_250:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    v14 &= v14 - 1;
    if (v48)
    {
      v51 = (v436[7] + 16 * v46);
      *v51 = v416;
      v51[1] = v43;
    }

    else
    {
      v436[(v46 >> 6) + 8] |= 1 << v46;
      v17 = (v436[6] + 16 * v46);
      *v17 = v23;
      v17[1] = v45;
      v18 = (v436[7] + 16 * v46);
      *v18 = v416;
      v18[1] = v43;
      ++v436[2];
    }

    v16 = v19;
    v9 = v447;
    v11 = v411;
    v15 = v413;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (v16 + 1 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v16++ + 72);
    if (v14)
    {
      goto LABEL_13;
    }
  }

  v54 = sub_1AF7A3C1C(v53, a6 & 1, v448, v9, sub_1AF8FC1A4);

  v55 = 1 << *(v54 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v54 + 64);
  v58 = (v55 + 63) >> 6;

  v59 = 0;
  v417 = v58;
  while (v57)
  {
    v62 = v59;
LABEL_43:
    v63 = __clz(__rbit64(v57)) | (v62 << 6);
    v64 = (*(v54 + 48) + 16 * v63);
    v66 = *v64;
    v65 = v64[1];
    v67 = *(*(v54 + 56) + 8 * v63);
    sub_1AF4486E4();

    *(v67 + 24) = sub_1AFDFDEB8();
    *(v67 + 32) = v68;

    v428 = v66;
    v69 = sub_1AF419914(v66, v65);
    if (v70)
    {
      v71 = v69;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v7[24];
      v7[24] = 0x8000000000000000;
      if (!v72)
      {
        sub_1AF84C33C();
      }

      sub_1AF6B7624(v71, v73);
      v7[24] = v73;
    }

    v75 = *(v67 + 24);
    v74 = *(v67 + 32);

    v76 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v7;
    v78 = v76;
    v79 = v77[24];
    v77[24] = 0x8000000000000000;
    v80 = sub_1AF419914(v75, v74);
    v82 = v81;
    v83 = v79[2] + ((v81 & 1) == 0);
    if (v79[3] >= v83)
    {
      if ((v78 & 1) == 0)
      {
        v95 = v80;
        sub_1AF84C33C();
        v80 = v95;
      }
    }

    else
    {
      sub_1AF83AEF4(v83, v78);
      v80 = sub_1AF419914(v75, v74);
      if ((v82 & 1) != (v84 & 1))
      {
        goto LABEL_250;
      }
    }

    if (v82)
    {
      *(v79[7] + 8 * v80) = v67;
    }

    else
    {
      v79[(v80 >> 6) + 8] |= 1 << v80;
      v85 = (v79[6] + 16 * v80);
      *v85 = v75;
      v85[1] = v74;
      *(v79[7] + 8 * v80) = v67;
      ++v79[2];
    }

    v444[24] = v79;
    v86 = *(v67 + 32);
    v424 = *(v67 + 24);

    v87 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v428;
    v89 = sub_1AF419914(v428, v65);
    v91 = v90;
    v92 = v436[2] + ((v90 & 1) == 0);
    if (v436[3] >= v92)
    {
      if ((v87 & 1) == 0)
      {
        v96 = v89;
        sub_1AF849704();
        v89 = v96;
      }

      v88 = v428;
    }

    else
    {
      sub_1AF8357A0(v92, v87);
      v89 = sub_1AF419914(v428, v65);
      if ((v91 & 1) != (v93 & 1))
      {
        goto LABEL_250;
      }
    }

    v57 &= v57 - 1;
    if (v91)
    {
      v94 = (v436[7] + 16 * v89);
      *v94 = v424;
      v94[1] = v86;
    }

    else
    {
      v436[(v89 >> 6) + 8] |= 1 << v89;
      v60 = (v436[6] + 16 * v89);
      *v60 = v88;
      v60[1] = v65;
      v61 = (v436[7] + 16 * v89);
      *v61 = v424;
      v61[1] = v86;
      ++v436[2];
    }

    v59 = v62;
    v7 = v444;
    v9 = v447;
    v58 = v417;
  }

  while (1)
  {
    v62 = v59 + 1;
    if (v59 + 1 >= v58)
    {
      break;
    }

    v57 = *(v54 + 8 * v59++ + 72);
    if (v57)
    {
      goto LABEL_43;
    }
  }

  v98 = sub_1AF7A3C1C(v97, a6 & 1, v448, v9, sub_1AF8FC184);

  v99 = 1 << *(v98 + 32);
  v100 = -1;
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  v101 = v100 & *(v98 + 64);
  v102 = (v99 + 63) >> 6;

  v103 = 0;
  v418 = v102;
  while (v101)
  {
    v106 = v103;
LABEL_72:
    v107 = __clz(__rbit64(v101)) | (v106 << 6);
    v108 = (*(v98 + 48) + 16 * v107);
    v110 = *v108;
    v109 = v108[1];
    v111 = *(*(v98 + 56) + 8 * v107);
    sub_1AF4486E4();

    *(v111 + 24) = sub_1AFDFDEB8();
    *(v111 + 32) = v112;

    v429 = v110;
    v113 = sub_1AF419914(v110, v109);
    if (v114)
    {
      v115 = v113;
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v7[26];
      v7[26] = 0x8000000000000000;
      if (!v116)
      {
        sub_1AF84C354();
      }

      sub_1AF6B7624(v115, v117);
      v7[26] = v117;
    }

    v119 = *(v111 + 24);
    v118 = *(v111 + 32);

    v120 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v7;
    v122 = v120;
    v123 = v121[26];
    v121[26] = 0x8000000000000000;
    v124 = sub_1AF419914(v119, v118);
    v126 = v125;
    v127 = v123[2] + ((v125 & 1) == 0);
    if (v123[3] >= v127)
    {
      if ((v122 & 1) == 0)
      {
        v139 = v124;
        sub_1AF84C354();
        v124 = v139;
      }
    }

    else
    {
      sub_1AF83AF0C(v127, v122);
      v124 = sub_1AF419914(v119, v118);
      if ((v126 & 1) != (v128 & 1))
      {
        goto LABEL_250;
      }
    }

    if (v126)
    {
      *(v123[7] + 8 * v124) = v111;
    }

    else
    {
      v123[(v124 >> 6) + 8] |= 1 << v124;
      v129 = (v123[6] + 16 * v124);
      *v129 = v119;
      v129[1] = v118;
      *(v123[7] + 8 * v124) = v111;
      ++v123[2];
    }

    v444[26] = v123;
    v130 = *(v111 + 32);
    v425 = *(v111 + 24);

    v131 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v429;
    v133 = sub_1AF419914(v429, v109);
    v135 = v134;
    v136 = v436[2] + ((v134 & 1) == 0);
    if (v436[3] >= v136)
    {
      if ((v131 & 1) == 0)
      {
        v140 = v133;
        sub_1AF849704();
        v133 = v140;
      }

      v132 = v429;
    }

    else
    {
      sub_1AF8357A0(v136, v131);
      v133 = sub_1AF419914(v429, v109);
      if ((v135 & 1) != (v137 & 1))
      {
        goto LABEL_250;
      }
    }

    v101 &= v101 - 1;
    if (v135)
    {
      v138 = (v436[7] + 16 * v133);
      *v138 = v425;
      v138[1] = v130;
    }

    else
    {
      v436[(v133 >> 6) + 8] |= 1 << v133;
      v104 = (v436[6] + 16 * v133);
      *v104 = v132;
      v104[1] = v109;
      v105 = (v436[7] + 16 * v133);
      *v105 = v425;
      v105[1] = v130;
      ++v436[2];
    }

    v103 = v106;
    v7 = v444;
    v9 = v447;
    v102 = v418;
  }

  while (1)
  {
    v106 = v103 + 1;
    if (v103 + 1 >= v102)
    {
      break;
    }

    v101 = *(v98 + 8 * v103++ + 72);
    if (v101)
    {
      goto LABEL_72;
    }
  }

  v142 = sub_1AF7A3C1C(v141, a6 & 1, v448, v9, sub_1AF8FC164);

  v143 = 1 << *(v142 + 32);
  v144 = -1;
  if (v143 < 64)
  {
    v144 = ~(-1 << v143);
  }

  v145 = v144 & *(v142 + 64);
  v146 = (v143 + 63) >> 6;

  v147 = 0;
  v419 = v146;
  while (v145)
  {
    v150 = v147;
LABEL_101:
    v151 = __clz(__rbit64(v145)) | (v150 << 6);
    v152 = (*(v142 + 48) + 16 * v151);
    v154 = *v152;
    v153 = v152[1];
    v155 = *(*(v142 + 56) + 8 * v151);
    sub_1AF4486E4();

    *(v155 + 24) = sub_1AFDFDEB8();
    *(v155 + 32) = v156;

    v430 = v154;
    v157 = sub_1AF419914(v154, v153);
    if (v158)
    {
      v159 = v157;
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v161 = v7[30];
      v7[30] = 0x8000000000000000;
      if (!v160)
      {
        sub_1AF84C36C();
      }

      sub_1AF6B7624(v159, v161);
      v7[30] = v161;
    }

    v163 = *(v155 + 24);
    v162 = *(v155 + 32);

    v164 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v7;
    v166 = v164;
    v167 = v165[30];
    v165[30] = 0x8000000000000000;
    v168 = sub_1AF419914(v163, v162);
    v170 = v169;
    v171 = v167[2] + ((v169 & 1) == 0);
    if (v167[3] >= v171)
    {
      if ((v166 & 1) == 0)
      {
        v183 = v168;
        sub_1AF84C36C();
        v168 = v183;
      }
    }

    else
    {
      sub_1AF83AF24(v171, v166);
      v168 = sub_1AF419914(v163, v162);
      if ((v170 & 1) != (v172 & 1))
      {
        goto LABEL_250;
      }
    }

    if (v170)
    {
      *(v167[7] + 8 * v168) = v155;
    }

    else
    {
      v167[(v168 >> 6) + 8] |= 1 << v168;
      v173 = (v167[6] + 16 * v168);
      *v173 = v163;
      v173[1] = v162;
      *(v167[7] + 8 * v168) = v155;
      ++v167[2];
    }

    v444[30] = v167;
    v174 = *(v155 + 32);
    v426 = *(v155 + 24);

    v175 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v430;
    v177 = sub_1AF419914(v430, v153);
    v179 = v178;
    v180 = v436[2] + ((v178 & 1) == 0);
    if (v436[3] >= v180)
    {
      if ((v175 & 1) == 0)
      {
        v184 = v177;
        sub_1AF849704();
        v177 = v184;
      }

      v176 = v430;
    }

    else
    {
      sub_1AF8357A0(v180, v175);
      v177 = sub_1AF419914(v430, v153);
      if ((v179 & 1) != (v181 & 1))
      {
        goto LABEL_250;
      }
    }

    v145 &= v145 - 1;
    if (v179)
    {
      v182 = (v436[7] + 16 * v177);
      *v182 = v426;
      v182[1] = v174;
    }

    else
    {
      v436[(v177 >> 6) + 8] |= 1 << v177;
      v148 = (v436[6] + 16 * v177);
      *v148 = v176;
      v148[1] = v153;
      v149 = (v436[7] + 16 * v177);
      *v149 = v426;
      v149[1] = v174;
      ++v436[2];
    }

    v147 = v150;
    v7 = v444;
    v9 = v447;
    v146 = v419;
  }

  while (1)
  {
    v150 = v147 + 1;
    if (v147 + 1 >= v146)
    {
      break;
    }

    v145 = *(v142 + 8 * v147++ + 72);
    if (v145)
    {
      goto LABEL_101;
    }
  }

  v185 = v436;

  v187 = sub_1AF7A3C1C(v186, a6 & 1, v448, v9, sub_1AF8FC144);

  v188 = 1 << *(v187 + 32);
  v189 = -1;
  if (v188 < 64)
  {
    v189 = ~(-1 << v188);
  }

  v190 = v189 & *(v187 + 64);
  v191 = (v188 + 63) >> 6;

  v192 = 0;
  while (v190)
  {
    v437 = v185;
LABEL_130:
    v200 = __clz(__rbit64(v190)) | (v192 << 6);
    v201 = (*(v187 + 48) + 16 * v200);
    v203 = *v201;
    v202 = v201[1];
    v204 = *(*(v187 + 56) + 8 * v200);
    sub_1AF4486E4();

    *(v204 + 24) = sub_1AFDFDEB8();
    *(v204 + 32) = v205;

    v431 = v203;
    v206 = sub_1AF419914(v203, v202);
    if (v207)
    {
      v208 = v206;
      v209 = swift_isUniquelyReferenced_nonNull_native();
      v452 = v444[31];
      v444[31] = 0x8000000000000000;
      sub_1AF842F8C(v209, *(v452 + 24));

      sub_1AF6B7624(v208, v452);
      v444[31] = v452;
    }

    v190 &= v190 - 1;
    v193 = *(v204 + 24);
    v194 = *(v204 + 32);

    v195 = swift_isUniquelyReferenced_nonNull_native();
    v451 = v444[31];
    v444[31] = 0x8000000000000000;
    sub_1AF856DC0(v204, v193, v194, v195);

    v444[31] = v451;
    v196 = *(v204 + 24);
    v197 = *(v204 + 32);

    v198 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AF854CE8(v196, v197, v431, v202, v198);

    v185 = v437;
  }

  while (1)
  {
    v199 = v192 + 1;
    if (v192 + 1 >= v191)
    {
      break;
    }

    v190 = *(v187 + 8 * v192++ + 72);
    if (v190)
    {
      v437 = v185;
      v192 = v199;
      goto LABEL_130;
    }
  }

  v211 = sub_1AF7A3C1C(v210, a6 & 1, v448, v447, sub_1AF8FC124);

  v212 = v185;

  v213 = 1 << *(v211 + 32);
  v214 = -1;
  if (v213 < 64)
  {
    v214 = ~(-1 << v213);
  }

  v215 = v214 & *(v211 + 64);
  v216 = (v213 + 63) >> 6;

  v217 = 0;
  while (v215)
  {
    v438 = v212;
LABEL_141:
    v225 = __clz(__rbit64(v215)) | (v217 << 6);
    v226 = (*(v211 + 48) + 16 * v225);
    v228 = *v226;
    v227 = v226[1];
    v229 = *(*(v211 + 56) + 8 * v225);
    sub_1AF4486E4();

    *(v229 + 24) = sub_1AFDFDEB8();
    *(v229 + 32) = v230;

    v432 = v228;
    v231 = sub_1AF419914(v228, v227);
    if (v232)
    {
      v233 = v231;
      v234 = swift_isUniquelyReferenced_nonNull_native();
      v454 = v444[27];
      v444[27] = 0x8000000000000000;
      sub_1AF842FB8(v234, *(v454 + 24));

      sub_1AF6B7624(v233, v454);
      v444[27] = v454;
    }

    v215 &= v215 - 1;
    v218 = *(v229 + 24);
    v219 = *(v229 + 32);

    v220 = swift_isUniquelyReferenced_nonNull_native();
    v453 = v444[27];
    v444[27] = 0x8000000000000000;
    sub_1AF856DEC(v229, v218, v219, v220);

    v444[27] = v453;
    v221 = *(v229 + 24);
    v222 = *(v229 + 32);

    v223 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AF854CE8(v221, v222, v432, v227, v223);

    v212 = v438;
  }

  while (1)
  {
    v224 = v217 + 1;
    if (v217 + 1 >= v216)
    {
      break;
    }

    v215 = *(v211 + 8 * v217++ + 72);
    if (v215)
    {
      v438 = v212;
      v217 = v224;
      goto LABEL_141;
    }
  }

  v460 = v212;

  v236 = sub_1AF7A3C1C(v235, a6 & 1, v448, v447, sub_1AF8FC104);

  v237 = 1 << *(v236 + 32);
  v238 = -1;
  if (v237 < 64)
  {
    v238 = ~(-1 << v237);
  }

  v239 = v238 & *(v236 + 64);
  v240 = (v237 + 63) >> 6;

  v241 = 0;
  while (v239)
  {
    v246 = v444 + 28;
LABEL_153:
    v248 = __clz(__rbit64(v239)) | (v241 << 6);
    v249 = (*(v236 + 48) + 16 * v248);
    v250 = *v249;
    v251 = v249[1];
    v252 = *(*(v236 + 56) + 8 * v248);
    sub_1AF4486E4();

    *(v252 + 24) = sub_1AFDFDEB8();
    *(v252 + 32) = v253;

    v254 = sub_1AF419914(v250, v251);
    if (v255)
    {
      v256 = v254;
      v257 = swift_isUniquelyReferenced_nonNull_native();
      v455 = *v246;
      v258 = *v246;
      *v246 = 0x8000000000000000;
      sub_1AF842FE4(v257, *(v258 + 24));

      sub_1AF6B7624(v256, v455);
      v444[28] = v455;
    }

    v239 &= v239 - 1;
    v242 = *(v252 + 24);
    v243 = *(v252 + 32);

    sub_1AF825EEC(v252, v242, v243);
    v244 = *(v252 + 24);
    v245 = *(v252 + 32);

    sub_1AF8252CC(v244, v245, v250, v251);
  }

  v246 = v444 + 28;
  while (1)
  {
    v247 = v241 + 1;
    if (v241 + 1 >= v240)
    {
      break;
    }

    v239 = *(v236 + 8 * v241++ + 72);
    if (v239)
    {
      v241 = v247;
      goto LABEL_153;
    }
  }

  v260 = sub_1AF7A3C1C(v259, a6 & 1, v448, v447, sub_1AF8FC0E4);

  v261 = 1 << *(v260 + 32);
  v262 = -1;
  if (v261 < 64)
  {
    v262 = ~(-1 << v261);
  }

  v263 = v262 & *(v260 + 64);
  v264 = (v261 + 63) >> 6;

  v265 = 0;
  while (v263)
  {
    v270 = v444 + 25;
LABEL_165:
    v272 = __clz(__rbit64(v263)) | (v265 << 6);
    v273 = (*(v260 + 48) + 16 * v272);
    v274 = *v273;
    v275 = v273[1];
    v276 = *(*(v260 + 56) + 8 * v272);
    sub_1AF4486E4();

    *(v276 + 24) = sub_1AFDFDEB8();
    *(v276 + 32) = v277;

    v278 = sub_1AF419914(v274, v275);
    if (v279)
    {
      v280 = v278;
      v281 = swift_isUniquelyReferenced_nonNull_native();
      v456 = *v270;
      v282 = *v270;
      *v270 = 0x8000000000000000;
      sub_1AF842F08(v281, *(v282 + 24));

      sub_1AF6B7624(v280, v456);
      v444[25] = v456;
    }

    v263 &= v263 - 1;
    v266 = *(v276 + 24);
    v267 = *(v276 + 32);

    sub_1AF825DF0(v276, v266, v267);
    v268 = *(v276 + 24);
    v269 = *(v276 + 32);

    sub_1AF8252CC(v268, v269, v274, v275);
  }

  v270 = v444 + 25;
  while (1)
  {
    v271 = v265 + 1;
    if (v265 + 1 >= v264)
    {
      break;
    }

    v263 = *(v260 + 8 * v265++ + 72);
    if (v263)
    {
      v265 = v271;
      goto LABEL_165;
    }
  }

  v284 = sub_1AF7A3C1C(v283, a6 & 1, v448, v447, sub_1AF8FC0C4);

  v285 = 1 << *(v284 + 32);
  v286 = -1;
  if (v285 < 64)
  {
    v286 = ~(-1 << v285);
  }

  v287 = v286 & *(v284 + 64);
  v288 = (v285 + 63) >> 6;

  v289 = 0;
  v290 = v444 + 21;
  v420 = v444 + 21;
  while (v287)
  {
LABEL_176:
    v299 = __clz(__rbit64(v287)) | (v289 << 6);
    v300 = (*(v284 + 48) + 16 * v299);
    v439 = *v300;
    v301 = *(*(v284 + 56) + 8 * v299);
    v302 = *(v301 + 24);
    v303 = *(v301 + 32);
    v433 = v300[1];

    v304 = sub_1AF419914(v302, v303);
    if (v305)
    {
      v306 = v304;
      v307 = swift_isUniquelyReferenced_nonNull_native();
      v457 = *v290;
      v308 = *v290;
      *v290 = 0x8000000000000000;
      sub_1AF842F60(v307, *(v308 + 24));

      sub_1AF6B7624(v306, v457);
      *v420 = v457;

      v291 = v444 + 21;
    }

    else
    {

      v291 = v290;
    }

    v287 &= v287 - 1;
    sub_1AF4486E4();
    v292 = sub_1AFDFDEB8();
    v294 = v293;
    *(v301 + 24) = v292;
    *(v301 + 32) = v293;

    v290 = v291;
    sub_1AF825E44(v295, v292, v294);
    v296 = *(v301 + 24);
    v297 = *(v301 + 32);

    sub_1AF8252CC(v296, v297, v439, v433);
  }

  while (1)
  {
    v298 = v289 + 1;
    if (v289 + 1 >= v288)
    {
      break;
    }

    v287 = *(v284 + 8 * v289++ + 72);
    if (v287)
    {
      v289 = v298;
      goto LABEL_176;
    }
  }

  v310 = sub_1AF7A3C1C(v309, a6 & 1, v448, v447, sub_1AF8FBE68);

  v311 = 1 << *(v310 + 32);
  v312 = -1;
  if (v311 < 64)
  {
    v312 = ~(-1 << v311);
  }

  v313 = v312 & *(v310 + 64);
  v314 = (v311 + 63) >> 6;

  v315 = 0;
  v316 = v444 + 22;
  while (v313)
  {
LABEL_187:
    v325 = __clz(__rbit64(v313)) | (v315 << 6);
    v326 = (*(v310 + 48) + 16 * v325);
    v440 = *v326;
    v327 = *(*(v310 + 56) + 8 * v325);
    v328 = *(v327 + 24);
    v329 = *(v327 + 32);
    v434 = v326[1];

    v330 = sub_1AF419914(v328, v329);
    if (v331)
    {
      v332 = v330;
      v333 = swift_isUniquelyReferenced_nonNull_native();
      v458 = *v316;
      v334 = *v316;
      *v316 = 0x8000000000000000;
      sub_1AF842F34(v333, *(v334 + 24));

      sub_1AF6B7624(v332, v458);
      v444[22] = v458;

      v317 = v444 + 22;
    }

    else
    {

      v317 = v316;
    }

    v313 &= v313 - 1;
    sub_1AF4486E4();
    v318 = sub_1AFDFDEB8();
    v320 = v319;
    *(v327 + 24) = v318;
    *(v327 + 32) = v319;

    v316 = v317;
    sub_1AF825E98(v321, v318, v320);
    v322 = *(v327 + 24);
    v323 = *(v327 + 32);

    sub_1AF8252CC(v322, v323, v440, v434);
  }

  while (1)
  {
    v324 = v315 + 1;
    if (v315 + 1 >= v314)
    {
      break;
    }

    v313 = *(v310 + 8 * v315++ + 72);
    if (v313)
    {
      v315 = v324;
      goto LABEL_187;
    }
  }

  v336 = sub_1AF7A3FD4(v335, a6 & 1);

  v337 = 1 << *(v336 + 32);
  v338 = -1;
  if (v337 < 64)
  {
    v338 = ~(-1 << v337);
  }

  v339 = v338 & *(v336 + 64);
  v340 = (v337 + 63) >> 6;

  v341 = 0;
  while (v339)
  {
LABEL_197:
    v347 = __clz(__rbit64(v339)) | (v341 << 6);
    v348 = (*(v336 + 48) + 16 * v347);
    v349 = *v348;
    v350 = v348[1];
    v351 = *(*(v336 + 56) + 8 * v347);
    sub_1AF4486E4();

    v351[5] = sub_1AFDFDEB8();
    v351[6] = v352;

    if (a5)
    {
      v351[3] = sub_1AFDFDEB8();
      v351[4] = v353;
    }

    v441 = v349;
    v354 = sub_1AF419914(v349, v350);
    if (v355)
    {
      v356 = v354;
      v357 = swift_isUniquelyReferenced_nonNull_native();
      v459 = v444[33];
      v444[33] = 0x8000000000000000;
      sub_1AF842EB0(v357, *(v459 + 24));

      sub_1AF6B7624(v356, v459);
      v444[33] = v459;
    }

    v339 &= v339 - 1;
    v342 = v351[5];
    v343 = v351[6];

    sub_1AF8253D4(v351, v342, v343);
    v344 = v351[5];
    v345 = v351[6];

    sub_1AF8252CC(v344, v345, v441, v350);
  }

  while (1)
  {
    v346 = v341 + 1;
    if (v341 + 1 >= v340)
    {
      break;
    }

    v339 = *(v336 + 8 * v341++ + 72);
    if (v339)
    {
      v341 = v346;
      goto LABEL_197;
    }
  }

  v358 = v445;
  if (a5)
  {
    v359 = *v420;
    v360 = 1 << *(*v420 + 32);
    v361 = -1;
    if (v360 < 64)
    {
      v361 = ~(-1 << v360);
    }

    v362 = v361 & *(*v420 + 64);
    v363 = (v360 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v364 = 0;
    v365 = v444 + 22;
    v412 = v363;
    v414 = v359;
    while (v362)
    {
LABEL_210:
      v368 = *(*(v359 + 56) + 8 * (__clz(__rbit64(v362)) | (v364 << 6)));
      v369 = *(v368 + 80);
      v370 = *(v369 + 16);
      if (v370)
      {
        v442 = v362;
        v449 = MEMORY[0x1E69E7CC0];

        v421 = v368;

        sub_1AFB8C2AC(v370);
        sub_1AF4486E4();
        v371 = v449;
        v372 = v369 + 40;
        do
        {
          v373 = sub_1AFDFDEB8();
          v375 = v374;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC05CE4(0, *(v371 + 16) + 1, 1);
            v371 = v449;
          }

          v377 = *(v371 + 16);
          v376 = *(v371 + 24);
          if (v377 >= v376 >> 1)
          {
            sub_1AFC05CE4(v376 > 1, v377 + 1, 1);
            v371 = v449;
          }

          *(v371 + 16) = v377 + 1;
          v378 = v371 + 16 * v377;
          *(v378 + 32) = v373;
          *(v378 + 40) = v375;
          v372 += 16;
          --v370;
          v358 = v445;
        }

        while (v370);

        v359 = v414;
        v366 = v421;
        v365 = v444 + 22;
        v363 = v412;
        v362 = v442;
      }

      else
      {

        v371 = MEMORY[0x1E69E7CC0];
      }

      v362 &= v362 - 1;
      *(v366 + 80) = v371;
    }

    while (1)
    {
      v367 = v364 + 1;
      if (v364 + 1 >= v363)
      {
        break;
      }

      v362 = *(v359 + 8 * v364++ + 72);
      if (v362)
      {
        v364 = v367;
        goto LABEL_210;
      }
    }

    v379 = *v365;
    v380 = 1 << *(v379 + 32);
    v381 = -1;
    if (v380 < 64)
    {
      v381 = ~(-1 << v380);
    }

    v382 = v381 & *(v379 + 64);
    v383 = (v380 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v384 = 0;
    v415 = v383;
    v422 = v379;
    while (v382)
    {
LABEL_227:
      v386 = *(*(v379 + 56) + 8 * (__clz(__rbit64(v382)) | (v384 << 6)));
      v387 = *(v386 + 40);
      v388 = *(v387 + 16);
      if (v388)
      {
        v443 = v382;
        v450 = MEMORY[0x1E69E7CC0];

        sub_1AFB8C2AC(v388);
        sub_1AF4486E4();
        v389 = v450;
        v390 = v387 + 40;
        do
        {
          v391 = sub_1AFDFDEB8();
          v393 = v392;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC05CE4(0, *(v389 + 16) + 1, 1);
            v389 = v450;
          }

          v395 = *(v389 + 16);
          v394 = *(v389 + 24);
          if (v395 >= v394 >> 1)
          {
            sub_1AFC05CE4(v394 > 1, v395 + 1, 1);
            v389 = v450;
          }

          *(v389 + 16) = v395 + 1;
          v396 = v389 + 16 * v395;
          *(v396 + 32) = v391;
          *(v396 + 40) = v393;
          v390 += 16;
          --v388;
          v358 = v445;
        }

        while (v388);

        v379 = v422;
        v383 = v415;
        v382 = v443;
      }

      else
      {

        v389 = MEMORY[0x1E69E7CC0];
      }

      v382 &= v382 - 1;
      *(v386 + 40) = v389;
    }

    while (1)
    {
      v385 = v384 + 1;
      if (v384 + 1 >= v383)
      {
        break;
      }

      v382 = *(v379 + 8 * v384++ + 72);
      if (v382)
      {
        v384 = v385;
        goto LABEL_227;
      }
    }
  }

  v397 = 1 << *(v460 + 32);
  v398 = -1;
  if (v397 < 64)
  {
    v398 = ~(-1 << v397);
  }

  v399 = v398 & v460[8];
  v400 = (v397 + 63) >> 6;

  v401 = 0;
  while (v399)
  {
    v402 = v401;
LABEL_244:
    v403 = __clz(__rbit64(v399));
    v399 &= v399 - 1;
    v404 = (v402 << 10) | (16 * v403);
    v405 = (v460[6] + v404);
    v406 = *v405;
    v407 = v405[1];
    v408 = (v460[7] + v404);
    v409 = *v408;
    v410 = v408[1];

    sub_1AF7830EC(v406, v407, v409, v410);
  }

  while (1)
  {
    v402 = v401 + 1;
    if (v401 + 1 >= v400)
    {
      break;
    }

    v399 = v460[v401++ + 9];
    if (v399)
    {
      v401 = v402;
      goto LABEL_244;
    }
  }

  if ((a6 & 1) == 0)
  {
    sub_1AF7830EC(v448, v447, a3, v358);
  }
}

uint64_t sub_1AF785FB4()
{
  v1 = v0;
  v2 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  if (*(v1 + 16))
  {

    v4 = sub_1AF7AA418(v3, v1, sub_1AF7AAF38, sub_1AF7AAF38);

    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (v9 + 1 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v9++ + 72);
          if (v7)
          {
            v9 = v12;
            goto LABEL_11;
          }
        }

        return v2;
      }

LABEL_11:
      v13 = __clz(__rbit64(v7)) | (v9 << 6);
      v14 = (*(v4 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_1AF4455CC(*(v4 + 56) + 88 * v13, &v40);
      v39[0] = v16;
      v39[1] = v15;

      if (sub_1AFDFD178())
      {

        sub_1AFDFD048();

        v17 = sub_1AF701628();
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v16 = MEMORY[0x1B27189E0](v17, v19, v21, v23);
        v15 = v24;
      }

      else
      {
      }

      sub_1AF7A74D0(&v41, v37, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v37, &v38);
      swift_dynamicCast();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_1AF419914(v16, v15);
      v28 = v27;
      v29 = v2[2] + ((v27 & 1) == 0);
      if (v2[3] < v29)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v33 = v26;
      sub_1AF849704();
      v26 = v33;
      v31 = v35;
      if ((v28 & 1) == 0)
      {
LABEL_5:
        v2[(v26 >> 6) + 8] |= 1 << v26;
        v10 = (v2[6] + 16 * v26);
        *v10 = v16;
        v10[1] = v15;
        v11 = (v2[7] + 16 * v26);
        *v11 = v31;
        v11[1] = v36;
        ++v2[2];
        goto LABEL_6;
      }

LABEL_19:
      v32 = (v2[7] + 16 * v26);
      *v32 = v31;
      v32[1] = v36;

LABEL_6:
      v7 &= v7 - 1;
      sub_1AF7A7124(v39);
    }

    sub_1AF8357A0(v29, isUniquelyReferenced_nonNull_native);
    v26 = sub_1AF419914(v16, v15);
    if ((v28 & 1) != (v30 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_18:
    v31 = v35;
    if ((v28 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  return v2;
}

void *sub_1AF78633C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);

  v9 = sub_1AF782F9C(v7, v8);
  v11 = v10;

  v12 = *(v4 + 136);
  _s11CodeSnippetCMa();
  swift_allocObject();

  v14 = sub_1AF7752A8(v13, v9, v11, 0, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v21 = *(v4 + 200);
  *(v4 + 200) = 0x8000000000000000;
  sub_1AF856CE4(v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v4 + 200) = v21;
  sub_1AF7FDC2C(0x65756C6176, 0xE500000000000000, &v19);
  if (v20)
  {
    sub_1AF449D40(&v19, &v21);
    v16 = v22;
    v17 = sub_1AF441150(&v21, v22);
    sub_1AF77087C(v17, v16);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v21);
  }

  else
  {
    sub_1AF7A2FA4(&v19, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  }

  sub_1AF763CA8(a1, 0);
  sub_1AF786504(a1, v14, a3 & 1);
  sub_1AF7868E8(a1);
  return v14;
}

uint64_t sub_1AF786504(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = (*(*a1 + 1024))(a1);
    v8 = v7;
    if (v6 == (*(*a2 + 1024))() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_1AFDFEE28();

      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  v14 = sub_1AF7AA0A4(v13, v3, a1, sub_1AF7A9DCC, sub_1AF7A9DCC);

  v45 = a1;

  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
    v20 = v19;
LABEL_16:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v20 << 6);
    v23 = (*(v14 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = (*(v14 + 56) + 24 * v22);
    v27 = *v26;
    v28 = v26[1];

    sub_1AF7ADF54(v24, v25, v27, v28, v4, a2);
  }

  while (1)
  {
    v20 = v19 + 1;
    if (v19 + 1 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19++ + 72);
    if (v17)
    {
      v19 = v20;
      goto LABEL_16;
    }
  }

  v30 = sub_1AF7AA0A4(v29, v4, v45, sub_1AF7A7FF4, sub_1AF7A7FF4);

  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  while (v33)
  {
    v36 = v35;
LABEL_25:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = v37 | (v36 << 6);
    v39 = (*(v30 + 48) + 16 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = (*(v30 + 56) + 24 * v38);
    v43 = *v42;
    v44 = v42[1];

    sub_1AF7AE17C(v40, v41, v43, v44, v4, a2);
  }

  while (1)
  {
    v36 = v35 + 1;
    if (v35 + 1 >= v34)
    {
    }

    v33 = *(v30 + 8 * v35++ + 72);
    if (v33)
    {
      v35 = v36;
      goto LABEL_25;
    }
  }
}

uint64_t sub_1AF7868E8(uint64_t result)
{
  v2 = v1;
  if (*(*(v1 + 200) + 16))
  {
    v3 = result;
    v5 = *(result + 24);
    v4 = *(result + 32);

    sub_1AF419914(v5, v4);
    LOBYTE(v5) = v6;

    if (v5)
    {
      v7 = *(v3 + 24);
      v8 = *(v3 + 32);

      sub_1AF850ED4(v7, v8);

      v10 = sub_1AF7AA0A4(v9, v2, v3, sub_1AF7AE3A0, sub_1AF7AE3A0);

      *(v2 + 256) = v10;

      v11 = sub_1AF7AA0A4(v10, v2, v3, sub_1AF7AE60C, sub_1AF7AE60C);

      *(v2 + 256) = v11;

      v13 = sub_1AF7AA418(v12, v3, sub_1AF7AE87C, sub_1AF7AE87C);

      *(v2 + 264) = v13;
    }
  }

  return result;
}

uint64_t sub_1AF786B1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  a1[5] = a2;

  a1[6] = a3;

  sub_1AF76B4B4();
  sub_1AF764300();
  a1[10] = a4;

  a1[11] = a5;

  sub_1AF763428();
  v11 = *(a1[5] + 16);
  v50 = a1[5];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = (v50 + 32 + 16 * v12);
      v14 = v13[1];
      v15 = a1[5];
      v16 = *(v15 + 16);
      if (!v16)
      {
        goto LABEL_62;
      }

      v17 = *v13;
      v18 = (v15 + 40);
      v19 = (v15 + 40);
      while (1)
      {
        v20 = *(v19 - 1) == v17 && *v19 == v14;
        if (v20 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v19 += 2;
        if (!--v16)
        {
          goto LABEL_62;
        }
      }

      v21 = *(v15 + 16);
      if (!v21)
      {
        goto LABEL_62;
      }

      v22 = 0;
      while (1)
      {
        v23 = *(v18 - 1) == v17 && *v18 == v14;
        if (v23 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v22;
        v18 += 2;
        if (v21 == v22)
        {
          goto LABEL_62;
        }
      }

      v24 = a1[7];
      if (v24 >> 62)
      {
        if (v22 >= sub_1AFDFE108())
        {
          goto LABEL_62;
        }
      }

      else if (v22 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v25 = a1[7];
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1B2719C70](v22, v25);
      }

      else
      {
        v26 = *(v25 + 8 * v22 + 32);
      }

      ++v12;
      v27 = *(v26 + 40);
      v28 = *(v26 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v6 + 264);
      *(v6 + 264) = 0x8000000000000000;
      sub_1AF854E5C(v26, v27, v28, isUniquelyReferenced_nonNull_native);

      *(v6 + 264) = v52;
    }

    while (v12 != v11);
  }

  v30 = *(a1[10] + 16);
  v51 = a1[10];

  if (v30)
  {
    v31 = 0;
    while (1)
    {
      v32 = (v51 + 32 + 16 * v31);
      v33 = v32[1];
      v34 = a1[10];
      v35 = *(v34 + 16);
      if (!v35)
      {
        break;
      }

      v36 = *v32;
      v37 = (v34 + 40);
      v38 = (v34 + 40);
      while (1)
      {
        v39 = *(v38 - 1) == v36 && *v38 == v33;
        if (v39 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v38 += 2;
        if (!--v35)
        {
          goto LABEL_62;
        }
      }

      v40 = *(v34 + 16);
      if (!v40)
      {
        break;
      }

      v41 = 0;
      while (1)
      {
        v42 = *(v37 - 1) == v36 && *v37 == v33;
        if (v42 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v41;
        v37 += 2;
        if (v40 == v41)
        {
          goto LABEL_62;
        }
      }

      v43 = a1[12];
      if (v43 >> 62)
      {
        if (v41 >= sub_1AFDFE108())
        {
          break;
        }
      }

      else if (v41 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v44 = a1[12];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = MEMORY[0x1B2719C70](v41, v44);
      }

      else
      {
        v45 = *(v44 + 8 * v41 + 32);
      }

      ++v31;
      v46 = *(v45 + 40);
      v47 = *(v45 + 48);

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v6 + 264);
      *(v6 + 264) = 0x8000000000000000;
      sub_1AF854E5C(v45, v46, v47, v48);

      *(v6 + 264) = v53;

      if (v31 == v30)
      {
        goto LABEL_59;
      }
    }

LABEL_62:

    __break(1u);
    return result;
  }

LABEL_59:
}

uint64_t sub_1AF786F68@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6158];
  *(&v53 + 1) = MEMORY[0x1E69E6158];
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v52, v47);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
  sub_1AF449D40(v47, &v48);
  v7 = MEMORY[0x1E69E7CA0];
  swift_dynamicCast();
  sub_1AF7874E4(v52, *(&v52 + 1), v49);
  v26 = v49[1];
  v27 = v49[0];
  v24 = v49[2];
  v25 = v49[3];
  v8 = v50;
  v9 = v51;

  v11 = v27;
  if (*(&v27 + 1))
  {
    goto LABEL_2;
  }

  sub_1AF7FDC2C(0x6574616C706D6574, 0xEB00000000646955, &v36);
  if (!v38)
  {
    sub_1AF7A2FA4(&v36, &qword_1ED726850, v7 + 8);
    if ((a1 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v38 = v6;
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v36, &v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    sub_1AF449D40(&v30, &v36);
    swift_dynamicCast();
    v15 = *(v3 + 280);
    if (!*(v15 + 16) || (, v16 = sub_1AF419914(v29, *(&v29 + 1)), v18 = v17, , (v18 & 1) == 0))
    {

      goto LABEL_15;
    }

    v19 = *(*(v15 + 56) + 8 * v16);

    sub_1AF7FDC2C(0x6574616C706D6574, 0xEC000000656D614ELL, &v36);
    if (v38)
    {
      if (swift_dynamicCast())
      {
        v21 = *(&v30 + 1);
        v20 = v30;
LABEL_23:
        v38 = v6;
        *&v36 = v20;
        *(&v36 + 1) = v21;
        sub_1AF7FDB64(1701667182, 0xE400000000000000, &v36);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
        v38 = v6;
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v36, v45);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
        sub_1AF449D40(v45, v46);
        swift_dynamicCast();
        v30 = v36;
        *&v31 = 0;
        *(&v31 + 1) = 0xE000000000000000;
        LOBYTE(v32) = 0;
        *(&v32 + 1) = 0;
        v33 = 0xE000000000000000;
        v34 = 0xE000000000000000;
        v35 = v19;
        v37 = 0;
        v38 = 0xE000000000000000;
        v39 = 0;
        v40 = 0;
        v41 = 0xE000000000000000;
        v42 = 0;
        v43 = 0xE000000000000000;
        v44 = v19;
        sub_1AF7ADEA4(&v30, &v29);
        result = sub_1AF7ADF00(&v36);
        v12 = v31;
        v11 = v30;
        v13 = v33;
        v14 = v32;
        v8 = v34;
        v9 = v35;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1AF7A2FA4(&v36, &qword_1ED726850, v7 + 8);
    }

    v38 = v6;
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v36, &v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    sub_1AF449D40(&v30, &v36);
    swift_dynamicCast();
    v21 = *(&v29 + 1);
    v20 = v29;
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    sub_1AF7879A8(v30, *(&v30 + 1), &v52);
    v26 = v53;
    v28 = v52;
    v24 = v54;
    v25 = v55;
    v8 = v56;
    v9 = v57;

    v11 = v28;
    if (*(&v28 + 1))
    {
LABEL_2:
      v13 = v25;
      v12 = v26;
      v14 = v24;
      goto LABEL_20;
    }
  }

  if (a1)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  v29 = v36;
  MEMORY[0x1B2718AE0](0xD000000000000049, 0x80000001AFF349C0);
  v38 = v6;
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v36, &v30);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
  sub_1AF449D40(&v30, &v36);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0](*&v46[0], *(&v46[0] + 1));

  v22 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v23 = v22;
    swift_once();
    v22 = v23;
  }

  *&v46[0] = 0;
  sub_1AF0D4F18(v22, v46, v29, *(&v29 + 1));

  v8 = 0;
  v9 = 0;
  v11 = 0uLL;
  v12 = 0uLL;
  v14 = 0uLL;
  v13 = 0uLL;
LABEL_20:
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v14;
  *(a2 + 48) = v13;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_1AF7874E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a1;
  v8 = *(v3 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_templateRemapping);
  if (*(v8 + 16))
  {
    v9 = sub_1AF419914(a1, a2);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v6 = *v11;
      v5 = v11[1];
    }
  }

  v53 = v6;
  v54 = v5;
  *&v48 = 124;
  *(&v48 + 1) = 0xE100000000000000;
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    sub_1AF7FB48C(v63);
    v12 = v64;
    if (v64)
    {
      v13 = LOBYTE(v63[0]);
      v14 = v63[1];
      v16 = v65;
      v15 = v66;
      v17 = v67;
      v18 = v68;

      v19 = sub_1AF7F42EC(v13, v14, v12, v16, v15, v17, v18);
      v45 = v20;
      v22 = v21;

      if (v22)
      {
        if (v19)
        {
          v53 = 0;
          v54 = 0xE000000000000000;
          v23 = 0xE700000000000000;
          v24 = 0x6E69746C697542;
          if (v13 != 1)
          {
            v24 = 1919251285;
            v23 = 0xE400000000000000;
          }

          if (v13)
          {
            v25 = v24;
          }

          else
          {
            v25 = 0x6C61636F4CLL;
          }

          if (v13)
          {
            v26 = v23;
          }

          else
          {
            v26 = 0xE500000000000000;
          }

          MEMORY[0x1B2718AE0](v25, v26);

          MEMORY[0x1B2718AE0](124, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v14, v12);
          MEMORY[0x1B2718AE0](124, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v16, v15);
          v27 = v54;
          v44 = v53;
          *&v46 = 0;
          *(&v46 + 1) = 0xE000000000000000;
          v28 = 0xE700000000000000;
          v29 = 0x6E69746C697542;
          if (v13 != 1)
          {
            v29 = 1919251285;
            v28 = 0xE400000000000000;
          }

          if (v13)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0x6C61636F4CLL;
          }

          if (v13)
          {
            v31 = v28;
          }

          else
          {
            v31 = 0xE500000000000000;
          }

          MEMORY[0x1B2718AE0](v30, v31);

          MEMORY[0x1B2718AE0](v14, v12);
          MEMORY[0x1B2718AE0](v16, v15);

          v48 = v46;
          *&v49 = v16;
          *(&v49 + 1) = v15;
          LOBYTE(v50) = v13;
          *(&v50 + 1) = v45;
          *&v51 = v22;
          *(&v51 + 1) = v53;
          *&v52 = v54;
          *(&v52 + 1) = v19;
          v53 = v46;
          v54 = 0xE000000000000000;
          v55 = v16;
          v56 = v15;
          v57 = v13;
          v58 = v45;
          v59 = v22;
          v60 = v44;
          v61 = v27;
          v62 = v19;
          goto LABEL_37;
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v54 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000003CLL, 0x80000001AFF34980);
      MEMORY[0x1B2718AE0](v6, v5);

      v36 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v43 = v36;
        swift_once();
        v36 = v43;
      }

      v53 = 0;
      sub_1AF0D4F18(v36, &v53, 0, 0xE000000000000000);
    }

    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    goto LABEL_41;
  }

  v32 = *(v4 + 272);
  if (*(v32 + 16))
  {

    v33 = sub_1AF419914(v6, v5);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  *&v48 = v6;
  *(&v48 + 1) = v5;
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  LOBYTE(v50) = 0;
  *(&v50 + 1) = 0;
  v51 = 0xE000000000000000;
  *&v52 = 0xE000000000000000;
  *(&v52 + 1) = v35;
  v53 = v6;
  v54 = v5;
  v55 = 0;
  v56 = 0xE000000000000000;
  v57 = 0;
  v58 = 0;
  v59 = 0xE000000000000000;
  v60 = 0;
  v61 = 0xE000000000000000;
  v62 = v35;
LABEL_37:
  sub_1AF7ADEA4(&v48, v47);
  result = sub_1AF7ADF00(&v53);
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v42 = v52;
LABEL_41:
  *a3 = v38;
  a3[1] = v39;
  a3[2] = v40;
  a3[3] = v41;
  a3[4] = v42;
  return result;
}

uint64_t sub_1AF7879A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{

  v6 = sub_1AF7F4614(a1, a2);
  v8 = v7;
  v10 = v9;

  v12 = 0uLL;
  if (v10)
  {

    sub_1AF7FB48C(v48);
    v13 = v49;
    if (v49)
    {
      v33 = v6;
      v14 = LOBYTE(v48[0]);
      v15 = v48[1];
      v16 = v50;
      v17 = v51;
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      v18 = 0xE700000000000000;
      v19 = 0x6E69746C697542;
      if (LOBYTE(v48[0]) != 1)
      {
        v19 = 1919251285;
        v18 = 0xE400000000000000;
      }

      if (LOBYTE(v48[0]))
      {
        v20 = v19;
      }

      else
      {
        v20 = 0x6C61636F4CLL;
      }

      if (LOBYTE(v48[0]))
      {
        v21 = v18;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      MEMORY[0x1B2718AE0](v20, v21);

      MEMORY[0x1B2718AE0](124, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v15, v13);
      MEMORY[0x1B2718AE0](124, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v16, v17);
      v22 = v39;
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      v23 = 0xE700000000000000;
      v24 = 0x6E69746C697542;
      if (v14 != 1)
      {
        v24 = 1919251285;
        v23 = 0xE400000000000000;
      }

      if (v14)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0x6C61636F4CLL;
      }

      if (v14)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      MEMORY[0x1B2718AE0](v25, v26);

      MEMORY[0x1B2718AE0](v15, v13);
      MEMORY[0x1B2718AE0](v16, v17);

      v35 = v47;
      *&v36 = v16;
      *(&v36 + 1) = v17;
      LOBYTE(v37) = v14;
      *(&v37 + 1) = v8;
      *v38 = v10;
      *&v38[8] = v39;
      *&v38[24] = v33;
      v39 = v47;
      v40 = v16;
      v41 = v17;
      v42 = v14;
      v43 = v8;
      v44 = v10;
      v45 = v22;
      v46 = v33;
      sub_1AF7ADEA4(&v35, v34);
      result = sub_1AF7ADF00(&v39);
      v12 = v35;
      v27 = v36;
      v28 = v37;
      v29 = *v38;
      v30 = *&v38[16];
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *(&v39 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000046, 0x80000001AFF34930);
      MEMORY[0x1B2718AE0](v8, v10);

      v31 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v32 = v31;
        swift_once();
        v31 = v32;
      }

      *&v39 = 0;
      sub_1AF0D4F18(v31, &v39, 0, 0xE000000000000000);

      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v12 = 0uLL;
    }
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
  }

  *a3 = v12;
  a3[1] = v27;
  a3[2] = v28;
  a3[3] = v29;
  a3[4] = v30;
  return result;
}

void *sub_1AF787D48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1AF782F9C(a1, a2);
  v10 = v9;
  v11 = *(v4 + 136);
  _s10SubContextCMa();
  swift_allocObject();
  swift_retain_n();
  v12 = sub_1AF795F18(v8, v10, v11);
  v27 = MEMORY[0x1E69E6158];
  v26[0] = a1;
  v26[1] = a2;

  sub_1AF7FDB64(1701667182, 0xE400000000000000, v26);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
  v27 = MEMORY[0x1E69E6370];
  LOBYTE(v26[0]) = 1;
  sub_1AF7FDB64(0x6C706D6554657375, 0xEB00000000657461, v26);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
  v13 = v12[3];
  v14 = v12[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = *(v4 + 184);
  *(v4 + 184) = 0x8000000000000000;
  sub_1AF856D10(v12, v13, v14, isUniquelyReferenced_nonNull_native);

  *(v4 + 184) = v26[0];
  sub_1AF762ABC(a3);
  sub_1AF8D3CBC(*(a3 + 168));
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  sub_1AF8D3CBC(*(a3 + 176));
  v20 = v19;

  if (v18)
  {
    v21 = *(v18 + 80);
    v22 = *(v18 + 88);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v20 + 40);
  v24 = *(v20 + 48);

  sub_1AF786B1C(v12, v21, v22, v23, v24);

  return v12;
}

void *sub_1AF787F94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF7874E4(a1, a2, v50);
  v6 = *(&v50[0] + 1);
  if (*(&v50[0] + 1))
  {
    v7 = *&v50[0];
    v9 = v51;
    v8 = v52;
    v10 = v54;
    v55 = v53;
    if (v54)
    {
      v46 = v50[1];

      v11 = sub_1AF787D48(a1, a2, v10);
      if ((v7 != a1 || v6 != a2) && (sub_1AFDFEE28() & 1) == 0)
      {
        v49 = MEMORY[0x1E69E6158];
        v48[0] = v7;
        v48[1] = v6;

        sub_1AF7FDB64(0x6574616C706D6574, 0xEC000000656D614ELL, v48);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
        v13 = v10[3];
        v12 = v10[4];
        v49 = MEMORY[0x1E69E6158];
        v48[0] = v13;
        v48[1] = v12;

        sub_1AF7FDB64(0x6574616C706D6574, 0xEB00000000646955, v48);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48[0] = *(v2 + 280);
        *(v2 + 280) = 0x8000000000000000;
        sub_1AF856D3C(v10, v9, v8, isUniquelyReferenced_nonNull_native);

        *(v2 + 280) = v48[0];
        v15 = v11[3];
        v16 = v11[4];

        sub_1AF850F00(v15, v16);

        v17 = v11[4];
        v48[0] = v11[3];
        v48[1] = v17;
        sub_1AF4486E4();
        v18 = MEMORY[0x1E69E6158];
        v11[3] = sub_1AFDFDEB8();
        v11[4] = v19;

        v48[0] = a1;
        v48[1] = a2;
        v47 = 85;
        sub_1AF770DF0();
        sub_1AF770E44();
        if (sub_1AFDFCD68())
        {
          v49 = &_s8TemplateV8CategoryON;
          LOBYTE(v48[0]) = 2;
          sub_1AF7FDB64(0x6F67657461635F5FLL, 0xEA00000000007972, v48);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
          v49 = MEMORY[0x1E69E6370];
          LOBYTE(v48[0]) = 1;
          sub_1AF7FDB64(0x5472657355657375, 0xEF6574616C706D65, v48);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
          *v48 = v55;
          v47 = 85;
          v20 = sub_1AFDFDEB8();
          v49 = v18;
          v48[0] = v20;
          v48[1] = v21;
        }

        else
        {
          v49 = &_s8TemplateV8CategoryON;
          LOBYTE(v48[0]) = 1;
          sub_1AF7FDB64(0x6F67657461635F5FLL, 0xEA00000000007972, v48);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
          v49 = MEMORY[0x1E69E6370];
          LOBYTE(v48[0]) = 1;
          sub_1AF7FDB64(0xD000000000000012, 0x80000001AFF34910, v48);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
          v49 = v18;
          *v48 = v46;
        }

        sub_1AF7FDB64(0x6C6562616CLL, 0xE500000000000000, v48);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
        v49 = MEMORY[0x1E69E6530];
        v48[0] = 1;
        sub_1AF7FDB64(0x6E4F646165725F5FLL, 0xEA0000000000796CLL, v48);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
        sub_1AF762ABC(v10);
        v24 = v10[2];
        if (v24)
        {
          v25 = v11[2];

          if (!v25)
          {
            v11[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
          }

          v26 = swift_isUniquelyReferenced_nonNull_native();
          v48[0] = v11[2];
          v11[2] = 0x8000000000000000;
          sub_1AF7A6008(v24, sub_1AF7A2CE4, 0, v26, v48);

          v11[2] = v48[0];
        }

        v27 = v11[3];
        v28 = v11[4];

        v29 = swift_isUniquelyReferenced_nonNull_native();
        v48[0] = *(v3 + 184);
        *(v3 + 184) = 0x8000000000000000;
        sub_1AF856D10(v11, v27, v28, v29);

        *(v3 + 184) = v48[0];
        sub_1AF8D3CBC(v10[21]);
        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

        sub_1AF8D3CBC(v10[22]);
        v34 = v33;

        if (v32)
        {
          v35 = *(v32 + 80);
          v36 = *(v32 + 88);
        }

        else
        {
          v36 = MEMORY[0x1E69E7CC0];
          v35 = MEMORY[0x1E69E7CC0];
        }

        v37 = *(v34 + 40);
        v38 = *(v34 + 48);

        sub_1AF786B1C(v11, v35, v36, v37, v38);
      }

      sub_1AF7FDC2C(0x6C706D6554657375, 0xEB00000000657461, v48);
      if (v49)
      {
        v39 = MEMORY[0x1E69E7CA0];
        if (swift_dynamicCast() & 1) != 0 && (v47)
        {
          sub_1AF7FDC2C(0xD000000000000012, 0x80000001AFF34910, v48);
          if (v49)
          {
            if (swift_dynamicCast() & 1) != 0 && (v47)
            {
              sub_1AF7A2FA4(v50, &qword_1EB63EA78, &_s8TemplateVN);

              return v11;
            }
          }

          else
          {
            sub_1AF7A2FA4(v48, &qword_1ED726850, v39 + 8);
          }

          sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          v49 = v43;
          v48[0] = &unk_1F2500318;

          sub_1AF7FDB64(0xD00000000000001CLL, 0x80000001AFF23ED0, v48);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
          sub_1AF764300();

          sub_1AF764300();
        }

        v40 = &qword_1EB63EA78;
        v42 = &_s8TemplateVN;
        v41 = v50;
      }

      else
      {

        sub_1AF7A2FA4(v50, &qword_1EB63EA78, &_s8TemplateVN);
        v40 = &qword_1ED726850;
        v41 = v48;
        v42 = (MEMORY[0x1E69E7CA0] + 8);
      }

      sub_1AF7A2FA4(v41, v40, v42);
      return v11;
    }

    sub_1AF7A2FA4(v50, &qword_1EB63EA78, &_s8TemplateVN);
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000037, 0x80000001AFF348D0);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
  v22 = *v48;
  v23 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v45 = v23;
    swift_once();
    v23 = v45;
  }

  v48[0] = 0;
  sub_1AF0D4F18(v23, v48, v22, *(&v22 + 1));

  return 0;
}

uint64_t sub_1AF7888DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);
  if (*(v5 + 16) > 1uLL)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();
    v31 = 0;
    v32 = 0xE000000000000000;
    MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF34860);
    v30 = MEMORY[0x1E69E6158];
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v29, v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
    sub_1AF449D40(v28, &v29);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    v6 = " (invalid contextExitMap)";
    v7 = 0xD00000000000001ALL;
LABEL_14:
    MEMORY[0x1B2718AE0](v7, v6 | 0x8000000000000000);
    v25 = v31;
    v24 = v32;
    v26 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v27 = v26;
      swift_once();
      v26 = v27;
    }

    *&v29 = 0;
    sub_1AF0D4F18(v26, &v29, v25, v24);
  }

  if (*(*(v2 + 176) + 16) != 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();
    v31 = 0;
    v32 = 0xE000000000000000;
    MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF34860);
    v30 = MEMORY[0x1E69E6158];
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v29, v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
    sub_1AF449D40(v28, &v29);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    v6 = "rename: impossible to rename ";
    v7 = 0xD000000000000019;
    goto LABEL_14;
  }

  sub_1AF8D3CBC(v5);
  v9 = MEMORY[0x1E69E7CC8];
  if (v10)
  {
    v11 = v8;

    *(v2 + 168) = v9;
    v12 = MEMORY[0x1E69E6158];
    v30 = MEMORY[0x1E69E6158];
    *&v29 = a1;
    *(&v29 + 1) = a2;

    sub_1AF7FDB64(1701667182, 0xE400000000000000, &v29);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
    *(v11 + 24) = a1;
    *(v11 + 32) = a2;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = *(v2 + 168);
    *(v2 + 168) = 0x8000000000000000;
    sub_1AF856D94(v11, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v2 + 168) = v29;
    v31 = 6245961;
    v32 = 0xE300000000000000;
    v30 = v12;
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v29, v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
    sub_1AF449D40(v28, &v29);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    v14 = v31;
    v15 = v32;
    *&v29 = 6245961;
    *(&v29 + 1) = 0xE300000000000000;
    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AF783728(v14, v15, v29, *(&v29 + 1), 0, 0);
  }

  sub_1AF8D3CBC(*(v2 + 176));
  if (v17)
  {
    v18 = v16;

    *(v2 + 176) = v9;
    v19 = MEMORY[0x1E69E6158];
    v30 = MEMORY[0x1E69E6158];
    *&v29 = a1;
    *(&v29 + 1) = a2;

    sub_1AF7FDB64(1701667182, 0xE400000000000000, &v29);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
    *(v18 + 24) = a1;
    *(v18 + 32) = a2;
    swift_bridgeObjectRetain_n();

    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = *(v2 + 176);
    *(v2 + 176) = 0x8000000000000000;
    sub_1AF856D68(v18, a1, a2, v20);

    *(v2 + 176) = v29;
    v31 = 1599362383;
    v32 = 0xE400000000000000;
    v30 = v19;
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v29, v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
    sub_1AF449D40(v28, &v29);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    v21 = v31;
    v22 = v32;
    *&v29 = 1599362383;
    *(&v29 + 1) = 0xE400000000000000;
    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AF783728(v21, v22, v29, *(&v29 + 1), 0, 0);
  }

  v30 = MEMORY[0x1E69E6158];
  *&v29 = a1;
  *(&v29 + 1) = a2;

  sub_1AF7FDB64(1701667182, 0xE400000000000000, &v29);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
}

uint64_t sub_1AF788F8C(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if (a2)
  {
    (*(*a1 + 1360))(a1);
  }

  v5 = *(v4[5] + 16);
  v44 = v4[5];

  v46 = v4;
  if (v5)
  {
    v6 = (v44 + 40);
    while (1)
    {
      v10 = *(v6 - 1);
      v9 = *v6;
      v11 = *(*v4 + 1440);

      v12 = v11(v10, v9);
      v14 = *(v12 + 40);
      v13 = *(v12 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v3 + 264);
      v47 = v16;
      *(v3 + 264) = 0x8000000000000000;
      v17 = sub_1AF419914(v14, v13);
      v19 = v18;
      v20 = v16[2] + ((v18 & 1) == 0);
      if (v16[3] < v20)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v23 = v17;
      sub_1AF849890();
      v17 = v23;
      v4 = v46;
      if (v19)
      {
LABEL_12:
        v22 = v17;

        v7 = v47;
        *(v47[7] + 8 * v22) = v12;

        goto LABEL_6;
      }

LABEL_5:
      v7 = v47;
      v47[(v17 >> 6) + 8] |= 1 << v17;
      v8 = (v47[6] + 16 * v17);
      *v8 = v14;
      v8[1] = v13;
      *(v47[7] + 8 * v17) = v12;

      ++v47[2];
LABEL_6:
      *(v3 + 264) = v7;

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }

    sub_1AF835A5C(v20, isUniquelyReferenced_nonNull_native);
    v17 = sub_1AF419914(v14, v13);
    if ((v19 & 1) != (v21 & 1))
    {
LABEL_30:
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    v4 = v46;
    if (v19)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

LABEL_15:

  v24 = *(v4[10] + 16);
  v45 = v4[10];

  if (v24)
  {
    v25 = (v45 + 40);
    while (1)
    {
      v29 = *(v25 - 1);
      v28 = *v25;
      v30 = *(*v4 + 1456);

      v31 = v30(v29, v28);
      v33 = *(v31 + 40);
      v32 = *(v31 + 48);

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v3 + 264);
      v48 = v35;
      *(v3 + 264) = 0x8000000000000000;
      v36 = sub_1AF419914(v33, v32);
      v38 = v37;
      v39 = v35[2] + ((v37 & 1) == 0);
      if (v35[3] < v39)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_23;
      }

      v42 = v36;
      sub_1AF849890();
      v36 = v42;
      v4 = v46;
      if (v38)
      {
LABEL_24:
        v41 = v36;

        v26 = v48;
        *(v48[7] + 8 * v41) = v31;

        goto LABEL_18;
      }

LABEL_17:
      v26 = v48;
      v48[(v36 >> 6) + 8] |= 1 << v36;
      v27 = (v48[6] + 16 * v36);
      *v27 = v33;
      v27[1] = v32;
      *(v48[7] + 8 * v36) = v31;

      ++v48[2];
LABEL_18:
      *(v3 + 264) = v26;

      v25 += 2;
      if (!--v24)
      {
        goto LABEL_27;
      }
    }

    sub_1AF835A5C(v39, v34);
    v36 = sub_1AF419914(v33, v32);
    if ((v38 & 1) != (v40 & 1))
    {
      goto LABEL_30;
    }

LABEL_23:
    v4 = v46;
    if (v38)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_27:
}

uint64_t sub_1AF7893A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _s11MetadataSetCMa();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v30 = MEMORY[0x1E69E6370];
    v29[0] = 1;
    *(v6 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);

    sub_1AF0D5A54(v29, v24);
    memset(v28, 0, sizeof(v28));
    *&v25 = 1701536102;
    *(&v25 + 1) = 0xE400000000000000;
    sub_1AF809A8C(v24, &v26);
    sub_1AF7A2FA4(v28, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(v24, v28);
    sub_1AF82436C(&v25, 1701536102, 0xE400000000000000);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25 = *(v3 + 256);
  *(v3 + 256) = 0x8000000000000000;
  sub_1AF854E88(v10, v9, v6, v7, v8, isUniquelyReferenced_nonNull_native);

  *(v3 + 256) = v25;
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  *&v25 = *(v3 + 264);
  *(v3 + 264) = 0x8000000000000000;
  sub_1AF854E5C(a2, v12, v13, v14);

  *(v3 + 264) = v25;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *&v25 = *(v3 + 264);
  *(v3 + 264) = 0x8000000000000000;
  sub_1AF854E5C(a1, v15, v16, v17);

  *(v3 + 264) = v25;
  v18 = *(a2 + 72);
  v25 = *(a2 + 56);
  v26 = v18;
  v27 = *(a2 + 88);
  sub_1AF444F60(&v25, v29);
  v19 = sub_1AF7FE65C();
  v21 = v20;
  sub_1AF444FBC(&v25);
  if (v19 == 0x6156686374697753 && v21 == 0xEB0000000065756CLL)
  {

LABEL_8:
    sub_1AF789680(a1, a2);
  }

  v22 = sub_1AFDFEE28();

  if (v22)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1AF789680(uint64_t a1, uint64_t a2)
{
  if (!swift_weakLoadStrong())
  {
LABEL_11:
    if (!swift_weakLoadStrong())
    {
      goto LABEL_53;
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 32);

    v13 = sub_1AF761D68(v11, v12);

    if (swift_weakLoadStrong())
    {
      _s10SubContextCMa();
      if (swift_dynamicCastClass())
      {
        v14 = *(a1 + 24);
        v15 = *(a1 + 32);

        sub_1AF761E64(v14, v15, v13);

LABEL_37:

        goto LABEL_53;
      }
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*Strong == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
      {
        v23 = *(a1 + 24);
        v24 = *(a1 + 32);

        sub_1AF761E64(v23, v24, v13);

        v25 = *(a1 + 24);
        v26 = *(a1 + 32);

        sub_1AF761E64(v25, v26, v13);

        goto LABEL_37;
      }
    }

    if (swift_weakLoadStrong())
    {
      sub_1AF761E64(0x746C7561666564, 0xE700000000000000, v13);
    }

    goto LABEL_37;
  }

  _s19StaticSwitchSnippetCMa();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    goto LABEL_11;
  }

  v5 = v4;
  if (swift_weakLoadStrong())
  {
    _s10SubContextCMa();
    if (swift_dynamicCastClass())
    {
      v7 = *(a1 + 24);
      v6 = *(a1 + 32);
      v8 = *(v5 + 40);
      v9 = *(v8 + 2);
      if (v9)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v8;
        if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > *(v8 + 3) >> 1)
        {
          v8 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v9, 1, v8);
          v55 = v8;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      v56 = v6;

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
      sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v57 = v30;
      v55 = v8;
      sub_1AF7FDB64(v7, v6, &v55);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

LABEL_50:

LABEL_51:

      goto LABEL_52;
    }
  }

  v16 = swift_weakLoadStrong();
  if (v16)
  {
    if (*v16 == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
    {
      v18 = *(a1 + 24);
      v17 = *(a1 + 32);
      v19 = *(v5 + 40);
      v20 = *(v19 + 2);
      if (v20)
      {

        v21 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v19;
        if (!v21 || (v20 - 1) > *(v19 + 3) >> 1)
        {
          v19 = sub_1AF420554(v21, v20, 1, v19);
          v55 = v19;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {

        v19 = MEMORY[0x1E69E7CC0];
      }

      v56 = v17;

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
      v32 = v18;
      sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v34 = v33;
      v57 = v33;
      v55 = v19;
      sub_1AF7FDB64(v32, v17, &v55);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

      v35 = *(a1 + 24);
      v36 = *(a1 + 32);
      v37 = *(v5 + 40);
      v38 = *(v37 + 2);
      if (v38)
      {

        v39 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v37;
        if (!v39 || (v38 - 1) > *(v37 + 3) >> 1)
        {
          v37 = sub_1AF420554(v39, v38, 1, v37);
          v55 = v37;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      v55 = v35;
      v56 = v36;

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
      v40 = v55;
      v57 = v34;
      v55 = v37;
      sub_1AF7FDB64(v40, v56, &v55);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

      goto LABEL_50;
    }
  }

  if (swift_weakLoadStrong())
  {
    v27 = *(v5 + 40);
    v28 = *(v27 + 2);
    if (v28)
    {

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v27;
      if (!v29 || (v28 - 1) > *(v27 + 3) >> 1)
      {
        v27 = sub_1AF420554(v29, v28, 1, v27);
        v55 = v27;
      }

      sub_1AF64C314(0, 1, 0);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    v56 = 0xE700000000000000;

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
    sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v57 = v31;
    v55 = v27;
    sub_1AF7FDB64(0x746C7561666564, 0xE700000000000000, &v55);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

    goto LABEL_51;
  }

LABEL_52:

LABEL_53:
  if (swift_weakLoadStrong())
  {
    v41 = *(a2 + 24);
    v42 = *(a2 + 32);

    v43 = sub_1AF761F94(v41, v42);
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  if (swift_weakLoadStrong())
  {
    v46 = sub_1AF761970();

    if (sub_1AF76ACE8(v46) == 0x65746E6F43627553 && v47 == 0xEA00000000007478)
    {
      goto LABEL_63;
    }

    v48 = sub_1AFDFEE28();

    if (v48)
    {
      goto LABEL_64;
    }
  }

  if (swift_weakLoadStrong())
  {
    v49 = sub_1AF761970();

    if (sub_1AF76ACE8(v49) == 0x45747865746E6F43 && v50 == 0xEC0000007972746ELL)
    {
LABEL_63:

      goto LABEL_64;
    }

    v53 = sub_1AFDFEE28();

    if (v53)
    {
LABEL_64:
      if (swift_weakLoadStrong())
      {
        v52 = *(a1 + 24);
        v51 = *(a1 + 32);

        sub_1AF762070(v52, v51, v43, v45);
      }
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF762070(0x746C7561666564, 0xE700000000000000, v43, v45);
  }
}

uint64_t sub_1AF789F84(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = *(v2 + 256);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_8:
    v12 = (*(v6 + 56) + 24 * (__clz(__rbit64(v9)) | (v5 << 6)));
    if (*v12 != a1 || v12[1] != a2)
    {
      v9 &= v9 - 1;
      if ((sub_1AFDFEE28() & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (v5 + 1 >= v10)
    {
      return 0;
    }

    v9 = *(v6 + 72 + 8 * v5++);
    if (v9)
    {
      v5 = v11;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF78A068(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v32 = *a1;
  v34 = *(a1 + 16);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = a2[1];
  v29 = a2[3];
  v30 = a2[2];
  v28 = a2[4];
  sub_1AF7FE65C();
  v11 = sub_1AFDFD188();

  if (v11)
  {
    sub_1AF7FE2EC(v35);
    v12 = v35[1];
    v13 = v35[0];
    v8 = v36;
  }

  else
  {
    sub_1AF444F60(a1, v40);
    v13 = v32;
    v12 = v34;
  }

  v31 = a5;
  v33 = v13;
  v38[0] = v13;
  v38[1] = v12;
  v39 = v8;
  sub_1AF7FE65C();
  v14 = sub_1AFDFD188();

  v26 = v9;
  v27 = v10;
  if (v14)
  {
    sub_1AF7FE2EC(v37);
    v15 = v37[0];
    v9 = v37[1];
    v16 = v37[2];
    v17 = v37[3];
    v18 = v37[4];
  }

  else
  {
    v16 = v30;
    v18 = v28;
    sub_1AF687F90(v10, v9);
    v15 = v10;
    v17 = v29;
  }

  v40[0] = v15;
  v40[1] = v9;
  v40[2] = v16;
  v40[3] = v17;
  v40[4] = v18;

  v19 = sub_1AF7F5070(v38);
  sub_1AF687FE4(v15, v9);
  sub_1AF687FE4(v33, *(&v33 + 1));

  if (!v19)
  {
    return 0;
  }

  sub_1AF777A94(v31);
  if (!v20)
  {
LABEL_13:

    return 0;
  }

  v21 = *(v19 + 160);
  if (!v21)
  {

    goto LABEL_13;
  }

  v22 = *(v21 + 32);
  v23 = *(v21 + 40);

  MEMORY[0x1B2718AE0](v22, v23);

  sub_1AF7FE65C();
  LOBYTE(v22) = sub_1AFDFD188();

  if ((v22 & 1) == 0)
  {
    sub_1AF687F90(v27, v26);

    sub_1AF444FBC(a2);
  }

  sub_1AF4486E4();
  v25 = sub_1AFDFDEB8();

  sub_1AF776A50(v31);

  return v25;
}

void sub_1AF78A3AC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF0D4E74();
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v86 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v85, v9);
  v84 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v82 = "e that can't be found.";
    v83 = 0;
    v81 = (v10 + 32);
    v13 = (a2 + 40);
    v80 = xmmword_1AFE431C0;
    do
    {
      v14 = *(v3 + 256);
      if (*(v14 + 16))
      {
        v15 = *(v13 - 1);
        v16 = *v13;

        v17 = sub_1AF419914(v15, v16);
        v19 = v18;

        if (v19)
        {
          v20 = (*(v14 + 56) + 24 * v17);
          v21 = *v20;
          v22 = v20[1];

          if (!*(*(v3 + 264) + 16))
          {

            goto LABEL_21;
          }

          sub_1AF419914(v21, v22);
          v24 = v23;

          if (v24)
          {

            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v26 = Strong;
              if (*Strong == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
              {

                sub_1AF78CA54(a1, v26, 1);
                goto LABEL_19;
              }

              if (*Strong == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
              {

                sub_1AF790074(a1, v26);
                goto LABEL_19;
              }

              _s10SubContextCMa();
              v27 = swift_dynamicCastClass();
              if (v27)
              {
                v28 = v27;

                sub_1AF78F438(a1, v28, 1);
                goto LABEL_19;
              }

              _s19StaticSwitchSnippetCMa();
              v29 = swift_dynamicCastClass();
              v79 = a1;
              if (v29)
              {
                v76 = &v72;
                v77 = *a1;
                v31 = *(v77 + 176);
                v32 = *(v29 + 32);
                v89 = *(v29 + 24);
                v90 = v32;
                MEMORY[0x1EEE9AC00](v29, v30);
                v78 = v33;
                *(&v72 - 2) = &v89;

                v34 = v83;
                LODWORD(v75) = sub_1AF7B9518(sub_1AF7714A4, (&v72 - 4), v31);
                v83 = v34;

                if ((v75 & 1) == 0)
                {
                  v35 = v77;
                  v36 = v78[4];
                  v75 = v78[3];
                  v76 = v36;
                  v37 = *(v77 + 176);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v35 + 176) = v37;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v37 = sub_1AF420554(0, *(v37 + 2) + 1, 1, v37);
                    *(v35 + 176) = v37;
                  }

                  v40 = *(v37 + 2);
                  v39 = *(v37 + 3);
                  if (v40 >= v39 >> 1)
                  {
                    v37 = sub_1AF420554(v39 > 1, v40 + 1, 1, v37);
                  }

                  *(v37 + 2) = v40 + 1;
                  v41 = &v37[16 * v40];
                  v42 = v76;
                  *(v41 + 4) = v75;
                  *(v41 + 5) = v42;
                  v43 = v78;
                  *(v77 + 176) = v37;
                  a1 = v79;
                  if (sub_1AF78EF18(v79))
                  {
                    sub_1AF78E354(a1, v43, 1);
                  }

                  else
                  {
                    sub_1AF78D808(a1, v43, 1);
                  }

                  goto LABEL_19;
                }

LABEL_32:

                a1 = v79;
              }

              else
              {
                _s17CustomCodeSnippetCMa();
                v44 = swift_dynamicCastClass();
                if (v44)
                {
                  v76 = &v72;
                  v77 = *a1;
                  v46 = *(v77 + 176);
                  v47 = *(v44 + 32);
                  v89 = *(v44 + 24);
                  v90 = v47;
                  MEMORY[0x1EEE9AC00](v44, v45);
                  v78 = v48;
                  *(&v72 - 2) = &v89;

                  v49 = v83;
                  LODWORD(v75) = sub_1AF7B9518(sub_1AF7714A4, (&v72 - 4), v46);
                  v83 = v49;

                  if (v75)
                  {
                    goto LABEL_32;
                  }

                  v57 = v77;
                  v58 = v78[4];
                  v75 = v78[3];
                  v76 = v58;
                  v59 = *(v77 + 176);

                  v60 = swift_isUniquelyReferenced_nonNull_native();
                  *(v57 + 176) = v59;
                  if ((v60 & 1) == 0)
                  {
                    v59 = sub_1AF420554(0, *(v59 + 2) + 1, 1, v59);
                    *(v57 + 176) = v59;
                  }

                  v62 = *(v59 + 2);
                  v61 = *(v59 + 3);
                  if (v62 >= v61 >> 1)
                  {
                    v59 = sub_1AF420554(v61 > 1, v62 + 1, 1, v59);
                  }

                  v63 = v78;
                  *(v59 + 2) = v62 + 1;
                  v64 = &v59[16 * v62];
                  v65 = v76;
                  *(v64 + 4) = v75;
                  *(v64 + 5) = v65;
                  *(v77 + 176) = v59;
                  v66 = v63;
                  v67 = (*(*v63 + 1424))();
                  sub_1AF78A3AC(v79, v67);

                  v68 = sub_1AF7AB7C4(v66);
                  v76 = v69;
                  v77 = v70;
                  a1 = v79;
                  sub_1AF78AFC4(v79, v68, v69, v70);

                  v71 = v78;
                  sub_1AF78C364(a1, v78, 1);
                  sub_1AF7B67A4(a1);
                  sub_1AF78C4A4(a1, v71);
LABEL_19:
                }

                else
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v89 = 0;
                  v90 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000019, v82 | 0x8000000000000000);
                  v88 = v26;
                  type metadata accessor for GraphV1CodeGeneration.BaseObject();
                  sub_1AFDFE458();
                  v50 = v90;
                  v78 = v89;
                  LODWORD(v77) = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  v76 = qword_1ED73B8A0;
                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                  v51 = swift_allocObject();
                  *(v51 + 16) = v80;
                  *(v51 + 56) = MEMORY[0x1E69E6158];
                  *(v51 + 64) = sub_1AF0D544C();
                  *(v51 + 32) = v78;
                  *(v51 + 40) = v50;
                  v75 = v50;

                  sub_1AFDFC4C8();

                  v76 = v76[2];

                  v52 = v84;
                  sub_1AFDFC288();
                  v53 = v86;
                  v54 = v87[12];
                  v73 = v87[16];
                  v74 = v54;
                  v55 = &v86[v87[20]];
                  (*v81)(v86, v52, v85);
                  *(v53 + v74) = v77;
                  *(v53 + v73) = 0;
                  v56 = v75;
                  *v55 = v78;
                  *(v55 + 1) = v56;
                  sub_1AFDFC608();

                  sub_1AF7A45D8(v53, sub_1AF0D4E74);
                  a1 = v79;
                }
              }

              sub_1AF78BD70(a1, v26);
            }

            else
            {
            }

LABEL_21:

            goto LABEL_4;
          }
        }
      }

LABEL_4:
      v13 += 2;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AF78AD48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!*(*(v3 + 264) + 16))
  {
    return 0;
  }

  sub_1AF419914(a1, a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (swift_weakLoadStrong())
  {
    _s17TypedArraySnippetCMa();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;

      v9 = *(*(v8 + 40) + 16);

      return v9;
    }
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 48);
    v13 = *(v12 + 16);

    if (!v13)
    {
LABEL_18:

LABEL_19:

      return 0;
    }

    v14 = 32;
    while (1)
    {
      v15 = *(v12 + v14);
      v16 = *(v12 + v14 + 16);
      v28 = *(v12 + v14 + 32);
      v27[0] = v15;
      v27[1] = v16;
      sub_1AF444F60(v27, v26);
      sub_1AF7FE65C();
      v17 = sub_1AFDFD188();

      sub_1AF444FBC(v27);
      if (v17)
      {
        break;
      }

      v14 += 40;
      if (!--v13)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v3 + 256);
    if (*(v18 + 16))
    {

      v19 = sub_1AF419914(a1, a2);
      if (v20)
      {
        v21 = (*(v18 + 56) + 24 * v19);
        v22 = *v21;
        v23 = v21[1];

        swift_bridgeObjectRetain_n();

        sub_1AF7AC2F0(v22, v23);
        v24 = sub_1AF78AD48(v22, v23, a3);

        return v24;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  return 0;
}

void sub_1AF78AFC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = a3;
  sub_1AF0D4E74();
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v114 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v113, v10);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a2;
  if (*(a2 + 16))
  {
    v13 = 0;
    v14 = *a1;
    v15 = v120 + 32;
    v16 = a4 + 32;
    v118 = *(*a1 + 24);
    v110 = (v11 + 32);
    v111 = "scriptContext, ";
    v17 = (v119 + 40);
    v109 = xmmword_1AFE431C0;
    v123 = v14;
    do
    {
      if (v13 == *(v120 + 16))
      {
        return;
      }

      v20 = *(v17 - 1);
      v21 = *v17;
      v124 = v17;
      v141 = *(v15 + 32);
      v22 = *(v15 + 16);
      v139 = *v15;
      v140 = v22;
      v23 = *(v122 + 256);
      v24 = *(v23 + 16);

      v125 = v16;
      if (v24)
      {
        sub_1AF444F60(&v139, v138);

        v25 = sub_1AF419914(v20, v21);
        if (v26)
        {
          v27 = (*(v23 + 56) + 24 * v25);
          v29 = *v27;
          v28 = v27[1];
          v30 = v27[2];

          if (v30 && (v31 = *(v30 + 16)) != 0)
          {
            v32 = *(v31 + 16);

            if (v32)
            {

              sub_1AF419914(1701536102, 0xE400000000000000);
              v34 = v33;

              if (v34)
              {

                swift_bridgeObjectRelease_n();
                sub_1AF444FBC(&v139);
                goto LABEL_60;
              }
            }
          }

          else
          {
          }

          v50 = *(v122 + 264);
          v51 = *(v50 + 16);

          if (v51)
          {
            v52 = sub_1AF419914(v29, v28);
            v54 = v53;

            if (v54)
            {
              v55 = *(*(v50 + 56) + 8 * v52);

              if (*v55 == _TtCO3VFX21GraphV1CodeGeneration12ParameterOut)
              {
                v56 = *(v55 + 72);
                v142[0] = *(v55 + 56);
                v142[1] = v56;
                v143 = *(v55 + 88);
                v57 = *(v55 + 40);
                v58 = *(v55 + 48);
                sub_1AF444F60(v142, v138);

                v116 = sub_1AF7A4C70(&v139, v20, v21, v142, v57, v58, v118, 1, v123);
                v117 = v59;
                v61 = v60;
                v63 = v62;

                sub_1AF444FBC(&v139);

                sub_1AF444FBC(v142);
                v64 = v123;
                v65 = *(v123 + 128);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v64 + 128) = v65;
                v108 = v63;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v65 = sub_1AF420554(0, *(v65 + 2) + 1, 1, v65);
                  *(v123 + 128) = v65;
                }

                v68 = *(v65 + 2);
                v67 = *(v65 + 3);
                if (v68 >= v67 >> 1)
                {
                  v65 = sub_1AF420554(v67 > 1, v68 + 1, 1, v65);
                }

                *(v65 + 2) = v68 + 1;
                v69 = &v65[16 * v68];
                *(v69 + 4) = v116;
                *(v69 + 5) = v61;
                v70 = v123;
                *(v123 + 128) = v65;

                if (v117)
                {
                  v71 = *(v70 + 168);
                  v72 = *(v71 + 2);
                  v73 = swift_isUniquelyReferenced_nonNull_native();
                  *(v70 + 168) = v71;
                  if ((v73 & 1) != 0 && v72 < *(v71 + 3) >> 1)
                  {
                    v74 = v123;
                  }

                  else
                  {
                    v71 = sub_1AF420554(v73, v72 + 1, 1, v71);
                    v74 = v123;
                    *(v123 + 168) = v71;
                  }

                  v49 = v125;
                  sub_1AF64DF78(0, 0, 1, v108, v117);
                  *(v74 + 168) = v71;

                  v14 = v74;
                  goto LABEL_62;
                }

                v14 = v70;
LABEL_61:
                v49 = v125;
LABEL_62:
                v19 = v124;
                goto LABEL_5;
              }

              sub_1AF444FBC(&v139);
            }

            else
            {
              sub_1AF444FBC(&v139);
            }
          }

          else
          {
            sub_1AF444FBC(&v139);

            swift_bridgeObjectRelease_n();
          }

LABEL_60:

          v14 = v123;
          goto LABEL_61;
        }
      }

      else
      {
        sub_1AF444F60(&v139, v138);
      }

      sub_1AF7A74D0(v16, v138, &qword_1EB6335B0, &_s8MetadataVN);
      v121 = v13;
      if (!v138[1])
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v132 = 0;
        *(&v132 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v130[0] = v132;
        MEMORY[0x1B2718AE0](0xD000000000000057, v111 | 0x8000000000000000);
        v132 = v139;
        v133 = v140;
        *&v134 = v141;
        sub_1AFDFE458();
        sub_1AF444FBC(&v139);
        MEMORY[0x1B2718AE0](0x3D646975202C27, 0xE700000000000000);
        MEMORY[0x1B2718AE0](v20, v21);

        v41 = v130[0];
        v42 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v117 = v15;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        *(v43 + 16) = v109;
        *(v43 + 56) = MEMORY[0x1E69E6158];
        *(v43 + 64) = sub_1AF0D544C();
        *(v43 + 32) = v41;

        sub_1AFDFC4C8();

        v44 = v112;
        sub_1AFDFC288();
        v45 = v114;
        v46 = v115[12];
        v47 = v115[16];
        v48 = &v114[v115[20]];
        (*v110)(v114, v44, v113);
        *(v45 + v46) = v42;
        *(v45 + v47) = 0;
        *v48 = v41;
        sub_1AFDFC608();

        sub_1AF7A45D8(v45, sub_1AF0D4E74);
        sub_1AF7A2FA4(v138, &qword_1EB6335B0, &_s8MetadataVN);
        v13 = v121;
        v14 = v123;
        v49 = v125;
        v15 = v117;
        goto LABEL_4;
      }

      sub_1AF7A74D0(v138, v130, &qword_1EB6335B0, &_s8MetadataVN);
      v135 = v130[3];
      v136 = v130[4];
      v137 = v131;
      v132 = v130[0];
      v133 = v130[1];
      v134 = v130[2];
      v36 = sub_1AF76ED08(v20, v21);
      if (v118 > 2)
      {
        if (v118 != 3)
        {
LABEL_41:
          v37 = sub_1AF7E0118(&v132, v14, v36, v35, v118);
          goto LABEL_42;
        }

        v37 = sub_1AF7DD4B4(&v132, v14, v36, v35, 3);
      }

      else
      {
        if (v118 < 2)
        {
          goto LABEL_41;
        }

        v37 = sub_1AF7E5CBC(&v132, v14);
      }

LABEL_42:
      v117 = v37;
      v75 = v38;
      v76 = v39;
      v77 = v40;

      if (v77)
      {
        v116 = v75;
        *&v130[0] = v76;
        *(&v130[0] + 1) = v77;
        v128 = 10;
        v129 = 0xE100000000000000;
        v126 = 2314;
        v127 = 0xE200000000000000;
        sub_1AF4486E4();
        v78 = sub_1AFDFDEB8();
        *&v130[0] = 8201;
        *(&v130[0] + 1) = 0xE200000000000000;
        MEMORY[0x1B2718AE0](v78);

        v79 = v130[0];
        v80 = v123;
        v81 = *(v123 + 128);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        *(v80 + 128) = v81;
        if ((v82 & 1) == 0)
        {
          v81 = sub_1AF420554(0, *(v81 + 2) + 1, 1, v81);
          *(v123 + 128) = v81;
        }

        v84 = *(v81 + 2);
        v83 = *(v81 + 3);
        if (v84 >= v83 >> 1)
        {
          v81 = sub_1AF420554(v83 > 1, v84 + 1, 1, v81);
        }

        *(v81 + 2) = v84 + 1;
        *&v81[16 * v84 + 32] = v79;
        *(v123 + 128) = v81;
        v75 = v116;
      }

      v85 = sub_1AF76ED08(v20, v21);
      v87 = v86;
      *&v130[0] = 0;
      *(&v130[0] + 1) = 0xE000000000000000;
      sub_1AF7FE65C();
      v88 = sub_1AFDFD188();

      if (v88)
      {

        v89 = v85;
        v14 = v123;
        v90 = sub_1AF7DC134(&v139, v89, v87, 0, 1, v117, v75, v123, v118);
        v92 = v91;
        sub_1AF444FBC(&v139);

        MEMORY[0x1B2718AE0](v90, v92);
        v13 = v121;
      }

      else
      {

        v128 = 8201;
        v129 = 0xE200000000000000;
        v93 = sub_1AF76ED08(v20, v21);
        v95 = v94;

        if (v118 == 3)
        {
          v126 = 544499052;
          v127 = 0xE400000000000000;
          v96 = 0xE000000000000000;
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v93, v95);
          MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
          v97 = sub_1AF7DCE50(&v139, 3u);
          MEMORY[0x1B2718AE0](v97);

          sub_1AF444FBC(&v139);

          v98 = 0;
          v99 = v126;
          v100 = v127;
        }

        else
        {
          v126 = 0x2074736E6F63;
          v127 = 0xE600000000000000;
          v101 = sub_1AF7DCE50(&v139, v118);
          MEMORY[0x1B2718AE0](v101);

          v96 = 0xE100000000000000;
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v93, v95);
          sub_1AF444FBC(&v139);

          v99 = v126;
          v100 = v127;
          v98 = 59;
        }

        v13 = v121;
        MEMORY[0x1B2718AE0](v99, v100);

        MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v117, v75);
        MEMORY[0x1B2718AE0](v98, v96);

        MEMORY[0x1B2718AE0](v128, v129);
        v14 = v123;
      }

      v102 = v130[0];
      v103 = *(v14 + 128);
      v104 = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 128) = v103;
      v49 = v125;
      if ((v104 & 1) == 0)
      {
        v103 = sub_1AF420554(0, *(v103 + 2) + 1, 1, v103);
        *(v14 + 128) = v103;
      }

      v106 = *(v103 + 2);
      v105 = *(v103 + 3);
      if (v106 >= v105 >> 1)
      {
        *(v14 + 128) = sub_1AF420554(v105 > 1, v106 + 1, 1, v103);
      }

      sub_1AF761390(&v132);
      v18 = *(v14 + 128);
      *(v18 + 16) = v106 + 1;
      *(v18 + 16 * v106 + 32) = v102;
      *(v14 + 128) = v18;
      sub_1AF7A2FA4(v138, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_4:
      v19 = v124;
LABEL_5:
      ++v13;
      v17 = v19 + 2;
      v16 = v49 + 88;
      v15 += 40;
    }

    while (v13 != *(v119 + 16));
  }
}

uint64_t sub_1AF78BD70(uint64_t *a1, void *a2)
{
  v3 = v2;
  v57[0] = 24415;
  v57[1] = 0xE200000000000000;
  MEMORY[0x1B2718AE0](0x646F4D6775626564, 0xE900000000000065);
  v5 = a2[2];
  if (!v5 || !*(v5 + 16))
  {
  }

  sub_1AF419914(v57[0], 0xE200000000000000);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return result;
  }

  v55 = v3;
  v53 = *(*a1 + 24);
  v9 = a2[5];
  v10 = MEMORY[0x1E69E7CC0];
  v57[0] = MEMORY[0x1E69E7CC0];
  v11 = *(v9 + 16);

  v56 = a2;
  if (!v11)
  {
    v49 = v10;
    goto LABEL_25;
  }

  v12 = 0;
  v13 = v9 + 40;
  v14 = -v11;
  v49 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = (v13 + 16 * v12++);
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = *(*v56 + 1440);

      v19 = v18(v16, v17);
      if (v19)
      {
        break;
      }

LABEL_8:
      v15 += 2;
      ++v12;
      if (v14 + v12 == 1)
      {
        a2 = v56;
        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_25;
      }
    }

    v20 = *(v19 + 48);
    if (!*(*(v55 + 256) + 16))
    {

LABEL_14:

      goto LABEL_8;
    }

    v21 = *(v19 + 40);

    sub_1AF419914(v21, v20);
    LOBYTE(v21) = v22;

    if ((v21 & 1) == 0)
    {
      goto LABEL_14;
    }

    MEMORY[0x1B2718E00](v23);
    if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    v49 = v57[0];
    a2 = v56;
    v10 = MEMORY[0x1E69E7CC0];
    v13 = v9 + 40;
  }

  while (v14 + v12);
LABEL_25:

  v24 = a2[10];
  v57[0] = v10;
  v25 = *(v24 + 16);

  v27 = v55;
  v52 = v25;
  if (v25)
  {
    v28 = 0;
    v51 = v26 + 32;
    v50 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v29 = (v51 + 16 * v28);
        v30 = *v29;
        v31 = v29[1];
        ++v28;
        v32 = *(*a2 + 1456);

        v33 = v32(v30, v31);
        if (v33)
        {
          break;
        }

LABEL_28:

        if (v28 == v52)
        {
          goto LABEL_48;
        }
      }

      v34 = 0;
      v36 = *(v33 + 40);
      v35 = *(v33 + 48);
      v37 = *(v27 + 256);
      v38 = 1 << *(v37 + 32);
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v40 = v39 & *(v37 + 64);
      v41 = (v38 + 63) >> 6;
      do
      {
        if (!v40)
        {
          do
          {
            v42 = v34 + 1;
            if (v34 + 1 >= v41)
            {

              v27 = v55;
              a2 = v56;
              goto LABEL_28;
            }

            v40 = *(v37 + 72 + 8 * v34++);
          }

          while (!v40);
          v34 = v42;
        }

        v43 = (*(v37 + 56) + 24 * (__clz(__rbit64(v40)) | (v34 << 6)));
        if (*v43 == v36 && v43[1] == v35)
        {
          break;
        }

        v40 &= v40 - 1;
      }

      while ((sub_1AFDFEE28() & 1) == 0);

      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718E00](v45);
      if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      v50 = v57[0];
      v27 = v55;
      a2 = v56;
    }

    while (v28 != v52);
  }

  else
  {
    v50 = v10;
  }

LABEL_48:

  v57[0] = v49;
  sub_1AF490730(v50);
  if (v49 >> 62)
  {
    v46 = sub_1AFDFE108();
  }

  else
  {
    v46 = *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v46)
  {
    v47 = 0;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x1B2719C70](v47, v49);
      }

      else
      {
        v48 = *(v49 + 8 * v47 + 32);
      }

      ++v47;
      v57[0] = v48;
      sub_1AF797DCC(v57, v53, v27, a1, a2);
    }

    while (v46 != v47);
  }
}

uint64_t sub_1AF78C364(uint64_t result, void *a2, char a3)
{
  if (a2[2])
  {
    v6 = result;

    v8 = sub_1AF7A24A4(v7);

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = sub_1AFC8604C(*(v8 + 16), 0);
      sub_1AFC871B8(v13, (v10 + 4), v9, v8);
      sub_1AF0FBB14();
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v13[0] = v10;
    sub_1AF782220(v13);
    v11 = v13[0][2];
    if (v11)
    {
      v12 = v13[0] + 4;
      do
      {
        sub_1AF7A70A0(v12, v13);
        sub_1AF7AA5E8(v13[0], v13[1], &v14, v3, v6, a2, a3 & 1);
        sub_1AF7A7124(v13);
        v12 += 13;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t sub_1AF78C4A4(uint64_t result, void *a2)
{
  if (a2[2])
  {
    v4 = result;

    v6 = sub_1AF7A24A4(v5);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = sub_1AFC8604C(*(v6 + 16), 0);
      sub_1AFC871B8(v11, (v8 + 4), v7, v6);
      sub_1AF0FBB14();
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v11[0] = v8;
    sub_1AF782220(v11);
    v9 = v11[0][2];
    if (v9)
    {
      v10 = v11[0] + 4;
      do
      {
        sub_1AF7A70A0(v10, v11);
        sub_1AF7A927C(v11[0], v11[1], &v12, v2, v4, a2);
        sub_1AF7A7124(v11);
        v10 += 13;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_1AF78C610(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, void *, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a2 + 16))
  {
    v8 = result;

    v10 = sub_1AF7A24A4(v9);

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = sub_1AFC8604C(*(v10 + 16), 0);
      sub_1AFC871B8(v15, (v12 + 4), v11, v10);
      sub_1AF0FBB14();
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v15[0] = v12;
    sub_1AF782220(v15);
    v13 = v15[0][2];
    if (v13)
    {
      v14 = v15[0] + 4;
      do
      {
        sub_1AF7A70A0(v14, v15);
        a4(v15[0], v15[1], &v16, a2, a3, v4, v8);
        sub_1AF7A7124(v15);
        v14 += 13;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

BOOL sub_1AF78C760(uint64_t a1)
{
  v2 = *(sub_1AF76259C() + 16);

  if (!v2)
  {
    return 1;
  }

  v3 = sub_1AF76259C();
  v4 = *(v3 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v5 = 0;
  v31 = v3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v30 = v6;
    while (1)
    {
      v7 = v5++;
      v8 = *(a1 + 40);
      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_5;
      }

      v10 = (v31 + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v13 = (v8 + 40);
      v14 = (v8 + 40);
      while (1)
      {
        v15 = *(v14 - 1) == v12 && *v14 == v11;
        if (v15 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v14 += 2;
        if (!--v9)
        {
          goto LABEL_5;
        }
      }

      v16 = *(v8 + 16);
      if (!v16)
      {
        goto LABEL_5;
      }

      v17 = 0;
      while (1)
      {
        v18 = *(v13 - 1) == v12 && *v13 == v11;
        if (v18 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v17;
        v13 += 2;
        if (v16 == v17)
        {
          goto LABEL_5;
        }
      }

      v19 = *(a1 + 56);
      if (v19 >> 62)
      {
        break;
      }

      if (v17 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

LABEL_5:
      if (v5 == v4)
      {
        v6 = v30;
        goto LABEL_42;
      }
    }

    if (v17 >= sub_1AFDFE108())
    {
      goto LABEL_5;
    }

LABEL_26:
    v20 = *(a1 + 56);
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = MEMORY[0x1B2719C70](v17, v20);
    }

    else
    {
      v21 = *(v20 + 8 * v17 + 32);
    }

    v23 = sub_1AF7AA418(v22, v21, sub_1AF7AA2D8, sub_1AF7AA2D8);

    v24 = *(v23 + 16);

    if (v24)
    {

      goto LABEL_5;
    }

    v6 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC05CE4(0, *(v30 + 16) + 1, 1);
      v6 = v30;
    }

    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
      v6 = v30;
    }

    *(v6 + 16) = v26 + 1;
    v27 = v6 + 16 * v26;
    *(v27 + 32) = v12;
    *(v27 + 40) = v11;
  }

  while (v5 != v4);
LABEL_42:

  v29 = *(v6 + 16);

  return v29 == 0;
}

uint64_t sub_1AF78CA54(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *a1;
  v98 = *(*a1 + 24);
  v9 = *(*a1 + 176);
  v10 = a2[4];
  v111 = a2[3];
  v112 = v10;
  v100 = &v111;

  v11 = sub_1AF7B9518(sub_1AF7714A4, v99, v9);

  if ((v11 & 1) == 0)
  {
    v14 = a2[3];
    v13 = a2[4];
    v15 = *(v8 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 176) = v15;
    v95 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1AF420554(0, *(v15 + 2) + 1, 1, v15);
      *(v8 + 176) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1AF420554(v17 > 1, v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v13;
    *(v8 + 176) = v15;
    v20 = v95;

    sub_1AF7973DC(v21);

    if (sub_1AF78C760(v95))
    {
      if (v95[15])
      {

        sub_1AF782684(v22, a1);
      }

      v23 = *(v95[17] + 109);
      if (v23 == 2 || (v23 & 1) == 0)
      {
        if (a3)
        {
          v58 = sub_1AF7649C4();
          sub_1AF78A3AC(a1, v58);
        }

        v59 = sub_1AF7AB7C4(v95);
        sub_1AF78AFC4(a1, v59, v60, v61);

        sub_1AF78C364(a1, v95, 1);
        sub_1AF77292C(a1);
        return sub_1AF78C4A4(a1, v95);
      }

      else
      {
        v92 = a1;
        v93 = v4;
        v24 = MEMORY[0x1E69E7CC0];
        v109 = *(v8 + 136);
        v110 = MEMORY[0x1E69E7CC0];

        v108 = sub_1AF432BA4(v24);
        v25 = v95[5];

        v26 = sub_1AF7649C4();
        v27 = v26;
        v28 = *(v25 + 16);
        if (v28)
        {
          v29 = 0;
          v30 = (v25 + 40);
          v31 = (v26 + 40);
          do
          {
            if (v29 == *(v27 + 16))
            {
              break;
            }

            v33 = *(v30 - 1);
            v32 = *v30;
            ++v29;
            v34 = *(v31 - 1);
            v35 = *v31;

            v36 = v34;
            v20 = v95;
            sub_1AF798948(v33, v32, v36, v35, v95, v93, v92, v98, &v109, &v110, &v108);

            v30 += 2;
            v31 += 2;
          }

          while (v28 != v29);
        }

        sub_1AF78C364(v92, v20, 1);
        v37 = *(*v92 + 24);
        v38 = *(*v92 + 48);
        v39 = *(*v92 + 56);
        v40 = *(*v92 + 96);
        v96 = *(*v92 + 88);
        v94 = *v92;

        v41 = MEMORY[0x1E69E7CC0];
        v42 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
        _s7ContextC14GenerationDataCMa();
        v43 = swift_allocObject();
        *(v43 + 104) = v41;
        *(v43 + 112) = v41;
        *(v43 + 120) = v41;
        *(v43 + 128) = v41;
        *(v43 + 136) = v41;
        *(v43 + 144) = v41;
        sub_1AF432980(v41);
        *(v43 + 168) = v41;
        *(v43 + 176) = v41;
        *(v43 + 16) = v93;
        *(v43 + 24) = v37;
        *(v43 + 25) = 0;
        *(v43 + 27) = 0;
        *(v43 + 32) = v41;
        *(v43 + 40) = 1;
        *(v43 + 48) = v38;
        *(v43 + 56) = v39;
        *(v43 + 64) = 257;
        *(v43 + 72) = 0;
        *(v43 + 80) = 0;
        *(v43 + 88) = v96;
        *(v43 + 96) = v40;
        *(v43 + 152) = v42;

        *(v43 + 160) = 0;
        v107 = v43;
        sub_1AF77292C(&v107);
        v44 = 0xE000000000000000;
        v111 = 0;
        v112 = 0xE000000000000000;
        v91 = v43;
        v45 = *(*(v43 + 128) + 16);

        v47 = MEMORY[0x1E69E6158];
        if (v45)
        {
          v48 = (v46 + 40);
          v49 = MEMORY[0x1E69E6158];
          do
          {
            v50 = *v48;
            v105 = *(v48 - 1);
            v106 = v50;
            v102 = 0xE100000000000000;
            v103 = 0x244E49414D4F4424;
            v104 = 0xE800000000000000;
            v101 = 34;
            v51 = *(v91 + 88);
            v52 = *(v91 + 96);

            MEMORY[0x1B2718AE0](v51, v52);

            MEMORY[0x1B2718AE0](34, 0xE100000000000000);
            sub_1AF4486E4();
            v53 = sub_1AFDFDEB8();
            v55 = v54;

            MEMORY[0x1B2718AE0](v53, v55);

            v48 += 2;
            --v45;
          }

          while (v45);
          v56 = v111;
          v44 = v112;
          v47 = v49;
        }

        else
        {
          v56 = 0;
        }

        v62 = *(v110 + 2);
        if (v62)
        {
          v63 = (v110 + 40);
          while (1)
          {
            v97 = v56;
            v75 = *(v63 - 1);
            v74 = *v63;
            v101 = *(v94 + 56);
            v76 = v108[2];

            if (v76)
            {
              sub_1AF419914(v75, v74);
              if (v77)
              {

                sub_1AF48FAF8(v78);
              }
            }

            if (v98 == 3)
            {

              v64 = v101;
            }

            else
            {
              v79 = sub_1AFDFEE28();

              v64 = v101;
              if ((v79 & 1) == 0)
              {
                v111 = 0x28636E663A3ALL;
                v112 = 0xE600000000000000;
                v105 = v101;
                sub_1AF7AD234(0, &qword_1ED726C70, v47, MEMORY[0x1E69E62F8]);
                sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v47);
                v80 = sub_1AFDFCD98();
                v82 = v81;

                MEMORY[0x1B2718AE0](v80, v82);
                goto LABEL_28;
              }
            }

            v111 = 40;
            v112 = 0xE100000000000000;
            v105 = v64;
            sub_1AF7AD234(0, &qword_1ED726C70, v47, MEMORY[0x1E69E62F8]);
            sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v47);
            v65 = sub_1AFDFCD98();
            v67 = v66;

            MEMORY[0x1B2718AE0](v65, v67);
LABEL_28:

            MEMORY[0x1B2718AE0](41, 0xE100000000000000);
            v69 = v111;
            v68 = v112;
            v111 = v75;
            v112 = v74;

            MEMORY[0x1B2718AE0](v69, v68);

            v70 = v111;
            v71 = v112;
            v111 = v97;
            v112 = v44;
            v105 = v75;
            v106 = v74;
            v103 = v70;
            v104 = v71;
            sub_1AF4486E4();
            v56 = sub_1AFDFDEB8();
            v73 = v72;

            v63 += 2;
            v44 = v73;
            if (!--v62)
            {
              goto LABEL_36;
            }
          }
        }

        v73 = v44;
LABEL_36:
        v83 = *(v94 + 128);

        v84 = swift_isUniquelyReferenced_nonNull_native();
        *(v94 + 128) = v83;
        if ((v84 & 1) == 0)
        {
          v83 = sub_1AF420554(0, *(v83 + 2) + 1, 1, v83);
          *(v94 + 128) = v83;
        }

        v85 = v92;
        v86 = v95;
        v88 = *(v83 + 2);
        v87 = *(v83 + 3);
        if (v88 >= v87 >> 1)
        {
          v90 = sub_1AF420554(v87 > 1, v88 + 1, 1, v83);
          v86 = v95;
          v83 = v90;
          v85 = v92;
        }

        *(v83 + 2) = v88 + 1;
        v89 = &v83[16 * v88];
        *(v89 + 4) = v56;
        *(v89 + 5) = v73;
        *(v94 + 128) = v83;
        sub_1AF78C4A4(v85, v86);
      }
    }

    else
    {

      sub_1AF7A4B7C(v57, v4, v98, a1);
    }
  }

  return result;
}

uint64_t sub_1AF78D3AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AF7F64F4();
  if (!v5)
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 2);
    if (v8)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30[0] = v7;
      if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > *(v7 + 3) >> 1)
      {
        v7 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v8, 1, v7);
        v30[0] = v7;
      }

      sub_1AF64C314(0, 1, 0);

      if (*(v7 + 2))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_8:
        v6 = *(v7 + 4);

LABEL_11:

        goto LABEL_12;
      }
    }

    v6 = 0;
    goto LABEL_11;
  }

  v6 = v4;
LABEL_12:
  v10 = sub_1AF764B14(0x64657463656C6573, 0xEC00000065736143);
  if (!v10)
  {
    return v6;
  }

  v11 = v10;

  v13 = sub_1AF7AA418(v12, v11, sub_1AF7AA2D8, sub_1AF7AA2D8);

  sub_1AF8CC960(v13, v30);

  if (!v30[1])
  {

    return v6;
  }

  v14 = v30[3];
  if (!*(*(v2 + 264) + 16))
  {
    goto LABEL_26;
  }

  v15 = v30[2];

  sub_1AF419914(v15, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {

    goto LABEL_28;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_26:

LABEL_28:

    v28 = 0u;
    v29 = 0u;
LABEL_29:
    sub_1AF7A2FA4(&v28, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return v6;
  }

  sub_1AF7FDC2C(0x65756C6176, 0xE500000000000000, &v28);

  if (!*(&v29 + 1))
  {

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) != 0 && (v27 & 0x8000000000000000) == 0)
  {
    v19 = *(a1 + 40);
    v20 = *(v19 + 2);
    if (v20)
    {

      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = v19;
      if (!v21 || (v20 - 1) > *(v19 + 3) >> 1)
      {
        v19 = sub_1AF420554(v21, v20, 1, v19);
        *&v28 = v19;
      }

      sub_1AF64C314(0, 1, 0);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v19 + 2);

    if (v27 < v23)
    {

      v24 = *(a1 + 40);
      v25 = *(v24 + 2);
      if (v25)
      {

        v26 = swift_isUniquelyReferenced_nonNull_native();
        *&v28 = v24;
        if (!v26 || (v25 - 1) > *(v24 + 3) >> 1)
        {
          v24 = sub_1AF420554(v26, v25, 1, v24);
          *&v28 = v24;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      v6 = *&v24[16 * v27 + 32];
    }
  }

  return v6;
}

uint64_t sub_1AF78D808(uint64_t *a1, void *a2, char a3)
{
  v3 = a2[7];
  if (v3 >> 62)
  {
    v116 = a2;
    v117 = sub_1AFDFE108();
    a2 = v116;
    v4 = v117;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  v129 = a2;
  if (v4)
  {
    *&v138[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v4 & ~(v4 >> 63), 0);
    v6 = 0;
    v5 = *&v138[0];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2719C70](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v9 = *(v7 + 24);
      v8 = *(v7 + 32);

      *&v138[0] = v5;
      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC05CE4(v10 > 1, v11 + 1, 1);
        v5 = *&v138[0];
      }

      ++v6;
      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
    }

    while (v4 != v6);

    a2 = v129;
  }

  v13 = a2[7];
  if (v13 >> 62)
  {
    v118 = a2;
    v119 = sub_1AFDFE108();
    a2 = v118;
    v14 = v119;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    *&v138[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v14 & ~(v14 >> 63), 0);
    v15 = 0;
    v16 = *&v138[0];
    do
    {
      v17 = v16;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B2719C70](v15, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v15 + 32);
      }

      v20 = *(v18 + 40);
      v19 = *(v18 + 48);

      v16 = v17;
      *&v138[0] = v17;
      v21 = *(v17 + 16);
      v22 = *(v16 + 24);
      if (v21 >= v22 >> 1)
      {
        sub_1AFC05CE4(v22 > 1, v21 + 1, 1);
        v16 = *&v138[0];
      }

      ++v15;
      *(v16 + 16) = v21 + 1;
      v23 = v16 + 16 * v21;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
    }

    while (v14 != v15);
    v123 = v16;

    a2 = v129;
  }

  else
  {
    v123 = MEMORY[0x1E69E7CC0];
  }

  v24 = a2[7];
  if (v24 >> 62)
  {
    v25 = sub_1AFDFE108();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    *&v138[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC071E4(0, v25 & ~(v25 >> 63), 0);
    v27 = v24;
    v28 = 0;
    v29 = *&v138[0];
    v125 = v24 & 0xC000000000000001;
    v127 = v5;
    v130 = v25;
    v132 = v24;
    do
    {
      if (v125)
      {
        v30 = MEMORY[0x1B2719C70](v28, v27);
      }

      else
      {
        v30 = *(v27 + 8 * v28 + 32);
      }

      v32 = v30[7];
      v31 = v30[8];
      v33 = v30[9];
      v34 = v30[10];
      v35 = v30[11];
      sub_1AF687F90(v32, v31);

      *&v138[0] = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AFC071E4(v36 > 1, v37 + 1, 1);
        v29 = *&v138[0];
      }

      ++v28;
      *(v29 + 16) = v37 + 1;
      v38 = (v29 + 40 * v37);
      v38[4] = v32;
      v38[5] = v31;
      v38[6] = v33;
      v38[7] = v34;
      v38[8] = v35;
      v27 = v132;
      v5 = v127;
    }

    while (v130 != v28);

    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v136 = v26;

  sub_1AF782460(v39, &v136, sub_1AF79A814);

  if (a3)
  {
    sub_1AF78A3AC(a1, v123);
  }

  v40 = sub_1AF3C46D8(v136);
  sub_1AF78AFC4(a1, v123, v29, v40);

  sub_1AF78C364(a1, v129, 1);
  v41 = *(v5 + 2);
  if (v41)
  {
    v124 = *(v5 + 4);
    v126 = *(v5 + 5);
  }

  else
  {
    v124 = 0;
    v126 = 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v137 = v5;
  if (!isUniquelyReferenced_nonNull_native || v41 - (v41 != 0) > *(v5 + 3) >> 1)
  {
    v5 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v41, 1, v5);
    v137 = v5;
  }

  sub_1AF64C314(0, v41 != 0, 0);
  v43 = *(v5 + 2);
  v44 = v5;
  if (v43)
  {
    v45 = *(v5 + 4);
    v46 = *(v44 + 5);
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v47 = v43 != 0;
  v48 = v43 - v47;
  v137 = v44;
  v128 = v44;
  if ((v43 - v47) > *(v44 + 3) >> 1)
  {
    if (v43 > v48)
    {
      v48 = v43;
    }

    v120 = sub_1AF420554(1, v48, 1, v44);
    v47 = v43 != 0;
    v128 = v120;
    v137 = v120;
  }

  sub_1AF64C314(0, v47, 0);
  if (*(v129[10] + 16))
  {
    v49 = v129[12];
    if ((v49 & 0xC000000000000001) != 0)
    {

      v50 = MEMORY[0x1B2719C70](0, v49);
    }

    else
    {
      v50 = *(v49 + 32);
    }
  }

  else
  {
    v50 = 0;
  }

  v51 = *a1;
  v52 = *(*a1 + 24);
  v53 = *(v50 + 72);
  v138[0] = *(v50 + 56);
  v138[1] = v53;
  v139 = *(v50 + 88);
  v54 = *(v50 + 40);
  v55 = *(v50 + 48);

  sub_1AF444F60(v138, &v134);
  v56 = sub_1AF76ED08(v54, v55);
  v58 = v57;

  if (v52 == 3)
  {
    v134 = 544366966;
    v135 = 0xE400000000000000;
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v56, v58);
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v59 = sub_1AF7DCE50(v138, 3u);
    MEMORY[0x1B2718AE0](v59);
  }

  else
  {
    v134 = sub_1AF7DCE50(v138, v52);
    v135 = v60;
    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v56, v58);
  }

  sub_1AF444FBC(v138);
  v61 = v134;
  v62 = v135;
  v134 = 8201;
  v135 = 0xE200000000000000;
  MEMORY[0x1B2718AE0](v61, v62);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  v63 = sub_1AF764B14(v45, v46);

  v64 = *(v63 + 40);
  v65 = *(v63 + 48);

  v66 = sub_1AF76ED08(v64, v65);
  v68 = v67;

  MEMORY[0x1B2718AE0](v66, v68);

  if (*(v51 + 24) == 3)
  {
    v69 = 0;
  }

  else
  {
    v69 = 59;
  }

  if (*(v51 + 24) == 3)
  {
    v70 = 0xE000000000000000;
  }

  else
  {
    v70 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v69, v70);

  v71 = v134;
  v72 = v135;
  v73 = *(v51 + 128);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *(v51 + 128) = v73;
  if ((v74 & 1) == 0)
  {
    v73 = sub_1AF420554(0, *(v73 + 2) + 1, 1, v73);
    *(v51 + 128) = v73;
  }

  v76 = *(v73 + 2);
  v75 = *(v73 + 3);
  if (v76 >= v75 >> 1)
  {
    v73 = sub_1AF420554(v75 > 1, v76 + 1, 1, v73);
  }

  *(v73 + 2) = v76 + 1;
  v77 = &v73[16 * v76];
  *(v77 + 4) = v71;
  *(v77 + 5) = v72;
  *(v51 + 128) = v73;
  v78 = *(v128 + 2);
  if (v78)
  {
    v79 = (v128 + 40);
    v80 = 1;
    do
    {
      v81 = *v79;
      v131 = *(v79 - 1);
      v133 = v78;
      v134 = 0;
      v135 = 0xE000000000000000;

      sub_1AFDFE218();

      v134 = 8201;
      v135 = 0xE200000000000000;
      v82 = *(v50 + 40);
      v83 = *(v50 + 48);

      v84 = sub_1AF76ED08(v82, v83);
      v85 = v51;
      v87 = v86;

      MEMORY[0x1B2718AE0](v84, v87);

      MEMORY[0x1B2718AE0](673201440, 0xE400000000000000);
      v88 = sub_1AF764B14(v124, v126);
      v89 = *(v88 + 40);
      v90 = *(v88 + 48);

      v91 = sub_1AF76ED08(v89, v90);
      v93 = v92;

      MEMORY[0x1B2718AE0](v91, v93);
      v51 = v85;

      MEMORY[0x1B2718AE0](540884256, 0xE400000000000000);
      v94 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v94);

      MEMORY[0x1B2718AE0](541007913, 0xE400000000000000);
      v95 = sub_1AF764B14(v131, v81);

      v96 = *(v95 + 40);
      v97 = *(v95 + 48);

      v98 = sub_1AF76ED08(v96, v97);
      v100 = v99;

      MEMORY[0x1B2718AE0](v98, v100);

      MEMORY[0x1B2718AE0](2112032, 0xE300000000000000);
      v101 = *(v50 + 40);
      v102 = *(v50 + 48);

      v103 = sub_1AF76ED08(v101, v102);
      v105 = v104;

      MEMORY[0x1B2718AE0](v103, v105);

      if (*(v85 + 24) == 3)
      {
        v106 = 0;
      }

      else
      {
        v106 = 59;
      }

      if (*(v85 + 24) == 3)
      {
        v107 = 0xE000000000000000;
      }

      else
      {
        v107 = 0xE100000000000000;
      }

      MEMORY[0x1B2718AE0](v106, v107);

      v108 = v134;
      v109 = v135;
      v110 = *(v85 + 128);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *(v85 + 128) = v110;
      if ((v111 & 1) == 0)
      {
        v110 = sub_1AF420554(0, *(v110 + 2) + 1, 1, v110);
        *(v85 + 128) = v110;
      }

      v113 = *(v110 + 2);
      v112 = *(v110 + 3);
      if (v113 >= v112 >> 1)
      {
        v110 = sub_1AF420554(v112 > 1, v113 + 1, 1, v110);
      }

      *(v110 + 2) = v113 + 1;
      v114 = &v110[16 * v113];
      *(v114 + 4) = v108;
      *(v114 + 5) = v109;
      *(v85 + 128) = v110;
      v79 += 2;
      ++v80;
      v78 = v133 - 1;
    }

    while (v133 != 1);
  }

  sub_1AF78C4A4(a1, v129);
}

uint64_t sub_1AF78E354(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AF7F64F4();
  v10 = &qword_1AFE43000;
  if (v9)
  {
    v11 = v8;
    v12 = v9;
    sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AFE431C0;
    v14 = *(a2 + 32);
    *&v111 = *(a2 + 24);
    *(&v111 + 1) = v14;

    MEMORY[0x1B2718AE0](47, 0xE100000000000000);

    MEMORY[0x1B2718AE0](v11, v12);

    v15 = *(&v111 + 1);
    *(v13 + 32) = v111;
    *(v13 + 40) = v15;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v103 = sub_1AF7F6288();
  v16 = sub_1AF78D3AC(a2);
  v101 = v16;
  v102 = v17;
  if (v17)
  {
    v18 = v16;
    v19 = v17;

    v20 = sub_1AF764B14(v18, v19);

    if (v20)
    {

      sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AFE431C0;
      v21 = v20[6];
      *(v13 + 32) = v20[5];
      *(v13 + 40) = v21;
      if (swift_weakLoadStrong())
      {
        v22 = v20[4];
        v118 = v20[3];
        v119 = v22;

        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        sub_1AF7FDD44(v118, v22, &v105);

        if (*(&v105 + 1))
        {

          v113 = v107;
          v114 = v108;
          v115 = v109;
          v116 = v110;
          v111 = v105;
          v112 = v106;
          sub_1AF445550();
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1AFE431C0;
          v103 = v23;
          sub_1AF4455CC(&v111, v23 + 32);

          sub_1AF761390(&v111);
          goto LABEL_11;
        }
      }

      else
      {
        v110 = 0;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v105 = 0u;
      }

      sub_1AF7A2FA4(&v105, &qword_1EB6335B0, &_s8MetadataVN);
    }
  }

LABEL_11:
  v24 = sub_1AF785FB4();
  v25 = *a1;
  v26 = *(*a1 + 152);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = v24;
  sub_1AF7AB520(v26, sub_1AF780958, 0, isUniquelyReferenced_nonNull_native, &v111);

  v28 = v111;
  if (!*(v111 + 16) || (v29 = sub_1AF764B14(0x64657463656C6573, 0xEC00000065736143)) == 0)
  {

    v45 = 0;
    v46 = 0;
    goto LABEL_41;
  }

  v30 = a1;
  v31 = v29;

  v33 = sub_1AF7AA418(v32, v31, sub_1AF7AA2D8, sub_1AF7AA2D8);

  sub_1AF8CC960(v33, &v118);

  if (!v119)
  {
    goto LABEL_38;
  }

  v99 = v25;
  v34 = v4;
  v35 = v30;
  v36 = v120;
  v37 = v121;
  v100 = v34;
  v38 = *(v34 + 264);
  v39 = *(v38 + 16);

  if (!v39)
  {
    swift_bridgeObjectRelease_n();

    v45 = 0;
    v46 = 0;
    v10 = &qword_1AFE43000;
    a1 = v35;
    goto LABEL_41;
  }

  v30 = v35;

  v40 = sub_1AF419914(v36, v37);
  v42 = v41;

  if ((v42 & 1) == 0)
  {

    v45 = 0;
    v46 = 0;
    a1 = v35;
    v10 = &qword_1AFE43000;
    goto LABEL_41;
  }

  v43 = *(*(v38 + 56) + 8 * v40);

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_38:

    v45 = 0;
    v46 = 0;
LABEL_39:
    a1 = v30;
    goto LABEL_40;
  }

  v98 = v43;
  if (*(Strong + 24) == *(v100 + 24) && *(Strong + 32) == *(v100 + 32))
  {

    a1 = v35;
  }

  else
  {
    v47 = sub_1AFDFEE28();

    a1 = v35;
    if ((v47 & 1) == 0)
    {

      goto LABEL_35;
    }
  }

  if (!*(v28 + 16))
  {

LABEL_35:

LABEL_36:

    v45 = 0;
    v46 = 0;
LABEL_40:
    v10 = &qword_1AFE43000;
    goto LABEL_41;
  }

  v48 = *(v98 + 24);
  v49 = *(v98 + 32);

  v50 = sub_1AF419914(v48, v49);
  v52 = v51;

  if ((v52 & 1) == 0)
  {

    goto LABEL_38;
  }

  v53 = (*(v28 + 56) + 16 * v50);
  v54 = *v53;
  v55 = v53[1];

  v46 = sub_1AF764B14(v54, v55);

  if (!v46)
  {

    v45 = 0;
    goto LABEL_39;
  }

  a1 = v35;
  if (!*(*(a2 + 80) + 16))
  {

    goto LABEL_36;
  }

  v56 = *(a2 + 96);
  v10 = &qword_1AFE43000;
  if ((v56 & 0xC000000000000001) != 0)
  {

    v57 = MEMORY[0x1B2719C70](0, v56);
  }

  else
  {
    v57 = *(v56 + 32);
  }

  sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  v58 = *(v46 + 48);
  v97 = *(v46 + 40);
  *(v13 + 32) = v97;
  *(v13 + 40) = v58;
  *&v113 = *(a2 + 176);
  v59 = *(a2 + 160);
  v111 = *(a2 + 144);
  v112 = v59;
  v60 = *(v57 + 40);
  v61 = *(v57 + 48);
  v96 = v60;
  v62 = *(v99 + 24);

  sub_1AF444F60(&v111, &v105);
  sub_1AF444F60(&v111, &v105);

  v45 = sub_1AF7A4C70(&v111, v96, v61, &v111, v97, v58, v62, 1, v99);
  v46 = v63;

  sub_1AF444FBC(&v111);

  sub_1AF444FBC(&v111);

LABEL_41:
  if (a3)
  {
    sub_1AF78A3AC(a1, v13);
  }

  sub_1AF7AD234(0, &qword_1EB638880, &_s12MetadataTypeON, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = *(v10 + 28);
  v65 = *(a2 + 144);
  v66 = *(a2 + 152);
  v67 = *(a2 + 160);
  v68 = *(a2 + 168);
  v69 = *(a2 + 176);
  v70 = a1;
  *(inited + 32) = v65;
  *(inited + 40) = v66;
  *(inited + 48) = v67;
  *(inited + 56) = v68;
  *(inited + 64) = v69;
  sub_1AF687F90(v65, v66);
  sub_1AF78AFC4(a1, v13, inited, v103);

  swift_setDeallocating();
  sub_1AF444FBC(inited + 32);
  sub_1AF78C364(a1, a2, 1);
  if (v46)
  {

    v71 = *a1;
    v72 = *(*a1 + 128);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + 128) = v72;
    if ((v73 & 1) == 0)
    {
      v72 = sub_1AF420554(0, *(v72 + 2) + 1, 1, v72);
      *(v71 + 128) = v72;
    }

    v75 = *(v72 + 2);
    v74 = *(v72 + 3);
    if (v75 >= v74 >> 1)
    {
      v72 = sub_1AF420554(v74 > 1, v75 + 1, 1, v72);
    }

    *(v72 + 2) = v75 + 1;
    v76 = &v72[16 * v75];
    *(v76 + 4) = v45;
    *(v76 + 5) = v46;
    *(v71 + 128) = v72;
  }

  else if (v102)
  {
    v78 = sub_1AF764B14(v101, v102);

    if (v78)
    {
      if (*(*(a2 + 80) + 16))
      {
        v79 = *(a2 + 96);
        if ((v79 & 0xC000000000000001) != 0)
        {

          v80 = MEMORY[0x1B2719C70](0, v79);
        }

        else
        {
          v80 = *(v79 + 32);
        }

        v81 = *a1;
        *&v107 = *(a2 + 176);
        v82 = *(a2 + 160);
        v105 = *(a2 + 144);
        v106 = v82;
        v83 = *(v80 + 40);
        v84 = *(v80 + 48);
        v85 = *(v78 + 40);
        v86 = *(v78 + 48);
        v87 = *(v81 + 24);
        sub_1AF444F60(&v105, v117);

        v88 = sub_1AF7A4C70(&v105, v83, v84, &v105, v85, v86, v87, 1, v81);
        v104 = v89;

        sub_1AF444FBC(&v105);

        v90 = *(v81 + 128);
        v91 = swift_isUniquelyReferenced_nonNull_native();
        *(v81 + 128) = v90;
        if ((v91 & 1) == 0)
        {
          v90 = sub_1AF420554(0, *(v90 + 2) + 1, 1, v90);
          *(v81 + 128) = v90;
        }

        v93 = *(v90 + 2);
        v92 = *(v90 + 3);
        a1 = v70;
        if (v93 >= v92 >> 1)
        {
          *(v81 + 128) = sub_1AF420554(v92 > 1, v93 + 1, 1, v90);
        }

        v94 = *(v81 + 128);
        *(v94 + 16) = v93 + 1;
        v95 = v94 + 16 * v93;
        *(v95 + 32) = v88;
        *(v95 + 40) = v104;
        *(v81 + 128) = v94;
      }

      else
      {
      }
    }
  }

  return sub_1AF78C4A4(a1, a2);
}

uint64_t sub_1AF78EF18(uint64_t a1)
{
  if (*(*a1 + 26))
  {
    return 1;
  }

  v2 = sub_1AF764B14(0x64657463656C6573, 0xEC00000065736143);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;

  v5 = sub_1AF7AA418(v4, v3, sub_1AF7AA2D8, sub_1AF7AA2D8);

  sub_1AF8CC960(v5, v13);

  if (!v13[1])
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v7 = v13[2];
  v6 = v13[3];

  if (!*(*(v1 + 264) + 16) || (, sub_1AF419914(v7, v6), v9 = v8, , (v9 & 1) == 0))
  {

    goto LABEL_10;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
    return 1;
  }

  v11 = *Strong != _TtCO3VFX21GraphV1CodeGeneration12ContextEntry;
LABEL_11:

  return v11;
}

uint64_t sub_1AF78F0D4(uint64_t *a1, void *a2, char a3)
{
  v6 = *a1;
  v7 = *(*a1 + 176);
  v8 = a2[4];
  v21[0] = a2[3];
  v21[1] = v8;
  v20[2] = v21;

  v9 = sub_1AF7B9518(sub_1AF7714A4, v20, v7);

  if ((v9 & 1) == 0)
  {
    v12 = a2[3];
    v11 = a2[4];
    v13 = *(v6 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 176) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AF420554(0, *(v13 + 2) + 1, 1, v13);
      *(v6 + 176) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AF420554(v15 > 1, v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
    *(v6 + 176) = v13;
    v18 = sub_1AF78EF18(a1);
    v19 = a3 & 1;
    if (v18)
    {
      return sub_1AF78E354(a1, a2, v19);
    }

    else
    {
      return sub_1AF78D808(a1, a2, v19);
    }
  }

  return result;
}

uint64_t sub_1AF78F23C(uint64_t *a1, void *a2, char a3)
{
  v6 = *a1;
  v7 = *(*a1 + 176);
  v8 = a2[4];
  v23[0] = a2[3];
  v23[1] = v8;
  v22[2] = v23;

  v9 = sub_1AF7B9518(sub_1AF7714A4, v22, v7);

  if ((v9 & 1) == 0)
  {
    v12 = a2[3];
    v11 = a2[4];
    v13 = *(v6 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 176) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AF420554(0, *(v13 + 2) + 1, 1, v13);
      *(v6 + 176) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AF420554(v15 > 1, v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
    *(v6 + 176) = v13;
    if (a3)
    {
      v18 = (*(*a2 + 1424))();
      sub_1AF78A3AC(a1, v18);
    }

    v19 = sub_1AF7AB7C4(a2);
    sub_1AF78AFC4(a1, v19, v20, v21);

    sub_1AF78C364(a1, a2, 1);
    sub_1AF7B67A4(a1);
    return sub_1AF78C4A4(a1, a2);
  }

  return result;
}

uint64_t sub_1AF78F438(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *a1;
  v9 = *(*a1 + 176);
  v10 = a2[4];
  *&v108 = a2[3];
  *(&v108 + 1) = v10;
  v102 = &v108;

  v11 = sub_1AF7B9518(sub_1AF7714A4, v101, v9);

  if (v11)
  {
    return result;
  }

  v95 = a1;
  v14 = a2[3];
  v13 = a2[4];
  v15 = *(v8 + 176);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 176) = v15;
  v98 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1AF420554(0, *(v15 + 2) + 1, 1, v15);
    *(v8 + 176) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1AF420554(v17 > 1, v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = v14;
  *(v19 + 5) = v13;
  *(v8 + 176) = v15;
  v20 = v98;
  if (a3)
  {
    v21 = sub_1AF7649C4();
    sub_1AF78A3AC(v95, v21);
  }

  v22 = sub_1AF7649C4();
  *&v108 = MEMORY[0x1E69E7CC0];
  v23 = v98[6];

  sub_1AF782460(v24, &v108, sub_1AF76B130);

  sub_1AF78AFC4(v95, v22, v23, v108);

  v94 = v4;
  sub_1AF78C364(v95, v98, 1);
  v25 = sub_1AF785FB4();
  v116 = v25;

  v27 = sub_1AF7AA418(v26, v98, sub_1AF7AB100, sub_1AF7AB100);

  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  v33 = MEMORY[0x1E69E6158];
  v96 = v27;
  v97 = v31;
  while (1)
  {
    if (v30)
    {
      goto LABEL_17;
    }

    do
    {
      v36 = v32 + 1;
      if (v32 + 1 >= v31)
      {

        v68 = v20[7];
        *&v113[0] = MEMORY[0x1E69E7CC0];
        if (v68 >> 62)
        {
          v69 = sub_1AFDFE108();
        }

        else
        {
          v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v69)
        {
          v70 = 0;
          while (1)
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              v71 = MEMORY[0x1B2719C70](v70, v68);
            }

            else
            {
              v71 = *(v68 + 8 * v70 + 32);
            }

            v72 = *(v71 + 72);
            v103 = *(v71 + 56);
            v104 = v72;
            *&v105 = *(v71 + 88);
            sub_1AF444F60(&v103, &v108);
            v73 = sub_1AF7FE65C();
            v75 = v74;
            sub_1AF444FBC(&v103);
            if (v73 == 0x6156686374697753 && v75 == 0xEB0000000065756CLL)
            {
            }

            else
            {
              v76 = sub_1AFDFEE28();

              if ((v76 & 1) == 0)
              {

                goto LABEL_50;
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
LABEL_50:
            if (v69 == ++v70)
            {
              v77 = *&v113[0];
              v20 = v98;
              goto LABEL_60;
            }
          }
        }

        v77 = MEMORY[0x1E69E7CC0];
LABEL_60:

        sub_1AF7A4A90(v77, v94, &v116);

        sub_1AF7FDC2C(0x6C706D6554657375, 0xEB00000000657461, &v108);
        if (*(&v109 + 1))
        {
          v78 = v95;
          if (swift_dynamicCast() & 1) != 0 && (v113[0])
          {
            sub_1AF786F68(1, &v108);
            if (*(&v108 + 1))
            {
              v79 = *(&v111[1] + 1);
              v80 = v20[3];
              v81 = v20[4];

              v82 = sub_1AF76ED08(v80, v81);
              v84 = v83;

              (*(*v20 + 4232))(v95, v82, v84, v116, v79);

              sub_1AF7A2FA4(&v108, &qword_1EB63EA78, &_s8TemplateVN);
LABEL_68:
              sub_1AF78C4A4(v78, v20);
            }

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            *&v113[0] = 0;
            *(&v113[0] + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000030, 0x80000001AFF346F0);
            v90 = sub_1AF7F76D8();
            MEMORY[0x1B2718AE0](v90);

            MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF34730);
            v91 = v113[0];
            v92 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v93 = v92;
              swift_once();
              v92 = v93;
            }

            *&v113[0] = 0;
            sub_1AF0D4F18(v92, v113, v91, *(&v91 + 1));
LABEL_67:

            goto LABEL_68;
          }
        }

        else
        {
          sub_1AF7A2FA4(&v108, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          v78 = v95;
        }

        v85 = v20[3];
        v86 = v20[4];

        v87 = sub_1AF76ED08(v85, v86);
        v89 = v88;

        (*(*v20 + 4232))(v78, v87, v89, v116, 0);
        goto LABEL_67;
      }

      v30 = *(v27 + 8 * v32++ + 72);
    }

    while (!v30);
    v32 = v36;
LABEL_17:
    v37 = *(v27 + 48);
    v38 = (v32 << 10) | (16 * __clz(__rbit64(v30)));
    v40 = *(v37 + v38);
    v39 = *(v37 + v38 + 8);
    v41 = (*(v27 + 56) + v38);
    v42 = v41[1];
    v99 = *v41;
    v114 = 0;
    v115 = 0xE000000000000000;
    v112[3] = v33;
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    v43 = v20[2];

    v100 = v42;

    if (v43)
    {
      if (!*(v43 + 16))
      {
LABEL_22:
        if (!v43)
        {
          v20[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
        }

        sub_1AF0D5A54(v112, &v103);
        memset(v111 + 8, 0, 32);
        *&v108 = 1701667182;
        *(&v108 + 1) = 0xE400000000000000;
        sub_1AF809A8C(&v103, v117);
        v109 = v117[0];
        v110 = v117[1];
        *&v111[0] = v118;
        sub_1AF7A2FA4(v111 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v103, (v111 + 8));
        v105 = v110;
        v106[0] = v111[0];
        v106[1] = v111[1];
        v107 = *&v111[2];
        v103 = v108;
        v104 = v109;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v113[0] = v20[2];
        sub_1AF85148C(&v103, 1701667182, 0xE400000000000000, v46);
        v43 = *&v113[0];
        v20[2] = *&v113[0];
        goto LABEL_25;
      }
    }

    else
    {
      v20[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);

      v43 = v20[2];
      if (!*(v43 + 16))
      {
        goto LABEL_22;
      }
    }

    sub_1AF419914(1701667182, 0xE400000000000000);
    v45 = v44;

    v43 = v20[2];
    if ((v45 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    if (!v43)
    {
      goto LABEL_33;
    }

    if (!*(v43 + 16))
    {
      goto LABEL_31;
    }

    v47 = sub_1AF419914(1701667182, 0xE400000000000000);
    if ((v48 & 1) == 0)
    {

LABEL_31:
      memset(v111, 0, 40);
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      goto LABEL_32;
    }

    sub_1AF4455CC(*(v43 + 56) + 88 * v47, &v108);

    if (*(&v108 + 1))
    {
      sub_1AF4455CC(&v108, &v103);
      sub_1AF7A2FA4(&v108, &qword_1EB6335B0, &_s8MetadataVN);
      sub_1AF7A74D0(v106 + 8, v113, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF761390(&v103);
      goto LABEL_34;
    }

LABEL_32:
    sub_1AF7A2FA4(&v108, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_33:
    memset(v113, 0, sizeof(v113));
LABEL_34:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v112);
    sub_1AF449D40(v113, &v108);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0](v103, *(&v103 + 1));

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    if (sub_1AFDFD178())
    {

      sub_1AFDFD048();

      v49 = sub_1AF701628();
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v56 = MEMORY[0x1B27189E0](v49, v51, v53, v55);
      v58 = v57;
      v40 = v56;

      v25 = v116;
    }

    else
    {

      v58 = v39;
    }

    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v108 = v25;
    v60 = sub_1AF419914(v40, v58);
    v62 = v61;
    v63 = v25[2] + ((v61 & 1) == 0);
    if (v25[3] < v63)
    {
      break;
    }

    v64 = v40;
    if ((v59 & 1) == 0)
    {
      sub_1AF849704();
    }

LABEL_42:
    v33 = MEMORY[0x1E69E6158];
    v25 = v108;
    if (v62)
    {
      v67 = (*(v108 + 56) + 16 * v60);
      *v67 = v99;
      v67[1] = v100;
    }

    else
    {
      *(v108 + 8 * (v60 >> 6) + 64) |= 1 << v60;
      v34 = (v25[6] + 16 * v60);
      *v34 = v64;
      v34[1] = v58;
      v35 = (v25[7] + 16 * v60);
      *v35 = v99;
      v35[1] = v100;
      ++v25[2];
    }

    v27 = v96;
    v30 &= v30 - 1;

    v116 = v25;
    v31 = v97;
    v20 = v98;
  }

  sub_1AF8357A0(v63, v59);
  v64 = v40;
  v65 = sub_1AF419914(v40, v58);
  if ((v62 & 1) == (v66 & 1))
  {
    v60 = v65;
    goto LABEL_42;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF790074(void *a1, void *a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = *(*a1 + 176);
  v7 = a2[4];
  v51 = a2[3];
  v52 = v7;
  v46 = &v51;

  v8 = sub_1AF7B9518(sub_1AF7714A4, v45, v6);

  if ((v8 & 1) == 0)
  {
    v10 = a2[3];
    v11 = a2[4];
    v12 = *(v5 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 176) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1AF420554(0, *(v12 + 2) + 1, 1, v12);
      *(v5 + 176) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1AF420554(v14 > 1, v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v11;
    *(v5 + 176) = v12;
    sub_1AF78C4A4(v4, a2);
    v17 = MEMORY[0x1E69E7CC0];
    v54 = MEMORY[0x1E69E7CC0];
    if (a2[2])
    {

      v19 = sub_1AF7A24A4(v18);

      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = sub_1AFC8604C(*(v19 + 16), 0);
        sub_1AFC871B8(&v51, (v21 + 4), v20, v19);
        sub_1AF0FBB14();
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v40 = v2;
      v41 = v5;
      v42 = v4;
      v51 = v21;
      sub_1AF782220(&v51);
      v22 = v51[2];
      if (v22)
      {
        v23 = v51 + 4;
        v24 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1AF7A70A0(v23, &v51);
          v25 = v51;
          v26 = v52;
          sub_1AF7A74D0(&v53, v49, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(v49, v50);
          swift_dynamicCast();
          sub_1AF809DF8(v47, v48, v55);
          v43 = v55[1];
          v44 = v55[0];
          v27 = v56;
          *&v50[0] = v25;
          *(&v50[0] + 1) = v26;
          *&v49[0] = 0x6E657474616C662ELL;
          *(&v49[0] + 1) = 0xEB0000000074754FLL;
          v47 = 0;
          v48 = 0xE000000000000000;
          sub_1AF4486E4();
          v28 = sub_1AFDFDEB8();
          v30 = v29;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1AF4255E0(0, v24[2] + 1, 1, v24);
          }

          v32 = v24[2];
          v31 = v24[3];
          if (v32 >= v31 >> 1)
          {
            v24 = sub_1AF4255E0(v31 > 1, v32 + 1, 1, v24);
          }

          v24[2] = v32 + 1;
          v33 = &v24[8 * v32];
          v33[4] = v28;
          v33[5] = v30;
          *(v33 + 3) = v44;
          *(v33 + 4) = v43;
          v33[10] = v27;
          *(v33 + 88) = 0;
          v54 = v24;
          sub_1AF7A7124(&v51);
          v23 += 13;
          --v22;
        }

        while (v22);
      }

      v5 = v41;
      v4 = v42;
      v2 = v40;
      v17 = MEMORY[0x1E69E7CC0];
    }

    if (*(v5 + 161) == 1)
    {
      v34 = sub_1AF432690(MEMORY[0x1E69E7CC0]);
    }

    else
    {

      v34 = sub_1AF7AA0A4(v35, v2, a2, sub_1AF7A9DCC, sub_1AF7A9DCC);
    }

    *&v50[0] = v17;
    v36 = a2[10];
    v37 = *(v36 + 16);

    if (v37)
    {
      v38 = (v36 + 40);
      do
      {
        v39 = *v38;
        v51 = *(v38 - 1);
        v52 = v39;

        sub_1AF79AD2C(&v51, &v54, a2, v4, v34, v50);

        v38 += 2;
        --v37;
      }

      while (v37);
    }

    if (*(v5 + 25))
    {
      sub_1AF78228C(v50);
    }

    sub_1AF78254C(*&v50[0], v4);
  }

  return result;
}

uint64_t sub_1AF79054C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  _s7ContextC14GenerationDataCMa();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 104) = MEMORY[0x1E69E7CC0];
  *(v11 + 112) = v12;
  *(v11 + 120) = v12;
  *(v11 + 128) = v12;
  *(v11 + 136) = v12;
  *(v11 + 144) = v12;

  sub_1AF432980(v12);
  v13 = *(a2 + 16);
  *(v11 + 24) = *a2;
  *(v11 + 40) = v13;
  v14 = *(a2 + 48);
  *(v11 + 56) = *(a2 + 32);
  *(v11 + 168) = v12;
  *(v11 + 176) = v12;
  *(v11 + 16) = v4;
  *(v11 + 72) = v14;
  *(v11 + 88) = v9;
  *(v11 + 96) = v10;
  *(v11 + 152) = a3;

  sub_1AF7AAF00(a2, v23);

  *(v11 + 161) = v8;
  *(v11 + 160) = 0;
  v24 = v11;

  v16 = sub_1AF7AA0A4(v15, v4, a1, sub_1AF7A7FF4, sub_1AF7A7FF4);

  v23[0] = *(a2 + 48);
  if (*(&v23[0] + 1))
  {

    v17 = MEMORY[0x1E69E6158];
    sub_1AF7A74D0(v23, v22, &qword_1ED726CC0, MEMORY[0x1E69E6158]);
    v18 = sub_1AF7A89F0(v16, v4);
    sub_1AF7A2FA4(v23, &qword_1ED726CC0, v17);
  }

  else
  {

    v18 = sub_1AF7AA418(v16, v4, sub_1AF7A8C20, sub_1AF7A8C20);
  }

  if (v8)
  {
    sub_1AF7A9100(v11);
    sub_1AF8D3CBC(*(v4 + 168));
    v20 = v19;

    sub_1AF790074(&v24, v20);

LABEL_8:
    sub_1AF7B0C28(&v24, v18, v4, v8, *(a2 + 3));
    sub_1AF790DD0(&v24);
    v11 = v24;
    goto LABEL_9;
  }

  if (*(v18 + 16))
  {
    sub_1AF7A9100(v11);
    goto LABEL_8;
  }

LABEL_9:

  sub_1AF797808();

  return v11;
}