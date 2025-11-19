uint64_t sub_1AF75D094()
{
  sub_1AF4486E4();
  v0 = sub_1AFDFDE98();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1AF75D128()
{
  v0 = sub_1AFDFF4B8();

  v1 = sub_1AFDFD178();

  if (v1)
  {
    sub_1AFDFD078();
    sub_1AFDFCFD8();
  }

  return v0;
}

uint64_t sub_1AF75D214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 24))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1AF75D258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1AF75D2C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != result)
  {
    v3 = a2 - 1;
    v4 = *(a3 + 8 * ((a2 - 1) >> 6)) & (1 << (a2 - 1));
    if (result + 1 != a2)
    {
      do
      {
        v6 = v3 - 1;
        v7 = *(a3 + 8 * ((v3 - 1) >> 6));
        v8 = v3 >> 6;
        v9 = 1 << v3;
        if ((v7 >> v6))
        {
          v5 = *(a3 + 8 * v8) | v9;
        }

        else
        {
          v5 = *(a3 + 8 * v8) & ~v9;
        }

        *(a3 + 8 * v8) = v5;
        v3 = v6;
      }

      while (result != v6);
    }

    v10 = result >> 6;
    v11 = 1 << result;
    if (v4)
    {
      v12 = *(a3 + 8 * v10) | v11;
    }

    else
    {
      v12 = *(a3 + 8 * v10) & ~v11;
    }

    *(a3 + 8 * v10) = v12;
  }

  return result;
}

void sub_1AF75D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a1)
  {
    v3 = a1 >> 6;
    v4 = a2 >> 6;
    v5 = ~(-1 << a1);
    v6 = -1 << a2;
    if (a2 >> 6 == a1 >> 6)
    {
      v6 ^= v5;
    }

    else
    {
      if ((a2 >> 6) - (a1 >> 6) >= 2)
      {
        v7 = a3;
        bzero((a3 + 8 * v3 + 8), 8 * (v4 + ~v3));
        a3 = v7;
      }

      *(a3 + 8 * v3) &= v5;
      v3 = v4;
    }

    *(a3 + 8 * v3) &= v6;
  }
}

uint64_t sub_1AF75D408(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != result)
  {
    v3 = result >> 6;
    v4 = a2 >> 6;
    if (a2 >> 6 == result >> 6)
    {
      v5 = (-1 << a2) ^ (-1 << result);
    }

    else
    {
      if ((a2 >> 6) - (result >> 6) >= 2)
      {
        v6 = result;
        v7 = a2;
        v8 = a3;
        memset((a3 + 8 * v3 + 8), 255, 8 * (v4 + ~v3));
        result = v6;
        LOBYTE(a2) = v7;
        a3 = v8;
      }

      v5 = ~(-1 << a2);
      *(a3 + 8 * v3) |= -1 << result;
      v3 = v4;
    }

    *(a3 + 8 * v3) |= v5;
  }

  return result;
}

unint64_t sub_1AF75D4D0(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = (a4 + 63) >> 6;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = (a4 + 63) >> 6;
  }

  if (v4 < 6 || (result + 8 * v5 > a3 ? (v6 = a3 + 8 * v5 > result) : (v6 = 0), v6))
  {
    v7 = 0;
LABEL_14:
    v12 = v5 - v7;
    v13 = 8 * v7;
    v14 = (result + 8 * v7);
    v15 = (a3 + v13);
    do
    {
      v16 = *v14++;
      *v15++ &= v16;
      --v12;
    }

    while (v12);
    return result;
  }

  v7 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = (a3 + 16);
  v9 = (result + 16);
  v10 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11 = vandq_s8(*v9, *v8);
    v8[-1] = vandq_s8(v9[-1], v8[-1]);
    *v8 = v11;
    v8 += 2;
    v9 += 2;
    v10 -= 4;
  }

  while (v10);
  if (v5 != v7)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_1AF75D570(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = (a4 + 63) >> 6;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = (a4 + 63) >> 6;
  }

  if (v4 < 4 || (result + 8 * v5 > a3 ? (v6 = a3 + 8 * v5 > result) : (v6 = 0), v6))
  {
    v7 = 0;
LABEL_14:
    v12 = v5 - v7;
    v13 = 8 * v7;
    v14 = (result + 8 * v7);
    v15 = (a3 + v13);
    do
    {
      v16 = *v14++;
      *v15++ &= ~v16;
      --v12;
    }

    while (v12);
    goto LABEL_16;
  }

  v7 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = (a3 + 16);
  v9 = (result + 16);
  v10 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11 = vbicq_s8(*v8, *v9);
    v8[-1] = vbicq_s8(v8[-1], v9[-1]);
    *v8 = v11;
    v8 += 2;
    v9 += 2;
    v10 -= 4;
  }

  while (v10);
  if (v5 != v7)
  {
    goto LABEL_14;
  }

LABEL_16:
  v6 = v4 <= 1;
  v17 = v4 - 1;
  if (v6)
  {
    v17 = 0;
  }

  *(a3 + 8 * v17) &= ~(-1 << a4);
  return result;
}

_BYTE *sub_1AF75D62C(_BYTE *result, uint64_t *a2)
{
  v3 = *v2;
  v4 = *a2 >> 6;
  v5 = 1 << *a2;
  if (*result == 1)
  {
    *(v3 + 8 * v4) |= v5;
  }

  else
  {
    *(v3 + 8 * v4) &= ~v5;
  }

  return result;
}

uint64_t (*sub_1AF75D66C(uint64_t a1, uint64_t *a2))(uint64_t result)
{
  v3 = *a2;
  v4 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = (*(v4 + 8 * (v3 >> 6)) >> v3) & 1;
  return sub_1AF75D6AC;
}

uint64_t sub_1AF75D6AC(uint64_t result)
{
  v1 = *(result + 8);
  v2 = 1 << *result;
  v3 = *result >> 6;
  if (*(result + 16))
  {
    v4 = v2 | *(v1 + 8 * v3);
  }

  else
  {
    v4 = *(v1 + 8 * v3) & ~v2;
  }

  *(v1 + 8 * v3) = v4;
  return result;
}

void (*sub_1AF75D6FC(void *a1, uint64_t *a2))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  *a1 = v5;
  v6 = *a2;
  v7 = a2[1];
  v5[4] = v2;
  v5[5] = v6;
  v5[6] = v7;
  v8 = *v2;
  v9 = v2[1];
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  return sub_1AF75D780;
}

void sub_1AF75D780(uint64_t **a1)
{
  v1 = *a1;
  sub_1AF75E204((*a1)[4], (*a1)[5], (*a1)[6], *v1, v1[1], v1[2]);

  free(v1);
}

uint64_t sub_1AF75D7C8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF75E108(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void (*sub_1AF75D820(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_1AF75D8F0();
  *(v3 + 40) = v5 & 1;
  *(v3 + 32) = v4;
  return sub_1AF75D8A8;
}

void sub_1AF75D8A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

__n128 sub_1AF75D91C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  return result;
}

void sub_1AF75D930(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  a1[1] = v2;
}

BOOL sub_1AF75D93C()
{
  v1 = *v0;
  if ((*(v0 + 8) + 63) >> 6 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = (*(v0 + 8) + 63) >> 6;
  }

  do
  {
    v3 = v2;
    if (!v2)
    {
      break;
    }

    v4 = *v1++;
    --v2;
  }

  while (!v4);
  return v3 == 0;
}

void *sub_1AF75D970@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3 - *result;
  if (a2 < 1)
  {
    if (v4 <= 0 && v4 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = *result + a2;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  *a4 = v5;
  *(a4 + 8) = v6;
  return result;
}

uint64_t sub_1AF75D9CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 8 * (v4 >> 6));
      v10 = sub_1AFDFEA08();
      v11 = v6;
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      if ((v5 & (1 << v4)) != 0)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if ((v5 & (1 << v4)) != 0)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      ++v4;
      MEMORY[0x1B2718AE0](v7, v8);

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);

      MEMORY[0x1B2718AE0](v10, v11);
    }

    while (a2 != v4);
  }

  return 0;
}

uint64_t sub_1AF75DB10(int8x16_t *a1, uint64_t a2)
{
  sub_1AFDFE218();

  v4 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](0x756F632074657320, 0xEC000000203A746ELL);
  v5 = 0;
  v6 = 0;
  v7 = (a2 + 63) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a2 + 63) >> 6;
  }

  if (v7 < 4)
  {
    goto LABEL_8;
  }

  v6 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a1 + 1;
  v10 = 0uLL;
  v11 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = 0uLL;
  do
  {
    v10 = vpadalq_u32(v10, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v9[-1]))));
    v12 = vpadalq_u32(v12, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v9))));
    v9 += 2;
    v11 -= 4;
  }

  while (v11);
  v5 = vaddvq_s64(vaddq_s64(v12, v10));
  if (v8 != v6)
  {
LABEL_8:
    v13 = v8 - v6;
    v14 = a1 + v6;
    do
    {
      v15 = *v14++;
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      v5 += v16.u32[0];
      --v13;
    }

    while (v13);
  }

  v17 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v17);

  return 0x203A746E756F63;
}

unint64_t sub_1AF75DD04()
{
  result = qword_1EB63E5C0;
  if (!qword_1EB63E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E5C0);
  }

  return result;
}

unint64_t sub_1AF75DD5C()
{
  result = qword_1EB63E5C8;
  if (!qword_1EB63E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E5C8);
  }

  return result;
}

uint64_t sub_1AF75DE00(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF75DE44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF75DE44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF75DD04();
    v7 = a3(a1, &type metadata for UnsafeFixedBitSet, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF75DEF0()
{
  result = qword_1EB63E5E8;
  if (!qword_1EB63E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E5E8);
  }

  return result;
}

uint64_t sub_1AF75DF8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF75DE44(255, &qword_1EB63E5D8, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF75E014()
{
  result = qword_1EB63E5F8;
  if (!qword_1EB63E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E5F8);
  }

  return result;
}

unint64_t sub_1AF75E0B4()
{
  result = qword_1EB63E608;
  if (!qword_1EB63E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E608);
  }

  return result;
}

uint64_t sub_1AF75E108(uint64_t (*a1)(char *))
{
  v3 = v1[1];
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *v1;
  do
  {
    v10 = (*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1;
    v7 = a1(&v10);
    if (v2)
    {
      break;
    }

    if (v7)
    {
      while (v5 < --v3)
      {
        v9 = (*(v6 + 8 * (v3 >> 6)) >> v3) & 1;
        if ((a1(&v9) & 1) == 0)
        {
          sub_1AF6214C8(v5, v3);
          goto LABEL_3;
        }
      }

      return v5;
    }

LABEL_3:
    ++v5;
  }

  while (v5 < v3);
  return v5;
}

uint64_t *sub_1AF75E204(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a3 && a4 != a5)
  {
    do
    {
      v6 = *result;
      v7 = a2 >> 6;
      v8 = 1 << a2;
      if ((*(a6 + 8 * (a4 >> 6)) >> a4))
      {
        v9 = *(v6 + 8 * v7) | v8;
      }

      else
      {
        v9 = *(v6 + 8 * v7) & ~v8;
      }

      *(v6 + 8 * v7) = v9;
      if (a3 - 1 == a2)
      {
        break;
      }

      ++a2;
    }

    while (a5 - 1 != a4++);
  }

  return result;
}

uint64_t sub_1AF75E288(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = *a1;
  v8 = *(*a1 + 24);
  sub_1AF8D3CBC(v4[22]);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v139) = v8;
  *(&v139 + 1) = 256;
  BYTE3(v139) = 0;
  *(&v139 + 1) = MEMORY[0x1E69E7CC0];
  LOWORD(v140) = 0;
  *(&v140 + 1) = MEMORY[0x1E69E7CC0];
  *&v141 = MEMORY[0x1E69E7CC0];
  WORD4(v141) = 257;
  v142 = 0uLL;
  v147[2] = v141;
  v147[3] = 0uLL;
  v147[0] = v139;
  v147[1] = v140;
  v129 = v4;
  v12 = sub_1AF79054C(v11, v147, a4);
  sub_1AF75FD78(&v139);

  v13 = 0xE000000000000000;
  *&v143 = 0;
  *(&v143 + 1) = 0xE000000000000000;
  v14 = *(*(v12 + 128) + 16);

  v133 = v12;
  v128 = v8;
  v131 = v6;
  if (v14)
  {
    v126 = v7;
    v16 = (v15 + 40);
    do
    {
      v17 = *v16;
      v137 = *(v16 - 1);
      v138 = v17;
      v134[1] = 0xE100000000000000;
      v135 = 0x244E49414D4F4424;
      v136 = 0xE800000000000000;
      v134[0] = 34;
      v18 = *(v12 + 88);
      v19 = *(v133 + 96);

      MEMORY[0x1B2718AE0](v18, v19);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      sub_1AF4486E4();
      v20 = sub_1AFDFDEB8();
      v22 = v21;

      v12 = v133;
      MEMORY[0x1B2718AE0](v20, v22);

      v16 += 2;
      --v14;
    }

    while (v14);
    v13 = *(&v143 + 1);
    v23 = v143;
    v7 = v126;
    v6 = v131;
  }

  else
  {
    v23 = 0;
  }

  *&v143 = v23;
  *(&v143 + 1) = v13;
  v137 = 10;
  v138 = 0xE100000000000000;
  v135 = 2314;
  v136 = 0xE200000000000000;
  sub_1AF4486E4();
  v24 = sub_1AFDFDEB8();
  v26 = v25;

  *&v143 = 8201;
  *(&v143 + 1) = 0xE200000000000000;
  MEMORY[0x1B2718AE0](v24, v26);

  sub_1AF64E080(0, 0, v143, *(&v143 + 1));

  sub_1AF760A9C(v27, v6, v4);

  *(v7 + 160) = (*(v7 + 160) | *(v12 + 160)) & 1;
  v28 = v4[7];
  if (v28 >> 62)
  {
    sub_1AFDFE108();
    if ((v28 & 0xC000000000000001) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v28 & 0xC000000000000001) == 0)
  {
LABEL_11:
    v29 = *(v28 + 32);

    goto LABEL_12;
  }

  v29 = MEMORY[0x1B2719C70](0, v28);

LABEL_12:
  v30 = *(v29 + 40);
  v31 = *(v29 + 48);

  v32 = sub_1AF78AD48(v30, v31, *(v7 + 24));

  if (*(*(v4 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayInputs) + 16))
  {
    v127 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayInputs;
    *&v143 = 8201;
    *(&v143 + 1) = 0xE200000000000000;
    v33 = v4[3];
    v34 = *(v129 + 32);

    v35 = sub_1AF76ED08(v33, v34);
    v37 = v36;

    MEMORY[0x1B2718AE0](0x657A69735FLL, 0xE500000000000000);
    if (v8 == 3)
    {
      v138 = 0xE400000000000000;
      v38 = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0, 0xE000000000000000);
      MEMORY[0x1B2718AE0](v35, v37);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      MEMORY[0x1B2718AE0](7630409, 0xE300000000000000);

      v39 = 0;
      v40 = 544366966;
      v41 = 0xE400000000000000;
    }

    else
    {
      v138 = 0xE700000000000000;
      v38 = 0xE100000000000000;
      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0, 0xE000000000000000);
      MEMORY[0x1B2718AE0](v35, v37);

      v40 = 0x745F3436746E69;
      v41 = 0xE700000000000000;
      v39 = 59;
    }

    MEMORY[0x1B2718AE0](v40, v41);

    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    v137 = v32;
    v61 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v61);

    MEMORY[0x1B2718AE0](v39, v38);

    v62 = v143;
    v63 = *(v7 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 128) = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_1AF420554(0, *(v63 + 2) + 1, 1, v63);
      *(v7 + 128) = v63;
    }

    v66 = *(v63 + 2);
    v65 = *(v63 + 3);
    if (v66 >= v65 >> 1)
    {
      v63 = sub_1AF420554(v65 > 1, v66 + 1, 1, v63);
    }

    *(v63 + 2) = v66 + 1;
    *&v63[16 * v66 + 32] = v62;
    *(v7 + 128) = v63;
    v67 = *(v129 + v127);
    v68 = *(v67 + 16);

    if (v68)
    {
      v69 = (v67 + 40);
      do
      {
        v70 = *v69;
        *&v143 = *(v69 - 1);
        *(&v143 + 1) = v70;

        sub_1AF760D6C(&v143, v129, v131, v128);

        v69 += 2;
        --v68;
      }

      while (v68);
    }

    v57 = v133;
  }

  else
  {
    v137 = 8201;
    v138 = 0xE200000000000000;
    v143 = xmmword_1AFE75F70;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v42 = v4[3];
    v43 = *(v129 + 32);

    v44 = sub_1AF76ED08(v42, v43);
    v46 = v45;

    v136 = v46;
    MEMORY[0x1B2718AE0](0x657A69735FLL, 0xE500000000000000);
    v47 = sub_1AF7DBFF8(&v143, v44, v46, 0, v8);
    v49 = v48;

    MEMORY[0x1B2718AE0](v47, v49);

    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    v135 = v32;
    v50 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v50);

    if (v8 == 3)
    {
      v51 = 0;
    }

    else
    {
      v51 = 59;
    }

    if (v8 == 3)
    {
      v52 = 0xE000000000000000;
    }

    else
    {
      v52 = 0xE100000000000000;
    }

    MEMORY[0x1B2718AE0](v51, v52);

    v53 = v137;
    v54 = v138;
    v55 = *(v7 + 128);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 128) = v55;
    if ((v56 & 1) == 0)
    {
      v55 = sub_1AF420554(0, *(v55 + 2) + 1, 1, v55);
      *(v7 + 128) = v55;
    }

    v57 = v133;
    v59 = *(v55 + 2);
    v58 = *(v55 + 3);
    if (v59 >= v58 >> 1)
    {
      v55 = sub_1AF420554(v58 > 1, v59 + 1, 1, v55);
    }

    *(v55 + 2) = v59 + 1;
    v60 = &v55[16 * v59];
    *(v60 + 4) = v53;
    *(v60 + 5) = v54;
    *(v7 + 128) = v55;
  }

  v71 = MEMORY[0x1E69E7CC0];
  v135 = MEMORY[0x1E69E7CC0];

  sub_1AF76099C(v72, v129, a2, a3, &v135);

  v134[0] = v71;
  v73 = *(v57 + 120);
  if (v73 >> 62)
  {
    v74 = sub_1AFDFE108();
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v74)
  {
    v75 = 0;
    do
    {
      if ((v73 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x1B2719C70](v75, v73);
      }

      else
      {
        v76 = *(v73 + 8 * v75 + 32);
      }

      ++v75;
      v137 = v76;
      sub_1AF75FE18(&v137, v129, a2, a3, v131, v128, v32, v134);
    }

    while (v74 != v75);
  }

  v77 = *(v129 + 24);
  v78 = *(v129 + 32);

  v79 = sub_1AF76ED08(v77, v78);
  v81 = v80;

  v137 = v79;
  v138 = v81;
  MEMORY[0x1B2718AE0](0x7865646E695FLL, 0xE600000000000000);
  v82 = v137;
  v83 = v138;
  v84 = *(v129 + 24);
  v85 = *(v129 + 32);

  v86 = sub_1AF76ED08(v84, v85);
  v88 = v87;

  v137 = v86;
  v138 = v88;
  MEMORY[0x1B2718AE0](0x657A69735FLL, 0xE500000000000000);
  v89 = sub_1AF7DCB30(v82, v83, 48, 0xE100000000000000, v137, v138, v128);
  v91 = v90;

  v137 = 8201;
  v138 = 0xE200000000000000;
  MEMORY[0x1B2718AE0](v89, v91);

  v92 = v137;
  v93 = v138;
  v94 = *(v7 + 128);
  v95 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 128) = v94;
  if ((v95 & 1) == 0)
  {
    v94 = sub_1AF420554(0, *(v94 + 2) + 1, 1, v94);
    *(v7 + 128) = v94;
  }

  v97 = *(v94 + 2);
  v96 = *(v94 + 3);
  if (v97 >= v96 >> 1)
  {
    v94 = sub_1AF420554(v96 > 1, v97 + 1, 1, v94);
  }

  *(v94 + 2) = v97 + 1;
  v98 = &v94[16 * v97];
  *(v98 + 4) = v92;
  *(v98 + 5) = v93;
  *(v7 + 128) = v94;
  v137 = v135;

  sub_1AF48FAF8(v99);
  sub_1AF629AE4();
  sub_1AF488088();
  v100 = v7;
  v101 = sub_1AFDFCD98();
  v103 = v102;

  v137 = 2099465;
  v138 = 0xE300000000000000;
  v104 = *(v129 + 24);
  v105 = *(v129 + 32);

  v106 = sub_1AF76ED08(v104, v105);
  v108 = v107;

  v109 = sub_1AF7DCD08(v106, v108, v128);
  v111 = v110;

  MEMORY[0x1B2718AE0](v109, v111);

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v101, v103);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  if (v128 == 3)
  {
    v112 = 0;
  }

  else
  {
    v112 = 59;
  }

  if (v128 == 3)
  {
    v113 = 0xE000000000000000;
  }

  else
  {
    v113 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v112, v113);

  v114 = v137;
  v115 = v138;
  v116 = *(v100 + 128);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *(v100 + 128) = v116;
  if ((v117 & 1) == 0)
  {
    v116 = sub_1AF420554(0, *(v116 + 2) + 1, 1, v116);
    *(v100 + 128) = v116;
  }

  v119 = *(v116 + 2);
  v118 = *(v116 + 3);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_1AF420554(v118 > 1, v119 + 1, 1, v116);
  }

  *(v116 + 2) = v119 + 1;
  v120 = &v116[16 * v119];
  *(v120 + 4) = v114;
  *(v120 + 5) = v115;
  *(v100 + 128) = v116;
  v122 = *(v116 + 2);
  v121 = *(v116 + 3);
  if (v122 >= v121 >> 1)
  {
    *(v100 + 128) = sub_1AF420554(v121 > 1, v122 + 1, 1, v116);
  }

  v123 = *(v100 + 128);
  *(v123 + 16) = v122 + 1;
  v124 = v123 + 16 * v122;
  *(v124 + 32) = 8200201;
  *(v124 + 40) = 0xE300000000000000;
  *(v100 + 128) = v123;
}

uint64_t sub_1AF75EF40(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000015;
  v3 = *a1;
  v4 = 0x80000001AFF23FD0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001AFF23FD0;
  }

  else
  {
    v6 = 0x80000001AFF23FF0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = 0x80000001AFF23FF0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF75F014()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF75F0B0()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF75F138()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF75F1D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF75FDCC();
  *a1 = result;
  return result;
}

void sub_1AF75F200(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000015;
  v5 = 0x80000001AFF23FD0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000001AFF23FF0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF75F258()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if (v1 != 1)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1AF75F2AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF75FDCC();
  *a1 = result;
  return result;
}

uint64_t sub_1AF75F2D4(uint64_t a1)
{
  v2 = sub_1AF75FBB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF75F310(uint64_t a1)
{
  v2 = sub_1AF75FBB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF75F398(void *a1)
{
  v3 = v1;
  sub_1AF75FC60(0, &qword_1EB63E638, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayInputs;
  *(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayInputs) = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayOutputs;
  *(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayOutputs) = v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF75FBB8();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    _s20ArraySequenceSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v7;
    LOBYTE(v21[0]) = 0;
    sub_1AF75FCC4();
    sub_1AFDFE768();
    v13 = v23;
    v14 = v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type;
    v15 = v22[1];
    *v14 = v22[0];
    *(v14 + 16) = v15;
    *(v14 + 32) = v13;
    sub_1AF629AE4();
    LOBYTE(v21[0]) = 1;
    sub_1AF75FD18(&qword_1ED726C58);
    sub_1AFDFE768();
    *(v1 + v20) = *&v22[0];

    LOBYTE(v21[0]) = 2;
    sub_1AFDFE768();
    *(v1 + v24) = *&v22[0];

    sub_1AF441194(a1, v22);
    sub_1AF441194(v22, v21);
    v16 = sub_1AF79CDC8(v21);
    v17 = v19;
    v3 = v16;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
    (*(v17 + 8))(v10, v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t sub_1AF75F75C(void *a1)
{
  sub_1AF75FC60(0, &qword_1EB63E620, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  result = sub_1AF79D5CC(a1);
  if (!v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF75FBB8();
    sub_1AFDFF3F8();
    v11 = *(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type + 32);
    v12 = *(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type + 16);
    v15 = *(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type);
    v16 = v12;
    v17 = v11;
    v14 = 0;
    sub_1AF75FC0C();
    sub_1AFDFE918();
    *&v15 = *(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayInputs);
    v14 = 1;
    sub_1AF629AE4();
    sub_1AF75FD18(&qword_1EB639870);
    sub_1AFDFE918();
    *&v15 = *(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_additionalArrayOutputs);
    v14 = 2;
    sub_1AFDFE918();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1AF75F9DC()
{
  sub_1AF687FE4(*(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type), *(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type + 8));
}

uint64_t sub_1AF75FA38()
{
  v0 = sub_1AF796208();
  v1 = *(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type);
  v2 = *(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration20ArraySequenceSnippet_type + 8);

  sub_1AF687FE4(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s20ArraySequenceSnippetCMa()
{
  result = qword_1EB63E610;
  if (!qword_1EB63E610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1AF75FBB8()
{
  result = qword_1EB63E628;
  if (!qword_1EB63E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E628);
  }

  return result;
}

unint64_t sub_1AF75FC0C()
{
  result = qword_1EB63E630;
  if (!qword_1EB63E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E630);
  }

  return result;
}

void sub_1AF75FC60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF75FBB8();
    v7 = a3(a1, &_s20ArraySequenceSnippetC10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF75FCC4()
{
  result = qword_1EB633E48;
  if (!qword_1EB633E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633E48);
  }

  return result;
}

uint64_t sub_1AF75FD18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF629AE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF75FDCC()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF75FE18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, char **a8)
{
  v12 = *a1;
  v14 = *(*a1 + 24);
  v13 = *(*a1 + 32);
  v15 = *(*a1 + 72);
  v110 = *(*a1 + 56);
  v111 = v15;
  v112 = *(v12 + 88);
  v16 = *(a2 + 32);
  v105 = *(a2 + 24);
  v106 = v16;
  swift_bridgeObjectRetain_n();
  sub_1AF444F60(&v110, &v98);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  v98 = v105;
  v99 = v106;

  MEMORY[0x1B2718AE0](v14, v13);

  v17 = v98;
  v18 = v99;
  _s13ParameterBaseCMa();
  inited = swift_initStackObject();
  swift_weakInit();
  swift_weakAssign();
  *(inited + 24) = v14;
  *(inited + 32) = v13;
  *(inited + 40) = v17;
  *(inited + 48) = v18;
  v20 = v111;
  *(inited + 56) = v110;
  *(inited + 72) = v20;
  *(inited + 88) = v112;
  sub_1AF444F60(&v110, &v98);

  v21 = sub_1AF76ED08(v17, v18);
  v23 = v22;

  v98 = v21;
  v99 = v23;
  v24 = *(a2 + 32);
  v105 = *(a2 + 24);
  v106 = v24;

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  v103 = a3;
  v104 = a4;
  sub_1AF4486E4();
  v25 = sub_1AFDFDEB8();
  v27 = v26;

  v103 = v25;
  v104 = v27;
  LOBYTE(v21) = sub_1AFDFD188();

  if (v21)
  {
    v94 = a6;
    v28 = sub_1AFDFD048();
    sub_1AFBBFB14(v28);
    v29 = v103;
    v30 = v104;
    v98 = 91;
    v99 = 0xE100000000000000;
    v32 = *(a2 + 24);
    v31 = *(a2 + 32);

    v33 = sub_1AF76ED08(v32, v31);
    v35 = v34;

    MEMORY[0x1B2718AE0](v33, v35);

    MEMORY[0x1B2718AE0](0x5D7865646E695FLL, 0xE700000000000000);
    v37 = v98;
    v36 = v99;
    v98 = v29;
    v99 = v30;

    MEMORY[0x1B2718AE0](v37, v36);

    v91 = v98;
    v92 = v99;
    if (sub_1AF7FCC58())
    {
      v38 = sub_1AF7FE65C();
      v40 = v39;
      sub_1AF444FBC(&v110);
      v98 = v38;
      v99 = v40;

      MEMORY[0x1B2718AE0](0x7961727241, 0xE500000000000000);

      sub_1AF809DF8(v98, v99, &v105);
      v41 = v106;
      if (v106 != 59)
      {
        v42 = v108;
        v43 = v109;
        v44 = v107;
        v45 = v105;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1AF444FBC(&v110);
    }

    v45 = 0;
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 42;
LABEL_9:
    v98 = v45;
    v99 = v41;
    v100 = v44;
    v101 = v42;
    v102 = v43;
    v48 = *a5;

    v49 = sub_1AF7DC134(&v98, v29, v30, a7, 0, 0, 0, v48, v94);
    v51 = v50;

    sub_1AF687FE4(v45, v41);
    v52 = *(v48 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v48 + 128) = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_1AF420554(0, *(v52 + 2) + 1, 1, v52);
      *(v48 + 128) = v52;
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_1AF420554(v54 > 1, v55 + 1, 1, v52);
    }

    *(v52 + 2) = v55 + 1;
    v56 = &v52[16 * v55];
    *(v56 + 4) = v49;
    *(v56 + 5) = v51;
    *(v48 + 128) = v52;

    if (v94 <= 1u)
    {
      v57 = a8;
    }

    else
    {
      v57 = a8;
      if (v94 == 3)
      {
        v58 = 0xE100000000000000;
        v59 = 38;
LABEL_22:
        MEMORY[0x1B2718AE0](v59, v58);

        MEMORY[0x1B2718AE0](v91, v92);

        v67 = 0;
        v68 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v59 = 0;
    v58 = 0xE000000000000000;
    goto LABEL_22;
  }

  v46 = a6;
  if (a6 == 3)
  {
    v98 = 544366966;
    v99 = 0xE400000000000000;

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v25, v27);
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v47 = sub_1AF7DCE50(&v110, 3u);
    MEMORY[0x1B2718AE0](v47);
  }

  else
  {

    v98 = sub_1AF7DCE50(&v110, a6);
    v99 = v60;
    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v25, v27);
  }

  v62 = v98;
  v61 = v99;
  v57 = a8;
  v63 = *a5;
  v105 = 8201;
  v106 = 0xE200000000000000;

  MEMORY[0x1B2718AE0](v62, v61);
  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  sub_1AF7FCDD4(&v110, 1, &v98);
  sub_1AF444FBC(&v110);

  v64 = *a5;
  v95 = v25;
  if (v46 > 2u)
  {
    if (v46 == 3)
    {

      v65 = sub_1AF7DD4B4(&v98, v64, 0, 0, 3);
      goto LABEL_26;
    }
  }

  else if (v46 >= 2u)
  {

    v65 = sub_1AF7E5CBC(&v98, v64);
    goto LABEL_26;
  }

  v65 = sub_1AF7E0118(&v98, v64, 0, 0, v46);
LABEL_26:
  v69 = v65;
  v70 = v66;
  v71 = v46;

  sub_1AF761390(&v98);
  MEMORY[0x1B2718AE0](v69, v70);

  if (v46 == 3)
  {
    v72 = 0;
  }

  else
  {
    v72 = 59;
  }

  if (v46 == 3)
  {
    v73 = 0xE000000000000000;
  }

  else
  {
    v73 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v72, v73);

  v74 = v105;
  v75 = v106;
  v76 = *(v63 + 128);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  *(v63 + 128) = v76;
  if ((v77 & 1) == 0)
  {
    v76 = sub_1AF420554(0, *(v76 + 2) + 1, 1, v76);
    *(v63 + 128) = v76;
  }

  v79 = *(v76 + 2);
  v78 = *(v76 + 3);
  if (v79 >= v78 >> 1)
  {
    v76 = sub_1AF420554(v78 > 1, v79 + 1, 1, v76);
  }

  *(v76 + 2) = v79 + 1;
  v80 = &v76[16 * v79];
  *(v80 + 4) = v74;
  *(v80 + 5) = v75;
  *(v63 + 128) = v76;

  v98 = 0;
  v99 = 0xE000000000000000;
  if (v71 <= 1u)
  {
    v81 = v95;
    goto LABEL_40;
  }

  v81 = v95;
  if (v71 != 3)
  {
LABEL_40:
    v83 = 0;
    v82 = 0xE000000000000000;
    goto LABEL_41;
  }

  v82 = 0xE100000000000000;
  v83 = 38;
LABEL_41:
  MEMORY[0x1B2718AE0](v83, v82);

  MEMORY[0x1B2718AE0](v81, v27);

  v67 = v98;
  v68 = v99;
LABEL_42:
  v84 = *v57;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  *v57 = v84;
  if ((v85 & 1) == 0)
  {
    v84 = sub_1AF420554(0, *(v84 + 2) + 1, 1, v84);
    *v57 = v84;
  }

  v87 = *(v84 + 2);
  v86 = *(v84 + 3);
  if (v87 >= v86 >> 1)
  {
    *v57 = sub_1AF420554(v86 > 1, v87 + 1, 1, v84);
  }

  v89 = *v57;
  *(v89 + 2) = v87 + 1;
  v90 = &v89[16 * v87];
  *(v90 + 4) = v67;
  *(v90 + 5) = v68;
  return result;
}

uint64_t sub_1AF760664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 56);
  v9 = *(*a1 + 64);
  v30 = v9;
  v10 = *(*a1 + 72);
  v11 = *(*a1 + 80);
  v12 = *(*a1 + 88);
  v32 = *(a2 + 24);
  v34 = *(a2 + 32);
  swift_bridgeObjectRetain_n();
  sub_1AF687F90(v8, v9);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);

  MEMORY[0x1B2718AE0](v6, v7);

  _s13ParameterBaseCMa();
  inited = swift_initStackObject();
  swift_weakInit();
  swift_weakAssign();
  inited[3] = v6;
  inited[4] = v7;
  inited[5] = v32;
  inited[6] = v34;
  inited[7] = v8;
  inited[8] = v30;
  inited[9] = v10;
  inited[10] = v11;
  inited[11] = v12;

  sub_1AF76ED08(v32, v34);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  sub_1AF4486E4();
  v14 = sub_1AFDFDEB8();
  v16 = v15;

  v33 = v14;
  LOBYTE(v8) = sub_1AFDFD188();

  if (v8)
  {
    v17 = sub_1AFDFD048();
    sub_1AFBBFB14(v17);
    v19 = *(a2 + 24);
    v18 = *(a2 + 32);

    v20 = sub_1AF76ED08(v19, v18);
    v22 = v21;

    MEMORY[0x1B2718AE0](v20, v22);

    MEMORY[0x1B2718AE0](0x5D7865646E695FLL, 0xE700000000000000);

    MEMORY[0x1B2718AE0](91, 0xE100000000000000);

    v14 = v33;
  }

  v23 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1AF420554(0, *(v23 + 2) + 1, 1, v23);
    *a5 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    *a5 = sub_1AF420554(v25 > 1, v26 + 1, 1, v23);
  }

  v28 = *a5;
  *(v28 + 2) = v26 + 1;
  v29 = &v28[16 * v26];
  *(v29 + 4) = v14;
  *(v29 + 5) = v16;
  return result;
}

unint64_t sub_1AF76099C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v9 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2719C70](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v14 = v12;
    sub_1AF760664(&v14, a2, a3, a4, a5);

    if (v5)
    {
      break;
    }

    ++v11;
  }

  while (v10 != v11);
  return result;
}

uint64_t sub_1AF760A9C(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v34 = *(result + 16);
  if (v34)
  {
    v3 = 0;
    v33 = result + 32;
    do
    {
      v39 = v3;
      v5 = (v33 + (v3 << 6));
      v6 = v5[1];
      v42 = *v5;
      v43 = v6;
      v7 = v5[3];
      v44 = v5[2];
      v45 = v7;
      v50 = *(&v42 + 1);
      v8 = v42;
      v9 = v43;
      v10 = v44;
      v11 = v7;
      v12 = *a2;
      v41 = *(a3 + 24);
      sub_1AF7613E4(&v42, &v46);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v8, v50);
      v50 = v41;
      v46 = v41;
      v47 = v9;
      v48 = v10;
      v49 = v11;
      v40 = *(v12 + 144);
      v37 = *(v40 + 16);
      v38 = v12;
      if (v37)
      {
        v13 = (v40 + 48);
        v14 = *(v40 + 16);
        while (1)
        {
          v16 = *v13;
          v15 = v13[1];
          v18 = v13[2];
          v17 = v13[3];
          v20 = v13[4];
          v19 = v13[5];
          v21 = *(v13 - 2) == v50 && *(v13 - 1) == *(&v41 + 1);
          if (v21 || (sub_1AFDFEE28() & 1) != 0)
          {
            v22 = v16 == v9 && v15 == *(&v9 + 1);
            if (v22 || (sub_1AFDFEE28() & 1) != 0)
            {
              v23 = v18 == v10 && v17 == *(&v10 + 1);
              if (v23 || (sub_1AFDFEE28() & 1) != 0)
              {
                v24 = v20 == v11 && v19 == *(&v11 + 1);
                if (v24 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }
              }
            }
          }

          v13 += 8;
          if (!--v14)
          {
            goto LABEL_29;
          }
        }

        sub_1AF761440(&v46);

        v4 = v39;
      }

      else
      {
LABEL_29:
        v25 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + 144) = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1AF424EC0(0, v37 + 1, 1, v40);
          *(v38 + 144) = v25;
        }

        v4 = v39;
        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = sub_1AF424EC0(v27 > 1, v28 + 1, 1, v25);
        }

        *(v25 + 2) = v28 + 1;
        v29 = &v25[64 * v28];
        v30 = v46;
        v31 = v47;
        v32 = v49;
        *(v29 + 4) = v48;
        *(v29 + 5) = v32;
        *(v29 + 2) = v30;
        *(v29 + 3) = v31;
        *(v38 + 144) = v25;
      }

      result = sub_1AF761440(&v42);
      v3 = v4 + 1;
    }

    while (v3 != v34);
  }

  return result;
}

uint64_t sub_1AF760D6C(uint64_t *a1, uint64_t a2, uint64_t *a3, unsigned __int8 a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = sub_1AF764B14(*a1, v9);
  if (v10)
  {
    v11 = v10;
    v74 = v4;
    v12 = *(v10 + 40);
    v13 = *(v10 + 48);
    v14 = *(*a3 + 24);

    sub_1AF78AD48(v12, v13, v14);

    v15 = *a3;
    v70 = xmmword_1AFE75F70;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    v17 = *(v11 + 40);
    v16 = *(v11 + 48);

    v18 = sub_1AF76ED08(v17, v16);
    v20 = v19;

    MEMORY[0x1B2718AE0](0x657A69735FLL, 0xE500000000000000);
    v21 = sub_1AF7DBFF8(&v70, v18, v20, 0, a4);
    v23 = v22;

    MEMORY[0x1B2718AE0](v21, v23);

    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    v24 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v24);

    if (a4 == 3)
    {
      v25 = 0;
    }

    else
    {
      v25 = 59;
    }

    if (a4 == 3)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = 0xE100000000000000;
    }

    v68 = v25;
    MEMORY[0x1B2718AE0]();
    v69 = v26;

    v27 = *(v15 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 128) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1AF420554(0, *(v27 + 2) + 1, 1, v27);
      *(v15 + 128) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1AF420554(v29 > 1, v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[16 * v30];
    *(v31 + 4) = 8201;
    *(v31 + 5) = 0xE200000000000000;
    *(v15 + 128) = v27;

    v32 = *a3;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](8201, 0xE200000000000000);
    v34 = *(a2 + 24);
    v33 = *(a2 + 32);

    v35 = sub_1AF76ED08(v34, v33);
    v37 = v36;

    MEMORY[0x1B2718AE0](v35, v37);

    MEMORY[0x1B2718AE0](0x203D20657A69735FLL, 0xE800000000000000);
    v39 = *(a2 + 24);
    v38 = *(a2 + 32);

    v40 = sub_1AF76ED08(v39, v38);
    v42 = v41;

    MEMORY[0x1B2718AE0](v40, v42);

    MEMORY[0x1B2718AE0](0x203C20657A69735FLL, 0xE800000000000000);
    v44 = *(v11 + 40);
    v43 = *(v11 + 48);

    v45 = sub_1AF76ED08(v44, v43);
    v47 = v46;

    MEMORY[0x1B2718AE0](v45, v47);

    MEMORY[0x1B2718AE0](0x203F20657A69735FLL, 0xE800000000000000);
    v49 = *(a2 + 24);
    v48 = *(a2 + 32);

    v50 = sub_1AF76ED08(v49, v48);
    v52 = v51;

    MEMORY[0x1B2718AE0](v50, v52);

    MEMORY[0x1B2718AE0](0x203A20657A69735FLL, 0xE800000000000000);
    v54 = *(v11 + 40);
    v53 = *(v11 + 48);

    v55 = sub_1AF76ED08(v54, v53);
    v57 = v56;

    MEMORY[0x1B2718AE0](v55, v57);

    MEMORY[0x1B2718AE0](0x657A69735FLL, 0xE500000000000000);
    MEMORY[0x1B2718AE0](v68, v69);

    v58 = *(v32 + 128);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 128) = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1AF420554(0, *(v58 + 2) + 1, 1, v58);
      *(v32 + 128) = v58;
    }

    v61 = *(v58 + 2);
    v60 = *(v58 + 3);
    if (v61 >= v60 >> 1)
    {
      *(v32 + 128) = sub_1AF420554(v60 > 1, v61 + 1, 1, v58);
    }

    v62 = *(v32 + 128);
    *(v62 + 16) = v61 + 1;
    v63 = v62 + 16 * v61;
    *(v63 + 32) = 0;
    *(v63 + 40) = 0xE000000000000000;
    *(v32 + 128) = v62;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000042, 0x80000001AFF33580);
    MEMORY[0x1B2718AE0](v8, v9);
    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v65 = v70;
    v66 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v67 = v66;
      swift_once();
      v66 = v67;
    }

    *&v70 = 0;
    sub_1AF0D4F18(v66, &v70, v65, *(&v65 + 1));
  }
}

unint64_t sub_1AF7614A8()
{
  result = qword_1EB63E640;
  if (!qword_1EB63E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E640);
  }

  return result;
}

unint64_t sub_1AF761500()
{
  result = qword_1EB63E648;
  if (!qword_1EB63E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E648);
  }

  return result;
}

unint64_t sub_1AF761558()
{
  result = qword_1EB63E650;
  if (!qword_1EB63E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E650);
  }

  return result;
}

uint64_t sub_1AF7615AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1AFC07668(0, v1, 0);
    v4 = 0;
    v2 = v44;
    v5 = 1 << *(a1 + 32);
    v6 = (v5 + 63) >> 6;
    v33 = a1 + 64;
    v7 = (a1 + 64);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9)
      {
        break;
      }

      v4 -= 64;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v5 = __clz(__rbit64(v8)) - v4;
LABEL_7:
    v10 = 0;
    v34 = v1;
    do
    {
      v35 = *(a1 + 36);
      v12 = (*(a1 + 48) + 16 * v5);
      v14 = *v12;
      v13 = v12[1];
      sub_1AF4455CC(*(a1 + 56) + 88 * v5, v39);
      v36[0] = v14;
      v36[1] = v13;
      v37[2] = v39[2];
      v37[3] = v39[3];
      v37[4] = v39[4];
      v38 = v40;
      v37[0] = v39[0];
      v37[1] = v39[1];
      sub_1AF4486E4();

      v15 = sub_1AFDFDEB8();
      v17 = v16;
      sub_1AF4455CC(v37, v42);
      *&v41 = v15;
      *(&v41 + 1) = v17;
      sub_1AF770F40(v36, sub_1AF7711B0);
      v44 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AFC07668(v18 > 1, v19 + 1, 1);
        v2 = v44;
      }

      *(v2 + 16) = v19 + 1;
      v20 = v2 + 104 * v19;
      v21 = v41;
      v22 = v42[1];
      *(v20 + 48) = v42[0];
      *(v20 + 64) = v22;
      *(v20 + 32) = v21;
      v23 = v42[2];
      v24 = v42[3];
      v25 = v42[4];
      *(v20 + 128) = v43;
      *(v20 + 96) = v24;
      *(v20 + 112) = v25;
      *(v20 + 80) = v23;
      v26 = v5 >> 6;
      if ((*(v33 + 8 * (v5 >> 6)) & (-2 << v5)) != 0)
      {
        v11 = __clz(__rbit64(*(v33 + 8 * (v5 >> 6)) & (-2 << v5))) | v5 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 1 << *(a1 + 32);
        v27 = v26 << 6;
        v28 = v26 + 1;
        v29 = (a1 + 72 + 8 * v26);
        while (v28 < (v11 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_1AF0FBAE8(v5, v35, 0);
            v11 = __clz(__rbit64(v30)) + v27;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v5, v35, 0);
      }

LABEL_9:
      ++v10;
      v5 = v11;
    }

    while (v10 != v34);
  }

  return v2;
}

uint64_t sub_1AF761898(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF6247EC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1AF76CEDC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF761904(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF624814(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AF76CFC4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF761970()
{
  _s17TypedArraySnippetCMa();
  if (swift_dynamicCastClass())
  {
    return 4;
  }

  _s19StaticSwitchSnippetCMa();
  if (swift_dynamicCastClass())
  {
    return 5;
  }

  _s15VariableSnippetCMa();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  _s24VariableReferenceSnippetCMa();
  if (swift_dynamicCastClass())
  {
    return 2;
  }

  _s20ArraySequenceSnippetCMa();
  if (swift_dynamicCastClass())
  {
    return 9;
  }

  if (*v0 == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
  {
    return 0;
  }

  v2 = *v0;
  _s17CustomCodeSnippetCMa();
  if (swift_dynamicCastClass())
  {
    return 3;
  }

  if (v2 == _TtCO3VFX21GraphV1CodeGeneration11ContextExit)
  {
    return 6;
  }

  if (v2 == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
  {
    return 7;
  }

  _s10SubContextCMa();
  if (swift_dynamicCastClass())
  {
    return 8;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_1AF761AD0()
{
  if (!*(v0 + 16))
  {
    goto LABEL_11;
  }

  v2 = sub_1AF76E740(v1, sub_1AF76E8B0, sub_1AF76E8B0);

  v3 = sub_1AF7615AC(v2);

  if (*(v3 + 16))
  {
    sub_1AF445010();
    v4 = sub_1AFDFE5C8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  *&v11 = v4;
  sub_1AF76E344(v3, 1, &v11);
  v5 = v11;
  if (!*(v11 + 16) || (v6 = sub_1AF419914(0x646465626D457369, 0xEF74657373416465), (v7 & 1) == 0))
  {

LABEL_11:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  sub_1AF4455CC(*(v5 + 56) + 88 * v6, v9);

  sub_1AF44CBE4(&v10, &v11);
  sub_1AF761390(v9);
  if (!*(&v12 + 1))
  {
LABEL_12:
    sub_1AF770D80(&v11, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v9[0];
  }

  return result;
}

uint64_t sub_1AF761C80()
{
  v5 = MEMORY[0x1E69E6158];
  *&v4 = 0;
  *(&v4 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v4, v3);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v4);
  sub_1AF449D40(v3, &v4);
  swift_dynamicCast();
  v4 = v2;
  *&v3[0] = 0x657461756C617645;
  *(&v3[0] + 1) = 0xE90000000000005FLL;
  sub_1AF770DF0();
  sub_1AF770E44();
  v0 = sub_1AFDFCD68();

  return v0 & 1;
}

uint64_t sub_1AF761D68(uint64_t a1, uint64_t a2)
{
  *&v4 = a1;
  *(&v4 + 1) = a2;

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
  sub_1AF7FDC2C(v4, *(&v4 + 1), &v4);

  if (v5)
  {
    sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1AF770D80(&v4, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return 0;
  }
}

uint64_t sub_1AF761E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v7 = a1;
    v8 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
    v4 = v7;
    sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v9 = v5;
    v7 = a3;
    sub_1AF7FDB64(v4, v8, &v7);

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v7);
  }

  else
  {
    v7 = a1;
    v8 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
    sub_1AF7FDA4C(v7, v8);
  }
}

uint64_t sub_1AF761F94(uint64_t a1, uint64_t a2)
{
  *&v4 = a1;
  *(&v4 + 1) = a2;

  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF339D0);
  sub_1AF7FDC2C(v4, *(&v4 + 1), &v4);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1AF770D80(&v4, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return 0;
  }
}

uint64_t sub_1AF762070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v9 = a1;
    v10 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF339D0);
    v6 = v9;
    v7 = v10;
    v11 = MEMORY[0x1E69E6158];
    v9 = a3;
    v10 = a4;
    sub_1AF7FDB64(v6, v7, &v9);

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v9);
  }

  else
  {
    v9 = a1;
    v10 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF339D0);
    sub_1AF7FDA4C(v9, v10);
  }
}

uint64_t sub_1AF762188()
{
  sub_1AF7FDD44(0xD000000000000012, 0x80000001AFF23E70, v26);
  if (!*(&v26[0] + 1))
  {
    sub_1AF770D80(v26, &qword_1EB6335B0, &_s8MetadataVN);
    v29 = 0u;
    v30 = 0u;
    goto LABEL_14;
  }

  sub_1AF44CBE4(&v28, &v29);
  sub_1AF761390(v26);
  if (!*(&v30 + 1))
  {
LABEL_14:
    sub_1AF770D80(&v29, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v1 = *(&v26[0] + 1);
    v2 = v0[5];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = *&v26[0];
      v6 = (v2 + 40);
      while (1)
      {
        v7 = *(v6 - 1) == v5 && *v6 == v1;
        if (v7 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v4;
        v6 += 2;
        if (v3 == v4)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      return 0;
    }

    return v4;
  }

LABEL_15:
  v8 = v0[6];
  v9 = *(v8 + 16);
  if (!v9)
  {
    return -1;
  }

  v10 = v0[11];
  if (v10[2] != 1)
  {
    return -1;
  }

  v12 = v10[4];
  v11 = v10[5];
  v14 = v10[6];
  v13 = v10[7];
  v15 = v10[8];
  sub_1AF687F90(v12, v11);
  *&v29 = v12;
  *(&v29 + 1) = v11;
  *&v30 = v14;
  *(&v30 + 1) = v13;
  v31 = v15;

  v4 = 0;
  for (i = 32; ; i += 40)
  {
    v17 = *(v8 + i);
    v18 = *(v8 + i + 16);
    v27 = *(v8 + i + 32);
    v26[0] = v17;
    v26[1] = v18;
    sub_1AF444F60(v26, v25);
    v19 = sub_1AF7FE65C();
    v21 = v20;
    if (v19 == sub_1AF7FE65C() && v21 == v22)
    {
      break;
    }

    v23 = sub_1AFDFEE28();

    sub_1AF444FBC(v26);
    if (v23)
    {
      goto LABEL_25;
    }

    if (v9 == ++v4)
    {

      sub_1AF771214(v12, v11);
      return -1;
    }
  }

  sub_1AF444FBC(v26);
LABEL_25:

  sub_1AF771214(v12, v11);
  return v4;
}

uint64_t sub_1AF762438()
{
  v2 = MEMORY[0x1E69E7CC0];

  sub_1AF782434(v0, &v2);

  return v2;
}

uint64_t sub_1AF762494()
{
  sub_1AF7FDD44(0xD00000000000001CLL, 0x80000001AFF23ED0, v1);
  if (!v1[1])
  {
    sub_1AF770D80(v1, &qword_1EB6335B0, &_s8MetadataVN);
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  sub_1AF44CBE4(&v2, &v3);
  sub_1AF761390(v1);
  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1AF770D80(&v3, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    return v1[0];
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF76259C()
{
  sub_1AF7FDD44(0xD000000000000015, 0x80000001AFF23EF0, v1);
  if (!v1[1])
  {
    sub_1AF770D80(v1, &qword_1EB6335B0, &_s8MetadataVN);
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  sub_1AF44CBE4(&v2, &v3);
  sub_1AF761390(v1);
  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1AF770D80(&v3, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    return v1[0];
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF7626A4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1AF419914(0x64656C6261736964, 0xE800000000000000);
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1AF7FDC2C(0x64656C6261736964, 0xE800000000000000, v6);
  sub_1AF449D40(v6, &v7);
  swift_dynamicCast();
  return v5;
}

uint64_t sub_1AF762768(void *a1)
{
  v2 = a1;
  a1[5] = v1[5];

  v2[6] = v1[6];

  v2[10] = v1[10];

  v2[11] = v1[11];

  v3 = v1[2];
  if (v3)
  {
    v34 = v2;
    sub_1AF445010();
    v4 = sub_1AFDFE598();
    v5 = v4;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = *(v3 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    v35 = v4 + 64;
    v36 = v4;
    v12 = v3 + 72;
    if ((v9 & v8) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = v13 | (v6 << 6);
LABEL_10:
        v18 = 16 * v14;
        v19 = *(v3 + 56);
        v20 = (*(v3 + 48) + 16 * v14);
        v21 = *v20;
        v22 = v20[1];
        v23 = v3;
        v24 = 88 * v14;
        sub_1AF4455CC(v19 + 88 * v14, v37);
        v25 = (v14 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v26 = 1 << v14;
        v5 = v36;
        *(v35 + v25) |= v26;
        v27 = (v36[6] + v18);
        *v27 = v21;
        v27[1] = v22;
        v28 = v36[7] + v24;
        v3 = v23;
        v29 = v37[1];
        *v28 = v37[0];
        v30 = v37[2];
        v31 = v37[3];
        v32 = v37[4];
        *(v28 + 80) = v38;
        *(v28 + 48) = v31;
        *(v28 + 64) = v32;
        *(v28 + 16) = v29;
        *(v28 + 32) = v30;
        ++v36[2];
      }

      while (v10);
    }

    v15 = v6 << 6;
    while (1)
    {
      v16 = v6 + 1;
      if (v6 + 1 >= v11)
      {
        break;
      }

      v17 = *(v12 + 8 * v6);
      v15 += 64;
      ++v6;
      if (v17)
      {
        v10 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v6 = v16;
        goto LABEL_10;
      }
    }

    v2 = v34;
  }

  else
  {
    v5 = 0;
  }

  v2[2] = v5;
}

uint64_t sub_1AF762980()
{
  v1 = *(v0 + 16);
  if (v1 && *(v1 + 16) && (, sub_1AF419914(0x6C6562616CLL, 0xE500000000000000), v3 = v2, , (v3 & 1) != 0))
  {
    sub_1AF7FDD44(0x6C6562616CLL, 0xE500000000000000, &v7);
    sub_1AF44CBE4(&v9, v6);
    sub_1AF761390(&v7);
    sub_1AF449D40(v6, v10);
    swift_dynamicCast();
    return v5;
  }

  else
  {
    v8 = MEMORY[0x1E69E6158];
    *&v7 = 0;
    *(&v7 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v7, v10);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v7);
    sub_1AF449D40(v10, &v7);
    swift_dynamicCast();
    return *&v6[0];
  }
}

uint64_t sub_1AF762ABC(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  sub_1AF770EE8();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v60 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = &v55[-v8];
  v62 = sub_1AFDFF358();
  MEMORY[0x1EEE9AC00](v62, v9);
  v11 = 0;
  v70 = 0x80000001AFF33970;
  v63 = 0x80000001AFF33990;
  v69 = 0x80000001AFF339B0;
  v59 = *MEMORY[0x1E69E75B8];
  v58 = *MEMORY[0x1E69E75B0];
  v56 = *MEMORY[0x1E69E75A8];
  v61 = (v12 + 8);
  v57 = xmmword_1AFE76100;
  v64 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  while (1)
  {
    v14 = byte_1F25002F0[v11 + 32];
    *&v79 = 24415;
    *(&v79 + 1) = 0xE200000000000000;
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = 0xD000000000000014;
        v16 = v63;
      }

      else
      {
        v15 = v14 == 4 ? 0xD000000000000017 : 0x646F4D6775626564;
        v16 = v14 == 4 ? v70 : 0xE900000000000065;
      }
    }

    else if (v14)
    {
      v15 = v14 == 1 ? 0xD000000000000010 : 0x64696C61766E69;
      v16 = v14 == 1 ? v69 : 0xE700000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
      v15 = 0x796C6E4F64616572;
    }

    MEMORY[0x1B2718AE0](v15, v16);

    v17 = *(&v79 + 1);
    v18 = *(v71 + 16);
    if (v18)
    {
      if (*(v18 + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++v11 == 6)
    {
      return result;
    }
  }

  v19 = v79;

  sub_1AF419914(v19, v17);
  LOBYTE(v19) = v20;

  if ((v19 & 1) == 0)
  {
    goto LABEL_3;
  }

  *&v79 = 24415;
  *(&v79 + 1) = 0xE200000000000000;
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v21 = 0xD000000000000014;
      v22 = v63;
    }

    else
    {
      if (v14 == 4)
      {
        v21 = 0xD000000000000017;
      }

      else
      {
        v21 = 0x646F4D6775626564;
      }

      if (v14 == 4)
      {
        v22 = v70;
      }

      else
      {
        v22 = 0xE900000000000065;
      }
    }
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v21 = 0xD000000000000010;
    }

    else
    {
      v21 = 0x64696C61766E69;
    }

    if (v14 == 1)
    {
      v22 = v69;
    }

    else
    {
      v22 = 0xE700000000000000;
    }
  }

  else
  {
    v22 = 0xE800000000000000;
    v21 = 0x796C6E4F64616572;
  }

  MEMORY[0x1B2718AE0](v21, v22);

  v23 = v79;
  v83[3] = MEMORY[0x1E69E6530];
  v83[0] = 1;
  if (!*(v2 + 16))
  {
    *(v2 + 16) = MEMORY[0x1E69E7CC8];
  }

  v24 = v2;
  sub_1AF0D5A54(v83, &v72);
  memset(&v82[8], 0, 32);
  v67 = v23;
  v79 = v23;
  sub_1AF0D5A54(&v72, v78);

  v25 = v64;
  sub_1AFDFF318();
  sub_1AF441150(&v72, *(&v73 + 1));
  DynamicType = swift_getDynamicType();
  v27 = v68;
  sub_1AFDFF338();
  v28 = sub_1AFDFF328();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
LABEL_44:
    sub_1AF808478(v86);
    v65 = v86[0];
    v66 = v86[1];
    v30 = v87;
    (*v61)(v25, v62);
    v2 = v24;
    v31 = v67;
  }

  else
  {
    v32 = v27;
    v33 = v60;
    sub_1AF770FFC(v32, v60, sub_1AF770EE8);
    v34 = (*(v29 + 88))(v33, v28);
    if (v34 == v59)
    {
      v31 = v67;
      if (DynamicType == &type metadata for Entity)
      {
        v30 = 0;
        v65 = v57;
        v66 = 0u;
      }

      else
      {
        sub_1AF808478(v84);
        v65 = v84[0];
        v66 = v84[1];
        v30 = v85;
      }

      v2 = v24;
      (*v61)(v64, v62);
    }

    else
    {
      v2 = v24;
      v31 = v67;
      if (v34 == v58)
      {
        (*v61)(v64, v62);
        v30 = 0;
        v66 = 0u;
        v35 = v57;
      }

      else
      {
        if (v34 != v56)
        {
          (*(v29 + 8))(v60, v28);
          v25 = v64;
          goto LABEL_44;
        }

        (*v61)(v64, v62);
        sub_1AF441150(&v72, *(&v73 + 1));
        v36 = swift_getDynamicType();
        v37 = swift_conformsToProtocol2();
        v30 = 0;
        if (v36)
        {
          v38 = v37 == 0;
        }

        else
        {
          v38 = 1;
        }

        v39 = 41;
        if (v38)
        {
          v39 = 42;
        }

        *&v35 = 0;
        v66 = 0u;
        *(&v35 + 1) = v39;
      }

      v65 = v35;
    }
  }

  sub_1AF770F40(v68, sub_1AF770EE8);
  v80 = v65;
  v81 = v66;
  *v82 = v30;
  sub_1AF770D80(&v82[8], &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  sub_1AF449D40(&v72, &v82[8]);
  v74 = v81;
  v75 = *v82;
  v76 = *&v82[16];
  v77 = *&v82[32];
  v72 = v79;
  v73 = v80;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *(v2 + 16);
  v41 = v78[0];
  v42 = sub_1AF419914(v31, *(&v23 + 1));
  v44 = v43;
  v45 = *(v41 + 16) + ((v43 & 1) == 0);
  if (*(v41 + 24) >= v45)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = v42;
      sub_1AF844804();
      v42 = v48;
      v47 = v78[0];
      if (v44)
      {
        goto LABEL_65;
      }

      goto LABEL_68;
    }

LABEL_64:
    v47 = v78[0];
    if (v44)
    {
LABEL_65:
      sub_1AF770FA0(&v72, *(v47 + 56) + 88 * v42);
LABEL_69:
      *(v2 + 16) = v47;

      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v83);
      goto LABEL_3;
    }

LABEL_68:
    *(v23 + 8 * (v42 >> 6) + 64) |= 1 << v42;
    v49 = (*(v23 + 48) + 16 * v42);
    *v49 = v31;
    v49[1] = *(&v23 + 1);
    v50 = *(v23 + 56) + 88 * v42;
    v51 = v73;
    *v50 = v72;
    *(v50 + 16) = v51;
    v52 = v74;
    v53 = v75;
    v54 = v76;
    *(v50 + 80) = v77;
    *(v50 + 48) = v53;
    *(v50 + 64) = v54;
    *(v50 + 32) = v52;
    ++*(v23 + 16);

    goto LABEL_69;
  }

  sub_1AF82C8F0(v45, isUniquelyReferenced_nonNull_native);
  v42 = sub_1AF419914(v31, *(&v23 + 1));
  if ((v44 & 1) == (v46 & 1))
  {
    goto LABEL_64;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF763300(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);

  MEMORY[0x1B2718AE0](a1, a2);

  return v6;
}

uint64_t sub_1AF76337C()
{
  sub_1AF4486E4();
  v1 = (sub_1AFDFDE98() + 16);
  if (*v1)
  {
    v2 = v1[2 * *v1];
  }

  else
  {

    v2 = *(v0 + 24);
  }

  return v2;
}

uint64_t sub_1AF763428()
{
  v1 = (v0 + 96);
  *v1 = MEMORY[0x1E69E7CC0];

  v2 = *(v1 - 1);
  v3 = *(*(v1 - 2) + 16);
  v22 = *(v1 - 2);

  v23 = v2;

  if (v3)
  {
    v4 = 0;
    v5 = (v22 + 40);
    v6 = (v2 + 64);
    do
    {
      if (v4 == *(v23 + 16))
      {
        break;
      }

      v27 = v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      v10 = *(v6 - 4);
      v9 = *(v6 - 3);
      v24 = v9;
      v25 = v10;
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      v13 = *v6;
      v28 = *(*v21 + 1272);
      v26 = v5;

      sub_1AF687F90(v10, v9);
      v14 = v7;
      v15 = v28(v7, v8);
      v17 = v16;
      _s12ParameterOutCMa();
      v18 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v18[3] = v14;
      v18[4] = v8;
      v18[5] = v15;
      v18[6] = v17;
      v18[7] = v25;
      v18[8] = v24;
      v18[9] = v11;
      v18[10] = v12;
      v18[11] = v13;

      v19 = sub_1AF687F90(v25, v24);
      MEMORY[0x1B2718E00](v19);
      if (*((v21[12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      v4 = v27 + 1;
      sub_1AFDFD4B8();

      sub_1AF687FE4(v25, v24);
      v5 = v26 + 2;
      v6 += 5;
    }

    while (v27 + 1 != *(v22 + 16));
  }
}

uint64_t sub_1AF763664(uint64_t result)
{
  if (v1[2])
  {
    v2 = result;

    v4 = sub_1AF7A23F8(v3);

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = sub_1AFC8604C(*(v4 + 16), 0);
      sub_1AFC871B8(&v25, (v6 + 4), v5, v4);
      sub_1AF0FBB14();
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v25 = v6;
    sub_1AF7AF044(&v25);
    v7 = v25[2];
    if (v7)
    {
      v8 = v25 + 5;
      do
      {
        v15 = *(v8 - 1);
        v14 = *v8;
        v16 = sub_1AFDFD188();

        if (v16)
        {
          sub_1AFDFD048();
          v17 = sub_1AF8083E0();
          v19 = v18;
          v21 = v20;
          v23 = v22;

          v15 = MEMORY[0x1B27189E0](v17, v19, v21, v23);
          v14 = v24;
        }

        v9 = (*(*v1 + 1440))(v15, v14);

        v10 = sub_1AF765354(v9, v2);
        v12 = v11;
        v1[5] = v10;

        v1[6] = v12;

        (*(*v1 + 1336))(v13);

        v8 += 13;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_1AF763908(uint64_t result)
{
  if (v1[2])
  {
    v2 = result;

    v4 = sub_1AF7A244C(v3);

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = sub_1AFC8604C(*(v4 + 16), 0);
      sub_1AFC871B8(&v27, (v6 + 4), v5, v4);
      sub_1AF0FBB14();
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v27 = v6;
    sub_1AF7AF044(&v27);
    v7 = v27[2];
    if (v7)
    {
      v8 = 0xEB0000000074754FLL;
      v9 = v27 + 5;
      do
      {
        v15 = *(v9 - 1);
        v14 = *v9;
        v16 = sub_1AFDFD188();

        if (v16)
        {
          sub_1AFDFD048();
          v17 = sub_1AF8083E0();
          v19 = v18;
          v21 = v20;
          v22 = v8;
          v23 = v2;
          v25 = v24;

          v15 = MEMORY[0x1B27189E0](v17, v19, v21, v25);
          v14 = v26;
          v2 = v23;
          v8 = v22;
        }

        v10 = (*(*v1 + 1456))(v15, v14);

        v11 = sub_1AF76A3BC(v10, v2);
        v13 = v12;
        v1[10] = v11;

        v1[11] = v13;

        sub_1AF763428();

        v9 += 13;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_1AF763B9C(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[13];
  v5 = v1[14];
  v1[5] = v1[8];
  swift_bridgeObjectRetain_n();

  v1[6] = v3;

  (*(*v1 + 1336))(v6);
  v1[10] = v4;

  v1[11] = v5;

  sub_1AF763428();

  sub_1AF763664(a1);

  return sub_1AF763908(a1);
}

uint64_t sub_1AF763CA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1AF764DBC();
  if (v5)
  {
    v6 = v5[2];
    if (v6)
    {
      v7 = 0;
      v68 = v5 + 4;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v9 = &v68[13 * v7];
        v11 = *v9;
        v10 = v9[1];
        v12 = sub_1AFDFD188();

        if (v12)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v13 = sub_1AFDFD1F8();
          v15 = v14;
          v17 = v16;
          v19 = v18;

          v11 = MEMORY[0x1B27189E0](v13, v15, v17, v19);
          v10 = v20;
        }

        v21 = v3[8];
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = 0;
          v24 = (v21 + 40);
          while (1)
          {
            v25 = *(v24 - 1) == v11 && *v24 == v10;
            if (v25 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            ++v23;
            v24 += 2;
            if (v22 == v23)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v23 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AF42231C(0, *(v8 + 2) + 1, 1, v8);
        }

        v27 = *(v8 + 2);
        v26 = *(v8 + 3);
        if (v27 >= v26 >> 1)
        {
          v8 = sub_1AF42231C(v26 > 1, v27 + 1, 1, v8);
        }

        ++v7;
        *(v8 + 2) = v27 + 1;
        *&v8[8 * v27 + 32] = v23;
      }

      while (v7 != v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (*(a1 + 16))
  {

    v29 = sub_1AF76E740(v28, sub_1AF76EA98, sub_1AF76EA98);

    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = sub_1AFC8604C(*(v29 + 16), 0);
      sub_1AFC871B8(&v70, (v31 + 32), v30, v29);
      sub_1AF0FBB14();
    }

    else
    {

      v31 = MEMORY[0x1E69E7CC0];
    }

    v70 = v31;
    sub_1AF761898(&v70);
    v69 = *(v70 + 2);
    if (v69)
    {
      v33 = 0;
      v67 = v70 + 32;
      v32 = MEMORY[0x1E69E7CC0];
      do
      {
        v34 = &v67[13 * v33];
        v36 = *v34;
        v35 = v34[1];
        v37 = sub_1AFDFD188();

        if (v37)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v38 = sub_1AFDFD1F8();
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v36 = MEMORY[0x1B27189E0](v38, v40, v42, v44);
          v35 = v45;
        }

        v46 = v3[13];
        v47 = *(v46 + 16);
        if (v47)
        {
          v48 = 0;
          v49 = (v46 + 40);
          while (1)
          {
            v50 = *(v49 - 1) == v36 && *v49 == v35;
            if (v50 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            ++v48;
            v49 += 2;
            if (v47 == v48)
            {
              v48 = 0;
              break;
            }
          }
        }

        else
        {
          v48 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1AF42231C(0, *(v32 + 2) + 1, 1, v32);
        }

        v52 = *(v32 + 2);
        v51 = *(v32 + 3);
        if (v52 >= v51 >> 1)
        {
          v32 = sub_1AF42231C(v51 > 1, v52 + 1, 1, v32);
        }

        ++v33;
        *(v32 + 2) = v52 + 1;
        *&v32[8 * v52 + 32] = v48;
      }

      while (v33 != v69);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v70 = v8;

  sub_1AF761904(&v70);
  v53 = *(v70 + 2);
  if (v53)
  {
    v54 = (v70 + 32);
    do
    {
      v55 = *v54++;
      v56 = v3[5] + 16 * v55;
      v57 = *(v56 + 32);
      v58 = *(v56 + 40);

      sub_1AF769A18(v57, v58, a2);

      --v53;
    }

    while (v53);
  }

  v70 = v32;

  sub_1AF761904(&v70);
  v59 = *(v70 + 2);
  if (v59)
  {
    v60 = (v70 + 32);
    do
    {
      v61 = *v60++;
      v62 = v3[10] + 16 * v61;
      v63 = *(v62 + 32);
      v64 = *(v62 + 40);

      sub_1AF76AA44(v63, v64, a2);

      --v59;
    }

    while (v59);
  }
}

uint64_t sub_1AF764300()
{
  v1 = v0;
  v2 = sub_1AF762494();
  v3 = sub_1AFB7B948(v2, &unk_1F2500228);

  sub_1AF585778(&unk_1F2500248);
  if ((v3 & 1) != 0 || (v4 = *(sub_1AF762494() + 16), result = , v4))
  {
    v6 = *(v1 + 56);
    if (v6 >> 62)
    {
      v7 = sub_1AFDFE108();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v47 = v6 & 0xC000000000000001;
      v46 = "on";
      v45 = v7;
      while (1)
      {
        if (v47)
        {
          v10 = MEMORY[0x1B2719C70](v8, v6);
          v11 = *(v1 + 16);
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v10 = *(v6 + 8 * v8 + 32);

          v11 = *(v1 + 16);
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        if (!*(v11 + 16))
        {
          goto LABEL_17;
        }

        v12 = sub_1AF419914(0xD00000000000001CLL, v46 | 0x8000000000000000);
        if ((v13 & 1) == 0)
        {
          break;
        }

        sub_1AF4455CC(*(v11 + 56) + 88 * v12, &v56);

        sub_1AF44CBE4(v58, &v50);
        sub_1AF761390(&v56);
        if (!*(&v51 + 1))
        {
          goto LABEL_18;
        }

        sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_19;
        }

        v14 = v56;
LABEL_20:
        if (*(v14 + 16) == 1)
        {
          if (v14 == &unk_1F2500258 || (*(v14 + 32) == qword_1F2500278 ? (v15 = *(v14 + 40) == unk_1F2500280) : (v15 = 0), v15 || (sub_1AFDFEE28() & 1) != 0))
          {

            sub_1AF585778(&qword_1F2500278);
            goto LABEL_37;
          }
        }

        sub_1AF585778(&qword_1F2500278);
        sub_1AF7FDD44(0xD00000000000001CLL, v46 | 0x8000000000000000, &v56);
        if (!v57)
        {
          sub_1AF770D80(&v56, &qword_1EB6335B0, &_s8MetadataVN);
          v50 = 0u;
          v51 = 0u;
LABEL_32:
          v16 = sub_1AF770D80(&v50, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          goto LABEL_33;
        }

        sub_1AF44CBE4(v58, &v50);
        sub_1AF761390(&v56);
        if (!*(&v51 + 1))
        {
          goto LABEL_32;
        }

        sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        v16 = swift_dynamicCast();
        if (v16)
        {
          v18 = v56;
          goto LABEL_34;
        }

LABEL_33:
        v18 = MEMORY[0x1E69E7CC0];
LABEL_34:
        v19 = *(v10 + 32);
        v56 = *(v10 + 24);
        v57 = v19;
        MEMORY[0x1EEE9AC00](v16, v17);
        v44[2] = &v56;

        v20 = sub_1AF7B9518(sub_1AF7714A4, v44, v18);

        if ((v20 & 1) == 0)
        {

          goto LABEL_8;
        }

LABEL_37:
        v21 = *(v10 + 32);
        v56 = *(v10 + 24);
        v57 = v21;

        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        v22 = v56;
        v23 = v57;
        v24 = *(v1 + 16);
        if (!v24 || !*(v24 + 16) || (, sub_1AF419914(v22, v23), v26 = v25, , (v26 & 1) == 0))
        {
          v48 = v9;
          v27 = v6;
          v28 = *(v10 + 72);
          v59[0] = *(v10 + 56);
          v59[1] = v28;
          v60 = *(v10 + 88);
          sub_1AF444F60(v59, &v56);
          sub_1AF7FCDD4(v59, 1, &v56);
          sub_1AF444FBC(v59);
          if (!*(v1 + 16))
          {
            *(v1 + 16) = MEMORY[0x1E69E7CC8];
          }

          sub_1AF4455CC(&v56, &v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = *(v1 + 16);
          v30 = v49;
          *(v1 + 16) = 0x8000000000000000;
          v32 = sub_1AF419914(v22, v23);
          v33 = v31;
          v34 = v30[2] + ((v31 & 1) == 0);
          if (v30[3] >= v34)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v31 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              sub_1AF844804();
              if ((v33 & 1) == 0)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
            sub_1AF82C8F0(v34, isUniquelyReferenced_nonNull_native);
            v35 = sub_1AF419914(v22, v23);
            if ((v33 & 1) != (v36 & 1))
            {
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }

            v32 = v35;
            if ((v33 & 1) == 0)
            {
LABEL_46:
              v37 = v49;
              v49[(v32 >> 6) + 8] |= 1 << v32;
              v38 = (v37[6] + 16 * v32);
              *v38 = v22;
              v38[1] = v23;
              v39 = v37[7] + 88 * v32;
              v40 = v51;
              *v39 = v50;
              v41 = v52;
              v42 = v53;
              v43 = v54;
              *(v39 + 80) = v55;
              *(v39 + 48) = v42;
              *(v39 + 64) = v43;
              *(v39 + 16) = v40;
              *(v39 + 32) = v41;

              ++v37[2];
LABEL_50:
              *(v1 + 16) = v37;

              sub_1AF761390(&v56);
              v6 = v27;
              v7 = v45;
              v9 = v48;
              goto LABEL_8;
            }
          }

          v37 = v49;
          sub_1AF770FA0(&v50, v49[7] + 88 * v32);

          goto LABEL_50;
        }

        v7 = v45;
LABEL_8:
        if (v7 == ++v8)
        {
        }
      }

LABEL_17:
      v50 = 0u;
      v51 = 0u;
LABEL_18:
      sub_1AF770D80(&v50, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
LABEL_19:
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1AF7649C4()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0;
    v17 = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v2, 0);
    v3 = v17;
    v5 = *(*v0 + 1272);
    v6 = (v1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = v4;
      v10 = v5(v7, v8);
      v12 = v11;

      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AFC05CE4(v13 > 1, v14 + 1, 1);
      }

      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += 2;
      --v2;
      v4 = v9;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF764B14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v17[0] = a1;
  v17[1] = a2;
  v16[2] = v17;

  v6 = sub_1AF7B9518(sub_1AF7714A4, v16, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 40);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  for (i = (v7 + 40); ; i += 2)
  {
    v11 = *(i - 1) == a1 && *i == a2;
    if (v11 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  v12 = *(v2 + 56);
  if (v12 >> 62)
  {
    if (v9 < sub_1AFDFE108())
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_13:
  v13 = *(v2 + 56);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x1B2719C70](v9, v13);
  }

  else
  {
    v14 = *(v13 + 8 * v9 + 32);
  }

  return v14;
}

uint64_t sub_1AF764C68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v17[0] = a1;
  v17[1] = a2;
  v16[2] = v17;

  v6 = sub_1AF7B9518(sub_1AF771190, v16, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 80);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  for (i = (v7 + 40); ; i += 2)
  {
    v11 = *(i - 1) == a1 && *i == a2;
    if (v11 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  v12 = *(v2 + 96);
  if (v12 >> 62)
  {
    if (v9 < sub_1AFDFE108())
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_13:
  v13 = *(v2 + 96);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x1B2719C70](v9, v13);
  }

  else
  {
    v14 = *(v13 + 8 * v9 + 32);
  }

  return v14;
}

void *sub_1AF764E14(uint64_t (*a1)(uint64_t), void (*a2)(void **))
{
  if (!*(v2 + 16))
  {
    return 0;
  }

  v6 = a1(v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_1AFC8604C(*(v6 + 16), 0);
    sub_1AFC871B8(&v10, (v8 + 4), v7, v6);
    sub_1AF0FBB14();
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = v8;
  a2(&v10);
  return v10;
}

char *sub_1AF764EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 40);
  v5 = *(v3 + 48);
  v7 = *(v6 + 16);

  if (v7)
  {
    v36 = a3;
    v37 = 0;
    v8 = 0;
    v38 = v5 + 64;
    v39 = v6 + 40;
    v9 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    v40 = v5;
    v41 = v6;
LABEL_3:
    v10 = (v39 + 16 * v8);
    v11 = (v38 + 40 * v8);
    v12 = v8;
    while (v12 != *(v5 + 16))
    {
      v13 = *v10;
      v14 = *(v11 - 4);
      v15 = *(v11 - 3);
      v16 = *(v11 - 2);
      v17 = *(v11 - 1);
      v18 = *v11;
      v45 = v10;
      v46 = v12 + 1;
      v44 = *(v10 - 1);
      v49[0] = v44;
      v49[1] = v13;
      v49[5] = a1;
      v49[6] = a2;
      v19 = v12;

      v47 = v14;
      sub_1AF687F90(v14, v15);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      sub_1AF770DF0();
      sub_1AF770E44();
      v20 = sub_1AFDFCD68();

      if (v20)
      {
        if (v37)
        {
          v5 = v40;
          v8 = v46;
        }

        else
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1AF420554(0, *(v48 + 2) + 1, 1, v48);
          }

          v8 = v46;
          v28 = *(v48 + 2);
          v27 = *(v48 + 3);
          if (v28 >= v27 >> 1)
          {
            v48 = sub_1AF420554(v27 > 1, v28 + 1, 1, v48);
          }

          *(v48 + 2) = v28 + 1;
          v29 = &v48[16 * v28];
          *(v29 + 4) = a1;
          *(v29 + 5) = a2;
          sub_1AF444F60(v36, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AF424FCC(0, *(v9 + 2) + 1, 1, v9);
          }

          v31 = *(v9 + 2);
          v30 = *(v9 + 3);
          if (v31 >= v30 >> 1)
          {
            v9 = sub_1AF424FCC(v30 > 1, v31 + 1, 1, v9);
          }

          *(v9 + 2) = v31 + 1;
          v32 = &v9[40 * v31];
          v33 = *v36;
          v34 = *(v36 + 16);
          *(v32 + 8) = *(v36 + 32);
          *(v32 + 2) = v33;
          *(v32 + 3) = v34;
          v5 = v40;
        }

        sub_1AF687FE4(v14, v15);
        v37 = 1;
        if (*(v41 + 16) - 1 != v19)
        {
          goto LABEL_3;
        }

        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1AF420554(0, *(v48 + 2) + 1, 1, v48);
      }

      v22 = *(v48 + 2);
      v21 = *(v48 + 3);
      if (v22 >= v21 >> 1)
      {
        v48 = sub_1AF420554(v21 > 1, v22 + 1, 1, v48);
      }

      *(v48 + 2) = v22 + 1;
      v23 = &v48[16 * v22];
      *(v23 + 4) = v44;
      *(v23 + 5) = v13;
      sub_1AF687F90(v47, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF424FCC(0, *(v9 + 2) + 1, 1, v9);
      }

      v25 = *(v9 + 2);
      v24 = *(v9 + 3);
      if (v25 >= v24 >> 1)
      {
        v9 = sub_1AF424FCC(v24 > 1, v25 + 1, 1, v9);
      }

      *(v9 + 2) = v25 + 1;
      v26 = &v9[40 * v25];
      *(v26 + 4) = v47;
      *(v26 + 5) = v15;
      *(v26 + 6) = v16;
      *(v26 + 7) = v17;
      *(v26 + 8) = v18;

      sub_1AF687FE4(v47, v15);
      v5 = v40;
      v10 = v45 + 2;
      v11 += 5;
      v12 = v46;
      if (v46 == *(v41 + 16))
      {
        break;
      }
    }
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t sub_1AF765354(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v3 + 16);

  if (v5)
  {
    v6 = 0;
    v49 = v4 + 32;
    v50 = v3 + 32;
    v65 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    v46 = v4;
    v47 = v3;
    while (v6 != *(v4 + 16))
    {
      v8 = (v50 + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = (v49 + 40 * v6);
      v56 = v11[1];
      v57 = *v11;
      v54 = v11[3];
      v55 = v11[2];
      v52 = v6;
      v53 = v11[4];
      v61 = v9;
      v12 = v9 == *(a1 + 24) && v10 == *(a1 + 32);
      if (v12 || (sub_1AFDFEE28() & 1) != 0)
      {
        v13 = *(a2 + 56);
        v14 = *(a1 + 72);
        v70[0] = *(a1 + 56);
        v70[1] = v14;
        v71 = *(a1 + 88);

        sub_1AF687F90(v57, v56);

        sub_1AF444F60(v70, &v66);
        v15 = sub_1AF41A308(v70);
        v17 = v16;
        sub_1AF444FBC(v70);
        if ((v17 & 1) == 0)
        {

          __break(1u);
          return result;
        }

        v18 = *(*(v13 + 56) + 8 * v15);

        v19 = *(v18 + 168);
        if (*(v18 + 160))
        {
          v20 = *(v18 + 160);
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        v22 = *(v20 + 16);

        v60 = v22;
        if (v22)
        {
          v23 = 0;
          v24 = (v20 + 40);
          v25 = (v21 + 40);
          v58 = v21;
          v59 = v10;
          do
          {
            if (v23 == *(v21 + 16))
            {
              break;
            }

            v26 = *(v24 - 1);
            v27 = *v24;
            v28 = *v25;
            v63 = *(v25 - 1);
            v66 = v61;
            v67 = v10;

            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            MEMORY[0x1B2718AE0](v26, v27);
            v30 = v66;
            v29 = v67;
            v31 = v7;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_1AF420554(0, *(v65 + 2) + 1, 1, v65);
            }

            v33 = *(v65 + 2);
            v32 = *(v65 + 3);
            if (v33 >= v32 >> 1)
            {
              v65 = sub_1AF420554(v32 > 1, v33 + 1, 1, v65);
            }

            *(v65 + 2) = v33 + 1;
            v34 = &v65[16 * v33];
            *(v34 + 4) = v30;
            *(v34 + 5) = v29;

            sub_1AF809DF8(v63, v28, v68);
            v62 = v68[1];
            v64 = v68[0];
            v35 = v69;
            v7 = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1AF424FCC(0, *(v31 + 2) + 1, 1, v31);
            }

            v10 = v59;
            v37 = *(v7 + 2);
            v36 = *(v7 + 3);
            if (v37 >= v36 >> 1)
            {
              v7 = sub_1AF424FCC(v36 > 1, v37 + 1, 1, v7);
            }

            ++v23;
            *(v7 + 2) = v37 + 1;
            v38 = &v7[40 * v37];
            *(v38 + 2) = v64;
            *(v38 + 3) = v62;
            *(v38 + 8) = v35;

            v24 += 2;
            v25 += 2;
            v21 = v58;
          }

          while (v60 != v23);
        }

        v4 = v46;
        v3 = v47;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_1AF687F90(v57, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1AF420554(0, *(v65 + 2) + 1, 1, v65);
        }

        v40 = *(v65 + 2);
        v39 = *(v65 + 3);
        if (v40 >= v39 >> 1)
        {
          v65 = sub_1AF420554(v39 > 1, v40 + 1, 1, v65);
        }

        *(v65 + 2) = v40 + 1;
        v41 = &v65[16 * v40];
        *(v41 + 4) = v61;
        *(v41 + 5) = v10;
        sub_1AF687F90(v57, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1AF424FCC(0, *(v7 + 2) + 1, 1, v7);
        }

        v43 = *(v7 + 2);
        v42 = *(v7 + 3);
        if (v43 >= v42 >> 1)
        {
          v7 = sub_1AF424FCC(v42 > 1, v43 + 1, 1, v7);
        }

        *(v7 + 2) = v43 + 1;
        v44 = &v7[40 * v43];
        *(v44 + 4) = v57;
        *(v44 + 5) = v56;
        *(v44 + 6) = v55;
        *(v44 + 7) = v54;
        *(v44 + 8) = v53;
      }

      v6 = v52 + 1;

      sub_1AF687FE4(v57, v56);
      if (v52 + 1 == *(v3 + 16))
      {
        break;
      }
    }
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  return v65;
}

uint64_t sub_1AF765858(uint64_t a1, uint64_t a2)
{
  sub_1AF770EE8();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v85 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v90 = &v80[-v10];
  v87 = sub_1AFDFF358();
  v96 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v11);
  v13 = &v80[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakLoadStrong();
  v14 = *(a1 + 32);
  *&v109 = *(a1 + 24);
  *(&v109 + 1) = v14;

  MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
  sub_1AF7FDD44(v109, *(&v109 + 1), &v109);

  v117[0] = v110;
  v117[1] = v111;
  v118 = *&v112[0];
  sub_1AF444F60(v117, &v100);
  sub_1AF761390(&v109);
  if (swift_weakLoadStrong())
  {
    v15 = *(a1 + 32);
    *&v100 = *(a1 + 24);
    *(&v100 + 1) = v15;

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    sub_1AF7FDD44(v100, *(&v100 + 1), &v109);

    if (*(&v109 + 1))
    {
      sub_1AF44CBE4(v112 + 8, v108);
      sub_1AF761390(&v109);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v112, 0, 40);
    v110 = 0u;
    v111 = 0u;
    v109 = 0u;
  }

  sub_1AF770D80(&v109, &qword_1EB6335B0, &_s8MetadataVN);
  memset(v108, 0, sizeof(v108));
LABEL_6:
  v95 = v13;
  v89 = v2;
  v98 = sub_1AF76F190(v117, v108);
  sub_1AF444FBC(v117);
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = a2 + 40;
    v99 = -v16;
    v19 = MEMORY[0x1E69E7CC0];
    v97 = a2 + 40;
    do
    {
      v88 = v19;
      v20 = (v18 + 16 * v17++);
      while (1)
      {
        v22 = *(v20 - 1);
        v21 = *v20;
        *&v109 = v22;
        *(&v109 + 1) = v21;
        v23 = *(a1 + 32);
        *&v100 = *(a1 + 24);
        *(&v100 + 1) = v23;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        sub_1AF770DF0();
        sub_1AF770E44();
        LOBYTE(v23) = sub_1AFDFCD68();

        if (v23)
        {
          break;
        }

        v20 += 2;
        ++v17;
        if (v99 + v17 == 1)
        {
          v19 = v88;
          goto LABEL_19;
        }
      }

      v19 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v115[0] = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v19 + 16) + 1, 1);
        v19 = *&v115[0];
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
        v19 = *&v115[0];
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v21;
      v18 = v97;
    }

    while (v99 + v17);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v88 = v19;
  v28 = *(v19 + 16);
  v29 = v89;
  v30 = v95;
  v31 = v98;
  v97 = v28;
  if (v28)
  {
    v32 = 0;
    v84 = *MEMORY[0x1E69E75B8];
    v83 = *MEMORY[0x1E69E75B0];
    v81 = *MEMORY[0x1E69E75A8];
    v86 = (v96 + 8);
    v33 = (v88 + 40);
    v82 = xmmword_1AFE76100;
    while (1)
    {
      if (v32 == *(v31 + 2))
      {
        goto LABEL_57;
      }

      v35 = *(v33 - 1);
      v34 = *v33;
      v36 = *&v31[8 * v32 + 32];
      v37 = *(*v29 + 1440);

      v38 = v37(v35, v34);
      if (v38)
      {
        break;
      }

      v31 = v98;
LABEL_22:
      ++v32;
      v33 += 2;
      if (v97 == v32)
      {
        goto LABEL_57;
      }
    }

    v39 = v38;
    v107[3] = MEMORY[0x1E69E6530];
    v107[0] = v36;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      v31 = v98;
LABEL_55:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v107);

      goto LABEL_22;
    }

    v41 = Strong;
    v42 = *(v39 + 32);
    *&v109 = *(v39 + 24);
    *(&v109 + 1) = v42;

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    if (!*(v41 + 16))
    {
      *(v41 + 16) = MEMORY[0x1E69E7CC8];
    }

    v94 = v41;
    v43 = *(&v109 + 1);
    v44 = v109;
    sub_1AF0D5A54(v107, &v100);
    memset(v112 + 8, 0, 32);
    v99 = v44;
    v109 = __PAIR128__(v43, v44);
    sub_1AF0D5A54(&v100, &v106);
    v96 = v43;

    sub_1AFDFF318();
    sub_1AF441150(&v100, *(&v101 + 1));
    DynamicType = swift_getDynamicType();
    v46 = v90;
    sub_1AFDFF338();
    v47 = sub_1AFDFF328();
    v48 = v30;
    v49 = *(v47 - 8);
    v50 = (*(v49 + 48))(v46, 1, v47);
    v93 = v34;
    if (v50 == 1)
    {
      goto LABEL_29;
    }

    v53 = v46;
    v54 = v85;
    sub_1AF770FFC(v53, v85, sub_1AF770EE8);
    v55 = (*(v49 + 88))(v54, v47);
    if (v55 == v84)
    {
      v52 = v96;
      if (DynamicType == &type metadata for Entity)
      {
        v51 = 0;
        v91 = v82;
        v92 = 0u;
      }

      else
      {
        sub_1AF808478(v113);
        v91 = v113[0];
        v92 = v113[1];
        v51 = v114;
      }

      v46 = v90;
      (*v86)(v95, v87);
      goto LABEL_46;
    }

    v52 = v96;
    if (v55 == v83)
    {
      (*v86)(v95, v87);
      v51 = 0;
      v92 = 0u;
      v56 = v82;
    }

    else
    {
      if (v55 != v81)
      {
        (*(v49 + 8))(v85, v47);
        v46 = v90;
        v48 = v95;
LABEL_29:
        sub_1AF808478(v115);
        v91 = v115[0];
        v92 = v115[1];
        v51 = v116;
        (*v86)(v48, v87);
        v52 = v96;
LABEL_46:
        sub_1AF770F40(v46, sub_1AF770EE8);
        v110 = v91;
        v111 = v92;
        *&v112[0] = v51;
        sub_1AF770D80(v112 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v100, (v112 + 8));
        v102 = v111;
        v103 = v112[0];
        v104 = v112[1];
        v105 = *&v112[2];
        v100 = v109;
        v101 = v110;
        v61 = v94;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v106 = *(v61 + 16);
        v63 = v106;
        v64 = v99;
        v65 = sub_1AF419914(v99, v52);
        v67 = v66;
        v68 = v63[2] + ((v66 & 1) == 0);
        if (v63[3] >= v68)
        {
          if ((v62 & 1) == 0)
          {
            v78 = v65;
            sub_1AF844804();
            v65 = v78;
          }
        }

        else
        {
          sub_1AF82C8F0(v68, v62);
          v65 = sub_1AF419914(v64, v52);
          if ((v67 & 1) != (v69 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }
        }

        v29 = v89;
        v70 = v99;
        v71 = v106;
        if (v67)
        {
          sub_1AF770FA0(&v100, v106[7] + 88 * v65);
        }

        else
        {
          v106[(v65 >> 6) + 8] |= 1 << v65;
          v72 = (v71[6] + 16 * v65);
          *v72 = v70;
          v72[1] = v52;
          v73 = v71[7] + 88 * v65;
          v74 = v101;
          *v73 = v100;
          *(v73 + 16) = v74;
          v75 = v102;
          v76 = v103;
          v77 = v104;
          *(v73 + 80) = v105;
          *(v73 + 48) = v76;
          *(v73 + 64) = v77;
          *(v73 + 32) = v75;
          ++v71[2];
        }

        *(v61 + 16) = v71;

        v30 = v95;
        v31 = v98;
        goto LABEL_55;
      }

      (*v86)(v95, v87);
      sub_1AF441150(&v100, *(&v101 + 1));
      v57 = swift_getDynamicType();
      v58 = swift_conformsToProtocol2();
      v51 = 0;
      if (v57)
      {
        v59 = v58 == 0;
      }

      else
      {
        v59 = 1;
      }

      v60 = 41;
      if (v59)
      {
        v60 = 42;
      }

      *&v56 = 0;
      v92 = 0u;
      *(&v56 + 1) = v60;
    }

    v91 = v56;
    v46 = v90;
    goto LABEL_46;
  }

LABEL_57:

  return sub_1AF770D80(v108, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
}

uint64_t sub_1AF766268(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 40;
    v8 = -v5;
    v9 = MEMORY[0x1E69E7CC0];
    v36 = a1 + 40;
    do
    {
      v39 = v9;
      v10 = (v7 + 16 * v6++);
      while (1)
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        *&v43 = v12;
        *(&v43 + 1) = v11;
        *&v48 = a2;
        *(&v48 + 1) = a3;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        sub_1AF770DF0();
        sub_1AF770E44();
        v13 = sub_1AFDFCD68();

        if (v13)
        {
          break;
        }

        v10 += 2;
        ++v6;
        if (v8 + v6 == 1)
        {
          v9 = v39;
          goto LABEL_14;
        }
      }

      v9 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC05CE4(0, v39[2] + 1, 1);
        v9 = v39;
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
        v9 = v39;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v12;
      v16[5] = v11;
      v7 = v36;
    }

    while (v8 + v6);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_14:
  v17 = v9[2];
  if (v17)
  {
    v18 = v9 + 5;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v38;
    while (1)
    {
      v41 = *(v18 - 1);
      v42 = *v18;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
      v21 = *(v38 + 16);
      if (v21 && *(v21 + 16))
      {

        v22 = sub_1AF419914(v41, v42);
        if (v23)
        {
          sub_1AF4455CC(*(v21 + 56) + 88 * v22, &v43);

          goto LABEL_25;
        }
      }

      v47 = 0;
      memset(v46, 0, sizeof(v46));
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
LABEL_25:

      if (*(&v43 + 1))
      {
        sub_1AF44CBE4(v46 + 8, &v48);
        sub_1AF761390(&v43);
        if (*(&v49 + 1))
        {
          sub_1AF449D40(&v48, &v43);
          sub_1AF0D5A54(&v43, &v48);
          swift_dynamicCast();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1AF42231C(0, *(v19 + 2) + 1, 1, v19);
          }

          v25 = *(v19 + 2);
          v24 = *(v19 + 3);
          if (v25 >= v24 >> 1)
          {
            v19 = sub_1AF42231C(v24 > 1, v25 + 1, 1, v19);
          }

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
          *(v19 + 2) = v25 + 1;
          *&v19[8 * v25 + 32] = v41;

          goto LABEL_18;
        }
      }

      else
      {
        sub_1AF770D80(&v43, &qword_1EB6335B0, &_s8MetadataVN);
        v48 = 0u;
        v49 = 0u;
      }

      sub_1AF770D80(&v48, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);

LABEL_18:
      v18 += 2;
      if (!--v17)
      {
        goto LABEL_33;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = v38;
LABEL_33:

  if (*(v19 + 2))
  {
    if (*(a4 + 1) == 39)
    {
      v26 = (*(*v20 + 1440))(a2, a3);
      v27 = *(v19 + 4);
      v28 = *(v19 + 5);
      sub_1AF771140(0, &qword_1ED72F950);
      *(&v44 + 1) = v29;
      *&v43 = v27;
      *(&v43 + 1) = v28;
      if (swift_weakLoadStrong())
      {
        v30 = *(v26 + 32);
        *&v48 = *(v26 + 24);
        *(&v48 + 1) = v30;

        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        sub_1AF7FDB64(v48, *(&v48 + 1), &v43);
      }

      else
      {
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v48 = v43;
      MEMORY[0x1B2718AE0](0xD000000000000042, 0x80000001AFF338D0);
      v31 = a4[1];
      v43 = *a4;
      v44 = v31;
      *&v45 = *(a4 + 4);
      sub_1AFDFE458();
      v32 = v48;
      v33 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v35 = v33;
        swift_once();
        v33 = v35;
      }

      *&v43 = 0;
      sub_1AF0D4F18(v33, &v43, v32, *(&v32 + 1));
    }
  }
}

uint64_t sub_1AF766854(uint64_t a1, uint64_t a2)
{
  sub_1AF770EE8();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v85 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v90 = &v80[-v10];
  v87 = sub_1AFDFF358();
  v96 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v11);
  v13 = &v80[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakLoadStrong();
  v14 = *(a1 + 32);
  *&v110 = *(a1 + 24);
  *(&v110 + 1) = v14;

  MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
  sub_1AF7FDD44(v110, *(&v110 + 1), &v110);

  v118[0] = v111;
  v118[1] = v112;
  v119 = *&v113[0];
  sub_1AF444F60(v118, &v100);
  sub_1AF761390(&v110);
  if (swift_weakLoadStrong())
  {
    v15 = *(a1 + 32);
    *&v100 = *(a1 + 24);
    *(&v100 + 1) = v15;

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    sub_1AF7FDD44(v100, *(&v100 + 1), &v110);

    if (*(&v110 + 1))
    {
      sub_1AF44CBE4(v113 + 8, v109);
      sub_1AF761390(&v110);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v113, 0, 40);
    v111 = 0u;
    v112 = 0u;
    v110 = 0u;
  }

  sub_1AF770D80(&v110, &qword_1EB6335B0, &_s8MetadataVN);
  memset(v109, 0, sizeof(v109));
LABEL_6:
  v95 = v13;
  v89 = v2;
  v98 = sub_1AF76F418(v118, v109);
  sub_1AF444FBC(v118);
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = a2 + 40;
    v99 = -v16;
    v19 = MEMORY[0x1E69E7CC0];
    v97 = a2 + 40;
    do
    {
      v88 = v19;
      v20 = (v18 + 16 * v17++);
      while (1)
      {
        v22 = *(v20 - 1);
        v21 = *v20;
        *&v110 = v22;
        *(&v110 + 1) = v21;
        v23 = *(a1 + 32);
        *&v100 = *(a1 + 24);
        *(&v100 + 1) = v23;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        sub_1AF770DF0();
        sub_1AF770E44();
        LOBYTE(v23) = sub_1AFDFCD68();

        if (v23)
        {
          break;
        }

        v20 += 2;
        ++v17;
        if (v99 + v17 == 1)
        {
          v19 = v88;
          goto LABEL_19;
        }
      }

      v19 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v116[0] = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v19 + 16) + 1, 1);
        v19 = *&v116[0];
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
        v19 = *&v116[0];
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v21;
      v18 = v97;
    }

    while (v99 + v17);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v88 = v19;
  v28 = *(v19 + 16);
  v29 = v89;
  v30 = v95;
  v31 = v98;
  v97 = v28;
  if (v28)
  {
    v32 = 0;
    v84 = *MEMORY[0x1E69E75B8];
    v83 = *MEMORY[0x1E69E75B0];
    v81 = *MEMORY[0x1E69E75A8];
    v86 = (v96 + 8);
    v33 = (v88 + 40);
    v82 = xmmword_1AFE76100;
    while (1)
    {
      if (v32 == *(v31 + 2))
      {
        goto LABEL_56;
      }

      v35 = *(v33 - 1);
      v34 = *v33;
      v36 = *&v31[4 * v32 + 32];
      v37 = *(*v29 + 1440);

      v38 = v37(v35, v34);
      if (v38)
      {
        break;
      }

LABEL_23:

      ++v32;
      v33 += 2;
      v31 = v98;
      if (v97 == v32)
      {
        goto LABEL_56;
      }
    }

    v39 = v38;
    v108 = MEMORY[0x1E69E6448];
    v107[0] = v36;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

LABEL_22:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v107);
      goto LABEL_23;
    }

    v41 = Strong;
    v42 = *(v39 + 32);
    *&v110 = *(v39 + 24);
    *(&v110 + 1) = v42;

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    if (!*(v41 + 16))
    {
      *(v41 + 16) = MEMORY[0x1E69E7CC8];
    }

    v94 = v41;
    v43 = *(&v110 + 1);
    v44 = v110;
    sub_1AF0D5A54(v107, &v100);
    memset(v113 + 8, 0, 32);
    v99 = v44;
    v110 = __PAIR128__(v43, v44);
    sub_1AF0D5A54(&v100, &v106);
    v96 = v43;

    sub_1AFDFF318();
    sub_1AF441150(&v100, *(&v101 + 1));
    DynamicType = swift_getDynamicType();
    v46 = v90;
    sub_1AFDFF338();
    v47 = sub_1AFDFF328();
    v48 = v30;
    v49 = *(v47 - 8);
    v50 = (*(v49 + 48))(v46, 1, v47);
    v93 = v34;
    if (v50 == 1)
    {
      goto LABEL_30;
    }

    v53 = v46;
    v54 = v85;
    sub_1AF770FFC(v53, v85, sub_1AF770EE8);
    v55 = (*(v49 + 88))(v54, v47);
    if (v55 == v84)
    {
      v52 = v96;
      if (DynamicType == &type metadata for Entity)
      {
        v51 = 0;
        v91 = v82;
        v92 = 0u;
      }

      else
      {
        sub_1AF808478(v114);
        v91 = v114[0];
        v92 = v114[1];
        v51 = v115;
      }

      v46 = v90;
      (*v86)(v95, v87);
      goto LABEL_46;
    }

    v52 = v96;
    if (v55 == v83)
    {
      (*v86)(v95, v87);
      v51 = 0;
      v92 = 0u;
      v56 = v82;
    }

    else
    {
      if (v55 != v81)
      {
        (*(v49 + 8))(v85, v47);
        v46 = v90;
        v48 = v95;
LABEL_30:
        sub_1AF808478(v116);
        v91 = v116[0];
        v92 = v116[1];
        v51 = v117;
        (*v86)(v48, v87);
        v52 = v96;
LABEL_46:
        sub_1AF770F40(v46, sub_1AF770EE8);
        v111 = v91;
        v112 = v92;
        *&v113[0] = v51;
        sub_1AF770D80(v113 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v100, (v113 + 8));
        v102 = v112;
        v103 = v113[0];
        v104 = v113[1];
        v105 = *&v113[2];
        v100 = v110;
        v101 = v111;
        v61 = v94;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v106 = *(v61 + 16);
        v63 = v106;
        v64 = v99;
        v65 = sub_1AF419914(v99, v52);
        v67 = v66;
        v68 = v63[2] + ((v66 & 1) == 0);
        if (v63[3] >= v68)
        {
          if ((v62 & 1) == 0)
          {
            v78 = v65;
            sub_1AF844804();
            v65 = v78;
          }
        }

        else
        {
          sub_1AF82C8F0(v68, v62);
          v65 = sub_1AF419914(v64, v52);
          if ((v67 & 1) != (v69 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }
        }

        v29 = v89;
        v70 = v99;
        v71 = v106;
        if (v67)
        {
          sub_1AF770FA0(&v100, v106[7] + 88 * v65);
        }

        else
        {
          v106[(v65 >> 6) + 8] |= 1 << v65;
          v72 = (v71[6] + 16 * v65);
          *v72 = v70;
          v72[1] = v52;
          v73 = v71[7] + 88 * v65;
          v74 = v101;
          *v73 = v100;
          *(v73 + 16) = v74;
          v75 = v102;
          v76 = v103;
          v77 = v104;
          *(v73 + 80) = v105;
          *(v73 + 48) = v76;
          *(v73 + 64) = v77;
          *(v73 + 32) = v75;
          ++v71[2];
        }

        *(v61 + 16) = v71;

        v30 = v95;
        goto LABEL_22;
      }

      (*v86)(v95, v87);
      sub_1AF441150(&v100, *(&v101 + 1));
      v57 = swift_getDynamicType();
      v58 = swift_conformsToProtocol2();
      v51 = 0;
      if (v57)
      {
        v59 = v58 == 0;
      }

      else
      {
        v59 = 1;
      }

      v60 = 41;
      if (v59)
      {
        v60 = 42;
      }

      *&v56 = 0;
      v92 = 0u;
      *(&v56 + 1) = v60;
    }

    v91 = v56;
    v46 = v90;
    goto LABEL_46;
  }

LABEL_56:

  return sub_1AF770D80(v109, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
}

uint64_t sub_1AF767250(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 40;
    v8 = -v5;
    v9 = MEMORY[0x1E69E7CC0];
    v42 = a1 + 40;
    do
    {
      v45 = v9;
      v10 = (v7 + 16 * v6++);
      while (1)
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        *&v51 = v12;
        *(&v51 + 1) = v11;
        *&v56 = a2;
        *(&v56 + 1) = a3;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        sub_1AF770DF0();
        sub_1AF770E44();
        v13 = sub_1AFDFCD68();

        if (v13)
        {
          break;
        }

        v10 += 2;
        ++v6;
        if (v8 + v6 == 1)
        {
          v9 = v45;
          goto LABEL_12;
        }
      }

      v9 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC05CE4(0, v45[2] + 1, 1);
        v9 = v45;
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
        v9 = v45;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v12;
      v16[5] = v11;
      v7 = v42;
    }

    while (v8 + v6);
LABEL_12:
    v17 = v9[2];
    if (v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v17)
    {
LABEL_13:
      v18 = v9 + 5;
      v19 = MEMORY[0x1E69E7CC0];
      v20 = v44;
      while (1)
      {
        v49 = *(v18 - 1);
        v50 = *v18;
        swift_bridgeObjectRetain_n();
        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        v21 = *(v44 + 16);
        if (v21 && *(v21 + 16))
        {

          v22 = sub_1AF419914(v49, v50);
          if (v23)
          {
            sub_1AF4455CC(*(v21 + 56) + 88 * v22, &v51);

            goto LABEL_23;
          }
        }

        v55 = 0;
        memset(v54, 0, sizeof(v54));
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
LABEL_23:

        if (*(&v51 + 1))
        {
          sub_1AF44CBE4(v54 + 8, &v56);
          sub_1AF761390(&v51);
          if (*(&v57 + 1))
          {
            sub_1AF449D40(&v56, &v51);
            sub_1AF0D5A54(&v51, &v56);
            swift_dynamicCast();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_1AF41FDF8(0, *(v19 + 2) + 1, 1, v19);
            }

            v25 = *(v19 + 2);
            v24 = *(v19 + 3);
            if (v25 >= v24 >> 1)
            {
              v19 = sub_1AF41FDF8(v24 > 1, v25 + 1, 1, v19);
            }

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v51);
            *(v19 + 2) = v25 + 1;
            *&v19[4 * v25 + 32] = v49;
            goto LABEL_16;
          }
        }

        else
        {
          sub_1AF770D80(&v51, &qword_1EB6335B0, &_s8MetadataVN);
          v56 = 0u;
          v57 = 0u;
        }

        sub_1AF770D80(&v56, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
LABEL_16:

        v18 += 2;
        if (!--v17)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = v44;
LABEL_32:

  if (*(v19 + 2))
  {
    v26 = *(a4 + 1);
    if (v26 > 15)
    {
      if (v26 == 16)
      {
        v27 = (*(*v20 + 1440))(a2, a3);
        v48 = *(v19 + 2);
        sub_1AF7710D8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        *(&v52 + 1) = v38;
        v30 = swift_allocObject();
        *&v51 = v30;
        v31 = v48;
        goto LABEL_47;
      }

      if (v26 != 40)
      {
        goto LABEL_40;
      }

      v27 = (*(*v20 + 1440))(a2, a3);
      sub_1AF771140(0, &qword_1ED72F958);
      *(&v52 + 1) = v32;
      *&v51 = *(v19 + 4);
    }

    else
    {
      if (v26 != 14)
      {
        if (v26 == 15)
        {
          v27 = (*(*v20 + 1440))(a2, a3);
          *&v28 = *(v19 + 4);
          DWORD2(v28) = *(v19 + 10);
          v47 = v28;
          sub_1AF7710D8(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
          *(&v52 + 1) = v29;
          v30 = swift_allocObject();
          *&v51 = v30;
          v31 = v47;
          HIDWORD(v31) = 0;
LABEL_47:
          *(v30 + 16) = v31;
          goto LABEL_48;
        }

LABEL_40:
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v51 = 0;
        *(&v51 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v56 = v51;
        MEMORY[0x1B2718AE0](0xD000000000000044, 0x80000001AFF33830);
        v33 = a4[1];
        v51 = *a4;
        v52 = v33;
        *&v53 = *(a4 + 4);
        sub_1AFDFE458();
        v34 = v56;
        v35 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v41 = v35;
          swift_once();
          v35 = v41;
        }

        *&v51 = 0;
        sub_1AF0D4F18(v35, &v51, v34, *(&v34 + 1));
      }

      v27 = (*(*v20 + 1440))(a2, a3);
      v36 = *(v19 + 4);
      sub_1AF7710D8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      *(&v52 + 1) = v37;
      *&v51 = v36;
    }

LABEL_48:
    if (swift_weakLoadStrong())
    {
      v39 = *(v27 + 32);
      *&v56 = *(v27 + 24);
      *(&v56 + 1) = v39;

      MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
      sub_1AF7FDB64(v56, *(&v56 + 1), &v51);
    }

    else
    {
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v51);
  }
}

uint64_t sub_1AF767A70(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 40;
    v8 = -v5;
    v9 = MEMORY[0x1E69E7CC0];
    v50 = a1 + 40;
    do
    {
      v45 = v9;
      v10 = (v7 + 16 * v6++);
      while (1)
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        *&v59 = v12;
        *(&v59 + 1) = v11;
        *&v65 = a2;
        *(&v65 + 1) = a3;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        sub_1AF770DF0();
        sub_1AF770E44();
        v13 = sub_1AFDFCD68();

        if (v13)
        {
          break;
        }

        v10 += 2;
        ++v6;
        if (v8 + v6 == 1)
        {
          v9 = v45;
          goto LABEL_14;
        }
      }

      v9 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v45 + 16) + 1, 1);
        v9 = v45;
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
        v9 = v45;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      v7 = v50;
    }

    while (v8 + v6);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_14:
  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = v9 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v44;
    v47 = a3;
    while (1)
    {
      v58 = *(v18 - 8);
      swift_bridgeObjectRetain_n();
      MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
      v21 = *(v44 + 16);
      if (v21 && *(v21 + 16))
      {

        v22 = sub_1AF419914(v58, *(&v58 + 1));
        if (v23)
        {
          sub_1AF4455CC(*(v21 + 56) + 88 * v22, &v59);
        }

        else
        {

          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
        }

        a3 = v47;
        if (!*(&v59 + 1))
        {
LABEL_16:
          sub_1AF770D80(&v59, &qword_1EB6335B0, &_s8MetadataVN);
          v65 = 0u;
          v66 = 0u;
          goto LABEL_17;
        }
      }

      else
      {
        v64 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;

        if (!*(&v59 + 1))
        {
          goto LABEL_16;
        }
      }

      sub_1AF44CBE4(&v62 + 8, &v65);
      sub_1AF761390(&v59);
      if (*(&v66 + 1))
      {
        sub_1AF449D40(&v65, &v59);
        sub_1AF0D5A54(&v59, &v65);
        sub_1AF7710D8(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1AF42250C(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1AF42250C(v24 > 1, v25 + 1, 1, v19);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v59);
        *(v19 + 2) = v25 + 1;
        *&v19[16 * v25 + 32] = v58;

        goto LABEL_18;
      }

LABEL_17:
      sub_1AF770D80(&v65, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);

LABEL_18:
      v18 += 16;
      if (!--v17)
      {
        goto LABEL_34;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = v44;
LABEL_34:

  if (*(v19 + 2))
  {
    v26 = *(a4 + 1);
    switch(v26)
    {
      case 24:
        v27 = (*(*v20 + 1440))(a2, a3);
        sub_1AF771064(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        v34 = swift_allocObject();
        v57 = *(v19 + 2);
        v34[2] = v57;
        v53 = *(v19 + 3);
        v34[3] = v53;
        v49 = *(v19 + 4);
        v34[4] = v49;
        v46 = *(v19 + 5);
        v34[5] = v46;
        swift_setDeallocating();
        swift_deallocClassInstance();
        type metadata accessor for simd_float4x3(0);
        *(&v60 + 1) = v35;
        v36 = swift_allocObject();
        *&v59 = v36;
        v36[1] = v57;
        v36[2] = v53;
        v36[3] = v49;
        v36[4] = v46;
        goto LABEL_41;
      case 21:
        v27 = (*(*v20 + 1440))(a2, a3);
        sub_1AF771064(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        v31 = swift_allocObject();
        v56 = *(v19 + 2);
        v31[2] = v56;
        v52 = *(v19 + 3);
        v31[3] = v52;
        v48 = *(v19 + 4);
        v31[4] = v48;
        swift_setDeallocating();
        swift_deallocClassInstance();
        type metadata accessor for simd_float3x3(0);
        *(&v60 + 1) = v32;
        v33 = swift_allocObject();
        *&v59 = v33;
        v33[1] = v56;
        v33[2] = v52;
        v33[3] = v48;
        goto LABEL_41;
      case 18:
        v27 = (*(*v20 + 1440))(a2, a3);
        sub_1AF771064(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        v28 = swift_allocObject();
        v55 = *(v19 + 2);
        *(v28 + 32) = v55;
        v51 = *(v19 + 3);
        *(v28 + 48) = v51;
        swift_setDeallocating();
        swift_deallocClassInstance();
        type metadata accessor for simd_float2x3(0);
        *(&v60 + 1) = v29;
        v30 = swift_allocObject();
        *&v59 = v30;
        *(v30 + 16) = v55;
        *(v30 + 32) = v51;
LABEL_41:
        if (swift_weakLoadStrong())
        {
          v37 = *(v27 + 32);
          *&v65 = *(v27 + 24);
          *(&v65 + 1) = v37;

          MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
          sub_1AF7FDB64(v65, *(&v65 + 1), &v59);
        }

        else
        {
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v59);
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v65 = v59;
    MEMORY[0x1B2718AE0](0xD000000000000048, 0x80000001AFF33740);
    v39 = a4[1];
    v59 = *a4;
    v60 = v39;
    *&v61 = *(a4 + 4);
    sub_1AFDFE458();
    v40 = v65;
    v41 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v42 = v41;
      swift_once();
      v41 = v42;
    }

    *&v59 = 0;
    sub_1AF0D4F18(v41, &v59, v40, *(&v40 + 1));
  }
}

uint64_t sub_1AF768374(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, _BYTE *), unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v90 = a4;
  v91 = a5;
  sub_1AF770EE8();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v82 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v92 = &v77[-v13];
  v85 = sub_1AFDFF358();
  v97 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v14);
  v87 = &v77[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakLoadStrong();
  v16 = *(a1 + 32);
  *&v108 = *(a1 + 24);
  *(&v108 + 1) = v16;

  MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
  sub_1AF7FDD44(v108, *(&v108 + 1), &v108);

  v116[0] = v109;
  v116[1] = v110;
  v117 = *&v111[0];
  sub_1AF444F60(v116, &v99);
  sub_1AF761390(&v108);
  if (swift_weakLoadStrong())
  {
    v17 = *(a1 + 32);
    *&v99 = *(a1 + 24);
    *(&v99 + 1) = v17;

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    sub_1AF7FDD44(v99, *(&v99 + 1), &v108);

    if (*(&v108 + 1))
    {
      sub_1AF44CBE4(v111 + 8, v107);
      sub_1AF761390(&v108);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v111, 0, 40);
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
  }

  sub_1AF770D80(&v108, &qword_1EB6335B0, &_s8MetadataVN);
  memset(v107, 0, sizeof(v107));
LABEL_6:
  v18 = a3(v116, v107);
  sub_1AF444FBC(v116);
  v19 = *(a2 + 16);
  v86 = v18;
  if (v19)
  {
    v20 = 0;
    v21 = a2 + 40;
    *&v98 = -v19;
    v22 = MEMORY[0x1E69E7CC0];
    v96 = a2 + 40;
    do
    {
      v83 = v22;
      v23 = (v21 + 16 * v20++);
      while (1)
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        *&v108 = v25;
        *(&v108 + 1) = v24;
        v26 = *(a1 + 32);
        *&v99 = *(a1 + 24);
        *(&v99 + 1) = v26;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        sub_1AF770DF0();
        sub_1AF770E44();
        LOBYTE(v26) = sub_1AFDFCD68();

        if (v26)
        {
          break;
        }

        v23 += 2;
        ++v20;
        if (v98 + v20 == 1)
        {
          v18 = v86;
          v22 = v83;
          goto LABEL_19;
        }
      }

      v22 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v114[0] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v22 + 16) + 1, 1);
        v22 = *&v114[0];
      }

      v18 = v86;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1AFC05CE4(v28 > 1, v29 + 1, 1);
        v22 = *&v114[0];
      }

      *(v22 + 16) = v29 + 1;
      v30 = v22 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v24;
      v21 = v96;
    }

    while (v98 + v20);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v83 = v22;
  v31 = v92;
  v88 = *(v22 + 16);
  if (v88)
  {
    v32 = 0;
    v81 = *MEMORY[0x1E69E75B8];
    v80 = *MEMORY[0x1E69E75B0];
    v78 = *MEMORY[0x1E69E75A8];
    v84 = (v97 + 8);
    v33 = (v83 + 40);
    v79 = xmmword_1AFE76100;
    do
    {
      if (v32 == *(v18 + 16))
      {
        break;
      }

      v34 = *(v33 - 1);
      v35 = *v33;
      v98 = *(v18 + 16 * v32 + 32);
      v36 = *(*v89 + 1440);

      v37 = v36(v34, v35);
      sub_1AF7710D8(0, v90, sub_1AF43A0C8, MEMORY[0x1E69E6448], v91);
      v106[3] = v38;
      v106[0] = swift_allocObject();
      *(v106[0] + 16) = v98;
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {

        goto LABEL_22;
      }

      v40 = Strong;
      v96 = v35;
      v42 = *(v37 + 24);
      v41 = *(v37 + 32);
      v93 = v37;
      *&v108 = v42;
      *(&v108 + 1) = v41;

      MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
      v43 = v87;
      if (!*(v40 + 16))
      {
        *(v40 + 16) = MEMORY[0x1E69E7CC8];
      }

      v44 = v108;
      *&v98 = *(&v108 + 1);
      sub_1AF0D5A54(v106, &v99);
      memset(v111 + 8, 0, 32);
      v97 = v44;
      v108 = v44;
      sub_1AF0D5A54(&v99, &v105);

      sub_1AFDFF318();
      sub_1AF441150(&v99, *(&v100 + 1));
      DynamicType = swift_getDynamicType();
      sub_1AFDFF338();
      v46 = sub_1AFDFF328();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v31, 1, v46) != 1)
      {
        v50 = v31;
        v51 = v82;
        sub_1AF770FFC(v50, v82, sub_1AF770EE8);
        v52 = (*(v47 + 88))(v51, v46);
        if (v52 == v81)
        {
          if (DynamicType == &type metadata for Entity)
          {
            v48 = 0;
            v94 = v79;
            v95 = 0u;
          }

          else
          {
            sub_1AF808478(v112);
            v94 = v112[0];
            v95 = v112[1];
            v48 = v113;
          }

          v31 = v92;
          v49 = v97;
          (*v84)(v87, v85);
          goto LABEL_44;
        }

        if (v52 == v80)
        {
          (*v84)(v87, v85);
          v48 = 0;
          v94 = v79;
          v95 = 0u;
          v31 = v92;
          goto LABEL_29;
        }

        v31 = v92;
        if (v52 == v78)
        {
          (*v84)(v87, v85);
          sub_1AF441150(&v99, *(&v100 + 1));
          v53 = swift_getDynamicType();
          v54 = swift_conformsToProtocol2();
          v48 = 0;
          if (v53)
          {
            v55 = v54 == 0;
          }

          else
          {
            v55 = 1;
          }

          v56 = 41;
          if (v55)
          {
            v56 = 42;
          }

          *&v57 = 0;
          v95 = 0u;
          *(&v57 + 1) = v56;
          v94 = v57;
          goto LABEL_29;
        }

        (*(v47 + 8))(v82, v46);
        v43 = v87;
      }

      sub_1AF808478(v114);
      v94 = v114[0];
      v95 = v114[1];
      v48 = v115;
      (*v84)(v43, v85);
LABEL_29:
      v49 = v97;
LABEL_44:
      sub_1AF770F40(v31, sub_1AF770EE8);
      v109 = v94;
      v110 = v95;
      *&v111[0] = v48;
      sub_1AF770D80(v111 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v99, (v111 + 8));
      v101 = v110;
      v102 = v111[0];
      v103 = v111[1];
      v104 = *&v111[2];
      v99 = v108;
      v100 = v109;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v105 = *(v40 + 16);
      v59 = v105;
      v60 = v98;
      v61 = sub_1AF419914(v49, v98);
      v62 = v49;
      v64 = v63;
      v65 = v59[2] + ((v63 & 1) == 0);
      if (v59[3] >= v65)
      {
        if ((v58 & 1) == 0)
        {
          v75 = v61;
          sub_1AF844804();
          v61 = v75;
        }
      }

      else
      {
        sub_1AF82C8F0(v65, v58);
        v61 = sub_1AF419914(v62, v60);
        if ((v64 & 1) != (v66 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }
      }

      v31 = v92;
      v67 = v105;
      v68 = v98;
      if (v64)
      {
        sub_1AF770FA0(&v99, v105[7] + 88 * v61);
      }

      else
      {
        v105[(v61 >> 6) + 8] |= 1 << v61;
        v69 = (v67[6] + 16 * v61);
        *v69 = v97;
        v69[1] = v68;
        v70 = v67[7] + 88 * v61;
        v71 = v100;
        *v70 = v99;
        *(v70 + 16) = v71;
        v72 = v101;
        v73 = v102;
        v74 = v103;
        *(v70 + 80) = v104;
        *(v70 + 48) = v73;
        *(v70 + 64) = v74;
        *(v70 + 32) = v72;
        ++v67[2];
      }

      *(v40 + 16) = v67;

      v18 = v86;
LABEL_22:
      ++v32;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v106);

      v33 += 2;
    }

    while (v88 != v32);
  }

  return sub_1AF770D80(v107, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
}

uint64_t sub_1AF768DBC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 40;
    v8 = -v5;
    v9 = MEMORY[0x1E69E7CC0];
    v50 = a1 + 40;
    do
    {
      v45 = v9;
      v10 = (v7 + 16 * v6++);
      while (1)
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        *&v59 = v12;
        *(&v59 + 1) = v11;
        *&v65 = a2;
        *(&v65 + 1) = a3;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        sub_1AF770DF0();
        sub_1AF770E44();
        v13 = sub_1AFDFCD68();

        if (v13)
        {
          break;
        }

        v10 += 2;
        ++v6;
        if (v8 + v6 == 1)
        {
          v9 = v45;
          goto LABEL_14;
        }
      }

      v9 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v45 + 16) + 1, 1);
        v9 = v45;
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
        v9 = v45;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      v7 = v50;
    }

    while (v8 + v6);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_14:
  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = v9 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v44;
    v47 = a3;
    while (1)
    {
      v58 = *(v18 - 8);
      swift_bridgeObjectRetain_n();
      MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
      v21 = *(v44 + 16);
      if (v21 && *(v21 + 16))
      {

        v22 = sub_1AF419914(v58, *(&v58 + 1));
        if (v23)
        {
          sub_1AF4455CC(*(v21 + 56) + 88 * v22, &v59);
        }

        else
        {

          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
        }

        a3 = v47;
        if (!*(&v59 + 1))
        {
LABEL_16:
          sub_1AF770D80(&v59, &qword_1EB6335B0, &_s8MetadataVN);
          v65 = 0u;
          v66 = 0u;
          goto LABEL_17;
        }
      }

      else
      {
        v64 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;

        if (!*(&v59 + 1))
        {
          goto LABEL_16;
        }
      }

      sub_1AF44CBE4(&v62 + 8, &v65);
      sub_1AF761390(&v59);
      if (*(&v66 + 1))
      {
        sub_1AF449D40(&v65, &v59);
        sub_1AF0D5A54(&v59, &v65);
        sub_1AF7710D8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1AF42053C(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1AF42053C(v24 > 1, v25 + 1, 1, v19);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v59);
        *(v19 + 2) = v25 + 1;
        *&v19[16 * v25 + 32] = v58;

        goto LABEL_18;
      }

LABEL_17:
      sub_1AF770D80(&v65, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);

LABEL_18:
      v18 += 16;
      if (!--v17)
      {
        goto LABEL_34;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = v44;
LABEL_34:

  if (*(v19 + 2))
  {
    v26 = *(a4 + 1);
    switch(v26)
    {
      case 25:
        v27 = (*(*v20 + 1440))(a2, a3);
        sub_1AF771064(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        v34 = swift_allocObject();
        v57 = *(v19 + 2);
        v34[2] = v57;
        v53 = *(v19 + 3);
        v34[3] = v53;
        v49 = *(v19 + 4);
        v34[4] = v49;
        v46 = *(v19 + 5);
        v34[5] = v46;
        swift_setDeallocating();
        swift_deallocClassInstance();
        type metadata accessor for simd_float4x4(0);
        *(&v60 + 1) = v35;
        v36 = swift_allocObject();
        *&v59 = v36;
        v36[1] = v57;
        v36[2] = v53;
        v36[3] = v49;
        v36[4] = v46;
        goto LABEL_41;
      case 22:
        v27 = (*(*v20 + 1440))(a2, a3);
        sub_1AF771064(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        v31 = swift_allocObject();
        v56 = *(v19 + 2);
        v31[2] = v56;
        v52 = *(v19 + 3);
        v31[3] = v52;
        v48 = *(v19 + 4);
        v31[4] = v48;
        swift_setDeallocating();
        swift_deallocClassInstance();
        type metadata accessor for simd_float3x4(0);
        *(&v60 + 1) = v32;
        v33 = swift_allocObject();
        *&v59 = v33;
        v33[1] = v56;
        v33[2] = v52;
        v33[3] = v48;
        goto LABEL_41;
      case 19:
        v27 = (*(*v20 + 1440))(a2, a3);
        sub_1AF771064(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        v28 = swift_allocObject();
        v55 = *(v19 + 2);
        *(v28 + 32) = v55;
        v51 = *(v19 + 3);
        *(v28 + 48) = v51;
        swift_setDeallocating();
        swift_deallocClassInstance();
        type metadata accessor for simd_float2x4(0);
        *(&v60 + 1) = v29;
        v30 = swift_allocObject();
        *&v59 = v30;
        *(v30 + 16) = v55;
        *(v30 + 32) = v51;
LABEL_41:
        if (swift_weakLoadStrong())
        {
          v37 = *(v27 + 32);
          *&v65 = *(v27 + 24);
          *(&v65 + 1) = v37;

          MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
          sub_1AF7FDB64(v65, *(&v65 + 1), &v59);
        }

        else
        {
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v59);
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v65 = v59;
    MEMORY[0x1B2718AE0](0xD000000000000048, 0x80000001AFF33740);
    v39 = a4[1];
    v59 = *a4;
    v60 = v39;
    *&v61 = *(a4 + 4);
    sub_1AFDFE458();
    v40 = v65;
    v41 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v42 = v41;
      swift_once();
      v41 = v42;
    }

    *&v59 = 0;
    sub_1AF0D4F18(v41, &v59, v40, *(&v40 + 1));
  }
}

uint64_t sub_1AF76968C(uint64_t a1, uint64_t a2)
{
  if (!swift_weakLoadStrong())
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  *&v16 = *(a1 + 24);
  *(&v16 + 1) = v4;

  MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
  sub_1AF7FDD44(v16, *(&v16 + 1), &v17);

  if (!*(&v17 + 1))
  {
LABEL_9:
    sub_1AF770D80(&v17, &qword_1EB6335B0, &_s8MetadataVN);
    v13 = 0u;
    v14 = 0u;
    return sub_1AF770D80(&v13, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  }

  sub_1AF44CBE4(v20 + 8, &v13);
  sub_1AF761390(&v17);
  if (!*(&v14 + 1))
  {
    return sub_1AF770D80(&v13, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  }

  sub_1AF770D80(&v13, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  swift_weakLoadStrong();
  v5 = *(a1 + 32);
  *&v13 = *(a1 + 24);
  *(&v13 + 1) = v5;

  MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
  sub_1AF7FDD44(v13, *(&v13 + 1), &v17);

  v6 = v18;
  sub_1AF687F90(v18, *(&v18 + 1));
  sub_1AF761390(&v17);
  if (*(&v6 + 1) <= 19)
  {
    if ((*(&v6 + 1) - 14) < 3)
    {
      return sub_1AF766854(a1, a2);
    }

    if ((*(&v6 + 1) - 17) < 3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(&v6 + 1) < 23)
    {
      return sub_1AF767A3C(a1, a2);
    }

    if ((*(&v6 + 1) - 23) < 3)
    {
      return sub_1AF768340(a1, a2);
    }

    if (*(&v6 + 1) == 39)
    {
      return sub_1AF765858(a1, a2);
    }

    if (*(&v6 + 1) == 40)
    {
      return sub_1AF766854(a1, a2);
    }
  }

  sub_1AF687FE4(v6, *(&v6 + 1));
LABEL_13:
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  v16 = v13;
  MEMORY[0x1B2718AE0](0xD000000000000049, 0x80000001AFF336F0);
  v8 = *(a1 + 88);
  v9 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = v9;
  v15 = v8;
  sub_1AFDFE458();
  v10 = v16;
  v11 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v12 = v11;
    swift_once();
    v11 = v12;
  }

  *&v13 = 0;
  sub_1AF0D4F18(v11, &v13, v10, *(&v10 + 1));
}

uint64_t sub_1AF769A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *v40 = a1;
  *&v40[8] = a2;

  MEMORY[0x1B2718AE0](0x6E657474616C662ELL, 0xEA00000000006E49);
  v8 = *v40;
  v9 = v3[2];
  if (v9)
  {
    if (*(v9 + 16))
    {

      sub_1AF419914(*v40, *&v40[8]);
      v11 = v10;

      if (v11)
      {
        sub_1AF7FDC2C(*v40, *&v40[8], &v32);
        sub_1AF449D40(&v32, v40);
        swift_dynamicCast();
        sub_1AF809DF8(v36, *(&v36 + 1), &v37);
        *v40 = v37;
        v31 = v38;
        *&v40[8] = v38;
        *&v40[24] = v39;
        sub_1AF7FDA4C(v8, *(&v8 + 1));

        v12 = v4[5];

        v13 = sub_1AF764EFC(a1, a2, v40);
        v15 = v14;
        v4[5] = v13;

        v4[6] = v15;

        (*(*v4 + 1336))(v16);

        if (v31 <= 19)
        {
          if ((v31 - 14) < 3)
          {
            goto LABEL_24;
          }

          if ((v31 - 17) >= 3)
          {
            goto LABEL_25;
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          *&v32 = 0;
          *(&v32 + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          v36 = v32;
          MEMORY[0x1B2718AE0](0xD000000000000047, 0x80000001AFF336A0);
          v32 = xmmword_1AFE76110;
          v34 = 0;
          v35 = 0;
          v33 = 0;
          sub_1AFDFE458();
          v28 = v36;
          v29 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v30 = v29;
            swift_once();
            v29 = v30;
          }

          *&v32 = 0;
          sub_1AF0D4F18(v29, &v32, v28, *(&v28 + 1));
          sub_1AF770D80(&v37, &qword_1EB63E690, &_s12MetadataTypeON);
        }

        else
        {
          if (v31 < 23)
          {
            sub_1AF767A70(v12, a1, a2, v40);
            goto LABEL_25;
          }

          if ((v31 - 23) < 3)
          {
            sub_1AF768DBC(v12, a1, a2, v40);
LABEL_25:

            return sub_1AF770D80(&v37, &qword_1EB63E690, &_s12MetadataTypeON);
          }

          if (v31 != 39)
          {
            if (v31 != 40)
            {
              goto LABEL_25;
            }

LABEL_24:
            sub_1AF767250(v12, a1, a2, v40);
            goto LABEL_25;
          }

          sub_1AF766268(v12, a1, a2, v40);
        }
      }
    }
  }

  v17 = (*(*v4 + 1440))(a1, a2);
  if (v17)
  {
    v18 = *(v17 + 72);
    *v40 = *(v17 + 56);
    *&v40[16] = v18;
    *&v40[32] = *(v17 + 88);
    v19 = v17;
    sub_1AF444F60(v40, &v37);
    v20 = sub_1AF7FE65C();
    v22 = v21;
    sub_1AF444FBC(v40);
    *&v39 = MEMORY[0x1E69E6158];
    v37 = v20;
    *&v38 = v22;
    sub_1AF7FDB64(v8, *(&v8 + 1), &v37);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v37);
    v23 = sub_1AF765354(v19, a3);
    v25 = v24;
    v4[5] = v23;

    v4[6] = v25;

    (*(*v4 + 1336))(v26);
    sub_1AF76968C(v19, v23);
  }
}

char *sub_1AF769F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 80);
  v5 = *(v3 + 88);
  v7 = *(v6 + 16);

  if (v7)
  {
    v36 = a3;
    v37 = 0;
    v8 = 0;
    v38 = v5 + 64;
    v39 = v6 + 40;
    v9 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    v40 = v5;
    v41 = v6;
LABEL_3:
    v10 = (v39 + 16 * v8);
    v11 = (v38 + 40 * v8);
    v12 = v8;
    while (v12 != *(v5 + 16))
    {
      v13 = *v10;
      v14 = *(v11 - 4);
      v15 = *(v11 - 3);
      v16 = *(v11 - 2);
      v17 = *(v11 - 1);
      v18 = *v11;
      v45 = v10;
      v46 = v12 + 1;
      v44 = *(v10 - 1);
      v49[0] = v44;
      v49[1] = v13;
      v49[5] = a1;
      v49[6] = a2;
      v19 = v12;

      v47 = v14;
      sub_1AF687F90(v14, v15);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      sub_1AF770DF0();
      sub_1AF770E44();
      v20 = sub_1AFDFCD68();

      if (v20)
      {
        if (v37)
        {
          v5 = v40;
          v8 = v46;
        }

        else
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1AF420554(0, *(v48 + 2) + 1, 1, v48);
          }

          v8 = v46;
          v28 = *(v48 + 2);
          v27 = *(v48 + 3);
          if (v28 >= v27 >> 1)
          {
            v48 = sub_1AF420554(v27 > 1, v28 + 1, 1, v48);
          }

          *(v48 + 2) = v28 + 1;
          v29 = &v48[16 * v28];
          *(v29 + 4) = a1;
          *(v29 + 5) = a2;
          sub_1AF444F60(v36, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AF424FCC(0, *(v9 + 2) + 1, 1, v9);
          }

          v31 = *(v9 + 2);
          v30 = *(v9 + 3);
          if (v31 >= v30 >> 1)
          {
            v9 = sub_1AF424FCC(v30 > 1, v31 + 1, 1, v9);
          }

          *(v9 + 2) = v31 + 1;
          v32 = &v9[40 * v31];
          v33 = *v36;
          v34 = *(v36 + 16);
          *(v32 + 8) = *(v36 + 32);
          *(v32 + 2) = v33;
          *(v32 + 3) = v34;
          v5 = v40;
        }

        sub_1AF687FE4(v14, v15);
        v37 = 1;
        if (*(v41 + 16) - 1 != v19)
        {
          goto LABEL_3;
        }

        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1AF420554(0, *(v48 + 2) + 1, 1, v48);
      }

      v22 = *(v48 + 2);
      v21 = *(v48 + 3);
      if (v22 >= v21 >> 1)
      {
        v48 = sub_1AF420554(v21 > 1, v22 + 1, 1, v48);
      }

      *(v48 + 2) = v22 + 1;
      v23 = &v48[16 * v22];
      *(v23 + 4) = v44;
      *(v23 + 5) = v13;
      sub_1AF687F90(v47, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF424FCC(0, *(v9 + 2) + 1, 1, v9);
      }

      v25 = *(v9 + 2);
      v24 = *(v9 + 3);
      if (v25 >= v24 >> 1)
      {
        v9 = sub_1AF424FCC(v24 > 1, v25 + 1, 1, v9);
      }

      *(v9 + 2) = v25 + 1;
      v26 = &v9[40 * v25];
      *(v26 + 4) = v47;
      *(v26 + 5) = v15;
      *(v26 + 6) = v16;
      *(v26 + 7) = v17;
      *(v26 + 8) = v18;

      sub_1AF687FE4(v47, v15);
      v5 = v40;
      v10 = v45 + 2;
      v11 += 5;
      v12 = v46;
      if (v46 == *(v41 + 16))
      {
        break;
      }
    }
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t sub_1AF76A3BC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = *(v4 + 16);

  if (v6)
  {
    v7 = 0;
    v64 = v5 + 32;
    v65 = v4 + 32;
    v79 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    v61 = v5;
    v62 = v4;
    v60 = a1;
    while (v7 != *(v5 + 16))
    {
      v9 = (v65 + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      v12 = (v64 + 40 * v7);
      v71 = *v12;
      v70 = v12[1];
      v69 = v12[2];
      v67 = v12[4];
      v68 = v12[3];
      v74 = v11;
      v75 = v10;
      v13 = v11 == *(a1 + 24) && v10 == *(a1 + 32);
      v66 = v7;
      if (v13 || (sub_1AFDFEE28() & 1) != 0)
      {
        v14 = *(a2 + 64);
        v15 = *(a1 + 72);
        v84[0] = *(a1 + 56);
        v84[1] = v15;
        v85 = *(a1 + 88);

        sub_1AF687F90(v71, v70);

        sub_1AF444F60(v84, &v80);
        v16 = sub_1AF41A308(v84);
        v18 = v17;
        sub_1AF444FBC(v84);
        if ((v18 & 1) == 0)
        {

          __break(1u);
          return result;
        }

        v19 = *(*(v14 + 56) + 8 * v16);

        if (*(v19 + 200))
        {
          v20 = *(v19 + 200);
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        if (*(v19 + 208))
        {
          v21 = *(v19 + 208);
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        v22 = *(v20 + 16);

        v73 = v22;
        if (v22)
        {
          v23 = 0;
          v24 = (v20 + 40);
          v25 = (v21 + 40);
          v72 = v21;
          do
          {
            if (v23 == *(v21 + 16))
            {
              break;
            }

            v78 = v8;
            v27 = *(v24 - 1);
            v26 = *v24;
            v29 = *(v25 - 1);
            v28 = *v25;

            v30 = sub_1AFDFD178();

            if (v30)
            {
              v31 = sub_1AF701628();
              v33 = v32;
              v35 = v34;
              v37 = v36;

              v27 = MEMORY[0x1B27189E0](v31, v33, v35, v37);
              v39 = v38;
            }

            else
            {
              v39 = v26;
            }

            v80 = v74;
            v81 = v75;

            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            if (sub_1AFDFD048() == 1)
            {
              v27 = sub_1AFDFCF98();
              v41 = v40;

              v39 = v41;
            }

            MEMORY[0x1B2718AE0](v27, v39);

            v42 = v80;
            v43 = v81;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v79 = sub_1AF420554(0, *(v79 + 2) + 1, 1, v79);
            }

            v45 = *(v79 + 2);
            v44 = *(v79 + 3);
            if (v45 >= v44 >> 1)
            {
              v79 = sub_1AF420554(v44 > 1, v45 + 1, 1, v79);
            }

            *(v79 + 2) = v45 + 1;
            v46 = &v79[16 * v45];
            *(v46 + 4) = v42;
            *(v46 + 5) = v43;

            sub_1AF809DF8(v29, v28, v82);
            v76 = v82[1];
            v77 = v82[0];
            v47 = v83;
            v8 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1AF424FCC(0, *(v78 + 2) + 1, 1, v78);
            }

            v21 = v72;
            v49 = *(v8 + 2);
            v48 = *(v8 + 3);
            if (v49 >= v48 >> 1)
            {
              v8 = sub_1AF424FCC(v48 > 1, v49 + 1, 1, v8);
            }

            ++v23;
            *(v8 + 2) = v49 + 1;
            v50 = &v8[40 * v49];
            *(v50 + 2) = v77;
            *(v50 + 3) = v76;
            *(v50 + 8) = v47;

            v24 += 2;
            v25 += 2;
          }

          while (v73 != v23);
        }

        v5 = v61;
        v4 = v62;
        a1 = v60;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_1AF687F90(v71, v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1AF420554(0, *(v79 + 2) + 1, 1, v79);
        }

        v52 = *(v79 + 2);
        v51 = *(v79 + 3);
        v53 = v75;
        if (v52 >= v51 >> 1)
        {
          v58 = sub_1AF420554(v51 > 1, v52 + 1, 1, v79);
          v53 = v75;
          v79 = v58;
        }

        *(v79 + 2) = v52 + 1;
        v54 = &v79[16 * v52];
        *(v54 + 4) = v74;
        *(v54 + 5) = v53;
        sub_1AF687F90(v71, v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AF424FCC(0, *(v8 + 2) + 1, 1, v8);
        }

        v56 = *(v8 + 2);
        v55 = *(v8 + 3);
        if (v56 >= v55 >> 1)
        {
          v8 = sub_1AF424FCC(v55 > 1, v56 + 1, 1, v8);
        }

        *(v8 + 2) = v56 + 1;
        v57 = &v8[40 * v56];
        *(v57 + 4) = v71;
        *(v57 + 5) = v70;
        *(v57 + 6) = v69;
        *(v57 + 7) = v68;
        *(v57 + 8) = v67;
      }

      v7 = v66 + 1;

      sub_1AF687FE4(v71, v70);
      if (v66 + 1 == *(v4 + 16))
      {
        break;
      }
    }
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
  }

  return v79;
}

uint64_t sub_1AF76A994(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x1B2718AE0](0x6E657474616C662ELL, a3);
  v5 = *(v3 + 16);
  if (v5 && *(v5 + 16))
  {

    sub_1AF419914(a1, a2);
    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1AF76AA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v29 = a1;
  *(&v29 + 1) = a2;

  MEMORY[0x1B2718AE0](0x6E657474616C662ELL, 0xEB0000000074754FLL);
  v8 = v29;
  v9 = v3[2];
  if (v9 && *(v9 + 16) && (, sub_1AF419914(v29, *(&v29 + 1)), v11 = v10, , (v11 & 1) != 0))
  {
    sub_1AF7FDC2C(v29, *(&v29 + 1), &v26);
    sub_1AF449D40(&v26, &v29);
    swift_dynamicCast();
    sub_1AF7FDA4C(v8, *(&v8 + 1));

    sub_1AF809DF8(v24, v25, &v26);
    v29 = v26;
    v30 = v27;
    v31 = v28;
    v12 = sub_1AF769F64(a1, a2, &v29);
    v14 = v13;
    sub_1AF770D80(&v26, &qword_1EB63E690, &_s12MetadataTypeON);
    v4[10] = v12;

    v4[11] = v14;

    sub_1AF763428();
  }

  else
  {
    v15 = (*(*v4 + 1456))(a1, a2);
    v16 = *(v15 + 72);
    v29 = *(v15 + 56);
    v30 = v16;
    v31 = *(v15 + 88);
    sub_1AF444F60(&v29, &v26);
    v17 = sub_1AF7FE65C();
    v19 = v18;
    sub_1AF444FBC(&v29);
    *(&v27 + 1) = MEMORY[0x1E69E6158];
    *&v26 = v17;
    *(&v26 + 1) = v19;
    sub_1AF7FDB64(v8, *(&v8 + 1), &v26);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
    v20 = sub_1AF76A3BC(v15, a3);
    v22 = v21;
    v4[10] = v20;

    v4[11] = v22;

    sub_1AF763428();
  }
}

unint64_t sub_1AF76ACE8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x70696E5365646F43;
    v6 = 0xD000000000000018;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x656C626169726156;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65746E6F43627553;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x656A624F65736142;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 5)
    {
      v3 = 0x45747865746E6F43;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AF76AE84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AF76ACE8(*a1);
  v5 = v4;
  if (v3 == sub_1AF76ACE8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF76AF0C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF76ACE8(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF76AF70()
{
  sub_1AF76ACE8(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF76AFC4()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF76ACE8(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF76B024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF771404();
  *a1 = result;
  return result;
}

unint64_t sub_1AF76B054@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF76ACE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1AF76B130(uint64_t *a1, void **a2)
{
  v3 = *a1;
  if (swift_weakLoadStrong())
  {
    v4 = *(v3 + 32);
    *&v23[0] = *(v3 + 24);
    *(&v23[0] + 1) = v4;

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    sub_1AF7FDD44(*&v23[0], *(&v23[0] + 1), v23);

    if (*(&v23[0] + 1))
    {
      v27 = v23[2];
      v28 = v23[3];
      v29 = v23[4];
      v30 = v24;
      v25 = v23[0];
      v26 = v23[1];
LABEL_10:
      v31[2] = v27;
      v31[3] = v28;
      v31[4] = v29;
      v32 = v30;
      v31[0] = v25;
      v31[1] = v26;
      sub_1AF4455CC(v31, &v25);
      v12 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1AF4251F8(0, v12[2] + 1, 1, v12);
        *a2 = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        *a2 = sub_1AF4251F8(v14 > 1, v15 + 1, 1, v12);
      }

      sub_1AF761390(v31);
      v16 = *a2;
      v16[2] = v15 + 1;
      v17 = &v16[11 * v15];
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v17[14] = v30;
      *(v17 + 5) = v19;
      *(v17 + 6) = v20;
      *(v17 + 4) = v18;
      result = *&v25;
      v21 = v26;
      *(v17 + 2) = v25;
      *(v17 + 3) = v21;
      return result;
    }
  }

  v11 = *(v3 + 72);
  v33[0] = *(v3 + 56);
  v33[1] = v11;
  v34 = *(v3 + 88);
  sub_1AF444F60(v33, &v22);
  sub_1AF7FCDD4(v33, 1, &v25);
  sub_1AF444FBC(v33);
  if (*(&v25 + 1))
  {
    goto LABEL_10;
  }

  sub_1AF770D80(&v25, &qword_1EB6335B0, &_s8MetadataVN);
  v5 = *a2;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v5;
  if ((v6 & 1) == 0)
  {
    v5 = sub_1AF4251F8(0, v5[2] + 1, 1, v5);
    *a2 = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1AF4251F8(v7 > 1, v8 + 1, 1, v5);
    *a2 = v5;
  }

  v5[2] = v8 + 1;
  v9 = &v5[11 * v8];
  result = 0.0;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  v9[14] = 0;
  return result;
}

uint64_t sub_1AF76B3D0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 88);

  v3 = sub_1AF770BA0(v1, v2);

  return v3;
}

void *sub_1AF76B438(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[4] = 0xE000000000000000;
  v1[5] = v2;
  v1[6] = v2;
  v1[7] = v2;
  v1[8] = v2;
  v1[9] = v2;
  v1[10] = v2;
  v1[11] = v2;
  v1[12] = v2;
  v1[13] = v2;
  v1[14] = v2;
  v1[15] = 0;
  v1[16] = v2;
  v1[2] = a1;
  v1[3] = 0;
  return v1;
}

void *sub_1AF76B46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v3[6] = MEMORY[0x1E69E7CC0];
  v3[7] = v4;
  v3[8] = v4;
  v3[9] = v4;
  v3[10] = v4;
  v3[11] = v4;
  v3[12] = v4;
  v3[13] = v4;
  v3[14] = v4;
  v3[15] = 0;
  v3[16] = v4;
  v3[2] = a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v4;

  return v3;
}

uint64_t sub_1AF76B4B4()
{
  v1 = (v0 + 56);
  *v1 = MEMORY[0x1E69E7CC0];

  v2 = *(v1 - 1);
  v3 = *(*(v1 - 2) + 16);
  v22 = *(v1 - 2);

  v23 = v2;

  if (v3)
  {
    v4 = 0;
    v5 = (v22 + 40);
    v6 = (v2 + 64);
    do
    {
      if (v4 == *(v23 + 16))
      {
        break;
      }

      v27 = v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      v10 = *(v6 - 4);
      v9 = *(v6 - 3);
      v24 = v9;
      v25 = v10;
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      v13 = *v6;
      v28 = *(*v21 + 1272);
      v26 = v5;

      sub_1AF687F90(v10, v9);
      v14 = v7;
      v15 = v28(v7, v8);
      v17 = v16;
      _s11ParameterInCMa();
      v18 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v18[3] = v14;
      v18[4] = v8;
      v18[5] = v15;
      v18[6] = v17;
      v18[7] = v25;
      v18[8] = v24;
      v18[9] = v11;
      v18[10] = v12;
      v18[11] = v13;

      v19 = sub_1AF687F90(v25, v24);
      MEMORY[0x1B2718E00](v19);
      if (*((v21[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      v4 = v27 + 1;
      sub_1AFDFD4B8();

      sub_1AF687FE4(v25, v24);
      v5 = v26 + 2;
      v6 += 5;
    }

    while (v27 + 1 != *(v22 + 16));
  }
}

uint64_t sub_1AF76B6F0()
{
  (*(*v0 + 1336))();

  return sub_1AF763428();
}

uint64_t sub_1AF76B74C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF76B82C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF76B8F8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF76B9D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF76F144();
  *a1 = result;
  return result;
}

void sub_1AF76BA04(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6580597;
  v5 = 0xD000000000000010;
  v6 = 0x80000001AFF23DF0;
  v7 = 0x80000001AFF23E30;
  if (v2 != 3)
  {
    v7 = 0x80000001AFF23E50;
  }

  if (v2 != 2)
  {
    v5 = 0xD000000000000011;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001AFF23DD0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1AF76BAA0()
{
  v1 = 6580597;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1AF76BB38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF76F144();
  *a1 = result;
  return result;
}

uint64_t sub_1AF76BB60(uint64_t a1)
{
  v2 = sub_1AF76CDE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF76BB9C(uint64_t a1)
{
  v2 = sub_1AF76CDE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF76BC24(void *a1)
{
  sub_1AF7710D8(0, &qword_1EB63E660, sub_1AF76CDE0, &type metadata for GraphV1CodeGeneration.BaseObject.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v51 - v8;
  v1[3] = 0;
  v1[4] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  v1[5] = MEMORY[0x1E69E7CC0];
  v1[6] = v10;
  v1[7] = v10;
  v1[8] = v10;
  v1[9] = v10;
  v1[10] = v10;
  v1[11] = v10;
  v1[12] = v10;
  v1[13] = v10;
  v1[14] = v10;
  v1[15] = 0;
  v1[16] = v10;
  sub_1AF441194(a1, v58);
  v11 = sub_1AF7FDEC8(v58);
  if (v2)
  {
    goto LABEL_2;
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF76CDE0();
  sub_1AFDFF3B8();
  v52 = v6;
  v53 = v11;
  v54 = a1;
  v56 = v9;
  v57 = v5;
  v55 = sub_1AFDFE7F8();
  v12 = *(v55 + 2);
  if (v12)
  {
    v13 = (v55 + 32);
    while (1)
    {
      v15 = *v13++;
      v14 = v15;
      if (v15 <= 2 && v14 != 1 && v14 != 2)
      {
        break;
      }

      v16 = sub_1AFDFEE28();

      if (v16)
      {
        goto LABEL_64;
      }

      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    v55 = 0xE300000000000000;
LABEL_64:

    LOBYTE(v58[0]) = 0;
    v45 = sub_1AFDFE708();
    v46 = v53;
    v53[3] = v45;
    v46[4] = v47;
  }

  else
  {
LABEL_10:
  }

  v17 = sub_1AFDFE7F8();
  v18 = *(v17 + 16);
  v51 = v17;
  if (!v18)
  {
LABEL_22:

    goto LABEL_23;
  }

  v19 = (v17 + 32);
  v55 = "inParameterNames";
  while (1)
  {
    v21 = *v19++;
    v20 = v21;
    if (v21 > 1)
    {
      break;
    }

    v22 = "previousInParameterNames";
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_20:
    v23 = sub_1AFDFEE28();

    if (v23)
    {
      goto LABEL_62;
    }

    if (!--v18)
    {
      goto LABEL_22;
    }
  }

  if (v20 != 2)
  {
    goto LABEL_20;
  }

  v22 = v55;
LABEL_19:
  if (0x80000001AFF23DD0 != (v22 | 0x8000000000000000))
  {
    goto LABEL_20;
  }

LABEL_62:

  sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v59 = 1;
  sub_1AF76F0C0(&qword_1ED726C58);
  sub_1AFDFE768();
  v53[5] = v58[0];

LABEL_23:
  v24 = sub_1AFDFE7F8();
  v25 = *(v24 + 16);
  v51 = v24;
  if (!v25)
  {
LABEL_34:

    goto LABEL_35;
  }

  v26 = (v24 + 32);
  v55 = "inParameterNames";
  while (2)
  {
    v28 = *v26++;
    v27 = v28;
    if (v28 <= 1)
    {
      v29 = "previousInParameterNames";
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 != 2)
      {
        goto LABEL_32;
      }

      v29 = v55;
    }

    if (0x80000001AFF23DF0 != (v29 | 0x8000000000000000))
    {
LABEL_32:
      v30 = sub_1AFDFEE28();

      if (v30)
      {
        goto LABEL_66;
      }

      if (!--v25)
      {
        goto LABEL_34;
      }

      continue;
    }

    break;
  }

LABEL_66:

  sub_1AF770E98(0, &qword_1EB63E670, &_s12MetadataTypeON, MEMORY[0x1E69E62F8]);
  v59 = 2;
  sub_1AF76F030(&qword_1EB63E678, sub_1AF75FCC4);
  sub_1AFDFE768();
  v53[6] = v58[0];

LABEL_35:
  v31 = sub_1AFDFE7F8();
  v32 = *(v31 + 16);
  v51 = v31;
  if (v32)
  {
    v33 = (v31 + 32);
    v55 = 0x80000001AFF23DF0;
    while (1)
    {
      v35 = *v33++;
      v34 = v35;
      if (v35 > 1 && v34 != 2)
      {
        v36 = v34 == 3 ? "inParameterDefaultValues" : "outParameterNames";
        if (0x80000001AFF23E30 == (v36 | 0x8000000000000000))
        {
          break;
        }
      }

      v37 = sub_1AFDFEE28();

      if (v37)
      {
        goto LABEL_68;
      }

      if (!--v32)
      {
        goto LABEL_45;
      }
    }

LABEL_68:

    sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v59 = 3;
    sub_1AF76F0C0(&qword_1ED726C58);
    sub_1AFDFE768();
    v53[10] = v58[0];
  }

  else
  {
LABEL_45:
  }

  v38 = sub_1AFDFE7F8();
  v39 = *(v38 + 16);
  v51 = v38;
  if (v39)
  {
    v40 = (v38 + 32);
    v55 = 0x80000001AFF23DF0;
    while (1)
    {
      v42 = *v40++;
      v41 = v42;
      if (v42 > 1 && v41 != 2)
      {
        v43 = v41 == 3 ? "inParameterDefaultValues" : "outParameterNames";
        if (0x80000001AFF23E50 == (v43 | 0x8000000000000000))
        {
          break;
        }
      }

      v44 = sub_1AFDFEE28();

      if (v44)
      {
        goto LABEL_70;
      }

      if (!--v39)
      {
        goto LABEL_56;
      }
    }

LABEL_70:

    sub_1AF770E98(0, &qword_1EB63E670, &_s12MetadataTypeON, MEMORY[0x1E69E62F8]);
    v59 = 4;
    sub_1AF76F030(&qword_1EB63E678, sub_1AF75FCC4);
    v48 = v57;
    v49 = v56;
    sub_1AFDFE768();
    v11 = v53;
    a1 = v54;
    (*(v52 + 8))(v49, v48);
    *(v11 + 88) = v58[0];
  }

  else
  {
LABEL_56:

    (*(v52 + 8))(v56, v57);
    v11 = v53;
    a1 = v54;
  }

LABEL_2:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v11;
}

uint64_t sub_1AF76C660(void *a1)
{
  sub_1AF7710D8(0, &qword_1EB63E680, sub_1AF76CDE0, &type metadata for GraphV1CodeGeneration.BaseObject.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  result = sub_1AF7FE0C4(a1);
  if (!v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF76CDE0();
    sub_1AFDFF3F8();
    v11 = v1[4];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v1[3] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      LOBYTE(v15) = 0;

      sub_1AFDFE8B8();
    }

    if (*(v1[5] + 16))
    {
      v15 = v1[5];
      v14 = 1;
      sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF76F0C0(&qword_1EB639870);
      sub_1AFDFE918();
    }

    if (*(v1[6] + 16))
    {
      v15 = v1[6];
      v14 = 2;
      sub_1AF770E98(0, &qword_1EB63E670, &_s12MetadataTypeON, MEMORY[0x1E69E62F8]);
      sub_1AF76F030(&qword_1EB63E688, sub_1AF75FC0C);
      sub_1AFDFE918();
    }

    if (*(v1[10] + 16))
    {
      v15 = v1[10];
      v14 = 3;
      sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF76F0C0(&qword_1EB639870);
      sub_1AFDFE918();
    }

    if (*(v1[11] + 16))
    {
      v15 = v1[11];
      v14 = 4;
      sub_1AF770E98(0, &qword_1EB63E670, &_s12MetadataTypeON, MEMORY[0x1E69E62F8]);
      sub_1AF76F030(&qword_1EB63E688, sub_1AF75FC0C);
      sub_1AFDFE918();
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1AF76CACC()
{
}

uint64_t sub_1AF76CB54()
{

  return v0;
}

uint64_t sub_1AF76CBDC()
{
  sub_1AF76CB54();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF76CC44()
{
  sub_1AFDFF288();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF76CCA4()
{

  sub_1AFDFD038();
}

uint64_t sub_1AF76CD00()
{
  sub_1AFDFF288();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF76CD5C(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 24) == *(*a2 + 24) && *(*a1 + 32) == *(*a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

unint64_t sub_1AF76CD8C()
{
  result = qword_1EB63E658;
  if (!qword_1EB63E658)
  {
    type metadata accessor for GraphV1CodeGeneration.BaseObject();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E658);
  }

  return result;
}

unint64_t sub_1AF76CDE0()
{
  result = qword_1EB63E668;
  if (!qword_1EB63E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E668);
  }

  return result;
}

uint64_t sub_1AF76CE34(uint64_t a1, void (*a2)(void *, uint64_t *))
{
  if (a1 < 1)
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = a1;
  }

  v7[1] = a1;
  v8 = 0;
  v7[0] = v5 + 32;
  a2(v7, &v8);
  *(v5 + 16) = v8;
  if (v2)
  {
  }

  return v5;
}

uint64_t sub_1AF76CEDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF76D0D8(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AF7711B0();
      v5 = sub_1AFDFD488();
      *(v5 + 16) = v2 / 2;
    }

    v7[0] = (v5 + 32);
    v7[1] = (v2 / 2);
    v6 = v5;
    sub_1AF76D2C0(v7, v8, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF76CFC4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
      do
      {
        v11 = *(v7 + 8 * v9);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v2);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v16[0] = (v6 + 32);
    v16[1] = v5;
    sub_1AF76D9E4(v16, v17, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF76D0D8(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4 + 104 * a3;
    v6 = result - a3;
    do
    {
      v7 = v6;
      v8 = v5;
      while (1)
      {
        sub_1AF770FFC(v8, &v19, sub_1AF7711B0);
        v9 = (v8 - 104);
        sub_1AF770FFC(v8 - 104, v18, sub_1AF7711B0);
        if (v19 == v18[0] && *(&v19 + 1) == v18[1])
        {
          break;
        }

        v11 = sub_1AFDFEE28();
        sub_1AF770F40(v18, sub_1AF7711B0);
        result = sub_1AF770F40(&v19, sub_1AF7711B0);
        if (v11)
        {
          v22 = *(v8 + 48);
          v23 = *(v8 + 64);
          v24 = *(v8 + 80);
          v25 = *(v8 + 96);
          v19 = *v8;
          v20 = *(v8 + 16);
          v21 = *(v8 + 32);
          v12 = *(v8 - 88);
          *v8 = *v9;
          *(v8 + 16) = v12;
          v13 = *(v8 - 72);
          v14 = *(v8 - 56);
          v15 = *(v8 - 40);
          v16 = *(v8 - 24);
          *(v8 + 96) = *(v8 - 8);
          *(v8 + 64) = v15;
          *(v8 + 80) = v16;
          *(v8 + 32) = v13;
          *(v8 + 48) = v14;
          *(v8 - 24) = v24;
          *(v8 - 40) = v23;
          *(v8 - 56) = v22;
          *(v8 - 8) = v25;
          *v9 = v19;
          *(v8 - 88) = v20;
          *(v8 - 72) = v21;
          v8 -= 104;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_5;
      }

      sub_1AF770F40(v18, sub_1AF7711B0);
      result = sub_1AF770F40(&v19, sub_1AF7711B0);
LABEL_5:
      ++v4;
      v5 += 104;
      --v6;
    }

    while (v4 != v26);
  }

  return result;
}

uint64_t sub_1AF76D2C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v76 = *a1;
    v6 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v8 = *a3;
        sub_1AF770FFC(*a3 + 104 * v5, &v83, sub_1AF7711B0);
        sub_1AF770FFC(v8 + 104 * v7, &v81, sub_1AF7711B0);
        v9 = v83 == v81 && *(&v83 + 1) == v82;
        v73 = v6;
        if (v9)
        {
          v78 = 0;
        }

        else
        {
          v78 = sub_1AFDFEE28();
        }

        sub_1AF770F40(&v81, sub_1AF7711B0);
        sub_1AF770F40(&v83, sub_1AF7711B0);
        v10 = v7 + 2;
        v71 = v7;
        v11 = 104 * v7;
        v12 = v8 + 104 * v7 + 208;
        v13 = v11 + 104;
        v77 = v4;
        do
        {
          v15 = v10;
          v16 = v5;
          v17 = v13;
          if (v10 >= v4)
          {
            break;
          }

          sub_1AF770FFC(v12, &v83, sub_1AF7711B0);
          sub_1AF770FFC(v12 - 104, &v81, sub_1AF7711B0);
          v18 = v83 == v81 && *(&v83 + 1) == v82;
          v14 = v18 ? 0 : sub_1AFDFEE28();
          sub_1AF770F40(&v81, sub_1AF7711B0);
          sub_1AF770F40(&v83, sub_1AF7711B0);
          v10 = v15 + 1;
          v12 += 104;
          ++v5;
          v13 = v17 + 104;
          v4 = v77;
        }

        while (((v78 ^ v14) & 1) == 0);
        v7 = v71;
        if (v71 < v15 && (v78 & 1) != 0)
        {
          v19 = v71;
          do
          {
            if (v19 != v16)
            {
              v20 = (*a3 + v11);
              v21 = (*a3 + v17);
              v86 = v20[3];
              v87 = v20[4];
              v88 = v20[5];
              v89 = *(v20 + 12);
              v83 = *v20;
              v84 = v20[1];
              v85 = v20[2];
              memmove(v20, v21, 0x68uLL);
              v21[3] = v86;
              v21[4] = v87;
              v21[5] = v88;
              *(v21 + 12) = v89;
              *v21 = v83;
              v21[1] = v84;
              v21[2] = v85;
            }

            ++v19;
            v17 -= 104;
            v11 += 104;
            v23 = v19 < v16--;
          }

          while (v23);
        }

        v5 = v15;
        v6 = v73;
        a4 = v75;
      }

      v22 = a3[1];
      v23 = v5 < v22 && v5 - v7 < a4;
      if (v23)
      {
        if (v7 + a4 >= v22)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = v7 + a4;
        }

        if (v7 + a4 == v5)
        {
          v5 = v24;
        }

        else
        {
          v72 = v7;
          v74 = v6;
          v25 = *a3 + 104 * v5;
          v26 = v7 - v5;
          v79 = v24;
          do
          {
            v27 = v26;
            v28 = v25;
            while (1)
            {
              sub_1AF770FFC(v28, &v83, sub_1AF7711B0);
              v29 = (v28 - 104);
              sub_1AF770FFC(v28 - 104, &v81, sub_1AF7711B0);
              if (v83 == v81 && *(&v83 + 1) == v82)
              {
                break;
              }

              v31 = sub_1AFDFEE28();
              sub_1AF770F40(&v81, sub_1AF7711B0);
              sub_1AF770F40(&v83, sub_1AF7711B0);
              if (v31)
              {
                v86 = *(v28 + 48);
                v87 = *(v28 + 64);
                v88 = *(v28 + 80);
                v89 = *(v28 + 96);
                v83 = *v28;
                v84 = *(v28 + 16);
                v85 = *(v28 + 32);
                v32 = *(v28 - 88);
                *v28 = *v29;
                *(v28 + 16) = v32;
                v33 = *(v28 - 72);
                v34 = *(v28 - 56);
                v35 = *(v28 - 40);
                v36 = *(v28 - 24);
                *(v28 + 96) = *(v28 - 8);
                *(v28 + 64) = v35;
                *(v28 + 80) = v36;
                *(v28 + 32) = v33;
                *(v28 + 48) = v34;
                *(v28 - 24) = v88;
                *(v28 - 40) = v87;
                *(v28 - 56) = v86;
                *(v28 - 8) = v89;
                *v29 = v83;
                *(v28 - 88) = v84;
                *(v28 - 72) = v85;
                v28 -= 104;
                if (!__CFADD__(v27++, 1))
                {
                  continue;
                }
              }

              goto LABEL_39;
            }

            sub_1AF770F40(&v81, sub_1AF7711B0);
            sub_1AF770F40(&v83, sub_1AF7711B0);
LABEL_39:
            ++v5;
            v25 += 104;
            --v26;
          }

          while (v5 != v79);
          v5 = v79;
          v7 = v72;
          v6 = v74;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AF4209A4(0, *(v6 + 2) + 1, 1, v6);
      }

      v39 = *(v6 + 2);
      v38 = *(v6 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v6 = sub_1AF4209A4(v38 > 1, v39 + 1, 1, v6);
      }

      *(v6 + 2) = v40;
      v41 = v6 + 32;
      v42 = &v6[16 * v39 + 32];
      *v42 = v7;
      *(v42 + 1) = v5;
      if (v39)
      {
        break;
      }

LABEL_3:
      v4 = a3[1];
      a4 = v75;
      if (v5 >= v4)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v43 = v40 - 1;
      if (v40 >= 4)
      {
        v47 = &v41[16 * v40];
        v48 = *(v47 - 7) - *(v47 - 8);
        v46 = *(v47 - 5) - *(v47 - 6);
        v49 = &v6[16 * v40];
        v44 = *v49;
        v45 = *(v49 + 1);
        if (v46 - v44 + v45 >= v48)
        {
          v52 = v40 - 2;
          v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
          goto LABEL_65;
        }
      }

      else
      {
        if (v40 != 3)
        {
          v50 = *&v6[16 * v40 + 8] - *&v6[16 * v40];
          v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
LABEL_62:
          if (v51 < v50)
          {
            goto LABEL_3;
          }

          goto LABEL_67;
        }

        v44 = *(v6 + 6);
        v45 = *(v6 + 7);
        v46 = *(v6 + 5) - *(v6 + 4);
      }

      v50 = v45 - v44;
      v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
      if (v50 + v51 < v46)
      {
        goto LABEL_62;
      }

      v52 = v40 - 2;
LABEL_65:
      if (v46 < v51)
      {
        v43 = v52;
      }

LABEL_67:
      v53 = v6;
      v54 = &v41[16 * v43];
      v55 = *(v54 - 2);
      v56 = *(v54 + 1);
      v57 = v90;
      sub_1AF76DDD8((*a3 + 104 * v55), (*a3 + 104 * *v54), (*a3 + 104 * v56), v76);
      v90 = v57;
      if (v57)
      {
      }

      *(v54 - 2) = v55;
      *(v54 - 1) = v56;
      v6 = v53;
      v58 = *(v53 + 2);
      v40 = v58 - 1;
      memmove(&v41[16 * v43], v54 + 16, 16 * (v58 - 1 - v43));
      *(v53 + 2) = v58 - 1;
      if (v58 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_71:
  v59 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AF650C88(v6);
  }

  v60 = v6 + 16;
  v61 = *(v6 + 2);
  if (v61 >= 2)
  {
    do
    {
      v62 = v6;
      v63 = &v6[16 * v61];
      v64 = *v63;
      v65 = &v60[2 * v61];
      v66 = v65[1];
      v67 = v90;
      sub_1AF76DDD8((*a3 + 104 * *v63), (*a3 + 104 * *v65), (*a3 + 104 * v66), v59);
      v90 = v67;
      if (v67)
      {
        break;
      }

      *v63 = v64;
      *(v63 + 1) = v66;
      v68 = *v60 - 1;
      memmove(&v60[2 * v61], v65 + 2, 16 * (*v60 - v61));
      *v60 = v68;
      v61 = v68;
      v23 = v68 > 1;
      v6 = v62;
    }

    while (v23);
  }
}

uint64_t sub_1AF76D9E4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v58 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v57 = a4;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *(*a3 + 8 * v7);
        v11 = *(*a3 + 8 * v9);
        v12 = v9 + 2;
        v13 = v10;
        while (v6 != v12)
        {
          v14 = *(*a3 + 8 * v12);
          v15 = (v11 < v10) ^ (v13 >= v14);
          ++v12;
          v13 = v14;
          if ((v15 & 1) == 0)
          {
            v7 = v12 - 1;
            if (v11 >= v10)
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        v7 = v6;
        if (v11 >= v10)
        {
          goto LABEL_17;
        }

LABEL_11:
        if (v9 < v7)
        {
          v16 = v7 - 1;
          v17 = v9;
          do
          {
            if (v17 != v16)
            {
              v19 = *a3;
              v20 = *(*a3 + 8 * v17);
              *(*a3 + 8 * v17) = *(*a3 + 8 * v16);
              *(v19 + 8 * v16) = v20;
            }
          }

          while (++v17 < v16--);
          v6 = a3[1];
        }
      }

LABEL_17:
      if (v7 < v6 && v7 - v9 < a4)
      {
        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v9 + a4 != v7)
        {
          v40 = *a3;
          v41 = *a3 + 8 * v7 - 8;
          v42 = v9 - v7;
          do
          {
            v43 = *(v40 + 8 * v7);
            v44 = v42;
            v45 = v41;
            do
            {
              v46 = *v45;
              if (*v45 >= v43)
              {
                break;
              }

              *v45 = v43;
              v45[1] = v46;
              --v45;
            }

            while (!__CFADD__(v44++, 1));
            ++v7;
            v41 += 8;
            --v42;
          }

          while (v7 != v6);
        }

        v7 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v22 = *(v8 + 2);
      v21 = *(v8 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v8 = sub_1AF4209A4(v21 > 1, v22 + 1, 1, v8);
      }

      *(v8 + 2) = v23;
      v24 = v8 + 32;
      v25 = &v8[16 * v22 + 32];
      *v25 = v9;
      *(v25 + 1) = v7;
      if (v22)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v57;
      if (v7 >= v6)
      {
        goto LABEL_51;
      }
    }

    while (1)
    {
      v26 = v23 - 1;
      if (v23 >= 4)
      {
        v30 = &v24[16 * v23];
        v31 = *(v30 - 7) - *(v30 - 8);
        v29 = *(v30 - 5) - *(v30 - 6);
        v32 = &v8[16 * v23];
        v27 = *v32;
        v28 = *(v32 + 1);
        if (v29 - v27 + v28 >= v31)
        {
          v35 = v23 - 2;
          v34 = *&v24[16 * v26 + 8] - *&v24[16 * v26];
          goto LABEL_38;
        }
      }

      else
      {
        if (v23 != 3)
        {
          v33 = *&v8[16 * v23 + 8] - *&v8[16 * v23];
          v34 = *&v24[16 * v26 + 8] - *&v24[16 * v26];
LABEL_35:
          if (v34 < v33)
          {
            goto LABEL_3;
          }

          goto LABEL_40;
        }

        v27 = *(v8 + 6);
        v28 = *(v8 + 7);
        v29 = *(v8 + 5) - *(v8 + 4);
      }

      v33 = v28 - v27;
      v34 = *&v24[16 * v26 + 8] - *&v24[16 * v26];
      if (v33 + v34 < v29)
      {
        goto LABEL_35;
      }

      v35 = v23 - 2;
LABEL_38:
      if (v29 < v34)
      {
        v26 = v35;
      }

LABEL_40:
      v36 = &v24[16 * v26];
      v37 = *(v36 - 2);
      v38 = *(v36 + 1);
      sub_1AF76E150((*a3 + 8 * v37), (*a3 + 8 * *v36), (*a3 + 8 * v38), v58);
      if (v4)
      {
      }

      *(v36 - 2) = v37;
      *(v36 - 1) = v38;
      v39 = *(v8 + 2);
      v23 = v39 - 1;
      memmove(&v24[16 * v26], v36 + 16, 16 * (v39 - 1 - v26));
      *(v8 + 2) = v39 - 1;
      if (v39 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_51:
  v59 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v48 = v8 + 16;
  v49 = *(v8 + 2);
  if (v49 >= 2)
  {
    do
    {
      v50 = &v8[16 * v49];
      v51 = *v50;
      v52 = &v48[2 * v49];
      v53 = v52[1];
      sub_1AF76E150((*a3 + 8 * *v50), (*a3 + 8 * *v52), (*a3 + 8 * v53), v59);
      if (v4)
      {
        break;
      }

      *v50 = v51;
      *(v50 + 1) = v53;
      v54 = *v48 - 1;
      memmove(&v48[2 * v49], v52 + 2, 16 * (*v48 - v49));
      *v48 = v54;
      v49 = v54;
    }

    while (v54 > 1);
  }
}

uint64_t sub_1AF76DDD8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[104 * v11] <= a4)
    {
      memmove(a4, __src, 104 * v11);
    }

    v12 = &v4[104 * v11];
    if (v10 < 104 || v6 <= v7)
    {
LABEL_43:
      v16 = v6;
    }

    else
    {
      do
      {
        v16 = v6 - 104;
        v17 = v12 - 104;
        v5 -= 104;
        while (1)
        {
          sub_1AF770FFC(v17, &v26, sub_1AF7711B0);
          sub_1AF770FFC((v6 - 104), &v24, sub_1AF7711B0);
          v20 = v26 == v24 && v27 == v25;
          v21 = v20 ? 0 : sub_1AFDFEE28();
          sub_1AF770F40(&v24, sub_1AF7711B0);
          sub_1AF770F40(&v26, sub_1AF7711B0);
          if (v21)
          {
            break;
          }

          if (v5 + 104 != v17 + 104)
          {
            memmove(v5, v17, 0x68uLL);
          }

          v18 = v17 - 104;
          v5 -= 104;
          v19 = v17 > v4;
          v17 -= 104;
          if (!v19)
          {
            v12 = v18 + 104;
            goto LABEL_43;
          }
        }

        if (v5 + 104 != v6)
        {
          memmove(v5, v6 - 104, 0x68uLL);
        }

        v12 = v17 + 104;
        if (v17 + 104 <= v4)
        {
          break;
        }

        v6 -= 104;
      }

      while (v16 > v7);
      v12 = v17 + 104;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[104 * v9] <= a4)
    {
      memmove(a4, __dst, 104 * v9);
    }

    v12 = &v4[104 * v9];
    if (v8 >= 104 && v6 < v5)
    {
      while (1)
      {
        sub_1AF770FFC(v6, &v26, sub_1AF7711B0);
        sub_1AF770FFC(v4, &v24, sub_1AF7711B0);
        v13 = v26 == v24 && v27 == v25;
        if (v13)
        {
          break;
        }

        v14 = sub_1AFDFEE28();
        sub_1AF770F40(&v24, sub_1AF7711B0);
        sub_1AF770F40(&v26, sub_1AF7711B0);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }

        v15 = v6;
        v13 = v7 == v6;
        v6 += 104;
        if (!v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 104;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_1AF770F40(&v24, sub_1AF7711B0);
      sub_1AF770F40(&v26, sub_1AF7711B0);
LABEL_16:
      v15 = v4;
      v13 = v7 == v4;
      v4 += 104;
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_17:
      memmove(v7, v15, 0x68uLL);
      goto LABEL_18;
    }

LABEL_20:
    v16 = v7;
  }

  v22 = (v12 - v4) / 104;
  if (v16 != v4 || v16 >= &v4[104 * v22])
  {
    memmove(v16, v4, 104 * v22);
  }

  return 1;
}

uint64_t sub_1AF76E150(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}